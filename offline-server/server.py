"""Local gateway for 小小海贼王 offline mode.



Endpoints:

  GET  /serverlist.js         -> local server list JSON

  GET  /health                -> liveness probe

  POST /messagebroker/amf     -> full AMF dispatcher (ping/login/create/task/battle/scene...)



Version 0.6 - Accurate reverse-engineered protocol structures:

- CDlgCreatRole random name (AMF3 array [name] in body)

- CREATE.create (passport, name, figure)

- Task system with exact onTaskData schema (action, complete_task, accpetable_task, get_task)

- Battle system for Chapter 1 Windmill Village

"""

from __future__ import annotations



import argparse

import json

import os
import re

import random
import sqlite3

import struct

import time

import uuid

from datetime import datetime

from http.server import BaseHTTPRequestHandler, ThreadingHTTPServer

from pathlib import Path

from urllib.parse import urlsplit



from amf3 import decode_envelope, plain, AMFObject





ROOT = Path(__file__).resolve().parent

CAPTURE_DIR = ROOT / "captures"

SAVE_FILE = ROOT / "player_save.json"

import config_loader
from config_loader import (
    DB_PATH,
    get_task,
    get_next_task,
    get_scene,
    get_camp,
    get_army,
    get_monster,
    get_general,
    get_item,
    get_skill,
    get_exp_need,
    get_npcs_for_scene,
    get_officium_for_level,
    get_skills_by_job,
)

LOCAL_DSID = str(uuid.uuid5(uuid.NAMESPACE_DNS, "xiaoxiaohaizei-local")).upper()



# ── Fixed offline identity ───────────────────────────────────────────────────

OFFLINE_UIN      = "10000001"

OFFLINE_PASSPORT = "LOCAL_GUEST"

OFFLINE_ROLE_ID  = 100001



# ── Offline name pool for generateRandomName ──────────────────────────────────

RANDOM_NAMES = [

    "蒙奇·D·路飞", "罗罗诺亚·索隆", "娜美", "乌索普", "山治",

    "托尼托尼·乔巴", "妮可·罗宾", "弗兰奇", "布鲁克", "波特卡斯·D·艾斯",

    "萨博", "波雅·汉库克", "香克斯", "爱德华·纽盖特", "特拉法尔加·罗",

    "尤斯塔斯·基德", "红发海贼", "草帽海盗", "黄金梅丽号", "万里阳光号"

]



# ── Player save (persists role state across restarts) ────────────────────────



def _load_save() -> dict:

    if SAVE_FILE.exists():

        try:

            return json.loads(SAVE_FILE.read_text(encoding="utf-8"))

        except Exception:

            pass

    return {}





def _save_player(data: dict) -> None:
    tmp_file = SAVE_FILE.with_suffix(".tmp")
    tmp_file.write_text(json.dumps(data, ensure_ascii=False, indent=2), encoding="utf-8")
    tmp_file.replace(SAVE_FILE)





_PLAYER: dict = _load_save()





def _get_role() -> dict:

    """Return current role dict, initializing defaults if needed."""

    if "role" not in _PLAYER:

        _PLAYER["role"] = {

            "role_id": OFFLINE_ROLE_ID,

            "name": "船长",

            "level": 1,

            "face": 1,

            "figure": 1,

            "nation": 0,

            "gold": 99999,

            "copper": 999999,

            "action_point": 100,

            "ap_max": 100,

            "scene_id": 2001,

            "scene_x": 361,

            "scene_y": 35,

            "current_task": 100001,   # active main task id

            "completed_tasks": [],    # list of completed task ids

            "battle_wins": {},        # camp_id -> win count

            "login_days": 1,

            "created": False,

        }

    r = _PLAYER["role"]
    cur_task = r.get("current_task")
    wins = r.get("battle_wins", {})
    camp_stars = r.get("camp_stars", {})
    if cur_task:
        try:
            t_cfg = get_task(cur_task)
            if t_cfg:
                ctype = int(t_cfg.get("complete_type") or 0)
                ccat = int(t_cfg.get("complete_category") or 0)
                if ctype == 4:
                    if wins.get(str(ccat), 0) > 0 or camp_stars.get(str(ccat), 0) > 0:
                        r["task_completed"] = True
                elif ctype in (0, 6, 9, 12, 106, 108):
                    if r.get("task_accepted", False):
                        r["task_completed"] = True
        except Exception:
            pass

    # ── 启动时校准 level/exp 一致性 (修之前硬编码升级留下的 exp=0 问题) ────
    try:
        max_exp_at_level = get_exp_need(r["level"])
        if max_exp_at_level > 0 and r.get("exp", 0) >= max_exp_at_level:
            r["exp"] = 0
        if max_exp_at_level > 0 and r.get("exp", 0) < 0:
            r["exp"] = 0
    except Exception:
        pass

    # ── 自动计算 officium (官职) — 客户端领悟技能/招募船员的前置条件 ────
    r["officium"] = get_officium_for_level(r["level"])

    # 确保有 skill_point
    r.setdefault("skill_point", max(0, r["level"] - 1))

    return r





def _save() -> None:

    _save_player(_PLAYER)





# ── AMF0/3 low-level builders ─────────────────────────────────────────────────



def _amf0_key(name: str) -> bytes:

    raw = name.encode("utf-8")

    return struct.pack(">H", len(raw)) + raw





def _amf0_string(value: str) -> bytes:

    raw = value.encode("utf-8")

    return b"\x02" + struct.pack(">H", len(raw)) + raw





def _amf0_number(value: float) -> bytes:

    return b"\x00" + struct.pack(">d", value)





def _amf0_bool(value: bool) -> bytes:

    return b"\x01" + (b"\x01" if value else b"\x00")





def _amf0_null() -> bytes:

    return b"\x05"





def _amf0_object(properties: list[tuple[str, bytes]], class_name: str = "") -> bytes:

    if class_name:

        raw = class_name.encode("utf-8")

        out = bytearray(b"\x10" + struct.pack(">H", len(raw)) + raw)

    else:

        out = bytearray(b"\x03")

    for key, value in properties:

        out += _amf0_key(key) + value

    out += b"\x00\x00\x09"

    return bytes(out)





def _amf3_u29(value: int) -> bytes:

    if value < 0x80:

        return bytes((value,))

    if value < 0x4000:

        return bytes(((value >> 7) | 0x80, value & 0x7F))

    if value < 0x200000:

        return bytes(((value >> 14) | 0x80, ((value >> 7) & 0x7F) | 0x80, value & 0x7F))

    return bytes(((value >> 22) | 0x80, ((value >> 15) & 0x7F) | 0x80,

                  ((value >> 8) & 0x7F) | 0x80, value & 0xFF))





def _amf3_string(value: str, with_marker: bool = True) -> bytes:

    raw = value.encode("utf-8")

    return (b"\x06" if with_marker else b"") + _amf3_u29((len(raw) << 1) | 1) + raw





def _amf3_int(value: int) -> bytes:

    if value < 0:

        value = value + 0x20000000

    return b"\x04" + _amf3_u29(value & 0x1FFFFFFF)





def _amf3_double(value: float) -> bytes:

    return b"\x05" + struct.pack(">d", value)





def _amf3_bool(value: bool) -> bytes:

    return b"\x03" if value else b"\x02"





def _amf3_null() -> bytes:

    return b"\x01"





def _amf3_headers() -> bytes:

    """AMF3 sealed headers object with DSId + DSMessagingVersion."""

    return _amf3_object([

        ("DSId", _amf3_string(LOCAL_DSID)),

        ("DSMessagingVersion", _amf3_double(1.0)),

    ])





def _uuid_bytes(value: str) -> bytes:

    return bytes.fromhex(value.replace("-", ""))





def _amf3_byte_array(raw: bytes) -> bytes:

    return b"\x0c" + _amf3_u29((len(raw) << 1) | 1) + raw





def _amf3_object(fields: list[tuple[str, bytes]], class_name: str = "") -> bytes:

    """Serialize an AMF3 object with sealed properties for libOnePiece.so parser."""

    N = len(fields)

    assert N > 0, "AMF3 object must have at least 1 property"

    flags = _amf3_u29((N << 4) | 0b0011)

    if class_name:

        name_raw = class_name.encode("utf-8")

        class_ref = _amf3_u29((len(name_raw) << 1) | 1) + name_raw

    else:

        class_ref = b"\x01"  # empty string



    names_bytes = b"".join(

        _amf3_string(k, with_marker=False) for k, _ in fields

    )

    vals_bytes = b"".join(v for _, v in fields)



    return b"\x0a" + flags + class_ref + names_bytes + vals_bytes





def _amf3_array(items: list[bytes]) -> bytes:

    """AMF3 strict array (no assoc part)."""

    return b"\x09" + _amf3_u29((len(items) << 1) | 1) + b"\x01" + b"".join(items)





# ── Response envelope builder ─────────────────────────────────────────────────



def _build_response(payload: bytes) -> bytes:

    """Prefix the AMF3 payload with the 7-byte magic header required by libOnePiece.so."""

    if payload.startswith(b"\x11"):

        payload = payload[1:]

    return b"\x00\x00\x00\x00\x00\x01\x11" + payload





# ── Game AMF response builders ────────────────────────────────────────────────



def _ack_bytes(correlation_id: str, body_payload: bytes) -> bytes:
    """Build AcknowledgeMessage AMF3 bytes (WITHOUT the 7-byte game header)."""
    message_id = str(uuid.uuid4()).upper()
    client_id = str(uuid.uuid4()).upper()
    props = [
        ("headers", _amf3_headers()),
        ("correlationId", _amf3_string(correlation_id)),
        ("body", body_payload),
        ("messageId", _amf3_string(message_id)),
        ("clientId", _amf3_string(client_id)),
        ("timestamp", _amf3_double(time.time() * 1000)),
    ]
    return _amf3_object(props, class_name="flex.messaging.messages.AcknowledgeMessage")


def _make_ack_message(correlation_id: str, body_payload: bytes) -> bytes:

    """Wrap game data in a DSMessaging AcknowledgeMessage with sealed properties."""

    return _build_response(_ack_bytes(correlation_id, body_payload))





def client_ping_reply(request_bytes: bytes) -> bytes:

    correlation_id = ""

    try:

        request_envelope = decode_envelope(request_bytes)

        request_values = request_envelope["bodies"][0]["value"]

        command = request_values[0] if isinstance(request_values, list) and request_values else request_values

        if isinstance(command, AMFObject):

            command = plain(command)

        correlation_id = command.get("messageId", "") if isinstance(command, dict) else ""

    except Exception:

        pass

    if not correlation_id:

        correlation_id = "79EC77F4-3E6D-4CC4-84B9-3C181088FEF6"



    ping_body = _amf3_object([

        ("error_code", _amf3_int(0)),

        ("request_code", _amf3_int(0)),

    ])

    return _make_ack_message(correlation_id, ping_body)





def _build_role_data() -> bytes:

    """Build a full role_data AMF3 sealed object matching OPDataManager::onRoleData exactly."""

    now_ts = float(int(time.time()))

    role = _get_role()
    fig = role.get("figure", 1008)
    if fig < 1000:
        fig = FIGURE_MAP.get(fig, 1008)
    cfg = PROTAGONIST_CONFIG.get(fig, PROTAGONIST_CONFIG[1008])

    fields = [

        ("role_id",                 _amf3_int(role["role_id"])),

        ("name",                    _amf3_string(role["name"])),

        ("level",                   _amf3_int(role["level"])),

        ("face",                    _amf3_int(cfg["face"])),

        ("figure",                  _amf3_int(cfg["figure"])),

        ("nation",                  _amf3_int(role["nation"])),

        ("vip_level",               _amf3_int(int(role.get("vip_level", 10)))),

        ("scene_id",                _amf3_int(role["scene_id"])),

        ("scene_x",                 _amf3_int(role["scene_x"])),

        ("scene_y",                 _amf3_int(role["scene_y"])),

        ("arena_rank",              _amf3_int(0)),

        ("arena_reward_get",        _amf3_bool(False)),

        ("free_token",              _amf3_int(0)),

        ("prestige",                _amf3_int(0)),

        ("action_point_reward_get", _amf3_bool(False)),

        ("ap_max",                  _amf3_int(role["ap_max"])),

        ("action_point",            _amf3_int(role["action_point"])),

        ("is_hunting",              _amf3_bool(False)),

        ("is_team_replaced",        _amf3_bool(False)),

        ("gold",                    _amf3_int(role["gold"])),

        ("copper",                  _amf3_double(float(role["copper"]))),

        ("prestige_reward_get",     _amf3_bool(False)),

        ("camp_bot_id",             _amf3_int(0)),

        ("army_bot_id",             _amf3_int(0)),

        ("exploit",                 _amf3_int(int(role.get("exploit", 0)))),

        ("ap_charge",               _amf3_int(0)),

        ("is_in_team",              _amf3_bool(False)),

        ("login_days",              _amf3_int(role["login_days"])),
        ("daily_login",             _amf3_int(int(role.get("daily_login", role.get("login_days", 1))))),

        ("vip_charge",              _amf3_int(int(role.get("vip_charge", 500000)))),

        ("junior_token",            _amf3_int(0)),

        ("middle_token",            _amf3_int(0)),

        ("raid_sweep_id",           _amf3_int(0)),

        ("create_reward_get",       _amf3_bool(False)),

        ("step",                    _amf3_int(14)),

        ("legion_id",               _amf3_int(0)),

        ("legion_name",             _amf3_string("")),

        ("raid_count",              _amf3_int(0)),
        ("experience",              _amf3_int(int(role.get("exp", role.get("experience", 0))))),
        ("skill_point",             _amf3_int(role.get("skill_point", 0))),
        ("officium",                _amf3_int(role.get("officium", 1))),

        ("server_time",             _amf3_double(now_ts)),

        ("bot_general_start",       _amf3_double(0.0)),
        ("training_open",           _amf3_int(1)),
        ("talent_open",             _amf3_int(1)),

    ]

    return _amf3_object(fields)





def _build_task_data(override_complete_task: int = None) -> bytes:
    role = _get_role()
    completed = role.get("completed_tasks", [])
    if override_complete_task:
        last_completed = override_complete_task
    else:
        last_completed = completed[-1] if completed else 100000
    current = role.get("current_task", 100001) or 100001
    task_accepted = role.get("task_accepted", False)
    task_completed = role.get("task_completed", False)

    follow_npc = 1
    if current:
        try:
            t_info = get_task(current)
            if t_info:
                follow_npc = int(t_info.get("get_npc") or t_info.get("submit_npc") or 1)
        except Exception:
            pass

    if current == 100001:
        task_accepted = True

    if current and task_accepted:
        do_val = 1 if task_completed else 0
        task_elem = _amf3_object([
            ("cfg_task_id", _amf3_int(current)),
            ("do_value",    _amf3_int(do_val)),
        ])
        mem_tasks = [task_elem]
        get_task = current
        acceptable_task = 0
    elif current and not task_accepted:
        mem_tasks = []
        get_task = 0
        acceptable_task = current
    else:
        mem_tasks = []
        get_task = 0
        acceptable_task = 0

    branch_task_ids = [200001, 200002, 200003]
    acc_branch_task_ids = [200004, 200005, 300001, 400001]

    mem_branch_tasks = []
    for b_id in branch_task_ids:
        mem_branch_tasks.append(_amf3_object([
            ("cfg_task_id",  _amf3_int(b_id)),
            ("do_value",     _amf3_int(0)),
            ("complete_num", _amf3_int(0)),
            ("type",         _amf3_int(2)),
        ]))

    acc_branch_tasks = []
    for b_id in acc_branch_task_ids:
        acc_branch_tasks.append(_amf3_object([
            ("cfg_task_id",  _amf3_int(b_id)),
            ("do_value",     _amf3_int(0)),
            ("complete_num", _amf3_int(0)),
            ("type",         _amf3_int(2)),
        ]))

    fields = [
        ("action",                      _amf3_int(0)),
        ("complete_task",               _amf3_int(last_completed)),
        ("follow_npc",                  _amf3_int(follow_npc)),
        ("accpetable_task",             _amf3_int(acceptable_task)),
        ("acceptable_task",             _amf3_int(acceptable_task)),
        ("get_task",                    _amf3_int(get_task)),
        ("mem_task_list",               _amf3_array(mem_tasks)),
        ("mem_branch_task_list",        _amf3_array(mem_branch_tasks)),
        ("accpetable_branch_task_list", _amf3_array(acc_branch_tasks)),
        ("acceptable_branch_task_list", _amf3_array(acc_branch_tasks)),
        ("daily_task_list",             _amf3_array(mem_branch_tasks)),
        ("mem_daily_task_list",         _amf3_array(mem_branch_tasks)),
    ]
    return _amf3_object(fields)



PROTAGONIST_CONFIG = {
    1001: {"cfg_id": 10031001, "job": 10001, "skill": 11003, "name": "男剑豪", "figure": 1001, "face": 1001},
    1002: {"cfg_id": 10031009, "job": 10001, "skill": 11003, "name": "女剑豪", "figure": 1002, "face": 1002},
    1003: {"cfg_id": 10032010, "job": 10002, "skill": 12021, "name": "男狙击", "figure": 1003, "face": 1003},
    1004: {"cfg_id": 10032002, "job": 10002, "skill": 12021, "name": "女狙击", "figure": 1004, "face": 1004},
    1005: {"cfg_id": 10033011, "job": 10003, "skill": 13042, "name": "男航海", "figure": 1005, "face": 1005},
    1006: {"cfg_id": 10033003, "job": 10003, "skill": 13042, "name": "女航海", "figure": 1006, "face": 1006},
    1007: {"cfg_id": 10034004, "job": 10004, "skill": 14067, "name": "男船医", "figure": 1007, "face": 1007},
    1008: {"cfg_id": 10034020, "job": 10004, "skill": 14067, "name": "女船医", "figure": 1008, "face": 1008},
    10004: {"cfg_id": 10031001, "job": 10001, "skill": 11003, "name": "男剑豪", "figure": 1001, "face": 1001},
    10005: {"cfg_id": 10034020, "job": 10004, "skill": 14067, "name": "女船医", "figure": 1008, "face": 1008},
}

FIGURE_MAP = {
    1: 1001,  # 男剑豪
    2: 1002,  # 女剑豪
    3: 1003,  # 男狙击
    4: 1004,  # 女狙击
    5: 1005,  # 男航海
    6: 1006,  # 女航海
    7: 1007,  # 男船医
    8: 1008,  # 女船医
}

ITEM_PART_LOOKUP = {
    200327: 1,  # 传家宝·十字短剑 (武器)
    200328: 1,  # 传家宝·航海日志 (副手/武器)
    200329: 2,  # 传家宝·布甲 (衣服)
    200330: 3,  # 传家宝·硬皮靴 (鞋子)
    200331: 4,  # 传家宝·毛纺披风 (披风)
    200332: 5,  # 传家宝·硬皮帽 (帽子)
}

# 从 sqlite 动态预载所有装备部位映射 (880+ 种装备)，确保背包所有武器装备均能精准识别部位
CFG_ITEM_PARTS = {}
try:
    if os.path.exists(DB_PATH):
        _conn = sqlite3.connect(DB_PATH)
        _cur = _conn.cursor()
        _cur.execute("SELECT cfg_item_id, part FROM cfg_item WHERE part > 0")
        for _cid, _part in _cur.fetchall():
            CFG_ITEM_PARTS[_cid] = _part
        _conn.close()
        print(f"Loaded {len(CFG_ITEM_PARTS)} equipment part configs from sqlite db.", flush=True)
except Exception as _e:
    print(f"Warning: Failed to load CFG_ITEM_PARTS from db: {_e}", flush=True)

SLOT_NAME_MAP = {
    1: "weapon",   # 武器 (Part 1, Slot 1, offset 0x60)
    2: "armor",    # 衣服 (Part 2, Slot 2, offset 0x64)
    3: "horse",    # 鞋子/坐骑 (Part 3, Slot 3, offset 0x68)
    4: "cloak",    # 披风 (Part 4, Slot 4, offset 0x6c)
    5: "misc",     # 帽子 (Part 5, Slot 5, offset 0x74, kbbtn1 reads 0x74)
    6: "amulet",   # 戒指 (Part 6, Slot 6, offset 0x70, kbbtn6 reads 0x70)
}

def _get_item_part(item: dict) -> int:
    if not isinstance(item, dict):
        return 0
    cfg_id = item.get("cfg_item_id", 0)
    if "part" in item and item["part"]:
        return int(item["part"])
    cfg_info = config_loader.get_item(cfg_id)
    if cfg_info and cfg_info.get("part"):
        return int(cfg_info["part"])
    if cfg_id in CFG_ITEM_PARTS:
        return CFG_ITEM_PARTS[cfg_id]
    return ITEM_PART_LOOKUP.get(cfg_id, 0)


def _calc_general_stats(is_proto: bool, id_val: int, lvl: int) -> dict:
    """Calculate scaled base stats and derived combat attributes based on level.
    Uses authentic formulas from cfg_job (for protagonist) and cfg_general (for companions)."""
    lvl = max(1, int(lvl))
    try:
        conn = sqlite3.connect(DB_PATH)
        c = conn.cursor()
        if is_proto:
            r = c.execute(
                "SELECT str_init, agi_init, sta_init, int_init, str_grow, agi_grow, sta_grow, int_grow, "
                "hp_param, phy_atk_param, phy_def_param, spe_atk_param, spe_def_param, speed_param "
                "FROM cfg_job WHERE cfg_job_id = ?", (id_val,)
            ).fetchone()
            if not r:
                r = c.execute(
                    "SELECT str_init, agi_init, sta_init, int_init, str_grow, agi_grow, sta_grow, int_grow, "
                    "hp_param, phy_atk_param, phy_def_param, spe_atk_param, spe_def_param, speed_param "
                    "FROM cfg_job LIMIT 1"
                ).fetchone()
            s, a, st, it, sg, ag, stg, ig, hp_p, pa_p, pd_p, sa_p, sd_p, spd_p = r
        else:
            r = c.execute(
                "SELECT strength, agility, stamina, intellect, str_grow, agi_grow, sta_grow, int_grow, job "
                "FROM cfg_general WHERE cfg_general_id = ?", (id_val,)
            ).fetchone()
            if not r:
                s, a, st, it, sg, ag, stg, ig = 30, 30, 30, 30, 2.0, 2.0, 2.0, 2.0
            else:
                s, a, st, it, sg, ag, stg, ig, job = r
            hp_p = pa_p = pd_p = sa_p = sd_p = spd_p = 1.0
        conn.close()
    except Exception:
        s, a, st, it, sg, ag, stg, ig = 25, 25, 30, 25, 2.5, 2.5, 3.0, 2.0
        hp_p = pa_p = pd_p = sa_p = sd_p = spd_p = 1.0

    strength = round(float(s) + (lvl - 1) * float(sg), 1)
    agility = round(float(a) + (lvl - 1) * float(ag), 1)
    stamina = round(float(st) + (lvl - 1) * float(stg), 1)
    intellect = round(float(it) + (lvl - 1) * float(ig), 1)

    hp = int(500 + stamina * 15 * float(hp_p or 1.0) + lvl * 20)
    pa = int(80 + strength * 3.5 * float(pa_p or 1.0) + lvl * 8)
    pd = int(40 + stamina * 2.0 * float(pd_p or 1.0) + lvl * 5)
    sa = int(80 + intellect * 3.5 * float(sa_p or 1.0) + lvl * 8)
    sd = int(40 + intellect * 2.0 * float(sd_p or 1.0) + lvl * 5)
    spd = int(80 + agility * 2.0 * float(spd_p or 1.0) + lvl * 4)

    return {
        "strength": strength,
        "agility": agility,
        "stamina": stamina,
        "intellect": intellect,
        "str_grow": float(sg),
        "agi_grow": float(ag),
        "sta_grow": float(stg),
        "int_grow": float(ig),
        "hp": hp,
        "hp_max": hp,
        "physical_attack": pa,
        "physical_defence": pd,
        "spell_attack": sa,
        "spell_defence": sd,
        "speed": spd,
    }


def _get_grow_limits(is_proto: bool, job_or_gid: int, lvl: int) -> dict:
    """Calculate authentic cultivation growth base and ceilings based on cfg_job / cfg_general."""
    lvl = max(1, int(lvl))
    try:
        conn = sqlite3.connect(DB_PATH)
        c = conn.cursor()
        if is_proto:
            r = c.execute(
                "SELECT str_grow, agi_grow, sta_grow, int_grow, str_add_ceil_param, agi_add_ceil_param, sta_add_ceil_param, int_add_ceil_param, str_add_ceil, agi_add_ceil, sta_add_ceil, int_add_ceil "
                "FROM cfg_job WHERE cfg_job_id = ?", (job_or_gid,)
            ).fetchone()
            if not r:
                r = c.execute(
                    "SELECT str_grow, agi_grow, sta_grow, int_grow, str_add_ceil_param, agi_add_ceil_param, sta_add_ceil_param, int_add_ceil_param, str_add_ceil, agi_add_ceil, sta_add_ceil, int_add_ceil "
                    "FROM cfg_job LIMIT 1"
                ).fetchone()
        else:
            r = c.execute(
                "SELECT str_grow, agi_grow, sta_grow, int_grow, str_add_ceil_param, agi_add_ceil_param, sta_add_ceil_param, int_add_ceil_param, str_add_ceil, agi_add_ceil, sta_add_ceil, int_add_ceil "
                "FROM cfg_general WHERE cfg_general_id = ?", (job_or_gid,)
            ).fetchone()
            if not r:
                r = (2.5, 2.5, 2.5, 2.5, 0.25, 0.25, 0.25, 0.25, 1.0, 1.0, 1.0, 1.0)
        conn.close()
    except Exception:
        r = (2.5, 2.5, 2.5, 2.5, 0.25, 0.25, 0.25, 0.25, 1.0, 1.0, 1.0, 1.0)

    sg, ag, stg, ig, sap, aap, stap, iap, sac, aac, stac, iac = r
    sg_int = round(float(sg or 2.0) * 100)
    ag_int = round(float(ag or 2.0) * 100)
    stg_int = round(float(stg or 2.0) * 100)
    ig_int = round(float(ig or 2.0) * 100)

    step = lvl // 10
    max_add_str = int(step * float(sap or 0.25) * 100 + float(sac or 1.0) * 100)
    max_add_agi = int(step * float(aap or 0.25) * 100 + float(aac or 1.0) * 100)
    max_add_sta = int(step * float(stap or 0.25) * 100 + float(stac or 1.0) * 100)
    max_add_int = int(step * float(iap or 0.25) * 100 + float(iac or 1.0) * 100)

    return {
        "str_grow": sg_int, "agi_grow": ag_int, "sta_grow": stg_int, "int_grow": ig_int,
        "strength_ceil": max_add_str / 100.0, "agility_ceil": max_add_agi / 100.0,
        "stamina_ceil": max_add_sta / 100.0, "intellect_ceil": max_add_int / 100.0,
        "max_add_str": max_add_str, "max_add_agi": max_add_agi,
        "max_add_sta": max_add_sta, "max_add_int": max_add_int,
    }


def _build_generals_list() -> bytes:
    role = _get_role()
    fig = role.get("figure", 1008)
    if fig < 1000:
        fig = FIGURE_MAP.get(fig, 1008)
    if fig not in PROTAGONIST_CONFIG:
        fig = 1008
    cfg = PROTAGONIST_CONFIG[fig]

    # 动态根据当前实际穿戴的装备，同步将军身上的六大装备槽位
    items = _get_player_items()
    active_eq = {"weapon": 0, "armor": 0, "horse": 0, "cloak": 0, "amulet": 0, "misc": 0}
    proto_fig_val = cfg["figure"]
    proto_ids = {proto_fig_val, role.get("figure", 1001), 1001, 1007, 1008, 0, 1}
    for it in items:
        if it.get("equiped") and it.get("general_id") in proto_ids:
            part = _get_item_part(it)
            if part in SLOT_NAME_MAP:
                active_eq[SLOT_NAME_MAP[part]] = it["item_id"]
    role["equipments"] = active_eq

    starter_skill = _amf3_object([
        ("cfg_skill_id", _amf3_int(cfg["skill"])),
        ("idx",          _amf3_int(1)),
        ("level",        _amf3_int(1)),
    ])

    # ★ Build skills array: starter (idx=1) + any awakened slots 2/3
    skills_list = [starter_skill]
    awakened = role.get("awakened_skills", {})
    aw_key = str(cfg["figure"])
    if aw_key in awakened:
        for slot_idx, entry in sorted(awakened[aw_key].items()):
            # 兼容旧格式: int = skill_id, dict = {cfg_skill_id, level}
            if isinstance(entry, dict):
                skill_id = int(entry.get("cfg_skill_id", 0))
                sk_level = int(entry.get("level", 1))
            else:
                skill_id = int(entry)
                sk_level = 1
            # ★ 最高 10 级（客户端限制）
            sk_level = min(sk_level, 10)
            skills_list.append(_amf3_object([
                ("cfg_skill_id", _amf3_int(skill_id)),
                ("idx",          _amf3_int(int(slot_idx))),
                ("level",        _amf3_int(sk_level)),
            ]))

    role_lvl = int(role.get("level", 1))
    proto_stats = _calc_general_stats(True, cfg["job"], role_lvl)
    grow_info = _get_grow_limits(True, cfg["job"], role_lvl)

    # 严格按照从 libOnePiece.so (0x403c54) 逆向出的所有 80+ 字段下发，彻底杜绝栈内存野指针
    main_general = _amf3_object([
        # 基础标识
        ("id",                _amf3_int(cfg["figure"])),
        ("general_id",        _amf3_int(cfg["figure"])),
        ("cfg_general_id",    _amf3_int(cfg["cfg_id"])),
        ("is_role",           _amf3_bool(True)),
        ("have_inherited",    _amf3_bool(False)),
        ("marole",            _amf3_int(1)),
        ("name",              _amf3_string(role.get("name", "妮可罗宾"))),
        ("job",               _amf3_int(cfg["job"])),
        ("level",             _amf3_int(role_lvl)),
        ("figure",            _amf3_int(cfg["figure"])),
        ("face",              _amf3_int(cfg["face"])),
        ("quality",           _amf3_int(1)),
        ("experience",        _amf3_int(int(role.get("experience", role.get("exp", 0))))),
        ("skill_point",       _amf3_int(role.get("skill_point", 5))),
        ("skills",            _amf3_array(skills_list)),

        # 四维基础 (根据等级动态成长)
        ("strength",          _amf3_double(float(proto_stats["strength"]))),
        ("agility",           _amf3_double(float(proto_stats["agility"]))),
        ("intellect",         _amf3_double(float(proto_stats["intellect"]))),
        ("stamina",           _amf3_double(float(proto_stats["stamina"]))),

        # 初始四维 (double)
        ("init_strength",     _amf3_double(float(proto_stats["strength"]))),
        ("init_agility",      _amf3_double(float(proto_stats["agility"]))),
        ("init_intellect",    _amf3_double(float(proto_stats["intellect"]))),
        ("init_stamina",      _amf3_double(float(proto_stats["stamina"]))),

        # 四维培养上限 (double: CDlgBMPolish::init SetRange 为 str_grow + strength_ceil * 100)
        ("strength_ceil",     _amf3_double(float(grow_info["strength_ceil"]))),
        ("agility_ceil",      _amf3_double(float(grow_info["agility_ceil"]))),
        ("intellect_ceil",    _amf3_double(float(grow_info["intellect_ceil"]))),
        ("stamina_ceil",      _amf3_double(float(grow_info["stamina_ceil"]))),

        # 四维成长 (int: 百分比整数，与 cfg_general / cfg_job * 100 严格对应)
        ("str_grow",          _amf3_int(int(grow_info["str_grow"]))),
        ("agi_grow",          _amf3_int(int(grow_info["agi_grow"]))),
        ("sta_grow",          _amf3_int(int(grow_info["sta_grow"]))),
        ("int_grow",          _amf3_int(int(grow_info["int_grow"]))),
        ("str_grow_add",      _amf3_int(int(role.get("str_grow_add", 0)))),
        ("agi_grow_add",      _amf3_int(int(role.get("agi_grow_add", 0)))),
        ("sta_grow_add",      _amf3_int(int(role.get("sta_grow_add", 0)))),
        ("int_grow_add",      _amf3_int(int(role.get("int_grow_add", 0)))),
        ("temp_str_grow_add", _amf3_int(int(role.get("temp_str_grow_add", 0)))),
        ("temp_agi_grow_add", _amf3_int(int(role.get("temp_agi_grow_add", 0)))),
        ("temp_sta_grow_add", _amf3_int(int(role.get("temp_sta_grow_add", 0)))),
        ("temp_int_grow_add", _amf3_int(int(role.get("temp_int_grow_add", 0)))),

        # 体力与生命 (int)
        ("health_point",      _amf3_int(proto_stats["hp"])),
        ("health_point_max",  _amf3_int(proto_stats["hp_max"])),

        # 攻防属性 (int)
        ("physical_attack",   _amf3_int(proto_stats["physical_attack"])),
        ("physical_defence",  _amf3_int(proto_stats["physical_defence"])),
        ("spell_attack",      _amf3_int(proto_stats["spell_attack"])),
        ("spell_defence",     _amf3_int(proto_stats["spell_defence"])),

        # 战斗命中/闪避/暴击/速度 (int)
        ("hit",               _amf3_int(100)),       # 10.0%
        ("dodge",             _amf3_int(50)),        # 5.0%
        ("critic",            _amf3_int(160)),       # 16.0%
        ("critic_resist",     _amf3_int(0)),
        ("speed",             _amf3_int(proto_stats["speed"])),

        # 破防/减伤/格挡 (注意字段名必须是 parray)
        ("physical_penerate", _amf3_int(0)),
        ("spell_penerate",    _amf3_int(0)),
        ("physical_derate",   _amf3_int(0)),
        ("spell_derate",      _amf3_int(60)),
        ("parray",            _amf3_int(0)),
        ("parry_penerate",    _amf3_int(0)),

        # 装备槽位 (读取当前动态穿戴的装备ID，精准映射到角色装备栏)
        ("weapon",            _amf3_int(active_eq.get("weapon", 0))),
        ("armor",             _amf3_int(active_eq.get("armor", 0))),
        ("horse",             _amf3_int(active_eq.get("horse", 0))),
        ("cloak",             _amf3_int(active_eq.get("cloak", 0))),
        ("amulet",            _amf3_int(active_eq.get("amulet", 0))),
        ("misc",              _amf3_int(active_eq.get("misc", 0))),

        # 霸气 (int 0)
        ("weapon_haki",       _amf3_int(0)),
        ("armor_haki",        _amf3_int(0)),
        ("horse_haki",        _amf3_int(0)),
        ("cloak_haki",        _amf3_int(0)),
        ("amulet_haki",       _amf3_int(0)),
        ("misc_haki",         _amf3_int(0)),

        # 评分体系 (int 0)
        ("equip_score",       _amf3_int(0)),
        ("gem_score",         _amf3_int(0)),
        ("suit_score",        _amf3_int(0)),
        ("soul_score",        _amf3_int(0)),
        ("ship_score",        _amf3_int(0)),
        ("talent_score",      _amf3_int(0)),
        ("practice_score",    _amf3_int(0)),
        ("level_score",       _amf3_int(0)),
        ("grow_score",        _amf3_int(0)),
        ("skill_score",       _amf3_int(0)),

        # 命魂体系 (int 0)
        ("main_soul",         _amf3_int(0)),
        ("vice_soul",         _amf3_int(0)),
        ("tert_soul",         _amf3_int(0)),
        ("fourth_soul",       _amf3_int(0)),
        ("fifth_soul",        _amf3_int(0)),
        ("sixth_soul",        _amf3_int(0)),
        ("seventh_soul",      _amf3_int(0)),
        ("eighth_soul",       _amf3_int(0)),

        # 特殊系统与条件限制
        ("cfg_advance_id",    _amf3_int(0)),
        ("intimacy",          _amf3_int(0)),
        ("sea_god",           _amf3_int(0)),
        ("special_skill_id",  _amf3_int(0)),
        ("general_skill_deal",_amf3_int(0)),
        ("con_role_level",    _amf3_bool(False)),
        ("con_role_camp",     _amf3_bool(False)),
    ])

    generals_all = [main_general]
    for g in role.get("generals", []):
        if isinstance(g, dict) and g.get("cfg_general_id"):
            generals_all.append(_make_companion_general_amf3(g))

    return _amf3_array(generals_all)


def _make_companion_general_amf3(g: dict) -> bytes:
    role = _get_role()
    gid = int(g.get("general_id", 1002))
    cfg_id = int(g.get("cfg_general_id", gid))
    name = str(g.get("name", "船员"))
    job = int(g.get("job", 10001))
    level = int(g.get("level", 1))
    fig = int(g.get("figure", gid if gid > 1000 else 1002))
    qual = int(g.get("quality", 3))
    exp = int(g.get("experience", g.get("exp", 0)))
    starter_skill_id = int(g.get("skill", 11004))
    if starter_skill_id == 51001 and cfg_id != 10041220:
        try:
            conn = sqlite3.connect(DB_PATH)
            row = conn.execute("SELECT cfg_skill_id FROM cfg_general WHERE cfg_general_id = ?", (cfg_id,)).fetchone()
            conn.close()
            if row and row[0]:
                starter_skill_id = int(row[0])
                g["skill"] = starter_skill_id
        except Exception:
            pass

    skill_elem = _amf3_object([
        ("cfg_skill_id", _amf3_int(starter_skill_id)),
        ("idx",          _amf3_int(1)),
        ("level",        _amf3_int(1)),
    ])

    # 动态组装伙伴副技能/被动技能槽
    skills_list = [skill_elem]
    awakened = role.get("awakened_skills", {})
    aw_key = str(gid)
    if aw_key in awakened:
        for slot_idx, entry in sorted(awakened[aw_key].items()):
            if isinstance(entry, dict):
                skill_id = int(entry.get("cfg_skill_id", 0))
                sk_level = int(entry.get("level", 1))
            else:
                skill_id = int(entry)
                sk_level = 1
            sk_level = min(sk_level, 10)
            skills_list.append(_amf3_object([
                ("cfg_skill_id", _amf3_int(skill_id)),
                ("idx",          _amf3_int(int(slot_idx))),
                ("level",        _amf3_int(sk_level)),
            ]))

    # 动态根据当前实际穿戴的装备，同步伙伴身上的装备槽位
    items = _get_player_items()
    c_eq = {"weapon": 0, "armor": 0, "horse": 0, "cloak": 0, "amulet": 0, "misc": 0}
    for it in items:
        if it.get("equiped") and it.get("general_id") == gid:
            part = _get_item_part(it)
            if part in SLOT_NAME_MAP:
                c_eq[SLOT_NAME_MAP[part]] = it["item_id"]

    c_stats = _calc_general_stats(False, cfg_id, level)
    c_grow = _get_grow_limits(False, cfg_id, level)

    return _amf3_object([
        ("id",                _amf3_int(gid)),
        ("general_id",        _amf3_int(gid)),
        ("cfg_general_id",    _amf3_int(cfg_id)),
        ("is_role",           _amf3_bool(False)),
        ("have_inherited",    _amf3_bool(False)),
        ("marole",            _amf3_int(0)),
        ("name",              _amf3_string(name)),
        ("job",               _amf3_int(job)),
        ("level",             _amf3_int(level)),
        ("figure",            _amf3_int(fig)),
        ("face",              _amf3_int(fig)),
        ("quality",           _amf3_int(qual)),
        ("experience",        _amf3_int(exp)),
        ("skill_point",       _amf3_int(0)),
        ("skills",            _amf3_array(skills_list)),
        ("strength",          _amf3_double(float(c_stats["strength"]))),
        ("agility",           _amf3_double(float(c_stats["agility"]))),
        ("intellect",         _amf3_double(float(c_stats["intellect"]))),
        ("stamina",           _amf3_double(float(c_stats["stamina"]))),

        ("init_strength",     _amf3_double(float(c_stats["strength"]))),
        ("init_agility",      _amf3_double(float(c_stats["agility"]))),
        ("init_intellect",    _amf3_double(float(c_stats["intellect"]))),
        ("init_stamina",      _amf3_double(float(c_stats["stamina"]))),

        ("strength_ceil",     _amf3_double(float(c_grow["strength_ceil"]))),
        ("agility_ceil",      _amf3_double(float(c_grow["agility_ceil"]))),
        ("intellect_ceil",    _amf3_double(float(c_grow["intellect_ceil"]))),
        ("stamina_ceil",      _amf3_double(float(c_grow["stamina_ceil"]))),

        ("str_grow",          _amf3_int(int(c_grow["str_grow"]))),
        ("agi_grow",          _amf3_int(int(c_grow["agi_grow"]))),
        ("sta_grow",          _amf3_int(int(c_grow["sta_grow"]))),
        ("int_grow",          _amf3_int(int(c_grow["int_grow"]))),

        ("str_grow_add",      _amf3_int(int(g.get("str_grow_add", 0)))),
        ("agi_grow_add",      _amf3_int(int(g.get("agi_grow_add", 0)))),
        ("sta_grow_add",      _amf3_int(int(g.get("sta_grow_add", 0)))),
        ("int_grow_add",      _amf3_int(int(g.get("int_grow_add", 0)))),

        ("temp_str_grow_add", _amf3_int(int(g.get("temp_str_grow_add", 0)))),
        ("temp_agi_grow_add", _amf3_int(int(g.get("temp_agi_grow_add", 0)))),
        ("temp_sta_grow_add", _amf3_int(int(g.get("temp_sta_grow_add", 0)))),
        ("temp_int_grow_add", _amf3_int(int(g.get("temp_int_grow_add", 0)))),

        ("health_point",      _amf3_int(c_stats["hp"])),
        ("health_point_max",  _amf3_int(c_stats["hp_max"])),
        ("physical_attack",   _amf3_int(c_stats["physical_attack"])),
        ("physical_defence",  _amf3_int(c_stats["physical_defence"])),
        ("spell_attack",      _amf3_int(c_stats["spell_attack"])),
        ("spell_defence",     _amf3_int(c_stats["spell_defence"])),
        ("speed",             _amf3_int(c_stats["speed"])),
        ("hit",               _amf3_int(100)),
        ("dodge",             _amf3_int(10)),
        ("critic",            _amf3_int(15)),
        ("anti_critic",       _amf3_int(5)),
        ("parray",            _amf3_int(10)),
        ("anti_parry",        _amf3_int(5)),
        ("weapon",            _amf3_int(c_eq.get("weapon", 0))),
        ("armor",             _amf3_int(c_eq.get("armor", 0))),
        ("horse",             _amf3_int(c_eq.get("horse", 0))),
        ("cloak",             _amf3_int(c_eq.get("cloak", 0))),
        ("amulet",            _amf3_int(c_eq.get("amulet", 0))),
        ("misc",              _amf3_int(c_eq.get("misc", 0))),
        ("weapon_hole",       _amf3_int(0)),
        ("armor_hole",        _amf3_int(0)),
        ("horse_hole",        _amf3_int(0)),
        ("cloak_hole",        _amf3_int(0)),
        ("amulet_hole",       _amf3_int(0)),
        ("misc_hole",         _amf3_int(0)),
        ("weapon_haki",       _amf3_int(0)),
        ("armor_haki",        _amf3_int(0)),
        ("horse_haki",        _amf3_int(0)),
        ("cloak_haki",        _amf3_int(0)),
        ("amulet_haki",       _amf3_int(0)),
        ("misc_haki",         _amf3_int(0)),
        ("equip_score",       _amf3_int(0)),
        ("gem_score",         _amf3_int(0)),
        ("suit_score",        _amf3_int(0)),
        ("soul_score",        _amf3_int(0)),
        ("ship_score",        _amf3_int(0)),
        ("talent_score",      _amf3_int(0)),
        ("practice_score",    _amf3_int(0)),
        ("level_score",       _amf3_int(0)),
        ("grow_score",        _amf3_int(0)),
        ("skill_score",       _amf3_int(0)),
        ("main_soul",         _amf3_int(0)),
        ("vice_soul",         _amf3_int(0)),
        ("tert_soul",         _amf3_int(0)),
        ("fourth_soul",       _amf3_int(0)),
        ("fifth_soul",        _amf3_int(0)),
        ("sixth_soul",        _amf3_int(0)),
        ("seventh_soul",      _amf3_int(0)),
        ("eighth_soul",       _amf3_int(0)),
        ("cfg_advance_id",    _amf3_int(0)),
        ("intimacy",          _amf3_int(0)),
        ("sea_god",           _amf3_int(0)),
        ("special_skill_id",  _amf3_int(0)),
        ("general_skill_deal",_amf3_int(0)),
        ("con_role_level",    _amf3_bool(False)),
        ("con_role_camp",     _amf3_bool(False)),
    ])


def _get_formation_dict(role: dict) -> dict:
    formation = role.setdefault("formation", {})
    fig = role.get("figure", 1008)
    if fig < 1000:
        fig = FIGURE_MAP.get(fig, 1008)
    if fig not in PROTAGONIST_CONFIG:
        fig = 1008
    cfg = PROTAGONIST_CONFIG[fig]
    gen_id = cfg["figure"]

    gens = role.get("generals", [])
    if not formation:
        formation["1"] = gen_id
        for idx, g in enumerate(gens[:8]):
            formation[str(idx + 2)] = int(g.get("general_id", 0))
        for p in range(len(gens) + 2, 10):
            formation[str(p)] = 0
    return formation


def _build_formations_list() -> bytes:
    role = _get_role()
    fmt_dict = _get_formation_dict(role)
    fields = [
        ("cfg_formation_id", _amf3_int(1001)),
        ("level",            _amf3_int(1)),
    ]
    for i in range(1, 10):
        val = int(fmt_dict.get(str(i), fmt_dict.get(i, 0)))
        fields.append((f"pos_{i}", _amf3_int(val)))
        fields.append((f"pos{i}", _amf3_int(val)))
    return _amf3_array([_amf3_object(fields)])





def _build_star_general_object(general_id: int = 10042230, exp: int = 0, free_times: int = 5):
    role = _get_role()
    if general_id == 10042230 and role.get("generals"):
        first_gen = role["generals"][0]
        if isinstance(first_gen, dict) and first_gen.get("cfg_general_id"):
            general_id = int(first_gen["cfg_general_id"])
    fields = [
        ("star",        _amf3_int(2)),
        ("exp",         _amf3_int(exp)),
        ("max_exp",     _amf3_int(100)),
        ("free_times",  _amf3_int(free_times)),
        ("cd_time",     _amf3_int(0)),
        ("silver_cost", _amf3_int(1000)),
        ("gold_cost",   _amf3_int(10)),
        ("general_id",  _amf3_int(general_id)),
    ]
    return _amf3_object(fields)


def _build_general_data() -> bytes:
    """Build general data container object expected by onGeneral / opLoginData."""
    role = _get_role()
    star_gen = _build_star_general_object()

    star_list = []
    try:
        conn = sqlite3.connect(DB_PATH)
        rows = conn.execute("SELECT cfg_general_id FROM cfg_general WHERE cfg_general_id > 10000000 LIMIT 30").fetchall()
        conn.close()
        for r in rows:
            gid = int(r[0])
            star_list.append(_amf3_object([
                ("id",                  _amf3_int(gid)),
                ("general_id",          _amf3_int(gid)),
                ("cfg_general_id",      _amf3_int(gid)),
                ("star_general_id",     _amf3_int(gid)),
                ("cfg_star_general_id", _amf3_int(gid)),
                ("star",                _amf3_int(2)),
                ("level",               _amf3_int(1)),
                ("exp",                 _amf3_int(0)),
                ("max_exp",             _amf3_int(100)),
                ("favor",               _amf3_int(10)),
                ("state",               _amf3_int(1)),
                ("is_open",             _amf3_int(1)),
                ("is_unlock",           _amf3_int(1)),
                ("free_times",          _amf3_int(5)),
                ("cd_time",             _amf3_int(0)),
                ("silver_cost",         _amf3_int(1000)),
                ("gold_cost",           _amf3_int(10)),
            ]))
    except Exception:
        pass

    talent_items = []
    awakened = role.get("awakened_talents", {})
    try:
        conn = sqlite3.connect(DB_PATH)
        cur = conn.cursor()
        for r in cur.execute("SELECT cfg_talent_id, name, require_officium, max_level FROM cfg_talent ORDER BY cfg_talent_id"):
            tid, tname, req_off, max_lvl = r
            tid = int(tid)
            learned = int(awakened.get(str(tid), awakened.get(tid, 0)))
            talent_items.append(_amf3_object([
                ("cfg_talent_id",     _amf3_int(tid)),
                ("name",              _amf3_string(str(tname))),
                ("require_officium",  _amf3_int(int(req_off))),
                ("max_level",         _amf3_int(int(max_lvl))),
                ("level",             _amf3_int(learned)),
                ("is_can_learn",      _amf3_bool(role.get("officium", 0) >= int(req_off))),
            ]))
        conn.close()
    except Exception:
        pass

    fields = [
        ("generals",          _build_generals_list()),
        ("formations",        _build_formations_list()),
        ("formation_level",   _amf3_int(1)),
        ("copper",            _amf3_double(role.get("copper", 100000))),
        ("gold",              _amf3_int(role.get("gold", 5000))),
        ("exploit",           _amf3_int(role.get("exploit", 1000))),
        ("star_general",      star_gen),
        ("STAR_GENERAL",      star_gen),
        ("star_general_list", _amf3_array(star_list)),
        ("star_generals",     _amf3_array(star_list)),
        ("starGeneral",       _amf3_array(star_list)),
        ("talent_list",       _amf3_array(talent_items)),
        ("talents",           _amf3_array(talent_items)),
        ("talent_point",      _amf3_int(role.get("skill_point", 5))),
        ("request_code",      _amf3_int(0)),
    ]

    return _amf3_object(fields)





def _get_player_items() -> list[dict]:
    role = _get_role()
    if "items" not in role or not role["items"]:
        DEFAULT_ITEMS = [
            {"item_id": 1001, "cfg_item_id": 200327, "amount": 1, "level": 1, "star": 0, "rise": 0, "equiped": 0, "general_id": 0, "part": 1},
            {"item_id": 1002, "cfg_item_id": 200328, "amount": 1, "level": 1, "star": 0, "rise": 0, "equiped": 0, "general_id": 0, "part": 1},
            {"item_id": 1003, "cfg_item_id": 200329, "amount": 1, "level": 1, "star": 0, "rise": 0, "equiped": 0, "general_id": 0, "part": 2},
            {"item_id": 1004, "cfg_item_id": 200330, "amount": 1, "level": 1, "star": 0, "rise": 0, "equiped": 0, "general_id": 0, "part": 3},
            {"item_id": 1005, "cfg_item_id": 200331, "amount": 1, "level": 1, "star": 0, "rise": 0, "equiped": 0, "general_id": 0, "part": 4},
            {"item_id": 1006, "cfg_item_id": 200332, "amount": 1, "level": 1, "star": 0, "rise": 0, "equiped": 0, "general_id": 0, "part": 5},
            {"item_id": 1007, "cfg_item_id": 300063, "amount": 10, "level": 1, "star": 0, "rise": 0, "equiped": 0, "general_id": 0, "part": 0},
            {"item_id": 1008, "cfg_item_id": 200001, "amount": 20, "level": 1, "star": 0, "rise": 0, "equiped": 0, "general_id": 0, "part": 0},
        ]
        role["items"] = DEFAULT_ITEMS
        _save()
    return role["items"]

def _save_role(role: dict = None) -> None:
    _save()

def _build_player_items_amf3() -> bytes:
    raw_items = _get_player_items()
    items_amf3: list[bytes] = []
    for item in raw_items:
        cfg_id = int(item.get("cfg_item_id", 0))
        part = _get_item_part(item)
        cfg_info = config_loader.get_item(cfg_id)
        is_equip = (part > 0) or (cfg_info and cfg_info.get("type") == 2)

        fields = [
            ("item_id",      _amf3_int(int(item.get("item_id", 0)))),
            ("cfg_item_id",  _amf3_int(cfg_id)),
        ]

        if is_equip:
            lvl = int(item.get("level", 1))
            # 装备强化等级必须双向对齐 level 与 star，且至少为 1（由客户端 USER_ITEM+0x10 读取展示）
            star_val = int(item.get("star", 0))
            if star_val <= 0:
                star_val = lvl if lvl > 0 else 1
                item["star"] = star_val
            if lvl <= 0:
                lvl = star_val
                item["level"] = lvl
            fields.extend([
                ("level",        _amf3_int(lvl)),
                ("star",         _amf3_int(star_val)),
                ("rise",         _amf3_int(int(item.get("rise", 0)))),
                ("hole1",        _amf3_int(int(item.get("hole1", 0)))),
                ("hole2",        _amf3_int(int(item.get("hole2", 0)))),
                ("hole3",        _amf3_int(int(item.get("hole3", 0)))),
                ("hole4",        _amf3_int(int(item.get("hole4", 0)))),
                ("hole5",        _amf3_int(int(item.get("hole5", 0)))),
                ("hole6",        _amf3_int(int(item.get("hole6", 0)))),
                ("general_id",   _amf3_int(int(item.get("general_id", 0)))),
                ("equiped",      _amf3_bool(bool(item.get("equiped", False)))),
            ])
        else:
            # 消耗品/材料类道具：客户端 USER_ITEM 0x08 联合体必须只传 amount，绝不可下发 level 覆盖数量
            amt = int(item.get("amount", 1))
            fields.extend([
                ("amount",       _amf3_int(amt)),
                ("general_id",   _amf3_int(0)),
                ("equiped",      _amf3_bool(False)),
            ])

        it = _amf3_object(fields)
        items_amf3.append(it)
    return _amf3_array(items_amf3)

def _build_item_data() -> bytes:
    """Build item data matching OPDataManager::supportItem / onItemsData."""
    role = _get_role()
    return _amf3_object([
        ("copper",   _amf3_double(float(role.get("copper", 100000)))),
        ("gold",     _amf3_int(int(role.get("gold", 5000)))),
        ("prestige", _amf3_int(int(role.get("prestige", 100)))),
        ("items",    _build_player_items_amf3()),
    ])

def _build_login_response(correlation_id: str) -> bytes:

    """Build the full opLoginData response body matching OPDataManager::opLoginData."""

    role = _get_role()

    has_role = role.get("created", False)



    # Note: error_code is omitted so m_errorCode defaults to -1 in OPDataManager

    fields = [

        ("soul_data",        b"\x09\x01\x01"),

        ("item_data",        _build_item_data() if has_role else b"\x09\x01\x01"),

        ("is_active",        _amf3_bool(has_role)),

        ("task_data",        _build_task_data() if has_role else b"\x09\x01\x01"),

        ("general_data",     _build_general_data() if has_role else b"\x09\x01\x01"),

        ("request_code",     _amf3_int(0)),

        ("role_data",        _build_role_data()),

        ("passport",         _amf3_string(OFFLINE_PASSPORT)),

        ("is_freezed",       _amf3_bool(False)),

        ("seaBlessIsActive", _amf3_bool(False)),

    ]

    body_amf3 = _amf3_object(fields)

    return _make_ack_message(correlation_id, body_amf3)





# FIGURE_MAP already defined above
pass





def _build_create_role_response(correlation_id: str, name: str, figure: int) -> bytes:

    """Handle CREATEUSERROLE / CREATE.create: save new role and return login data with is_active=True."""

    role = _get_role()

    role["name"] = name if name else "路飞"

    actual_figure = FIGURE_MAP.get(figure, figure if figure > 1000 else 1008)
    cfg = PROTAGONIST_CONFIG.get(actual_figure, PROTAGONIST_CONFIG[1008])

    role["figure"] = actual_figure
    role["face"] = cfg["face"]
    role["job"] = cfg["job"]

    role["created"] = True

    role["current_task"] = 100001

    role["completed_tasks"] = []

    _save()

    print(f"  [CREATE] New role created successfully: name={role['name']!r} code={figure} figure={actual_figure}", flush=True)



    fields = [

        ("soul_data",        b"\x09\x01\x01"),

        ("item_data",        _build_item_data()),

        ("is_active",        _amf3_bool(True)),

        ("task_data",        _build_task_data()),

        ("general_data",     _build_general_data()),

        ("request_code",     _amf3_int(7)),

        ("role_data",        _build_role_data()),

        ("passport",         _amf3_string(OFFLINE_PASSPORT)),

        ("is_freezed",       _amf3_bool(False)),

        ("seaBlessIsActive", _amf3_bool(False)),

    ]

    body_amf3 = _amf3_object(fields)

    return _make_ack_message(correlation_id, body_amf3)





def _build_random_name_response(correlation_id: str) -> bytes:

    """Reply to CREATE.generateRandomName:

    OPDataManager::generateRandomName expects body to be an array with the name string at index 0.

    """

    name = random.choice(RANDOM_NAMES)

    print(f"  [RANDOM NAME] Generated name: {name!r}", flush=True)

    # AMF3 strict array with 1 item: 0x09 + (1 << 1 | 1 = 0x03) + 0x01 (empty assoc) + string

    array_payload = b"\x09\x03\x01" + _amf3_string(name)

    return _make_ack_message(correlation_id, array_payload)





def _build_simple_ack(correlation_id: str, code: int = 0) -> bytes:

    """Generic success acknowledgement with request_code + error_code."""

    fields = [

        ("request_code", _amf3_int(code)),

        ("error_code",   _amf3_int(0)),

    ]

    body_amf3 = _amf3_object(fields)

    return _make_ack_message(correlation_id, body_amf3)





def _make_person(role_id: int, name: str, x: int, y: int, figure: int = 1, face: int = 1, is_npc: int = 0) -> bytes:

    fields = [

        ("role_id",     _amf3_int(role_id)),

        ("name",        _amf3_string(name)),

        ("figure",      _amf3_int(figure)),

        ("face",        _amf3_int(face)),

        ("vip_level",   _amf3_int(10 if not is_npc else 0)),

        ("nation",      _amf3_int(1)),

        ("scene_x",     _amf3_int(x)),

        ("scene_y",     _amf3_int(y)),

        ("is_npc",      _amf3_bool(bool(is_npc))),

        ("quality",     _amf3_int(3 if not is_npc else 1)),

        ("rebirth",     _amf3_int(0)),

        ("main_soul",   _amf3_int(0)),

        ("is_leizhu",   _amf3_bool(False)),

    ]

    return _amf3_object(fields)





def _build_scene_response(correlation_id: str, scene_id: int, x: int, y: int) -> bytes:
    """Reply to SCENE.scene — update coordinates and return scene state matching OPDataManager::onScene.
    NPC list is DYNAMICALLY loaded from cfg_npc by cfg_scene_id."""
    role = _get_role()

    if scene_id >= 2001:
        role["scene_id"] = scene_id
    if x > 0:
        role["scene_x"] = x
    if y > 0:
        role["scene_y"] = y
    _save()

    cur_scene = role.get("scene_id", 2001)
    if cur_scene < 2001:
        cur_scene = 2001
        role["scene_id"] = 2001

    px = role.get("scene_x", 300)
    py = role.get("scene_y", 35)

    fig = role.get("figure", 10004)
    if fig < 1000:
        fig = FIGURE_MAP.get(fig, 10004)
        role["figure"] = fig
        role["face"] = fig

    player_person = _make_person(
        role_id=role["role_id"], name=role["name"], x=px, y=py,
        figure=fig, face=fig, is_npc=0,
    )
    persons = [player_person]

    # ★ DYNAMIC NPC loading from config_loader — supports ALL scenes
    npc_rows = get_npcs_for_scene(cur_scene)
    for nr in npc_rows:
        persons.append(_make_person(
            role_id=int(nr["cfg_npc_id"]),
            name=nr["name"],
            x=int(nr["scene_x"]),
            y=int(nr["scene_y"]),
            figure=int(nr["figure"]),
            face=int(nr["face"]),
            is_npc=1,
        ))
    print(f"  [SCENE {cur_scene}] Loaded {len(npc_rows)} NPCs from config_loader", flush=True)

    # Note: Omit error_code so OPDataManager::onScene parses scene_id and persons normally
    fields = [
        ("scene_id",      _amf3_int(cur_scene)),
        ("lufei_follows", _amf3_int(0)),
        ("persons",       _amf3_array(persons)),
    ]
    body_amf3 = _amf3_object(fields)
    return _make_ack_message(correlation_id, body_amf3)





def _build_scenecheck_response(correlation_id: str) -> bytes:
    """Reply to SCENE.scenecheck matching OPDataManager::onScenceCheck."""
    can_pass = (
        list(range(2001, 2014)) + [3001, 3002] +
        list(range(1001, 1051)) +
        [2006, 2008, 2010, 2012, 2014, 2016, 2019, 2022, 2024, 2026, 2029, 2032, 2034, 2036, 2039, 2040, 2041, 2042, 2043, 2044, 2045, 2049, 2050]
    )
    fields = [
        ("can_pass_list",    _amf3_array([_amf3_int(sid) for sid in can_pass])),
        ("need_camp_list",   _amf3_array([])),
        ("unavailable_list", _amf3_array([])),
        ("error_code",       _amf3_int(0)),
        ("request_code",     _amf3_int(0)),
    ]
    body_amf3 = _amf3_object(fields)
    return _make_ack_message(correlation_id, body_amf3)





# DB_PATH is provided by config_loader (pointing to offline-server/onepiece.db)


def _pick_skill_for_slot(general_id: int, slot_idx: int, exclude: set = None) -> int:
    """Pick a cfg_skill_id for a general's skill slot (2 or 3).
    
    Randomized from candidate pool matching the general's job, avoiding equipped skills.
    Only type=0 (passive skills) with rank=1 and is_open=1 are selected.
    """
    exclude = set(exclude) if exclude else set()
    job = None
    starter_skill = None
    if general_id in PROTAGONIST_CONFIG:
        job = PROTAGONIST_CONFIG[general_id].get("job")
        starter_skill = PROTAGONIST_CONFIG[general_id].get("skill", 0)
    if job is None:
        try:
            c = sqlite3.connect(DB_PATH).cursor()
            c.execute("SELECT job, cfg_skill_id FROM cfg_general WHERE cfg_general_id=?", (general_id,))
            row = c.fetchone()
            if row:
                job, starter_skill = row
            c.close()
        except Exception:
            pass
    if job is not None and job < 100:
        job = 10000 + job
    if job is None:
        job = 10001

    try:
        c = sqlite3.connect(DB_PATH).cursor()
        c.execute("SELECT cfg_skill_id FROM cfg_skill WHERE job=? AND type=0 AND rank=1 AND is_open=1 ORDER BY cfg_skill_id", (job,))
        all_candidates = [r[0] for r in c.fetchall()]
        if not all_candidates:
            c.execute("SELECT cfg_skill_id FROM cfg_skill WHERE type=0 AND rank=1 AND is_open=1 ORDER BY cfg_skill_id")
            all_candidates = [r[0] for r in c.fetchall()]
        c.close()
        available = [s for s in all_candidates if s not in exclude and s != starter_skill]
        if not available:
            available = [s for s in all_candidates if s not in exclude]
        if not available:
            available = all_candidates
        if available:
            import random
            return random.choice(available)
    except Exception:
        pass
    return starter_skill or 11005


def _build_passive_candidates() -> bytes:
    """每个 general 的 job 对应的6个被动技能候选列表 — 客户端选技能面板用。"""
    role = _get_role()
    general_ids = list(PROTAGONIST_CONFIG.keys())

    items = []
    try:
        conn = sqlite3.connect(DB_PATH)
        cur = conn.cursor()
        for gid in general_ids:
            cfg = PROTAGONIST_CONFIG[gid]
            job = cfg.get("job")
            starter = cfg.get("skill", 0)
            cur.execute("SELECT cfg_skill_id FROM cfg_skill WHERE job=? AND cfg_skill_id!=? AND rank=1 ORDER BY cfg_skill_id", (job, starter or 0))
            all_ids = [r[0] for r in cur.fetchall()]
            passive_ids = all_ids[-6:] if len(all_ids) >= 6 else all_ids

            skill_items = []
            for sid in passive_ids:
                cur.execute("SELECT name, type, show_type, icon FROM cfg_skill WHERE cfg_skill_id=?", (sid,))
                row = cur.fetchone()
                sname = row[0] if row else "?"
                stype = row[1] if row else 0
                sitem = _amf3_object([
                    ("cfg_skill_id", _amf3_int(int(sid))),
                    ("name",         _amf3_string(str(sname))),
                    ("type",         _amf3_int(int(stype))),
                ])
                skill_items.append(sitem)

            items.append(_amf3_object([
                ("cfg_general_id", _amf3_int(int(gid))),
                ("job",            _amf3_int(int(job))),
                ("skills",         _amf3_array(skill_items)),
            ]))
        conn.close()
    except Exception as e:
        print(f"  [passive_candidates] error: {e}", flush=True)

    return _amf3_array(items)


def query_npc_dialog(npc_id: int, current_task: int):
    try:
        role = _get_role()
        task_accepted = role.get("task_accepted", False)
        task_completed = role.get("task_completed", False)

        conn = sqlite3.connect(DB_PATH)
        conn.text_factory = bytes
        conn.row_factory = sqlite3.Row
        cur = conn.cursor()

        cur.execute("SELECT * FROM cfg_task WHERE cfg_task_id = ?", (current_task,))
        task_row = cur.fetchone()

        word_id = None
        if task_row:
            t = dict(task_row)
            get_npc = t['get_npc']
            sub_npc = t['submit_npc']
            get_word = t['get_word']
            sub_word = t['submit_word']
            c_type = t['complete_type']

            if npc_id == sub_npc and (task_completed or (c_type == 0 and (task_accepted or get_npc == 0))):
                word_id = sub_word
            elif npc_id == get_npc and not task_accepted:
                word_id = get_word

        if word_id and word_id > 0:
            cur.execute("SELECT * FROM cfg_word WHERE cfg_word_id = ?", (word_id,))
            w_row = cur.fetchone()
        else:
            cur.execute("SELECT * FROM cfg_word WHERE cfg_npc_id = ? AND is_default = 1", (npc_id,))
            w_row = cur.fetchone()

        conn.close()
        if not w_row:
            return None
        d = dict(w_row)
        for k in ['word_content', 'option_content_1', 'option_content_2', 'option_content_3']:
            if isinstance(d.get(k), bytes):
                d[k] = d[k].decode('utf-8', errors='ignore')
        return d
    except Exception as exc:
        print(f"  [NPC DB ERR] {exc}", flush=True)
        return None


def _build_npc_status_response(correlation_id: str) -> bytes:
    """Reply to SCENE.npc matching OPDataManager::onNPCData.
    NPC list is DYNAMICALLY loaded from cfg_npc for current scene.
    NPC status (0/1/2) is derived from cfg_task.get_npc / submit_npc."""
    role = _get_role()
    current_task = role.get("current_task")
    task_accepted = role.get("task_accepted", False)
    task_completed = role.get("task_completed", False)
    cur_scene = role.get("scene_id", 2001)

    # Get all NPCs for current scene from db
    scene_npc_ids = []
    try:
        conn = sqlite3.connect(DB_PATH)
        rows = conn.execute(
            "SELECT cfg_npc_id FROM cfg_npc WHERE cfg_scene_id = ? ORDER BY cfg_npc_id", (cur_scene,)
        ).fetchall()
        conn.close()
        scene_npc_ids = [int(r[0]) for r in rows]
    except Exception:
        scene_npc_ids = [1, 2, 3, 4]  # fallback

    # Load current task to get get_npc / submit_npc
    get_npc = 0
    submit_npc = 0
    try:
        conn = sqlite3.connect(DB_PATH)
        if current_task:
            row = conn.execute(
                "SELECT get_npc, submit_npc FROM cfg_task WHERE cfg_task_id = ?", (current_task,)
            ).fetchone()
            if row:
                get_npc = int(row[0])
                submit_npc = int(row[1])
        conn.close()
    except Exception:
        pass

    npc_list = []
    for nid in scene_npc_ids:
        status = 0
        # ★ Dynamic logic: get_npc NPC shows exclamation (2) when task not accepted
        if current_task and not task_accepted and nid == get_npc and get_npc > 0:
            status = 2
        # submit_npc NPC shows question (1) when task accepted but not submitted
        elif current_task and task_accepted and not task_completed and nid == submit_npc and submit_npc > 0:
            status = 1
        # submit_npc NPC shows checkmark (1) when task completed — ready for next
        elif current_task and task_completed and nid == submit_npc and submit_npc > 0:
            status = 1
        # task has been auto-completed (e.g. battle type done), show question on submit NPC
        elif current_task and nid == submit_npc and task_completed:
            status = 1

        npc_list.append(_amf3_object([
            ("npc_id",     _amf3_int(nid)),
            ("npc_status", _amf3_int(status)),
        ]))

    fields = [
        ("request_code", _amf3_int(0)),
        ("npc_data",     _amf3_array(npc_list)),
        ("error_code",   _amf3_int(0)),
    ]
    return _make_ack_message(correlation_id, _amf3_object(fields))


def _build_npc_response(correlation_id: str, npc_id: int = 1) -> bytes:
    """Reply to SCENE.npc and SCENE.word matching OPDataManager::onNpcWord and onNPCData."""
    role = _get_role()
    current_task = role.get("current_task", 100001) or 100001

    w = query_npc_dialog(npc_id, current_task)
    options_list = []
    if w:
        dialog_text = w.get("word_content", "你好！").replace("-0-", role.get("name", "船长"))
        cfg_word_id = int(w.get("cfg_word_id", npc_id))
        cfg_npc_id = int(w.get("cfg_npc_id", npc_id))
        
        for i in (1, 2, 3):
            opt_c = w.get(f"option_content_{i}")
            opt_e = int(w.get(f"option_effect_{i}", 0))
            opt_t = int(w.get(f"option_task_{i}", 0))
            if opt_c and opt_c != "0" and opt_e > 0:
                options_list.append(_amf3_object([
                    ("option_content", _amf3_string(opt_c)),
                    ("option_effect",  _amf3_int(opt_e)),
                    ("option_task",    _amf3_int(opt_t)),
                ]))
    else:
        dialog_text = "你好，勇敢的海贼！"
        cfg_word_id = npc_id
        cfg_npc_id = npc_id

    # ★ 酒吧老板娘 / 酒馆NPC (NPC 48 等): 必须始终带有“招募”选项 (option_effect = 10 -> 打开酒馆 CDlgTavern)
    TAVERN_NPC_IDS = {48, 18, 22, 26, 30, 34, 38, 42, 46, 58, 94, 98}
    if npc_id in TAVERN_NPC_IDS:
        has_recruit = False
        if w:
            for i in (1, 2, 3):
                if int(w.get(f"option_effect_{i}", 0)) == 10:
                    has_recruit = True
                    break
        if not has_recruit:
            options_list.append(_amf3_object([
                ("option_content", _amf3_string("招募")),
                ("option_effect",  _amf3_int(10)),
                ("option_task",    _amf3_int(0)),
            ]))

    if not options_list:
        options_list.append(_amf3_object([
            ("option_content", _amf3_string("交谈")),
            ("option_effect",  _amf3_int(1)),
            ("option_task",    _amf3_int(0)),
        ]))

    options_arr = _amf3_array(options_list)

    word_elem = _amf3_object([
        ("cfg_word_id",  _amf3_int(cfg_word_id)),
        ("cfg_npc_id",   _amf3_int(cfg_npc_id)),
        ("word_content", _amf3_string(dialog_text)),
        ("options",      options_arr),
    ])

    words_list = [word_elem]
    if cfg_word_id != npc_id:
        word_elem_by_npc = _amf3_object([
            ("cfg_word_id",  _amf3_int(npc_id)),
            ("cfg_npc_id",   _amf3_int(cfg_npc_id)),
            ("word_content", _amf3_string(dialog_text)),
            ("options",      options_arr),
        ])
        words_list.append(word_elem_by_npc)

    fields = [
        ("cfg_word_id",        _amf3_int(cfg_word_id)),
        ("cfg_npc_id",         _amf3_int(cfg_npc_id)),
        ("npc_id",             _amf3_int(npc_id)),
        ("words",              _amf3_array(words_list)),
        ("word_content",       _amf3_string(dialog_text)),
        ("options",            options_arr),
        ("gold",               _amf3_int(role.get("gold", 100000))),
        ("reward_gold",        _amf3_int(0)),
        ("reward_vip_charge",  _amf3_int(0)),
        ("request_code",       _amf3_int(0)),
        ("error_code",         _amf3_int(0)),
    ]
    body_amf3 = _amf3_object(fields)
    return _make_ack_message(correlation_id, body_amf3)


def _build_camp_by_scene_response(correlation_id: str, scene_id: int = 2001) -> bytes:
    """Reply to CAMP.campByScene matching OPDataManager::onCampByScene."""
    role = _get_role()
    camp_stars = role.setdefault("camp_stars", {})

    camps = []
    elite_list = []
    try:
        conn = sqlite3.connect(DB_PATH)
        # Normal camps must have cfg_camp_id < 2000 and idx > 0 to prevent UI out-of-bounds crash
        camp_rows = conn.execute(
            "SELECT cfg_camp_id, require_camp_id, last_order FROM cfg_camp "
            "WHERE (scene_id = ? OR CAST(scene_id AS INT) = ?) AND cfg_camp_id < 2000 AND idx > 0 "
            "ORDER BY cfg_camp_id",
            (scene_id, scene_id)
        ).fetchall()
        for cid, req_cid, last_order in camp_rows:
            cid = int(cid)
            req_cid = int(req_cid)
            last_order = int(last_order) if last_order else 5
            army_rows = conn.execute("SELECT cfg_army_id FROM cfg_army WHERE cfg_camp_id = ? OR CAST(cfg_camp_id AS INT) = ?", (cid, cid)).fetchall()
            defeated_count = sum(1 for (aid,) in army_rows if camp_stars.get(str(aid), 0) > 0)
            total_count = len(army_rows) if army_rows else last_order
            is_finish = 1 if (defeated_count >= total_count and total_count > 0) else 0

            camps.append(_amf3_object([
                ("cfg_camp_id",   _amf3_int(cid)),
                ("camp_score",    _amf3_int(defeated_count)),
                ("memcamp_score", _amf3_int(defeated_count)),
                ("is_finish",     _amf3_int(is_finish)),
            ]))

        # Elite camps (cfg_camp_id >= 2000) go into elite_list only
        elite_rows = conn.execute(
            "SELECT cfg_camp_id, require_camp_id FROM cfg_camp "
            "WHERE (scene_id = ? OR CAST(scene_id AS INT) = ?) AND cfg_camp_id >= 2000 "
            "ORDER BY cfg_camp_id",
            (scene_id, scene_id)
        ).fetchall()
        for e_cid, req_cid in elite_rows:
            e_cid = int(e_cid)
            req_cid = int(req_cid)
            is_open = 0
            if req_cid > 0:
                req_armies = conn.execute("SELECT cfg_army_id FROM cfg_army WHERE cfg_camp_id = ? OR CAST(cfg_camp_id AS INT) = ?", (req_cid, req_cid)).fetchall()
                if req_armies:
                    req_defeated = sum(1 for (aid,) in req_armies if camp_stars.get(str(aid), 0) > 0)
                    is_open = 1 if req_defeated >= len(req_armies) else 0
            elite_list.append(_amf3_object([
                ("elite_cfg_camp_id", _amf3_int(e_cid)),
                ("is_open",           _amf3_int(is_open)),
                ("is_finish",         _amf3_int(0)),
            ]))
        conn.close()
    except Exception as e:
        print(f"  [CAMP] error in campByScene: {e}", flush=True)

    if not camps:
        if scene_id == 2003:
            fallback_camps = [1007, 1008, 1009]
        elif scene_id == 2002:
            fallback_camps = [1004, 1005, 1006]
        else:
            fallback_camps = [1001, 1002, 1003]
        for cid in fallback_camps:
            camps.append(_amf3_object([
                ("cfg_camp_id",   _amf3_int(cid)),
                ("camp_score",    _amf3_int(0)),
                ("memcamp_score", _amf3_int(0)),
                ("is_finish",     _amf3_int(0)),
            ]))
            elite_list.append(_amf3_object([
                ("elite_cfg_camp_id", _amf3_int(cid)),
                ("is_open",           _amf3_int(1)),
                ("is_finish",         _amf3_int(0)),
            ]))

    fields = [
        ("error",        _amf3_int(0)),
        ("elite_list",   _amf3_array(elite_list)),
        ("camp_list",    _amf3_array(camps)),
        ("request_code", _amf3_int(0)),
        ("error_code",   _amf3_int(0)),
    ]
    body_amf3 = _amf3_object(fields)
    return _make_ack_message(correlation_id, body_amf3)


def _get_camp_army_list(camp_id: int):
    """Retrieve armies for a given camp from db or fallback list."""
    armies = []
    try:
        conn = sqlite3.connect(DB_PATH)
        rows = conn.execute("SELECT cfg_army_id, [order] FROM cfg_army WHERE cfg_camp_id = ? OR CAST(cfg_camp_id AS INT) = ? ORDER BY CAST([order] AS INT)", (camp_id, camp_id)).fetchall()
        conn.close()
        for r in rows:
            armies.append((int(r[0]), int(r[1])))
    except Exception:
        pass
    if not armies:
        if camp_id == 1001:
            armies = [(10101, 1), (10102, 2), (10103, 3), (10104, 4), (10105, 5)]
        elif camp_id == 1002:
            armies = [(10201, 1), (10202, 2), (10203, 3), (10204, 4), (10205, 5)]
        elif camp_id == 1003:
            armies = [(10301, 1), (10302, 2), (10303, 3), (10304, 4), (10305, 5),
                      (10306, 6), (10307, 7), (10308, 8), (10309, 9), (10310, 10)]
        elif camp_id == 1004:
            armies = [(10401, 1), (10402, 2), (10403, 3), (10404, 4), (10405, 5)]
        elif camp_id == 1005:
            armies = [(10501, 1), (10502, 2), (10503, 3), (10504, 4), (10505, 5)]
        elif camp_id == 1006:
            armies = [(10601, 1), (10602, 2), (10603, 3), (10604, 4), (10605, 5),
                      (10606, 6), (10607, 7), (10608, 8), (10609, 9), (10610, 10)]
        elif camp_id == 1007:
            armies = [(10700 + i, i) for i in range(1, 11)]
        elif camp_id == 1008:
            armies = [(10800 + i, i) for i in range(1, 11)]
        elif camp_id == 1009:
            armies = [(10900 + i, i) for i in range(1, 16)]
    return armies


def _build_camp_info_response(correlation_id: str, camp_id: int = 1001, error_code: int = -1) -> bytes:
    """Reply to CAMP.camp matching OPDataManager::onCampInfo."""
    role = _get_role()
    camp_stars = role.setdefault("camp_stars", {})

    army_cfg_list = _get_camp_army_list(camp_id)
    stars = []
    current_order = -1
    for idx, (army_id, order) in enumerate(army_cfg_list):
        star_val = camp_stars.get(str(army_id), 0)
        stars.append(_amf3_object([
            ("cfg_army_id",   _amf3_int(army_id)),
            ("mem_army_star", _amf3_int(star_val)),
            ("star",          _amf3_int(star_val)),
            ("order",         _amf3_int(order)),
        ]))
        if star_val == 0 and current_order == -1:
            current_order = idx

    camp_army_ids = [a for a, o in army_cfg_list]
    cur_task = role.get("current_task")
    task_army = 0
    try:
        conn = sqlite3.connect(DB_PATH)
        row = conn.execute("SELECT complete_type, complete_category FROM cfg_task WHERE cfg_task_id = ?", (cur_task,)).fetchone()
        conn.close()
        if row and int(row[0]) == 4:
            target_aid = int(row[1])
            if target_aid in camp_army_ids:
                task_army = target_aid
    except Exception:
        pass

    if task_army == 0 and camp_army_ids:
        if 0 <= current_order < len(camp_army_ids):
            task_army = camp_army_ids[current_order]
        else:
            task_army = camp_army_ids[0]

    fields = [
        ("current_camp",    _amf3_int(camp_id)),
        ("role_id",         _amf3_int(role["role_id"])),
        ("current_order",   _amf3_int(current_order)),
        ("task_army_id",    _amf3_int(task_army)),
        ("camp_score",      _amf3_int(len([a for a, o in army_cfg_list if camp_stars.get(str(a), 0) > 0]))),
        ("memcamp_score",   _amf3_int(len([a for a, o in army_cfg_list if camp_stars.get(str(a), 0) > 0]))),
        ("can_get_perfect", _amf3_int(1)),
        ("copper",          _amf3_double(float(role["copper"]))),
        ("gold",            _amf3_int(role["gold"])),
        ("get_reward_1",    _amf3_int(0)),
        ("get_reward_2",    _amf3_int(0)),
        ("get_reward_3",    _amf3_int(0)),
        ("army_star_list",  _amf3_array(stars)),
        ("raid_score_list", _amf3_array([])),
        ("request_code",    _amf3_int(0)),
        ("error_code",      _amf3_int(error_code)),
    ]
    body_amf3 = _amf3_object(fields)
    return _make_ack_message(correlation_id, body_amf3)



def _build_camp_reward_response(correlation_id: str) -> bytes:
    """Reply to CAMP.campReward matching OPDataManager::onCampRewardInfo."""
    body_amf3 = _amf3_array([])
    return _make_ack_message(correlation_id, body_amf3)


def _build_camp_elite_response(correlation_id: str) -> bytes:
    """Reply to campService.campElite matching EnterCopyWarPanel::resolveEliteInfo and OPDataManager::onCampElite."""
    ELITE_CAMP_IDS = [
        2006, 2008, 2010, 2012, 2014, 2016, 2019, 2022, 2024, 2026, 2029,
        2032, 2034, 2036, 2039, 2040, 2041, 2042, 2043, 2044, 2045, 2049,
        2050, 2053, 2055, 2057, 2060
    ]
    elite_items = []
    for cid in ELITE_CAMP_IDS:
        elite_items.append(_amf3_object([
            ("cfg_camp_id",       _amf3_int(cid)),
            ("elite_cfg_camp_id", _amf3_int(cid)),
            ("camp_id",           _amf3_int(cid)),
            ("memcamp_score",     _amf3_int(3)),
            ("camp_score",        _amf3_int(3)),
            ("is_finish",         _amf3_bool(True)),
            ("is_open",           _amf3_bool(True)),
            ("can_attack",        _amf3_int(1)),
            ("remain_num",        _amf3_int(5)),
            ("max_num",           _amf3_int(5)),
        ]))
    fields = [
        ("error_code",     _amf3_int(-1)),
        ("all_elite_camp", _amf3_array(elite_items)),
        ("elite_list",     _amf3_array(elite_items)),
        ("remain_num",     _amf3_int(5)),
        ("max_num",        _amf3_int(5)),
        ("is_open",        _amf3_bool(True)),
    ]
    return _make_ack_message(correlation_id, _amf3_object(fields))


def _build_raid_check_response(correlation_id: str) -> bytes:
    """Reply to campService.raidCheck matching EnterCopyWarPanel::resolveWars."""
    mem_raids = []
    for rid in [3001, 3002, 3003, 3004, 3005, 3006]:
        mem_raids.append(_amf3_object([
            ("cfg_raid_id",  _amf3_int(rid)),
            ("count",        _amf3_int(0)),
            ("bonus_count",  _amf3_int(0)),
        ]))
    fields = [
        ("error_code",        _amf3_int(-1)),
        ("raid_bonus_count",  _amf3_int(3)),
        ("current_raid_id",   _amf3_int(3001)),
        ("finished_raids",    _amf3_array([])),
        ("mem_raid_list",     _amf3_array(mem_raids)),
    ]
    return _make_ack_message(correlation_id, _amf3_object(fields))


def _build_raid_enter_response(correlation_id: str, raid_id: int = 3001) -> bytes:
    """Reply to campService.raidEnter matching EnterCopyWarPanel::enterResult."""
    return _build_camp_info_response(correlation_id, camp_id=raid_id, error_code=-1)


def _build_camp_thumb_response(correlation_id: str) -> bytes:
    """Reply to campService.campThumb matching SelectWarPanel::resolveWars."""
    fields = [
        ("error_code", _amf3_int(-1)),
        ("camp_list",  _amf3_array([])),
    ]
    return _make_ack_message(correlation_id, _amf3_object(fields))


def _build_scene_change_response(correlation_id: str, target_scene: int, x: int, y: int) -> bytes:

    """Reply to SCENE.change — teleport to new scene."""

    role = _get_role()

    role["scene_id"] = target_scene

    role["scene_x"] = x

    role["scene_y"] = y

    _save()

    print(f"  [SCENE CHANGE] -> scene={target_scene} x={x} y={y}", flush=True)



    # Note: error_code and request_code are omitted so OPDataManager keeps m_errorCode=-1,
    # which enables CMainScene::OnNetPackageEPv to execute bl resetMainScene and load mainscene_<target_scene>
    fields = [

        ("scene_id",     _amf3_int(target_scene)),

        ("scene_x",      _amf3_int(x)),

        ("scene_y",      _amf3_int(y)),

    ]

    body_amf3 = _amf3_object(fields)

    return _make_ack_message(correlation_id, body_amf3)





def _add_item_to_bag(cfg_item_id: int, amount: int = 1) -> None:
    role = _get_role()
    items = role.setdefault("items", [])
    part = CFG_ITEM_PARTS.get(cfg_item_id, 0)
    if part == 0:
        for it in items:
            if it.get("cfg_item_id") == cfg_item_id:
                it["amount"] = it.get("amount", 0) + amount
                return
    max_id = max([it.get("item_id", 1000) for it in items], default=1000)
    items.append({
        "item_id": max_id + 1,
        "cfg_item_id": cfg_item_id,
        "amount": amount,
        "level": 1,
        "star": 1,
        "rise": 0,
        "equiped": 0,
        "general_id": 0,
        "part": part,
    })


def _complete_current_task() -> None:
    role = _get_role()
    current = role.get("current_task")
    if not current:
        return

    completed = role.setdefault("completed_tasks", [])
    if current not in completed:
        completed.append(current)

    try:
        t_cfg = get_task(current)
        if t_cfg:
            # ★ FIX: copper 封顶 999999999, exp 加到 role["exp"] 里
            role["copper"] = min(role.get("copper", 0) + int(t_cfg.get("reward_copper") or 0), 999999999)
            role.setdefault("exp", 0)
            role["exp"] = role.get("exp", 0) + int(t_cfg.get("reward_experience") or 0)
            role["experience"] = role["exp"]
            it1, amt1 = t_cfg.get("reward_item_1"), t_cfg.get("reward_item_amount_1")
            it2, amt2 = t_cfg.get("reward_item_2"), t_cfg.get("reward_item_amount_2")
            if it1 and amt1 and int(it1) > 0 and int(amt1) > 0:
                _add_item_to_bag(int(it1), int(amt1))
            if it2 and amt2 and int(it2) > 0 and int(amt2) > 0:
                _add_item_to_bag(int(it2), int(amt2))

        # ★ FIX: exp 升级循环 — 用 config_loader 内存表
        while role["level"] < 100:
            exp_need = get_exp_need(role["level"])
            if exp_need > 0 and role["exp"] >= exp_need:
                role["exp"] -= exp_need
                role["level"] += 1
                role.setdefault("skill_point", 0)
                role["skill_point"] += 1
                print(f"  [LEVEL UP] Task {current} → Lv {role['level']} (remain exp: {role['exp']}, skill_point+1)", flush=True)
            else:
                break

        # 查找主线后续任务 (支持阵营分支)
        nat = role.get("nation", 1) or 1
        next_task = get_next_task(current, nation=nat)

        # 章节跨城镇场景平滑切换与安全出生坐标更新
        CROSS_SCENE_TASK_SPAWNS = {
            100039: (3002 if role.get("nation") == 2 else 3001, 33 if role.get("nation") == 2 else 251, 292 if role.get("nation") == 2 else 345),
            110006: (2003, 170, 256),   # 前往桔子镇 -> 桔子镇 (NPC 17 镇长)
            120006: (2003, 170, 256),
            110021: (3001, 600, 130),   # 巴基大决斗完成 -> 返回海贼首领(西摩志基村)
            120021: (3002, 600, 130),
            110022: (2003, 900, 36),    # 镇长的答谢 -> 桔子镇镇长
            120022: (2003, 900, 36),
            110024: (2004, 1680, 20),   # 补充物资 -> 西罗布村 (NPC 23 乌索普)
            120024: (2004, 1680, 20),
            110041: (2005, 1200, 50),   # 前往巴拉迪 -> 海上餐厅巴拉迪 (NPC 27 香吉士)
            120041: (2005, 1200, 50),
            110059: (2006, 280, 45),    # 可可亚西村 -> 可可亚西村 (NPC 31 诺琪高)
            120059: (2006, 280, 45),
            110077: (2007, 757, 45),    # 登陆罗格镇 -> 罗格镇 (NPC 33 镇长)
            120077: (2007, 757, 45),
            110090: (2008, 1563, 44),   # 脱离罗格镇 -> 磁鼓岛 (NPC 39 多鲁顿)
            120090: (2008, 1563, 44),
            110107: (2009, 400, 50),    # 阿拉巴斯坦 -> 阿拉巴斯坦 (NPC 41)
            120107: (2009, 400, 50),
            110126: (2010, 400, 50),    # 再次启航 -> 加雅岛 (NPC 45)
            120126: (2010, 400, 50),
            110147: (2011, 400, 50),    # 前往空岛 -> 空岛 (NPC 56)
            120147: (2011, 400, 50),
            110168: (2012, 400, 50),    # 新的冒险 -> 长链岛 (NPC 92)
            120168: (2012, 400, 50),
            110192: (2013, 400, 50),    # 七水之都 -> 七水之都 (NPC 97)
            120192: (2013, 400, 50),
        }

        if current in CROSS_SCENE_TASK_SPAWNS:
            t_sid, t_sx, t_sy = CROSS_SCENE_TASK_SPAWNS[current]
            role["scene_id"] = t_sid
            role["scene_x"] = t_sx
            role["scene_y"] = t_sy
            unlocked = role.setdefault("unlocked_scenes", [2001, 2002, 2003, 2004])
            if t_sid not in unlocked:
                unlocked.append(t_sid)
            print(f"  [CROSS-SCENE TRANSITION] Task {current} completed -> Teleport to Scene {t_sid} ({t_sx}, {t_sy})!", flush=True)
    except Exception as e:
        print(f"  [TASK] error completing task {current}: {e}", flush=True)
        next_task = current + 1

    if next_task:
        role["current_task"] = next_task
        role["task_accepted"] = False
        role["task_completed"] = False
    else:
        role["current_task"] = None

    print(f"  [TASK] Completed task {current}, next: {role.get('current_task')}", flush=True)
    _save()


def _check_task_battle_complete(camp_id: int) -> None:
    """Check if a battle win completes the current main task."""
    role = _get_role()
    current_task = role.get("current_task")
    if not current_task:
        return

    wins = role.setdefault("battle_wins", {})
    camp_stars = role.setdefault("camp_stars", {})

    wins[str(camp_id)] = max(wins.get(str(camp_id), 0), 1)
    camp_stars[str(camp_id)] = 3

    try:
        t_cfg = get_task(current_task)
        if t_cfg and int(t_cfg.get("complete_type") or 0) == 4:
            target_aid = int(t_cfg.get("complete_category") or 0)
            army_cfg = get_army(target_aid)
            target_camp = int(army_cfg.get("cfg_camp_id") or 0) if army_cfg else 0
            if camp_id == target_aid or (target_camp > 0 and camp_id == target_camp):
                role["task_completed"] = True
                wins[str(target_aid)] = max(wins.get(str(target_aid), 0), 1)
                camp_stars[str(target_aid)] = 3
                print(f"  [TASK] Army {target_aid} defeated -> Task {current_task} ready to submit!", flush=True)
                _save()
    except Exception as e:
        print(f"  [TASK] error checking battle task completion: {e}", flush=True)


def _build_battle_result_response(correlation_id: str, camp_id: int, win: bool = True) -> bytes:
    """Reply to BATTLE.battle matching OPDataManager::onBattleInfo.
    
    ★ FIXED: Rewards are now computed from cfg_task (for battle tasks) or cfg_camp,
    NOT hardcoded. Level up uses cfg_level_experience table.
    """
    role = _get_role()
    wins = role.setdefault("battle_wins", {})
    wins[str(camp_id)] = wins.get(str(camp_id), 0) + (1 if win else 0)
    camp_stars = role.setdefault("camp_stars", {})

    # ── Step 1: Compute rewards from database ──────────────────────────────
    reward_copper = 500
    reward_experience = 100
    reward_exploit = 40
    reward_item_1 = 0
    reward_item_amt_1 = 0
    leveled_up = False
    proto_old_lvl = int(role.get("level", 1))

    if win:
        camp_stars[str(camp_id)] = max(camp_stars.get(str(camp_id), 0), 3)

        try:
            conn = sqlite3.connect(DB_PATH)
            conn.row_factory = sqlite3.Row
            cur = conn.cursor()

            # 优先从 cfg_army 读取对应军队/关卡的真实经验、历练与掉落物品
            army_row = cur.execute("SELECT * FROM cfg_army WHERE cfg_army_id = ?", (camp_id,)).fetchone()
            if not army_row:
                army_row = cur.execute("SELECT * FROM cfg_army WHERE cfg_camp_id = ? ORDER BY cfg_army_id ASC LIMIT 1", (camp_id,)).fetchone()
            if army_row:
                keys = army_row.keys()
                reward_experience = int(army_row["reward_experience"] or 500) if "reward_experience" in keys else 500
                reward_exploit = int(army_row["reward_exploit"] or 40) if "reward_exploit" in keys else 40
                reward_copper = reward_experience * 2
                
                drop_item_id = int(army_row["reward_item"] or 0) if "reward_item" in keys else 0
                drop_ratio = float(army_row["drop_ratio"] or 0.0) if "drop_ratio" in keys else 0.0
                if drop_item_id > 0 and (random.random() <= drop_ratio or drop_ratio >= 1.0 or wins.get(str(camp_id), 0) <= 1):
                    reward_item_1 = drop_item_id
                    reward_item_amt_1 = 1
            else:
                reward_experience = 500
                reward_exploit = 40
                reward_copper = 1000

            # 若当前任务匹配该战斗关卡，给予更高奖励
            cur_task = role.get("current_task")
            if cur_task:
                row = cur.execute(
                    "SELECT complete_type, complete_category, reward_copper, reward_experience, "
                    "reward_item_1, reward_item_amount_1 FROM cfg_task WHERE cfg_task_id = ?",
                    (cur_task,)
                ).fetchone()
                if row:
                    ctype, ccat = int(row["complete_type"]), int(row["complete_category"])
                    t_camp_row = cur.execute("SELECT cfg_camp_id FROM cfg_army WHERE cfg_army_id = ?", (ccat,)).fetchone()
                    t_camp = int(t_camp_row[0]) if t_camp_row and t_camp_row[0] else 0
                    if ctype == 4 and (ccat == camp_id or (t_camp > 0 and camp_id == t_camp)):
                        if row["reward_copper"]:
                            reward_copper = max(reward_copper, int(row["reward_copper"]))
                        if row["reward_experience"]:
                            reward_experience = max(reward_experience, int(row["reward_experience"]))
                        t_item = int(row["reward_item_1"] or 0)
                        if t_item > 0:
                            reward_item_1 = t_item
                            reward_item_amt_1 = int(row["reward_item_amount_1"] or 1)
                        print(f"  [BATTLE] Task {cur_task} battle match (army={ccat}, camp={t_camp}) → copper={reward_copper} exp={reward_experience} item={reward_item_1}", flush=True)
            conn.close()
        except Exception as e:
            print(f"  [BATTLE] reward lookup error: {e}", flush=True)

        # Apply rewards to protagonist
        role["copper"] = min(role.get("copper", 0) + reward_copper, 999999999)
        role["exploit"] = role.get("exploit", 0) + reward_exploit
        role.setdefault("exp", 0)
        role["exp"] = role.get("exp", 0) + reward_experience
        role["experience"] = role["exp"]

        # Level up protagonist using cfg_level_experience table
        try:
            conn = sqlite3.connect(DB_PATH)
            cur = conn.cursor()
            while True:
                cur.execute("SELECT experience_need FROM cfg_level_experience WHERE level = ?", (role["level"],))
                row = cur.fetchone()
                if not row:
                    break
                exp_need = int(row[0])
                if role["exp"] >= exp_need and role["level"] < 100:
                    role["exp"] -= exp_need
                    role["experience"] = role["exp"]
                    role["level"] += 1
                    role.setdefault("skill_point", 0)
                    role["skill_point"] += 1
                    leveled_up = True
                    print(f"  [LEVEL UP] Protagonist → Lv {role['level']} (exp remaining: {role['exp']}, skill_point+1)", flush=True)
                else:
                    break
            conn.close()
        except Exception as e:
            print(f"  [BATTLE] level check error: {e}", flush=True)

        # Grant exp to all recruited companions in role["generals"]
        try:
            conn = sqlite3.connect(DB_PATH)
            cur = conn.cursor()
            for g in role.get("generals", []):
                if not isinstance(g, dict) or not g.get("cfg_general_id"):
                    continue
                g_exp = int(g.get("exp", g.get("experience", 0))) + reward_experience
                g["exp"] = g_exp
                g["experience"] = g_exp
                while True:
                    cur.execute("SELECT experience_need FROM cfg_level_experience WHERE level = ?", (g.get("level", 1),))
                    row = cur.fetchone()
                    if not row:
                        break
                    exp_need = int(row[0])
                    # 伙伴等级不能超过主角等级
                    if g["exp"] >= exp_need and g["level"] < role["level"]:
                        g["exp"] -= exp_need
                        g["experience"] = g["exp"]
                        g["level"] += 1
                        print(f"  [LEVEL UP] Companion {g.get('name')} → Lv {g['level']}", flush=True)
                    elif g["level"] >= role["level"] and g["exp"] >= exp_need:
                        g["exp"] = exp_need
                        g["experience"] = exp_need
                        break
                    else:
                        break
            conn.close()
        except Exception as e:
            print(f"  [BATTLE] companion level check error: {e}", flush=True)

        # Grant item rewards if any
        if reward_item_1 > 0 and reward_item_amt_1 > 0:
            _add_item_to_bag(reward_item_1, reward_item_amt_1)
            print(f"  [BATTLE] Granted item {reward_item_1} x{reward_item_amt_1}", flush=True)

    _save()
    print(f"  [BATTLE] army_id={camp_id} win={win} level={role['level']} copper+{reward_copper} exp+{reward_experience} leveled_up={leveled_up}", flush=True)
    _check_task_battle_complete(camp_id)

    # ── Step 2: Build battle response (reward values match what was actually granted) ──
    fig = role.get("figure", 1008)
    if fig not in PROTAGONIST_CONFIG:
        fig = 1008
    cfg = PROTAGONIST_CONFIG[fig]

    # 动态扫描与加载双端合法角色贴图白名单（Flash SWF 库与 Android PVR 真贴图）
    FLASH_PERSON_DIR = Path(r"D:\AI\work\xx\Pockie Pirates Stuff\pockiepirates\assets\images\Person")
    FLASH_VALID_FIGURES = {
        1006, 10154,
        *(range(1001, 1009)),
        *(range(10001, 10042)),
    }
    if FLASH_PERSON_DIR.exists():
        for f in FLASH_PERSON_DIR.glob("*.swf"):
            m = re.match(r"^(\d+)\.swf$", f.name, re.I)
            if m:
                FLASH_VALID_FIGURES.add(int(m.group(1)))

    ANDROID_VALID_FIGURES = {
        1001, 1002, 1003, 1004, 1005, 1006, 1007, 1008,
        10004, 10009, 10012, 10014, 10019, 10021, 10042, 10061, 10070
    }

    # 特殊首领在缺乏独立模型时的精细同系化回退
    SPECIAL_BATTLE_FIGURE_MAP = {
        10076: 10042,  # 海军剑士 -> 10042
        10075: 10014,  # 贝鲁梅伯 -> 10014
        10073: 10021,  # 斧手亲卫 -> 10021
        10080: 10014,  # 利基 -> 10014
        10078: 10009,  # 摩奇 -> 10009
        10074: 10061,  # 卡巴吉 -> 10061
        10062: 10021,  # 狡诈神枪手 -> 10021
        10063: 10070,  # 嗜血船医 -> 10070
        10058: 10009,  # 航海士队长 -> 10009
        10089: 10004,  # 布奇 -> 10004
        10090: 10019,  # 山姆 -> 10019
        10087: 10014,  # 铁拳芬布迪 -> 10014
        10088: 10009,  # 鬼人阿金 -> 10009
        10091: 10012,  # 铁壁巴拉 -> 10012
        10097: 10004,  # 黑带克罗欧比 -> 10004
        10098: 10001,  # 六刀流小八 -> 10001
        10099: 10003,  # 啾 -> 10003
        10101: 10042,  # 多鲁顿 -> 10042
        10103: 10021,  # 白铁瓦尔波 -> 10021
        10034: 10021,  # 杰斯/克罗马利蒙 -> 10021
    }

    ARCHETYPE_POOLS = {
        10001: (10001, 10004, 10009, 10014, 10061),
        10002: (10003, 10021),
        10003: (10005, 10009, 10070),
        10004: (10008, 10070),
    }

    NAME_KEYWORD_FALLBACKS = [
        ("海军", 10014), ("炮手", 10021), ("枪手", 10021), ("剑士", 10004),
        ("航海士", 10009), ("船医", 10070),
    ]

    def _get_safe_battle_figure(f_val, job=0, quality=1, is_enemy=False, unit_name="", is_companion=False) -> int:
        try:
            fv = int(f_val)
        except Exception:
            fv = 0

        if fv <= 0:
            return 1001

        # ★ 核心原则：玩家招募的真实船员，凡在真实模型库（SWF/完整PVR）中存在，绝对不再降级为小兵！
        if is_companion:
            # 只要在 Flash 真实人物 SWF 库中（如巴基 10011、亚尔丽塔 10012、克洛 10022、阿龙 10013、乌索普 10029、娜美 10030 等），直接下发真实模型！
            if fv in FLASH_VALID_FIGURES or fv in ANDROID_VALID_FIGURES:
                return fv
            # 若其 figure > 1000 且非通用小怪，保留其原版 figure
            if fv > 1000:
                return fv

        # 针对通用怪物与敌方军队
        if fv in FLASH_VALID_FIGURES or fv in ANDROID_VALID_FIGURES:
            return fv
        if fv in SPECIAL_BATTLE_FIGURE_MAP:
            return SPECIAL_BATTLE_FIGURE_MAP[fv]
        if unit_name:
            for kw, mapped_fig in NAME_KEYWORD_FALLBACKS:
                if kw in unit_name and mapped_fig in ANDROID_VALID_FIGURES:
                    return mapped_fig

        if 1 <= job <= 4:
            job += 10000
        pool = ARCHETYPE_POOLS.get(job)
        if pool:
            for chosen in pool:
                if chosen in ANDROID_VALID_FIGURES:
                    return chosen

        return 10012 if (job == 10003) else (10014 if job == 10002 else 10004)

    # Valid open battle skills with complete animations/shades in client
    VALID_OPEN_SKILLS = {
        11001, 11003, 11005, 11007, 11008, 12021, 12022, 12024,
        13042, 13044, 13047, 14061, 14067, 51001, 51004, 51005, 51006, 51009
    }

    # 1. Player team (attack_generals) - 严格忠实于 role["formation"]，未上阵伙伴不进入战斗
    fmt_dict = _get_formation_dict(role)
    proto_fig = cfg["figure"]
    proto_pos = 1
    # 查找主角在阵型中的指定位置
    for k, v in fmt_dict.items():
        if int(v) in (proto_fig, cfg["cfg_id"], 1001, 1007, 1008) or (0 < int(v) < 1000):
            proto_pos = int(k)
            break

    proto_lvl = int(role.get("level", 1))
    proto_stats = _calc_general_stats(True, cfg["job"], proto_lvl)
    proto_hp = proto_stats["hp"]
    atk_gen = _amf3_object([
        ("position",         _amf3_int(proto_pos)),
        ("health_point",     _amf3_int(proto_hp)),
        ("face",             _amf3_int(cfg["face"])),
        ("morale",           _amf3_int(50)),
        ("id",               _amf3_int(cfg["figure"])),
        ("health_point_max", _amf3_int(proto_hp)),
        ("category",         _amf3_int(1)),
        ("figure",           _amf3_int(cfg["figure"])),
        ("level",            _amf3_int(proto_lvl)),
        ("cfg_general_id",   _amf3_int(cfg["cfg_id"])),
        ("name",             _amf3_string(role["name"])),
        ("quality",          _amf3_int(3)),
        ("skill_list",       _amf3_array([_amf3_int(cfg["skill"])])),
    ])

    attack_generals = [atk_gen]
    atk_units = [{
        "pos": proto_pos,
        "hp": proto_hp,
        "hp_max": proto_hp,
        "face": cfg["face"],
        "name": role["name"],
        "morale": 50,
        "skill_id": cfg["skill"],
        "anger_skill_id": cfg["skill"],
        "pa": proto_stats["physical_attack"],
    }]

    # 构建已招募伙伴的快速查找表
    recruited_map = {}
    for g in role.get("generals", []):
        if isinstance(g, dict) and (g.get("general_id") or g.get("cfg_general_id")):
            gid = int(g.get("general_id", 0))
            cid = int(g.get("cfg_general_id", gid))
            if gid > 0:
                recruited_map[gid] = g
            if cid > 0:
                recruited_map[cid] = g

    # 严格按照阵型 1..9 槽位放置伙伴（空位必须保持为空，未上阵伙伴绝对不上场！）
    conn = sqlite3.connect(DB_PATH)
    cur = conn.cursor()

    for pos_num in range(1, 10):
        if pos_num == proto_pos:
            continue  # 主角已经在此位
        val = int(fmt_dict.get(str(pos_num), fmt_dict.get(pos_num, 0)))
        if val <= 0:
            continue  # 空位，保持为空
        if val in (proto_fig, cfg["cfg_id"], 1001, 1007, 1008) or (0 < val < 1000):
            continue  # 主角占位符跳过

        comp = recruited_map.get(val)
        if not comp:
            continue  # 未招募或不存在该单位，绝不强塞

        c_gid = int(comp.get("general_id", val))
        c_cfg_id = int(comp.get("cfg_general_id", c_gid))
        c_level = int(comp.get("level", 1))
        c_name = str(comp.get("name", "船员"))
        c_face = int(comp.get("face") or c_gid)
        c_fig = int(comp.get("figure") or c_gid)
        c_qual = int(comp.get("quality", 4))
        c_skill = int(comp.get("skill", 0))
        c_job = 10001

        row = cur.execute("SELECT name, face, figure, quality, cfg_skill_id, job FROM cfg_general WHERE cfg_general_id = ?", (c_cfg_id,)).fetchone()
        if row:
            if not c_name or c_name == "船员": c_name = row[0]
            if not c_face: c_face = int(row[1])
            if not c_fig: c_fig = int(row[2])
            if not c_qual: c_qual = int(row[3])
            if not c_skill or (c_skill == 51001 and c_cfg_id != 10041220): c_skill = int(row[4] or 51001)
            c_job = int(row[5] or 10001)

        comp_stats = _calc_general_stats(False, c_cfg_id, c_level)
        c_hp = comp_stats["hp"]
        c_render_fig = _get_safe_battle_figure(c_fig, job=c_job, quality=c_qual, is_enemy=False, unit_name=c_name, is_companion=True)
        c_gen_obj = _amf3_object([
            ("position",         _amf3_int(pos_num)),
            ("health_point",     _amf3_int(c_hp)),
            ("face",             _amf3_int(c_face)),
            ("morale",           _amf3_int(50)),
            ("id",               _amf3_int(c_gid)),
            ("health_point_max", _amf3_int(c_hp)),
            ("category",         _amf3_int(2)),
            ("figure",           _amf3_int(c_render_fig)),
            ("level",            _amf3_int(c_level)),
            ("cfg_general_id",   _amf3_int(c_cfg_id)),
            ("name",             _amf3_string(c_name)),
            ("quality",          _amf3_int(c_qual)),
            ("skill_list",       _amf3_array([_amf3_int(c_skill or 51001)])),
        ])
        attack_generals.append(c_gen_obj)
        atk_units.append({
            "pos": pos_num,
            "hp": c_hp,
            "hp_max": c_hp,
            "face": c_face,
            "name": c_name,
            "morale": 50,
            "skill_id": c_skill or 51001,
            "anger_skill_id": c_skill or 51001,
            "pa": comp_stats["physical_attack"],
        })
        if len(attack_generals) >= 5:
            break

    # 2. Enemy team (defend_generals) from cfg_army pos1..pos9
    def_name = "海贼部队"
    def_face = 1001
    def_figure = 1001
    army_level = 1
    pos_monsters = []

    try:
        # 1. Try directly matching army_id or camp_id
        row = cur.execute(
            "SELECT name, face, figure, level, pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, pos9 "
            "FROM cfg_army WHERE cfg_army_id = ? OR cfg_camp_id = ? ORDER BY cfg_army_id ASC LIMIT 1",
            (camp_id, camp_id)
        ).fetchone()

        # 2. If camp_id is a task ID (e.g. 100030), find complete_category (army ID)
        if not row:
            t_row = cur.execute("SELECT complete_category FROM cfg_task WHERE cfg_task_id = ?", (camp_id,)).fetchone()
            if t_row and t_row[0]:
                target_aid = int(t_row[0])
                row = cur.execute(
                    "SELECT name, face, figure, level, pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, pos9 "
                    "FROM cfg_army WHERE cfg_army_id = ? OR cfg_camp_id = ? ORDER BY cfg_army_id ASC LIMIT 1",
                    (target_aid, target_aid)
                ).fetchone()

        # 3. If camp_id is a scene ID (e.g. 2002), find first camp in that scene
        if not row:
            c_row = cur.execute(
                "SELECT cfg_camp_id FROM cfg_camp WHERE scene_id = ? OR CAST(scene_id AS INT) = ? ORDER BY cfg_camp_id ASC LIMIT 1",
                (camp_id, camp_id)
            ).fetchone()
            if c_row and c_row[0]:
                target_cid = int(c_row[0])
                row = cur.execute(
                    "SELECT name, face, figure, level, pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, pos9 "
                    "FROM cfg_army WHERE cfg_camp_id = ? ORDER BY cfg_army_id ASC LIMIT 1",
                    (target_cid,)
                ).fetchone()

        if row:
            def_name = row[0]
            def_face = int(row[1] or 1001)
            def_figure = int(row[2] or 1001)
            army_level = int(row[3] or 1)
            for p_idx in range(9):
                val = str(row[4 + p_idx] or '0')
                if val != '0':
                    pos_monsters.append((p_idx + 1, int(val)))
    except Exception as e:
        print(f"  [BATTLE] error loading cfg_army: {e}", flush=True)

    defend_generals = []
    def_units = []
    total_enemy_damage = 0

    if pos_monsters:
        for p_slot, m_fig in pos_monsters:
            m_name = def_name
            m_face = m_fig
            m_hp = 200 + army_level * 30
            m_skill_id = 11003
            m_qual = 1
            m_job = 10001

            m_row = cur.execute(
                "SELECT name, face, figure, level, quality, hp, cast_skill, category FROM cfg_monster WHERE figure = ? ORDER BY abs(level - ?) LIMIT 1",
                (m_fig, army_level)
            ).fetchone()
            if m_row:
                m_name = m_row[0]
                m_face = int(m_row[1] or m_fig)
                m_qual = int(m_row[4] or 1)
                m_hp = int(m_row[5] or m_hp)
                m_skill_id = int(m_row[6] or 11003)
                m_job = int(m_row[7] or 1)

            if m_skill_id not in VALID_OPEN_SKILLS:
                if m_job in (10002, 2):
                    m_skill_id = 12021
                elif m_job in (10003, 3):
                    m_skill_id = 13042
                elif m_job in (10004, 4):
                    m_skill_id = 14067
                else:
                    m_skill_id = 11003

            m_render_fig = _get_safe_battle_figure(m_fig, job=m_job, quality=m_qual, is_enemy=True, unit_name=m_name)
            def_gen_elem = _amf3_object([
                ("position",         _amf3_int(p_slot)),
                ("health_point",     _amf3_int(m_hp)),
                ("face",             _amf3_int(m_face)),
                ("morale",           _amf3_int(50)),
                ("id",               _amf3_int(1000 + p_slot)),
                ("health_point_max", _amf3_int(m_hp)),
                ("category",         _amf3_int(2)),
                ("figure",           _amf3_int(m_render_fig)),
                ("level",            _amf3_int(army_level)),
                ("cfg_general_id",   _amf3_int(100000 + p_slot)),
                ("name",             _amf3_string(m_name)),
                ("quality",          _amf3_int(m_qual)),
                ("skill_list",       _amf3_array([_amf3_int(m_skill_id)])),
            ])
            defend_generals.append(def_gen_elem)
            def_units.append({
                "pos": p_slot,
                "hp": m_hp,
                "hp_max": m_hp,
                "face": m_face,
                "name": m_name,
                "morale": 50,
                "skill_id": m_skill_id,
                "anger_skill_id": m_skill_id,
                "pa": 100 + army_level * 10,
            })
            total_enemy_damage += m_hp
    else:
        # Fallback single enemy
        def_render_fig = _get_safe_battle_figure(def_figure, job=10001, quality=1, is_enemy=True)
        def_gen = _amf3_object([
            ("position",         _amf3_int(1)),
            ("health_point",     _amf3_int(224)),
            ("face",             _amf3_int(def_face)),
            ("morale",           _amf3_int(50)),
            ("id",               _amf3_int(2)),
            ("health_point_max", _amf3_int(224)),
            ("category",         _amf3_int(2)),
            ("figure",           _amf3_int(def_render_fig)),
            ("level",            _amf3_int(army_level)),
            ("cfg_general_id",   _amf3_int(100001)),
            ("name",             _amf3_string(def_name)),
            ("quality",          _amf3_int(1)),
            ("skill_list",       _amf3_array([_amf3_int(11003)])),
        ])
        defend_generals.append(def_gen)
        def_units.append({
            "pos": 1,
            "hp": 224,
            "hp_max": 224,
            "face": def_face,
            "name": def_name,
            "morale": 50,
            "skill_id": 11003,
            "anger_skill_id": 11003,
            "pa": 100,
        })
        total_enemy_damage = 224

    conn.close()

    prep = _amf3_object([
        ("attack_role_id",        _amf3_int(role["role_id"])),
        ("attack_role_name",      _amf3_string(role["name"])),
        ("attack_formation_shape",_amf3_int(1)),
        ("attack_formation_level",_amf3_int(1)),
        ("attack_generals",       _amf3_array(attack_generals)),
        ("attack_pet",            _amf3_array([])),
        ("defend_role_id",        _amf3_int(camp_id)),
        ("defend_role_name",      _amf3_string(def_name)),
        ("defend_formation_shape",_amf3_int(1)),
        ("defend_formation_level",_amf3_int(1)),
        ("defend_generals",       _amf3_array(defend_generals)),
        ("defend_pet",            _amf3_array([])),
        ("background",            _amf3_int(1)),
        ("battle_id",             _amf3_int(1)),
    ])

    # 3. Combat rounds: Alternating attack rounds between player and enemy
    # In libOnePiece.so:
    #   - Regular attack: action_type = 1, action_value = dmg
    #   - Rage skill:     action_type = 2, action_value = valid_skill_id (FindCfg_Skill)
    #   - Morale update:  must send effect_targets for BOTH target and caster.
    #     When target_side == caster_side, client skips hurt animation and calls heroMoraleChange!
    combat_rounds = []
    alive_enemies = [dict(u) for u in def_units]
    alive_players = [dict(u) for u in atk_units]

    # Run up to 15 alternating combat exchanges
    turn = 0
    while alive_enemies and alive_players and turn < 15:
        turn += 1
        # Player side attacks
        for atk in list(alive_players):
            if not alive_enemies:
                break
            target = alive_enemies[0]

            is_skill = (atk.get("morale", 50) >= 100)
            if is_skill:
                cur_action_type = 2
                cur_skill_cand = int(atk.get("skill_id") or 11003)
                cur_action_val = cur_skill_cand if cur_skill_cand in VALID_OPEN_SKILLS else 11003
                atk_new_morale = 0
                dmg_mult = 1.8
            else:
                cur_action_type = 1
                cur_action_val = 0
                atk_new_morale = min(100, atk.get("morale", 50) + 25)
                dmg_mult = 1.0

            target_new_morale = min(100, target.get("morale", 50) + 25)
            base_dmg = max(50, int(atk.get("pa", 150) * 0.8))
            dmg = min(target["hp"], max(80, int(base_dmg * dmg_mult)))
            target["hp"] -= dmg
            target["morale"] = target_new_morale
            atk["morale"] = atk_new_morale

            if cur_action_type == 1:
                cur_action_val = dmg

            # 1. Defending enemy effect (damage taken + morale gained)
            def_effect = _amf3_object([
                ("target_accident_status",_amf3_int(0)),
                ("counter_skill_id",      _amf3_int(0)),
                ("target_position",       _amf3_int(target["pos"])),
                ("target_side",           _amf3_int(2)),
                ("target_health_point",   _amf3_int(max(0, target["hp"]))),
                ("target_morale",         _amf3_int(target_new_morale)),
                ("target_buff_list",      _amf3_array([])),
            ])
            # 2. Attacking caster effect (updates attacker's morale & triggers floating morale update)
            atk_effect = _amf3_object([
                ("target_accident_status",_amf3_int(0)),
                ("counter_skill_id",      _amf3_int(0)),
                ("target_position",       _amf3_int(atk["pos"])),
                ("target_side",           _amf3_int(1)),
                ("target_health_point",   _amf3_int(max(0, atk["hp"]))),
                ("target_morale",         _amf3_int(atk_new_morale)),
                ("target_buff_list",      _amf3_array([])),
            ])
            round_action = _amf3_object([
                ("action_value",          _amf3_int(cur_action_val)),
                ("action_target_side",    _amf3_int(2)),
                ("action_type",           _amf3_int(cur_action_type)),
                ("action_target_morale",  _amf3_int(target_new_morale)),
                ("action_target_position",_amf3_int(target["pos"])),
                ("effect_targets",        _amf3_array([def_effect, atk_effect])),
            ])
            c_round = _amf3_object([
                ("face",                  _amf3_int(atk["face"])),
                ("now_boold_point",       _amf3_int(max(0, atk["hp"]))),
                ("max_boold_point",       _amf3_int(atk["hp_max"])),
                ("battle_id",             _amf3_int(1)),
                ("caster_side",           _amf3_int(1)),
                ("caster_position",       _amf3_int(atk["pos"])),
                ("morale",                _amf3_int(atk_new_morale)),
                ("defend_pet_morale",     _amf3_int(0)),
                ("attack_pet_morale",     _amf3_int(0)),
                ("caster_round_action",   round_action),
                ("caster_pre_action_buff_list", _amf3_array([])),
                ("caster_after_action_list",    _amf3_array([])),
            ])
            combat_rounds.append(c_round)
            if target["hp"] <= 0:
                alive_enemies.pop(0)

        # Enemy side counter-attacks!
        for enemy in list(alive_enemies):
            if not alive_players:
                break
            p_target = alive_players[0]

            e_is_skill = (enemy.get("morale", 50) >= 100)
            if e_is_skill:
                e_action_type = 2
                e_skill_cand = int(enemy.get("skill_id") or 11003)
                e_action_val = e_skill_cand if e_skill_cand in VALID_OPEN_SKILLS else 11003
                e_new_morale = 0
                e_mult = 1.5
            else:
                e_action_type = 1
                e_action_val = 0
                e_new_morale = min(100, enemy.get("morale", 50) + 25)
                e_mult = 1.0

            p_new_morale = min(100, p_target.get("morale", 50) + 25)
            e_dmg = min(p_target["hp"] - 1, max(15, int(enemy.get("pa", 100) * 0.3 * e_mult)))
            p_target["hp"] -= e_dmg
            p_target["morale"] = p_new_morale
            enemy["morale"] = e_new_morale

            if e_action_type == 1:
                e_action_val = e_dmg

            # 1. Player defending target effect
            e_def_effect = _amf3_object([
                ("target_accident_status",_amf3_int(0)),
                ("counter_skill_id",      _amf3_int(0)),
                ("target_position",       _amf3_int(p_target["pos"])),
                ("target_side",           _amf3_int(1)),
                ("target_health_point",   _amf3_int(max(1, p_target["hp"]))),
                ("target_morale",         _amf3_int(p_new_morale)),
                ("target_buff_list",      _amf3_array([])),
            ])
            # 2. Enemy attacking caster effect
            e_atk_effect = _amf3_object([
                ("target_accident_status",_amf3_int(0)),
                ("counter_skill_id",      _amf3_int(0)),
                ("target_position",       _amf3_int(enemy["pos"])),
                ("target_side",           _amf3_int(2)),
                ("target_health_point",   _amf3_int(max(1, enemy["hp"]))),
                ("target_morale",         _amf3_int(e_new_morale)),
                ("target_buff_list",      _amf3_array([])),
            ])
            e_action = _amf3_object([
                ("action_value",          _amf3_int(e_action_val)),
                ("action_target_side",    _amf3_int(1)),
                ("action_type",           _amf3_int(e_action_type)),
                ("action_target_morale",  _amf3_int(p_new_morale)),
                ("action_target_position",_amf3_int(p_target["pos"])),
                ("effect_targets",        _amf3_array([e_def_effect, e_atk_effect])),
            ])
            e_round = _amf3_object([
                ("face",                  _amf3_int(enemy["face"])),
                ("now_boold_point",       _amf3_int(max(1, enemy["hp"]))),
                ("max_boold_point",       _amf3_int(enemy["hp_max"])),
                ("battle_id",             _amf3_int(1)),
                ("caster_side",           _amf3_int(2)),
                ("caster_position",       _amf3_int(enemy["pos"])),
                ("morale",                _amf3_int(e_new_morale)),
                ("defend_pet_morale",     _amf3_int(0)),
                ("attack_pet_morale",     _amf3_int(0)),
                ("caster_round_action",   e_action),
                ("caster_pre_action_buff_list", _amf3_array([])),
                ("caster_after_action_list",    _amf3_array([])),
            ])
            combat_rounds.append(e_round)

    if not combat_rounds:
        first_t = def_units[0] if def_units else {"pos": 1, "hp": 224, "hp_max": 224, "face": 1001}
        eff = _amf3_object([
            ("target_side", _amf3_int(2)),
            ("target_position", _amf3_int(first_t["pos"])),
            ("target_health_point", _amf3_int(0)),
            ("target_morale", _amf3_int(0)),
            ("action_value", _amf3_int(first_t["hp_max"])),
            ("action_type", _amf3_int(1)),
        ])
        r_act = _amf3_object([
            ("action_type", _amf3_int(1)),
            ("action_value", _amf3_int(first_t["hp_max"])),
            ("action_target_side", _amf3_int(2)),
            ("action_target_position", _amf3_int(first_t["pos"])),
            ("action_target_morale", _amf3_int(0)),
            ("effect_targets", _amf3_array([eff])),
        ])
        combat_rounds.append(_amf3_object([
            ("battle_id", _amf3_int(1)),
            ("caster_side", _amf3_int(1)),
            ("caster_position", _amf3_int(1)),
            ("now_boold_point", _amf3_int(proto_hp)),
            ("max_boold_point", _amf3_int(proto_hp)),
            ("face", _amf3_int(cfg["face"])),
            ("defend_pet_morale", _amf3_int(0)),
            ("attack_pet_morale", _amf3_int(0)),
            ("caster_round_action", r_act),
            ("caster_pre_action_buff_list", _amf3_array([])),
            ("caster_pre_action_list", _amf3_array([])),
            ("caster_after_action_list", _amf3_array([])),
        ]))

    # 4. Victory settlement — uses ACTUAL reward values computed above
    res = _amf3_object([
        ("winner",            _amf3_int(1 if win else 0)),
        ("score",             _amf3_int(5)),
        ("can_skip",          _amf3_int(1)),
        ("is_skip",           _amf3_int(1)),
        ("speed",             _amf3_int(3)),
        ("is_npc",            _amf3_int(1)),
        ("reward_copper",     _amf3_int(reward_copper)),
        ("reward_experience", _amf3_int(reward_experience)),
        ("reward_exploit",    _amf3_int(reward_exploit)),
        ("prestige",          _amf3_int(5)),
        ("role_id",           _amf3_int(role["role_id"])),
        ("reward_item",       _amf3_array([_amf3_object([("cfg_item_id", _amf3_int(reward_item_1)), ("amount", _amf3_int(reward_item_amt_1))])] if (reward_item_1 > 0 and reward_item_amt_1 > 0) else [])),
        ("story_word",        _amf3_string("")),
        ("role_rank",         _amf3_int(1)),
        ("arena_battle",      _amf3_int(0)),
        ("copper",            _amf3_double(float(role["copper"]))),
        ("boss_battle",       _amf3_int(0)),
        ("slave_battle",      _amf3_int(0)),
        ("damage",            _amf3_int(total_enemy_damage)),
        ("item_amount",       _amf3_int(0)),
        ("target_name",       _amf3_string(def_name)),
        ("attackScore",       _amf3_int(100)),
    ])

    fields = [
        ("copper",                 _amf3_double(float(role["copper"]))),
        ("action_point",           _amf3_int(role["action_point"])),
        ("prepare_data",           prep),
        ("result_data",            res),
        ("round_data_list",        _amf3_array(combat_rounds)),
        ("story_word",             _amf3_int(0)),
        ("attack_formation_level", _amf3_int(1)),
        ("attack_role_name",       _amf3_string(role["name"])),
        ("battle_id",              _amf3_int(1)),
        ("defend_formation_shape", _amf3_int(1)),
        ("result",                 _amf3_int(1 if win else 0)),
        ("camp_id",                _amf3_int(camp_id)),
        ("exp",                    _amf3_int(reward_experience if win else 0)),
        ("exploit",                _amf3_int(reward_exploit if win else 0)),
        ("role_exp",               _amf3_int(int(role.get("exp", 0)))),
        ("role_level",             _amf3_int(int(role.get("level", 1)))),
        ("gold",                   _amf3_int(0)),   # gold not granted by battle tasks; use copper instead
    ]
    body_amf3 = _amf3_object(fields)
    return _make_ack_message(correlation_id, body_amf3)


def _build_general_body_amf3() -> bytes:
    """Build the general data Object bytes (no ACK wrapper, no header)."""
    role = _get_role()

    # ★ Build talent list from cfg_talent — client needs this for "领悟技能" panel
    talent_list = []
    awakened = role.get("awakened_talents", {})
    try:
        conn = sqlite3.connect(DB_PATH)
        cur = conn.cursor()
        for r in cur.execute("SELECT cfg_talent_id, name, require_officium, max_level FROM cfg_talent ORDER BY cfg_talent_id"):
            tid, tname, req_off, max_lvl = r
            tid = int(tid)
            learned = int(awakened.get(str(tid), awakened.get(tid, 0)))
            talent_list.append(_amf3_object([
                ("cfg_talent_id",     _amf3_int(tid)),
                ("name",              _amf3_string(str(tname))),
                ("require_officium",  _amf3_int(int(req_off))),
                ("max_level",         _amf3_int(int(max_lvl))),
                ("level",             _amf3_int(learned)),
                ("is_can_learn",      _amf3_bool(role.get("officium", 0) >= int(req_off))),
            ]))
        conn.close()
    except Exception as e:
        print(f"  [TALENT] error building talent list: {e}", flush=True)

    tavern_arr = _build_tavern_generals_array()
    star_gen = _build_star_general_object()

    fields = [
        ("generals",        _build_generals_list()),
        ("formations",      _build_formations_list()),
        ("formation_level", _amf3_int(1)),
        ("copper",          _amf3_double(role.get("copper", 100000))),
        ("gold",            _amf3_int(role.get("gold", 5000))),
        ("exploit",         _amf3_int(role.get("exploit", 1000))),
        ("general_data",    _build_general_data()),
        ("talent_list",     _amf3_array(talent_list)),
        ("talent_cooldown", _amf3_int(0)),
        ("server_time",     _amf3_double(float(int(time.time())))),
        ("passive_skill_list", _build_passive_candidates()),
        ("TAVERN_GENERALS", tavern_arr),
        ("tavern_generals", tavern_arr),
        ("STAR_GENERAL",    star_gen),
        ("star_general",    star_gen),
        ("request_code",    _amf3_int(0)),
        ("error_code",      _amf3_int(0)),
        ("status",          _amf3_int(1)),
        ("role_data",       _build_role_data()),
        ("task_data",       _build_task_data()),
    ]
    return _amf3_object(fields)


def _build_general_response(correlation_id: str) -> bytes:
    return _make_ack_message(correlation_id, _build_general_body_amf3())


def _handle_talent_request(operation: str, body: Any, correlation_id: str) -> bytes:
    role = _get_role()
    role.setdefault("awakened_talents", {})
    talent_id = None
    if isinstance(body, list):
        if len(body) > 2 and body[2] is not None and str(body[2]).isdigit():
            talent_id = int(body[2])
        else:
            for item in body:
                if isinstance(item, int) and item > 0 and item != 100001:
                    talent_id = item
                    break
    elif isinstance(body, dict):
        talent_id = body.get("3_tanentId") or body.get("tanentId") or body.get("3_talentId") or body.get("talentId") or body.get("cfg_talent_id")
    elif isinstance(body, str):
        try:
            j = json.loads(body)
            talent_id = j.get("3_tanentId") or j.get("tanentId") or j.get("3_talentId") or j.get("talentId")
        except Exception:
            pass

    if talent_id is not None:
        try:
            tid_int = int(talent_id)
            cur_lvl = int(role["awakened_talents"].get(str(tid_int), 0))
            next_lvl = cur_lvl + 1

            # 扣除消耗
            cost_val = 10000
            try:
                conn = sqlite3.connect(DB_PATH)
                row = conn.execute("SELECT cost_value FROM cfg_talent_level WHERE cfg_talent_id = ? AND level = ?", (tid_int, next_lvl)).fetchone()
                conn.close()
                if row and row[0]:
                    cost_val = int(row[0])
            except Exception:
                cost_val = 10000

            role["copper"] = max(0.0, float(role.get("copper", 100000)) - cost_val)
            role["awakened_talents"][str(tid_int)] = next_lvl
            print(f"  [TALENT] Upgraded talent {tid_int} to level {next_lvl} (cost {cost_val})", flush=True)

            # 检查任务 100031 或 100037
            if role.get("current_task") in (100031, 100037):
                role["task_completed"] = True
                print(f"  [TASK] Task {role.get('current_task')} 学习天赋 marked completed via talent upgrade", flush=True)
            _save()
        except Exception as e:
            print(f"  [TALENT] Error upgrading talent {talent_id}: {e}", flush=True)

    # 构造客户端 CDlgGeneralTalent / onRoleTalentRefresh 解析的 talent_list
    talent_items = []
    awakened = role.get("awakened_talents", {})
    try:
        conn = sqlite3.connect(DB_PATH)
        cur = conn.cursor()
        for r in cur.execute("SELECT cfg_talent_id, max_level FROM cfg_talent ORDER BY cfg_talent_id"):
            t_id, max_l = int(r[0]), int(r[1])
            lvl = int(awakened.get(str(t_id), 0))
            talent_items.append(_amf3_object([
                ("cfg_talent_id", _amf3_int(t_id)),
                ("talent_id",     _amf3_int(t_id)),
                ("level",         _amf3_int(lvl)),
                ("state",         _amf3_int(1 if lvl > 0 else 0)),
                ("max_level",     _amf3_int(max_l)),
            ]))
        conn.close()
    except Exception:
        pass

    upgraded_tid = int(talent_id or 1)
    upgraded_lvl = int(awakened.get(str(upgraded_tid), 1))

    resp_fields = [
        ("status",             _amf3_int(1)),
        ("error_code",         _amf3_int(0)),
        ("talent_id",          _amf3_int(upgraded_tid)),
        ("cfg_talent_id",      _amf3_int(upgraded_tid)),
        ("level",              _amf3_int(upgraded_lvl)),
        ("exploit",            _amf3_int(int(role.get("exploit", 1000)))),
        ("talent_list",        _amf3_array(talent_items)),
        ("talents",            _amf3_array(talent_items)),
        ("talent_point",       _amf3_int(int(role.get("skill_point", 5)))),
        ("role_data",          _build_role_data()),
        ("general_data",       _build_general_data()),
        ("task_data",          _build_task_data()),
    ]
    return _make_ack_message(correlation_id, _amf3_object(resp_fields))


def _build_skill_awaken_response(correlation_id: str, gen_id: int, skill_id: int) -> bytes:
    role = _get_role()
    fields = [
        ("general_id",         _amf3_int(int(gen_id))),
        ("cfg_skill_id",       _amf3_int(int(skill_id))),
        ("skill_point",        _amf3_int(int(role.get("skill_point", 50)))),
        ("copper",             _amf3_double(float(role.get("copper", 100000)))),
        ("gold",               _amf3_int(int(role.get("gold", 5000)))),
        ("generals",           _build_generals_list()),
        ("general_data",       _build_general_data()),
        ("passive_skill_list", _build_passive_candidates()),
        ("request_code",       _amf3_int(0)),
    ]
    return _make_ack_message(correlation_id, _amf3_object(fields))


def _build_training_response(correlation_id: str) -> bytes:
    role = _get_role()
    now_ts = float(int(time.time()))
    training_list = []
    need_save = False

    for train_entry in role.get("training_list", []):
        t_end = float(train_entry.get("training_end", 0.0))
        # If time has passed, settle training exp and clear CD
        if t_end > 0.0 and now_ts >= t_end:
            add_exp = int(train_entry.get("training_experience", 3000))
            gid = int(train_entry.get("general_id", 0))
            for g in role.get("generals", []):
                if int(g.get("general_id", 0)) == gid:
                    g["experience"] = int(g.get("experience", 0)) + add_exp
                    g["level"] = max(int(g.get("level", 1)), min(role.get("level", 1), int(g.get("level", 1)) + 1))
                    train_entry["experience"] = g["experience"]
                    train_entry["level"] = g["level"]
                    break
            train_entry["training_end"] = 0.0
            t_end = 0.0
            need_save = True

        training_list.append(_amf3_object([
            ("generalId",            _amf3_int(int(train_entry.get("general_id", 0)))),
            ("training_end",         _amf3_double(t_end)),
            ("training_experience",  _amf3_int(int(train_entry.get("training_experience", 0)))),
            ("experience",           _amf3_int(int(train_entry.get("experience", 0)))),
            ("level",                _amf3_int(int(train_entry.get("level", 1)))),
        ]))

    if need_save:
        _save()

    fields = [
        ("server_time",   _amf3_double(now_ts)),
        ("training_slot", _amf3_int(3)),
        ("jump_wand",     _amf3_int(0)),
        ("jump_cooldown", _amf3_double(0.0)),
        ("jump_enable",   _amf3_bool(True)),
        ("training_list", _amf3_array(training_list)),
        ("generals",      _build_generals_list()),
        ("general_data",  _build_general_data()),
        ("request_code",  _amf3_int(0)),
    ]
    return _make_ack_message(correlation_id, _amf3_object(fields))


def _build_fire_response(correlation_id: str, target_id: int, cfg_id: int) -> bytes:
    role = _get_role()
    tavern_arr = _build_tavern_generals_array()
    star_gen = _build_star_general_object()
    fields = [
        ("ret",             _amf3_int(0)),
        ("result",          _amf3_int(1)),
        ("id",              _amf3_int(int(target_id))),
        ("general_id",      _amf3_int(int(target_id))),
        ("cfg_general_id",  _amf3_int(int(cfg_id))),
        ("generals",        _build_generals_list()),
        ("formations",      _build_formations_list()),
        ("formation_level", _amf3_int(1)),
        ("copper",          _amf3_double(float(role.get("copper", 100000)))),
        ("gold",            _amf3_int(int(role.get("gold", 5000)))),
        ("exploit",         _amf3_int(int(role.get("exploit", 1000)))),
        ("general_data",    _build_general_data()),
        ("talent_list",     _amf3_array([])),
        ("passive_skill_list", _build_passive_candidates()),
        ("TAVERN_GENERALS", tavern_arr),
        ("tavern_generals", tavern_arr),
        ("STAR_GENERAL",    star_gen),
        ("star_general",    star_gen),
        ("request_code",    _amf3_int(0)),
        ("error_code",      _amf3_int(0)),
    ]
    return _make_ack_message(correlation_id, _amf3_object(fields))


def _make_tavern_general_amf3(gid: int, name: str, qual: int, star: int, job: int, silver: int, gold: int, is_rec: int) -> bytes:
    fields = [
        ("id",             _amf3_int(gid)),
        ("general_id",     _amf3_int(gid)),
        ("cfg_general_id", _amf3_int(gid)),
        ("name",           _amf3_string(name)),
        ("quality",        _amf3_int(qual)),
        ("star",           _amf3_int(star)),
        ("job",            _amf3_int(job)),
        ("level",          _amf3_int(1)),
        ("silver",         _amf3_int(silver)),
        ("cost_silver",    _amf3_int(silver)),
        ("gold",           _amf3_int(gold)),
        ("cost_gold",      _amf3_int(gold)),
        ("cost",           _amf3_int(silver)),
        ("is_recruit",     _amf3_int(is_rec)),
        ("status",         _amf3_int(is_rec)),
    ]
    return _amf3_object(fields)


def _get_tavern_candidates():
    # 低级酒馆（谢尔兹镇东海酒馆）：排除SS级索隆(10061202)，配置东海标准卡池
    return [
        (10042230, "贝鲁梅伯", 4, 1, 10002, 500,  0),
        (10041220, "亚尔丽塔", 4, 1, 10001, 500,  0),
        (10041228, "蒙卡",     4, 1, 10001, 500,  0),
        (10041229, "摩奇",     4, 1, 10001, 500,  0),
        (10052199, "巴基",     5, 2, 10002, 800,  0),
    ]


def _build_tavern_generals_array():
    role = _get_role()
    recruited_ids = set()
    for g in role.get("generals", []):
        if isinstance(g, dict) and "cfg_general_id" in g:
            recruited_ids.add(int(g["cfg_general_id"]))

    tavern_list = []
    for gid, name, qual, star, job, silver, gold in _get_tavern_candidates():
        is_rec = 1 if gid in recruited_ids else 0
        tavern_list.append(_make_tavern_general_amf3(gid, name, qual, star, job, silver, gold, is_rec))
    return _amf3_array(tavern_list)


def _make_treat_general_amf3(gid: int, name: str, job: int, qual: int, face: int, fig: int, cost: int,
                             str_g: int = 250, agi_g: int = 220, sta_g: int = 280, int_g: int = 150,
                             str_c: int = 100, agi_c: int = 100, sta_c: int = 100, int_c: int = 100) -> bytes:
    fields = [
        ("cfg_general_id", _amf3_int(gid)),
        ("name",           _amf3_string(name)),
        ("job",            _amf3_int(job)),
        ("quality",        _amf3_int(qual)),
        ("face",           _amf3_int(face)),
        ("figure",         _amf3_int(fig)),
        ("cost",           _amf3_int(cost)),
        ("str_grow",       _amf3_int(int(str_g))),
        ("agi_grow",       _amf3_int(int(agi_g))),
        ("sta_grow",       _amf3_int(int(sta_g))),
        ("int_grow",       _amf3_int(int(int_g))),
        ("strength_ceil",  _amf3_int(int(str_c))),
        ("agility_ceil",   _amf3_int(int(agi_c))),
        ("stamina_ceil",   _amf3_int(int(sta_c))),
        ("intellect_ceil", _amf3_int(int(int_c))),
    ]
    return _amf3_object(fields)


def _get_tavern_pool_for_scene(scene_id: int):
    """Retrieve all generals for a given tavern sea/scene from SQLite cfg_general."""
    conn = sqlite3.connect(DB_PATH)
    c = conn.cursor()
    c.execute("""
        SELECT cfg_general_id, name, job, quality, face, figure, 500,
               str_grow, agi_grow, sta_grow, int_grow,
               str_ceil, agi_ceil, sta_ceil, int_ceil
        FROM cfg_general
        WHERE scene_id = ?
        ORDER BY quality ASC, cfg_general_id ASC
    """, (scene_id,))
    rows = c.fetchall()
    if not rows:
        c.execute("""
            SELECT cfg_general_id, name, job, quality, face, figure, 500,
                   str_grow, agi_grow, sta_grow, int_grow,
                   str_ceil, agi_ceil, sta_ceil, int_ceil
            FROM cfg_general
            WHERE scene_id = 1
            ORDER BY quality ASC, cfg_general_id ASC
        """)
        rows = c.fetchall()
    conn.close()

    formatted = []
    for r in rows:
        gid, name, job, qual, face, fig, cost, sg, ag, stag, ig, sc, ac, stac, ic = r
        sg_i = int(round(float(sg) * 10)) if float(sg) < 15 else int(round(float(sg)))
        ag_i = int(round(float(ag) * 10)) if float(ag) < 15 else int(round(float(ag)))
        stag_i = int(round(float(stag) * 10)) if float(stag) < 15 else int(round(float(stag)))
        ig_i = int(round(float(ig) * 10)) if float(ig) < 15 else int(round(float(ig)))
        sc_i = int(round(float(sc) * 10)) if float(sc) < 20 else int(round(float(sc)))
        ac_i = int(round(float(ac) * 10)) if float(ac) < 20 else int(round(float(ac)))
        stac_i = int(round(float(stac) * 10)) if float(stac) < 20 else int(round(float(stac)))
        ic_i = int(round(float(ic) * 10)) if float(ic) < 20 else int(round(float(ic)))
        formatted.append((gid, name, job, qual, face, fig, cost, sg_i, ag_i, stag_i, ig_i, sc_i, ac_i, stac_i, ic_i))
    return formatted


def _build_tavern_treat_response(correlation_id: str, body: list = None, is_recruit: bool = False, is_open_card: bool = False, open_idx: int = 0) -> bytes:
    role = _get_role()
    round_state = role.get("tavern_round")

    # Determine if this is a fresh draw request (clicked 召集令)
    req_type = 0
    target_scene = 0
    if body and isinstance(body, list):
        if len(body) >= 3 and isinstance(body[2], int):
            req_type = body[2]
        if len(body) >= 4 and isinstance(body[3], int):
            target_scene = body[3]
        elif len(body) >= 3 and req_type == 0 and isinstance(body[2], int):
            target_scene = body[2]

    # Current sea/scene ID (1=东海, 2=南海, 3=西海, 4=北海, 5/6=伟大航道)
    if target_scene > 0:
        cur_scene = target_scene
    elif round_state and "scene_id" in round_state:
        cur_scene = round_state["scene_id"]
    else:
        cur_scene = 1

    scene_pool = _get_tavern_pool_for_scene(cur_scene)
    scene_map = {c[0]: c for c in scene_pool}

    # Case 1: Player clicked 召集令 (req_type in [1, 2, 3])
    if req_type in [1, 2, 3] and not is_open_card and not is_recruit:
        # Guarantee 贝鲁梅伯 (10042230) for Task 100024 in East Blue
        guarantee_id = 10042230 if (role.get("current_task") == 100024 and cur_scene == 1) else None

        all_ids = [c[0] for c in scene_pool]
        pool_ids = [c[0] for c in scene_pool if c[3] <= 5]
        if len(pool_ids) < 5:
            pool_ids = list(all_ids)
        epic_ids = [c[0] for c in scene_pool if c[3] >= 5]

        drawn = []
        if guarantee_id and guarantee_id in pool_ids:
            drawn.append(guarantee_id)
            pool_ids.remove(guarantee_id)

        import random
        if req_type in (2, 3) and epic_ids:
            epic_pick = random.choice(epic_ids)
            if epic_pick not in drawn:
                drawn.append(epic_pick)

        random.shuffle(pool_ids)
        while len(drawn) < 5 and pool_ids:
            pick = pool_ids.pop()
            if pick not in drawn:
                drawn.append(pick)

        while len(drawn) < 5 and all_ids:
            pick = random.choice(all_ids)
            if pick not in drawn or len(all_ids) < 5:
                drawn.append(pick)

        random.shuffle(drawn)

        # Deduct cost
        if req_type == 1:
            role["copper"] = max(role.get("copper", 100000) - 1000, 0)
        elif req_type == 2:
            role["gold"] = max(role.get("gold", 5000) - 50, 0)
        elif req_type == 3:
            role["gold"] = max(role.get("gold", 5000) - 100, 0)

        round_state = {
            "scene_id": cur_scene,
            "cfg_ids": drawn,
            "open_generals": [0, 0, 0, 0, 0],
            "open_count": 0,
            "type": req_type,
        }
        role["tavern_round"] = round_state
        print(f"  [TAVERN TREAT] Fresh draw scene={cur_scene} type={req_type}, cards={drawn}", flush=True)
        _save()

    # Case 2: Player flipped a card (GENERAL.openCard, 0xd6)
    elif is_open_card:
        if not round_state or "cfg_ids" not in round_state:
            default_drawn = [c[0] for c in scene_pool[:5]]
            round_state = {
                "scene_id": cur_scene,
                "cfg_ids": default_drawn,
                "open_generals": [0, 0, 0, 0, 0],
                "open_count": 0,
                "type": 1,
            }
            role["tavern_round"] = round_state

        slot = max(0, min(open_idx, 4))
        if round_state["open_generals"][slot] == 0:
            revealed = round_state["cfg_ids"][slot]
            round_state["open_generals"][slot] = 1
            round_state["open_count"] += 1
            print(f"  [TAVERN OPEN] Flipped slot {slot + 1} -> {revealed} (open_count={round_state['open_count']})", flush=True)
            _save()

    # Default / Init
    if not round_state or "cfg_ids" not in round_state:
        default_drawn = [c[0] for c in scene_pool[:5]]
        round_state = {
            "scene_id": cur_scene,
            "cfg_ids": default_drawn,
            "open_generals": [0, 0, 0, 0, 0],
            "open_count": 0,
            "type": 1,
        }
        role["tavern_round"] = round_state

    cfg_ids = round_state.get("cfg_ids", [c[0] for c in scene_pool[:5]])
    open_gens = round_state.get("open_generals", [0, 0, 0, 0, 0])
    open_cnt = round_state.get("open_count", 0)
    current_type = round_state.get("type", 1)
    res_scene = round_state.get("scene_id", cur_scene)

    # Build tavern generals array from candidate info
    gen_objs = []
    for gid in cfg_ids:
        c_info = scene_map.get(gid)
        if not c_info:
            conn = sqlite3.connect(DB_PATH)
            r = conn.execute("SELECT cfg_general_id, name, job, quality, face, figure, 500, str_grow, agi_grow, sta_grow, int_grow, str_ceil, agi_ceil, sta_ceil, int_ceil FROM cfg_general WHERE cfg_general_id = ?", (gid,)).fetchone()
            conn.close()
            if r:
                c_info = (r[0], r[1], r[2], r[3], r[4], r[5], r[6], int(round(float(r[7])*10)), int(round(float(r[8])*10)), int(round(float(r[9])*10)), int(round(float(r[10])*10)), int(round(float(r[11])*10)), int(round(float(r[12])*10)), int(round(float(r[13])*10)), int(round(float(r[14])*10)))
        if c_info:
            gen_objs.append(_make_treat_general_amf3(*c_info))
        else:
            gen_objs.append(_make_treat_general_amf3(gid, "船员", 10001, 4, 10012, 10012, 500))
    tavern_generals_arr = _amf3_array(gen_objs)

    top_epics = [c[0] for c in scene_pool if c[3] >= 5][:2]
    if not top_epics:
        top_epics = [c[0] for c in scene_pool[:2]]
    tavern_epic_arr = _amf3_array([_amf3_int(x) for x in top_epics])

    star_gen_id = cfg_ids[0]
    star_gen = _build_star_general_object(star_gen_id, 0, 5)

    talent_list = [
        _amf3_object([("talent_id", _amf3_int(101)), ("level", _amf3_int(1))]),
        _amf3_object([("talent_id", _amf3_int(102)), ("level", _amf3_int(1))]),
    ]

    recruit_dict = [
        ("scene_id",        _amf3_int(res_scene)),
        ("type",            _amf3_int(current_type)),
        ("open_count",      _amf3_int(open_cnt)),
        ("cfg_general_id1", _amf3_int(cfg_ids[0])),
        ("open_general1",   _amf3_int(1 if open_gens[0] else 0)),
        ("cfg_general_id2", _amf3_int(cfg_ids[1])),
        ("open_general2",   _amf3_int(1 if open_gens[1] else 0)),
        ("cfg_general_id3", _amf3_int(cfg_ids[2])),
        ("open_general3",   _amf3_int(1 if open_gens[2] else 0)),
        ("cfg_general_id4", _amf3_int(cfg_ids[3])),
        ("open_general4",   _amf3_int(1 if open_gens[3] else 0)),
        ("cfg_general_id5", _amf3_int(cfg_ids[4])),
        ("open_general5",   _amf3_int(1 if open_gens[4] else 0)),
    ]
    recruit_obj = _amf3_object(recruit_dict)

    fields = [
        ("gold",            _amf3_int(int(role.get("gold", 5000)))),
        ("copper",          _amf3_double(float(role.get("copper", 100000)))),
        ("junior_token",    _amf3_int(10)),
        ("middle_token",    _amf3_int(5)),
        ("advance_token",   _amf3_int(2)),
        ("free_token",      _amf3_int(1)),
        ("scene_id",        _amf3_int(res_scene)),
        ("recruit",         recruit_obj),
        ("type",            _amf3_int(current_type)),
        ("open_count",      _amf3_int(open_cnt)),
        ("cfg_general_id1", _amf3_int(cfg_ids[0])),
        ("cfg_general_id2", _amf3_int(cfg_ids[1])),
        ("cfg_general_id3", _amf3_int(cfg_ids[2])),
        ("cfg_general_id4", _amf3_int(cfg_ids[3])),
        ("cfg_general_id5", _amf3_int(cfg_ids[4])),
        ("open_general1",   _amf3_int(1 if open_gens[0] else 0)),
        ("open_general2",   _amf3_int(1 if open_gens[1] else 0)),
        ("open_general3",   _amf3_int(1 if open_gens[2] else 0)),
        ("open_general4",   _amf3_int(1 if open_gens[3] else 0)),
        ("open_general5",   _amf3_int(1 if open_gens[4] else 0)),
        ("tavern_epic",     tavern_epic_arr),
        ("tavern_generals", tavern_generals_arr),
        ("generals",        _build_generals_list()),
        ("formations",      _build_formations_list()),
        ("formation_level", _amf3_int(1)),
        ("general_data",    _build_general_data()),
        ("talent_list",     _amf3_array(talent_list)),
        ("talent_cooldown", _amf3_int(0)),
        ("server_time",     _amf3_double(float(int(time.time())))),
        ("passive_skill_list", _build_passive_candidates()),
        ("TAVERN_GENERALS", tavern_generals_arr),
        ("STAR_GENERAL",    star_gen),
        ("star_general",    star_gen),
        ("error_code",      _amf3_int(-1)),
        ("request_code",    _amf3_int(0)),
    ]

    if is_open_card and 0 <= open_idx < 5:
        fields.extend([
            ("index",          _amf3_int(open_idx + 1)),
            ("general_id",     _amf3_int(cfg_ids[open_idx])),
            ("cfg_general_id", _amf3_int(cfg_ids[open_idx])),
        ])

    return _make_ack_message(correlation_id, _amf3_object(fields))


def _handle_tavern_open_card(correlation_id: str, body: list) -> bytes:
    # body: [role_id, code, index] (index: 1~5)
    open_idx = 0
    if isinstance(body, list) and len(body) >= 3 and isinstance(body[2], int):
        open_idx = body[2] - 1
    elif isinstance(body, dict):
        val = body.get("3_index") or body.get("index") or 1
        open_idx = int(val) - 1
    return _build_tavern_treat_response(correlation_id, body, is_open_card=True, open_idx=open_idx)


def _build_tavern_recruit_response(correlation_id: str, body: list) -> bytes:
    role = _get_role()
    target_gid = 10042230
    if body and isinstance(body, list):
        if len(body) > 2 and body[2]:
            try:
                target_gid = int(body[2])
            except Exception:
                pass
        elif len(body) > 0:
            if isinstance(body[0], dict):
                target_gid = int(body[0].get("cfg_general_id") or body[0].get("general_id") or 10042230)
            elif isinstance(body[0], int) and body[0] > 100:
                target_gid = body[0]

    gid, g_name, g_job, g_qual, g_face, g_fig, cost, gen_skill = target_gid, "船员", 10001, 4, 10012, 10012, 500, 51001
    try:
        conn = sqlite3.connect(DB_PATH)
        row = conn.execute("SELECT cfg_general_id, name, job, quality, face, figure, 500, cfg_skill_id FROM cfg_general WHERE cfg_general_id = ?", (target_gid,)).fetchone()
        conn.close()
        if row:
            gid, g_name, g_job, g_qual, g_face, g_fig, cost, gen_skill = row[0], row[1], row[2], row[3], row[4], row[5], row[6], (int(row[7]) if row[7] else 51001)
    except Exception:
        pass

    role.setdefault("generals", [])
    recruited_ids = {g.get("cfg_general_id") for g in role["generals"] if isinstance(g, dict)}
    if target_gid not in recruited_ids:
        role["generals"].append({
            "general_id": target_gid,
            "cfg_general_id": target_gid,
            "name": g_name,
            "quality": g_qual,
            "star": 2,
            "job": g_job,
            "figure": g_fig,
            "face": g_face,
            "level": 1,
            "skill": gen_skill,
            "experience": 0,
        })
        print(f"  [TAVERN RECRUIT] Recruited new crew member: {g_name} (id={target_gid}, skill={gen_skill})", flush=True)

    role["copper"] = max(role.get("copper", 100000) - cost, 0)

    # 任务 100024 "新船员加入" 联动完成
    if role.get("current_task") == 100024:
        role["task_completed"] = True
        print(f"  [TASK 100024] Recruited crew member -> Task 100024 completed and ready to submit!", flush=True)

    _save()
    return _build_tavern_treat_response(correlation_id, is_recruit=True)


def _build_tavern_info_response(correlation_id: str) -> bytes:
    return _build_tavern_treat_response(correlation_id)





def _build_activity_response(correlation_id: str) -> bytes:
    fields = [
        ("activity_data", b"\x09\x01\x01"),
        ("request_code",  _amf3_int(0)),
        ("error_code",    _amf3_int(0)),
    ]
    body_amf3 = _amf3_object(fields)
    return _make_ack_message(correlation_id, body_amf3)


def _handle_reward_login(correlation_id: str) -> bytes:
    role = _get_role()
    daily_login = int(role.get("daily_login", role.get("login_days", 1)))
    claimed = role.get("claimed_login_rewards", [])
    max_claimed_step = max(claimed) if claimed else 0

    reward_list = [
        _amf3_object([
            ("type", _amf3_int(2)),
            ("step", _amf3_int(max_claimed_step)),
        ]),
        _amf3_object([
            ("type", _amf3_int(1)),
            ("step", _amf3_int(0)),
        ]),
        _amf3_object([
            ("type", _amf3_int(3)),
            ("step", _amf3_int(0)),
        ]),
        _amf3_object([
            ("type", _amf3_int(4)),
            ("step", _amf3_int(0)),
        ]),
        _amf3_object([
            ("type", _amf3_int(5)),
            ("step", _amf3_int(0)),
        ]),
    ]

    reward_list2 = []
    if daily_login in claimed:
        reward_list2.append(_amf3_object([
            ("item_id", _amf3_int(300076)),
            ("amount",  _amf3_int(2)),
        ]))

    fields = [
        ("online_time",   _amf3_int(7200)),
        ("reward_list",   _amf3_array(reward_list)),
        ("reward_list2",  _amf3_array(reward_list2)),
        ("daily_login",   _amf3_int(daily_login)),
        ("pay_first",     _amf3_int(0)),
        ("copper",        _amf3_double(float(role.get("copper", 100000)))),
        ("gold",          _amf3_int(int(role.get("gold", 5000)))),
        ("reward_copper", _amf3_int(0)),
        ("reward_gold",   _amf3_int(0)),
        ("error_code",    _amf3_int(0)),
        ("request_code",  _amf3_int(0)),
        ("status",        _amf3_int(1)),
        ("role_data",     _build_role_data()),
    ]
    print(f"  -> ACTIVITY.rewardLogin OK: daily_login={daily_login} claimed={claimed}", flush=True)
    return _make_ack_message(correlation_id, _amf3_object(fields))


def _handle_get_reward(correlation_id: str, body: Any = None) -> bytes:
    role = _get_role()
    daily_login = int(role.get("daily_login", role.get("login_days", 1)))
    claimed = role.setdefault("claimed_login_rewards", [])
    step_to_claim = daily_login

    # Query cfg_reward for type 2, step = step_to_claim
    items = _get_player_items()
    reward_items_given = []
    try:
        conn = sqlite3.connect(DB_PATH)
        row = conn.execute("SELECT cfg_item_id, amount, cfg_item_id_2, amount_2 FROM cfg_reward WHERE type = 2 AND step = ?", (step_to_claim,)).fetchone()
        conn.close()
        if row:
            if row[0] and row[1]:
                reward_items_given.append((int(row[0]), int(row[1])))
            if row[2] and row[3]:
                reward_items_given.append((int(row[2]), int(row[3])))
    except Exception as e:
        print(f"  [GETREWARD DB ERROR] {e}", flush=True)

    if not reward_items_given:
        reward_items_given = [(300076, 2)]

    for item_id, amt in reward_items_given:
        found = False
        for it in items:
            if it.get("cfg_item_id") == item_id:
                it["amount"] = it.get("amount", 0) + amt
                found = True
                break
        if not found:
            new_id = max([it.get("item_id", 1000) for it in items] or [1000]) + 1
            items.append({
                "item_id": new_id,
                "cfg_item_id": item_id,
                "amount": amt,
                "level": 1,
                "star": 0,
                "rise": 0,
                "equiped": 0,
                "general_id": 0,
                "part": 0
            })

    if step_to_claim not in claimed:
        claimed.append(step_to_claim)
    _save()

    reward_sub = [
        _amf3_object([
            ("type", _amf3_int(2)),
            ("step", _amf3_int(step_to_claim)),
        ]),
        _amf3_object([
            ("type", _amf3_int(1)),
            ("step", _amf3_int(0)),
        ])
    ]
    reward_list = [
        _amf3_array(reward_sub),
        reward_sub[0],
        reward_sub[1],
    ]
    reward_list2 = [
        _amf3_object([
            ("item_id", _amf3_int(iid)),
            ("amount",  _amf3_int(amt)),
        ]) for iid, amt in reward_items_given
    ]

    fields = [
        ("online_time",   _amf3_int(7200)),
        ("reward_list",   _amf3_array(reward_list)),
        ("reward_list2",  _amf3_array(reward_list2)),
        ("daily_login",   _amf3_int(daily_login)),
        ("pay_first",     _amf3_int(0)),
        ("copper",        _amf3_double(float(role.get("copper", 100000)))),
        ("gold",          _amf3_int(int(role.get("gold", 5000)))),
        ("reward_copper", _amf3_int(0)),
        ("reward_gold",   _amf3_int(0)),
        ("error_code",    _amf3_int(0)),
        ("request_code",  _amf3_int(0)),
        ("status",        _amf3_int(1)),
        ("role_data",     _build_role_data()),
        ("bag_list",      _build_player_items_amf3()),
        ("item_data",     _build_item_data()),
    ]
    print(f"  -> ACTIVITY.getreward OK: claimed day={step_to_claim} items={reward_items_given}", flush=True)
    return _make_ack_message(correlation_id, _amf3_object(fields))


def _handle_reward_check(correlation_id: str) -> bytes:
    role = _get_role()
    daily_login = int(role.get("daily_login", role.get("login_days", 1)))
    claimed = role.get("claimed_login_rewards", [])
    has_unclaimed = 1 if daily_login not in claimed else 0
    fields = [
        ("status",          _amf3_int(1)),
        ("error_code",      _amf3_int(0)),
        ("has_reward",      _amf3_int(has_unclaimed)),
        ("login_reward",    _amf3_int(has_unclaimed)),
        ("online_reward",   _amf3_int(0)),
    ]
    return _make_ack_message(correlation_id, _amf3_object(fields))


def _build_vitality_response(correlation_id: str) -> bytes:
    role = _get_role()
    items = role.get("items", [])
    tong_cup = sum(it.get("amount", 0) for it in items if it.get("cfg_item_id") == 300184)
    yin_cup = sum(it.get("amount", 0) for it in items if it.get("cfg_item_id") == 300185)
    jin_cup = sum(it.get("amount", 0) for it in items if it.get("cfg_item_id") == 300186)
    yu_cup = 999
    if tong_cup == 0: tong_cup = 999
    if yin_cup == 0: yin_cup = 999
    if jin_cup == 0: jin_cup = 999

    action_list = []
    try:
        conn = sqlite3.connect(DB_PATH)
        c = conn.cursor()
        c.execute("SELECT action FROM cfg_action")
        for row in c.fetchall():
            action_list.append(_amf3_object([
                ("action", _amf3_int(int(row[0]))),
                ("count",  _amf3_int(0)),
            ]))
        conn.close()
    except Exception as e:
        print(f"  [VITALITY] cfg_action query error: {e}", flush=True)

    fields = [
        ("error_code",    _amf3_int(-1)),
        ("tong_cup",      _amf3_int(tong_cup)),
        ("yin_cup",       _amf3_int(yin_cup)),
        ("jin_cup",       _amf3_int(jin_cup)),
        ("yu_cup",        _amf3_int(yu_cup)),
        ("vitality",      _amf3_int(100)),
        ("daily_count",   _amf3_int(0)),
        ("daily_quality", _amf3_int(5)),
        ("daily_refresh", _amf3_int(3)),
        ("action_list",   _amf3_array(action_list)),
        ("copper",        _amf3_double(float(role.get("copper", 100000)))),
        ("gold",          _amf3_int(int(role.get("gold", 100000)))),
        ("prestige",      _amf3_int(int(role.get("prestige", 1000)))),
        ("action_point",  _amf3_int(int(role.get("action_point", 100)))),
    ]
    body_amf3 = _amf3_object(fields)
    return _make_ack_message(correlation_id, body_amf3)


def _handle_reward_vitality(correlation_id: str) -> bytes:
    role = _get_role()
    reward_exp = 50000
    reward_copper = 50000
    role["copper"] = min(float(role.get("copper", 100000)) + float(reward_copper), 999999999.0)
    role.setdefault("exp", 0)
    role["exp"] = role.get("exp", 0) + reward_exp
    role["experience"] = role["exp"]
    _add_item_to_bag(300061, 1)  # 打捞绳
    _save()

    fields = [
        ("error_code",         _amf3_int(-1)),
        ("reward_experience",  _amf3_int(reward_exp)),
        ("reward_copper",      _amf3_int(reward_copper)),
        ("reward_item",        _amf3_int(300061)),
        ("item_amount",        _amf3_int(1)),
        ("copper",             _amf3_double(float(role["copper"]))),
        ("gold",               _amf3_int(int(role.get("gold", 100000)))),
        ("prestige",           _amf3_int(int(role.get("prestige", 1000)))),
    ]
    return _make_ack_message(correlation_id, _amf3_object(fields))


def _handle_daily_task_refresh(correlation_id: str) -> bytes:
    role = _get_role()
    fields = [
        ("error_code",    _amf3_int(-1)),
        ("daily_quality", _amf3_int(5)),
        ("copper",        _amf3_double(float(role.get("copper", 100000)))),
        ("gold",          _amf3_int(int(role.get("gold", 100000)))),
        ("prestige",      _amf3_int(int(role.get("prestige", 1000)))),
    ]
    return _make_ack_message(correlation_id, _amf3_object(fields))


def _handle_item_exchange(correlation_id: str, body: list) -> bytes:
    role = _get_role()
    items = role.setdefault("items", [])
    exchange_id = 1
    count = 1
    if isinstance(body, list) and len(body) >= 4:
        exchange_id = int(body[2])
        count = max(1, int(body[3]))
    elif isinstance(body, list) and len(body) >= 3:
        exchange_id = int(body[2])

    target_cfg_item_id = 300002
    need_item = 300184
    need_amount = 1 * count

    try:
        conn = sqlite3.connect(DB_PATH)
        c = conn.cursor()
        c.execute("SELECT cfg_item_id, need_item, need_amount FROM cfg_exchange_shop WHERE product_id = ?", (exchange_id,))
        row = c.fetchone()
        conn.close()
        if row:
            target_cfg_item_id = int(row[0])
            need_item = int(row[1])
            need_amount = int(row[2]) * count
    except Exception as e:
        print(f"  [EXCHANGE] query error: {e}", flush=True)

    # Deduct cups
    for it in list(items):
        if it.get("cfg_item_id") == need_item:
            cur_amt = int(it.get("amount", 0))
            if cur_amt <= need_amount:
                items.remove(it)
            else:
                it["amount"] = cur_amt - need_amount
            break

    _add_item_to_bag(target_cfg_item_id, count)
    _save()
    print(f"  [EXCHANGE] Exchanged product {exchange_id}: consumed {need_amount} of cfg {need_item}, awarded {count} of cfg {target_cfg_item_id}", flush=True)

    fields = [
        ("error_code",   _amf3_int(-1)),
        ("request_code", _amf3_int(0)),
        ("items",        _build_player_items_amf3()),
        ("copper",       _amf3_double(float(role.get("copper", 100000)))),
        ("gold",         _amf3_int(int(role.get("gold", 100000)))),
    ]
    return _make_ack_message(correlation_id, _amf3_object(fields))


MALL_PRODUCTS = [
    {"product_id": 1,  "cfg_item_id": 300001, "cost_type": 1, "cost_value": 10},   # 训练药水
    {"product_id": 2,  "cfg_item_id": 300002, "cost_type": 1, "cost_value": 10},   # 活力药水
    {"product_id": 3,  "cfg_item_id": 300053, "cost_type": 1, "cost_value": 10},   # 初级银币卡
    {"product_id": 4,  "cfg_item_id": 300054, "cost_type": 1, "cost_value": 20},   # 中级银币卡
    {"product_id": 5,  "cfg_item_id": 300055, "cost_type": 1, "cost_value": 50},   # 高级银币卡
    {"product_id": 6,  "cfg_item_id": 300063, "cost_type": 1, "cost_value": 50},   # 10级成长礼包
    {"product_id": 7,  "cfg_item_id": 300064, "cost_type": 1, "cost_value": 100},  # 20级成长礼包
    {"product_id": 8,  "cfg_item_id": 300184, "cost_type": 1, "cost_value": 5},    # 铜酒杯
    {"product_id": 9,  "cfg_item_id": 300185, "cost_type": 1, "cost_value": 10},   # 银酒杯
    {"product_id": 10, "cfg_item_id": 300186, "cost_type": 1, "cost_value": 20},   # 金酒杯
    {"product_id": 11, "cfg_item_id": 300061, "cost_type": 1, "cost_value": 20},   # 打捞绳
    {"product_id": 12, "cfg_item_id": 300057, "cost_type": 1, "cost_value": 50},   # 突飞令
]

def _build_mall_response(correlation_id: str) -> bytes:
    role = _get_role()
    now_ts = float(int(time.time()))
    p_elems = []
    for p in MALL_PRODUCTS:
        p_elems.append(_amf3_object([
            ("product_id",  _amf3_int(p["product_id"])),
            ("cfg_item_id", _amf3_int(p["cfg_item_id"])),
            ("cost_type",   _amf3_int(p["cost_type"])),
            ("cost_value",  _amf3_int(p["cost_value"])),
        ]))

    fields = [
        ("error_code",    _amf3_int(-1)),
        ("server_time",   _amf3_double(now_ts)),
        ("cooldown_mall", _amf3_double(0.0)),
        ("product_list",  _amf3_array(p_elems)),
        ("record_list",   _amf3_array([])),
        ("copper",        _amf3_double(float(role.get("copper", 100000)))),
        ("gold",          _amf3_int(int(role.get("gold", 100000)))),
    ]
    return _make_ack_message(correlation_id, _amf3_object(fields))


def _handle_mall_buy(correlation_id: str, body: list) -> bytes:
    role = _get_role()
    prod_id = 1
    count = 1
    if isinstance(body, list) and len(body) >= 4:
        prod_id = int(body[2])
        count = max(1, int(body[3]))
    elif isinstance(body, list) and len(body) >= 3:
        prod_id = int(body[2])

    target_prod = None
    for p in MALL_PRODUCTS:
        if p["product_id"] == prod_id:
            target_prod = p
            break
    if not target_prod:
        target_prod = MALL_PRODUCTS[0]

    cost = target_prod["cost_value"] * count
    role["gold"] = max(0, int(role.get("gold", 100000)) - cost)
    _add_item_to_bag(target_prod["cfg_item_id"], count)
    _save()
    print(f"  [MALL] Bought {count}x product {prod_id} (cfg {target_prod['cfg_item_id']}) for {cost} gold", flush=True)

    fields = [
        ("error_code",   _amf3_int(-1)),
        ("request_code", _amf3_int(0)),
        ("copper",       _amf3_double(float(role.get("copper", 100000)))),
        ("gold",         _amf3_int(int(role.get("gold", 100000)))),
    ]
    return _make_ack_message(correlation_id, _amf3_object(fields))


def _handle_first_pay(correlation_id: str) -> bytes:
    role = _get_role()
    role["gold"] = int(role.get("gold", 0)) + 10000
    role["vip_level"] = max(int(role.get("vip_level", 0)), 10)
    role["vip_charge"] = max(int(role.get("vip_charge", 0)), 500000)
    _add_item_to_bag(300055, 5)   # 5x 高级银币卡
    _add_item_to_bag(300064, 1)   # 20级礼包
    _save()
    print("  [FIRST PAY] Granted first charge rewards & VIP 10", flush=True)
    fields = [
        ("error_code",   _amf3_int(-1)),
        ("request_code", _amf3_int(0)),
    ]
    return _make_ack_message(correlation_id, _amf3_object(fields))


def _handle_recharge(correlation_id: str) -> bytes:
    role = _get_role()
    role["gold"] = int(role.get("gold", 0)) + 100000
    role["vip_level"] = 10
    role["vip_charge"] = 500000
    _save()
    print(f"  [RECHARGE] Direct recharge success! gold={role['gold']} vip_level={role['vip_level']}", flush=True)
    return _build_role_response(correlation_id)


def _handle_polish_request(operation: str, body: Any, correlation_id: str) -> bytes:
    role = _get_role()
    gen_id = 1001
    polish_type = 1
    confirm = False

    if "CONFIRM" in operation.upper():
        confirm = True

    if isinstance(body, list):
        if len(body) > 2 and body[2] is not None and str(body[2]).isdigit():
            gen_id = int(body[2])
        if len(body) > 3 and body[3] is not None and str(body[3]).isdigit():
            polish_type = int(body[3])
    elif isinstance(body, dict):
        gen_id = int(body.get("3_generalId", body.get("generalId", 1001)))
        polish_type = int(body.get("4_type", body.get("type", 1)))
    elif isinstance(body, str):
        try:
            j = json.loads(body)
            gen_id = int(j.get("3_generalId", j.get("generalId", 1001)))
            polish_type = int(j.get("4_type", j.get("type", 1)))
        except Exception:
            pass

    target = None
    is_proto = False
    proto_fig = role.get("figure", 1001)
    if gen_id in (proto_fig, 1001, role.get("role_id"), 0):
        target = role
        is_proto = True
    else:
        for g in role.get("generals", []):
            if g.get("general_id") == gen_id or g.get("cfg_general_id") == gen_id:
                target = g
                is_proto = False
                break
    if target is None:
        target = role
        is_proto = True

    # 获取当前目标角色的四维培养上限 (上限值基于角色等级与配置计算)
    lvl = int(role.get("level", 20))
    if is_proto:
        cfg = PROTAGONIST_CONFIG.get(proto_fig, PROTAGONIST_CONFIG[1008])
        grow_info = _get_grow_limits(True, cfg["job"], lvl)
    else:
        cfg_gid = target.get("cfg_general_id", gen_id)
        grow_info = _get_grow_limits(False, cfg_gid, lvl)

    attrs = ["str", "agi", "sta", "int"]
    max_caps = {
        "str": grow_info["max_add_str"],
        "agi": grow_info["max_add_agi"],
        "sta": grow_info["max_add_sta"],
        "int": grow_info["max_add_int"],
    }

    if confirm or polish_type == 5:
        # 替换属性: 将洗出的 temp 绝对累加值应用到正式成长加成
        for a in attrs:
            new_val = int(target.get(f"temp_{a}_grow_add", 0))
            if new_val > 0:
                target[f"{a}_grow_add"] = min(max_caps[a], max(0, new_val))
            target[f"temp_{a}_grow_add"] = 0
        print(f"  [POLISH] Replaced grow stats for gen={gen_id}: str={target['str_grow_add']}/{max_caps['str']} agi={target['agi_grow_add']} sta={target['sta_grow_add']} int={target['int_grow_add']}", flush=True)
    elif polish_type == 6:
        # 维持原属性: 放弃本次洗练增量, 清空 temp
        for a in attrs:
            target[f"temp_{a}_grow_add"] = 0
        print(f"  [POLISH] Kept original grow stats for gen={gen_id}", flush=True)
    else:
        # 培养消耗: 1: 普通(1000银币), 2: 加强(4000银币+2金币), 3: 白金(10金币), 4: 至尊(20金币)
        COSTS = {
            1: (1000, 0),
            2: (4000, 2),
            3: (0, 10),
            4: (0, 20),
        }
        c_silver, c_gold = COSTS.get(polish_type, (1000, 0))
        role["copper"] = max(0.0, float(role.get("copper", 100000)) - c_silver)
        role["gold"] = max(0, int(role.get("gold", 5000)) - c_gold)

        import random
        # 档位浮动范围（原版梯度逻辑）:
        # 1: 普通: -3 ~ +4 (均值略偏正向，低级洗练经常有升有降)
        # 2: 加强: -2 ~ +6 (正向概率明显偏高)
        # 3: 白金: -1 ~ +10 (极少扣减，大幅提升)
        # 4: 至尊: +2 ~ +15 (全正保底，快速冲顶)
        RANGES = {
            1: (-3, 4),
            2: (-2, 6),
            3: (-1, 10),
            4: (2, 15),
        }
        low, high = RANGES.get(polish_type, (-2, 4))
        for a in attrs:
            cur = int(target.get(f"{a}_grow_add", 0))
            cap = max_caps[a]
            raw_delta = random.randint(low, high)
            new_val = max(0, min(cap, cur + raw_delta))
            target[f"temp_{a}_grow_add"] = new_val

        # 保证至少有一项比当前值高（除非已全部达到上限）
        if all(int(target.get(f"temp_{a}_grow_add", 0)) <= int(target.get(f"{a}_grow_add", 0)) for a in attrs):
            for a in attrs:
                cur = int(target.get(f"{a}_grow_add", 0))
                cap = max_caps[a]
                if cur < cap:
                    target[f"temp_{a}_grow_add"] = min(cap, cur + random.randint(1, max(1, high)))
                    break

        print(f"  [POLISH] Cultivated gen={gen_id} absolute new totals: str={target['temp_str_grow_add']} agi={target['temp_agi_grow_add']} sta={target['temp_sta_grow_add']} int={target['temp_int_grow_add']}", flush=True)

        # 若当前任务为属性培养(110004)，标记完成
        if role.get("current_task") == 110004:
            role["task_completed"] = True
            print("  [TASK] Task 110004 属性培养 marked completed via polish", flush=True)

    _save()

    resp_fields = [
        ("status",             _amf3_int(1)),
        ("error_code",         _amf3_int(-1)),
        ("general_id",         _amf3_int(gen_id)),
        ("type",               _amf3_int(polish_type)),
        ("temp_str_grow_add",  _amf3_int(int(target.get("temp_str_grow_add", 0)))),
        ("temp_agi_grow_add",  _amf3_int(int(target.get("temp_agi_grow_add", 0)))),
        ("temp_sta_grow_add",  _amf3_int(int(target.get("temp_sta_grow_add", 0)))),
        ("temp_int_grow_add",  _amf3_int(int(target.get("temp_int_grow_add", 0)))),
        ("str_grow_add",       _amf3_int(int(target.get("str_grow_add", 0)))),
        ("agi_grow_add",       _amf3_int(int(target.get("agi_grow_add", 0)))),
        ("sta_grow_add",       _amf3_int(int(target.get("sta_grow_add", 0)))),
        ("int_grow_add",       _amf3_int(int(target.get("int_grow_add", 0)))),
        ("gold",               _amf3_int(int(role.get("gold", 5000)))),
        ("copper",             _amf3_double(float(role.get("copper", 100000)))),
        ("generals",           _build_generals_list()),   # ★ 注入顶层 generals，同步刷新客户端 OPDataManager 缓存，立即可见！
        ("role_data",          _build_role_data()),
        ("general_data",       _build_general_data()),
        ("task_data",          _build_task_data()),
    ]
    return _make_ack_message(correlation_id, _amf3_object(resp_fields))


def _handle_treasure_request(operation: str, body: Any, correlation_id: str) -> bytes:
    role = _get_role()
    items = _get_player_items()
    body_dict = {}
    if isinstance(body, dict):
        body_dict = body
    elif isinstance(body, list) and body and isinstance(body[0], dict):
        body_dict = body[0]
    elif isinstance(body, list) and len(body) > 3 and isinstance(body[3], int):
        body_dict = {"anyCount": body[3]}

    count = int(body_dict.get("anyCount", body_dict.get("count", 1)))
    if count <= 0: count = 1

    # 寻找宝藏打捞绳 300010
    rope_item = None
    for it in items:
        if it.get("cfg_item_id") == 300010 and it.get("amount", 0) > 0:
            rope_item = it
            break

    ropes_used = 0
    if rope_item:
        ropes_used = min(rope_item["amount"], count)
        rope_item["amount"] -= ropes_used
        if rope_item["amount"] <= 0:
            items.remove(rope_item)

    needed_gold = count - ropes_used
    gold_cost = needed_gold * 10
    if gold_cost > 0:
        role["gold"] = max(0, int(role.get("gold", 0)) - gold_cost)

    # 奖励银币与道具
    copper_reward = 10000.0 * count
    role["copper"] = float(role.get("copper", 0)) + copper_reward

    reward_item_id = 300053
    found_rew = False
    for it in items:
        if it.get("cfg_item_id") == reward_item_id:
            it["amount"] = it.get("amount", 0) + 2 * count
            found_rew = True
            break
    if not found_rew:
        new_id = max([it.get("item_id", 1000) for it in items] or [1000]) + 1
        items.append({
            "item_id": new_id,
            "cfg_item_id": reward_item_id,
            "amount": 2 * count,
            "level": 1,
            "star": 0,
            "rise": 0,
            "equiped": 0,
            "general_id": 0,
            "part": 0
        })

    _save()
    print(f"  -> MANOR.treasure OK: count={count} ropes_used={ropes_used} gold_cost={gold_cost}", flush=True)

    resp_fields = [
        ("status",          _amf3_int(1)),
        ("error_code",      _amf3_int(0)),
        ("copper",          _amf3_double(float(role.get("copper", 0)))),
        ("gold",            _amf3_int(int(role.get("gold", 0)))),
        ("role_data",       _build_role_data()),
        ("general_data",    _build_general_data()),
        ("bag_list",        _build_player_items_amf3()),
        ("item_data",       _build_item_data()),
    ]
    return _make_ack_message(correlation_id, _amf3_object(resp_fields))





def _build_fate_response(correlation_id: str) -> bytes:

    fields = [

        ("fate_list",    b"\x09\x01\x01"),

        ("request_code", _amf3_int(0)),

        ("error_code",   _amf3_int(0)),

    ]

    body_amf3 = _amf3_object(fields)

    return _make_ack_message(correlation_id, body_amf3)





def _build_chat_response(correlation_id: str) -> bytes:

    fields = [

        ("chat_list",    b"\x09\x01\x01"),

        ("request_code", _amf3_int(0)),

        ("error_code",   _amf3_int(0)),

    ]

    body_amf3 = _amf3_object(fields)

    return _make_ack_message(correlation_id, body_amf3)





def _build_skyladder_response(correlation_id: str) -> bytes:

    fields = [

        ("rank_list",    b"\x09\x01\x01"),

        ("my_rank",      _amf3_int(0)),

        ("request_code", _amf3_int(0)),

        ("error_code",   _amf3_int(0)),

    ]

    body_amf3 = _amf3_object(fields)

    return _make_ack_message(correlation_id, body_amf3)







def _build_cooldown_response(correlation_id: str) -> bytes:
    """Build response matching OPDataManager::onAllCoolDownRefresh."""
    fields = [
        ("server_time",            _amf3_double(float(time.time()))),
        ("slave_max",              _amf3_int(5)),
        ("farm_max",               _amf3_int(5)),
        ("cool_time_second",       _amf3_double(0.0)),
        ("cool_time",              _amf3_double(0.0)),
        ("can_forge",              _amf3_bool(True)),
        ("can_forge_second",       _amf3_bool(True)),
        ("arena_left_count",       _amf3_int(15)),
        ("dock_count",             _amf3_int(3)),
        ("arena_battle_cooldown",  _amf3_double(0.0)),
        ("slave_empty",            _amf3_int(1)),
        ("slave_finished",         _amf3_int(0)),
        ("cool_time_second_open",  _amf3_bool(True)),
        ("dock_cool_time",         _amf3_double(0.0)),
        ("train_pet_count",        _amf3_int(5)),
        ("farm_finished",          _amf3_int(0)),
        ("forge_time_type",        _amf3_int(0)),
        ("error_code",             _amf3_int(0)),
    ]
    body_amf3 = _amf3_object(fields)
    return _make_ack_message(correlation_id, body_amf3)

def _build_forge_response(correlation_id: str, item_id: int, cfg_item_id: int, item_level: int, amount: int = 1, star: int = 0, equiped: bool = True) -> bytes:
    """Build response matching OPDataManager::supportForge / onForge."""
    role = _get_role()
    fields = [
        ("server_time",           _amf3_double(float(time.time()))),
        ("fate_point",            _amf3_int(0)),
        ("copper",                _amf3_double(float(role.get("copper", 100000)))),
        ("gold",                  _amf3_int(int(role.get("gold", 5000)))),
        ("cool_time",             _amf3_double(0.0)),
        ("cool_time_second",      _amf3_double(0.0)),
        ("forge_time_type",       _amf3_int(0)),
        ("cool_time_second_open", _amf3_bool(True)),
        ("can_forge",             _amf3_bool(True)),
        ("can_forge_second",      _amf3_bool(True)),
        ("success",               _amf3_bool(True)),
        ("crit",                  _amf3_bool(False)),
        ("item_id",               _amf3_int(item_id)),
        ("cfg_item_id",           _amf3_int(cfg_item_id)),
        ("amount",                _amf3_int(amount)),
        ("star",                  _amf3_int(star)),
        ("equiped",               _amf3_bool(equiped)),
        ("target_item_level",     _amf3_int(item_level)),
        ("item_level",            _amf3_int(item_level)),
        ("error_code",            _amf3_int(0)),
    ]
    body_amf3 = _amf3_object(fields)
    return _make_ack_message(correlation_id, body_amf3)

def _handle_forge_request(body: list, correlation_id: str) -> bytes:
    role = _get_role()
    items = _get_player_items()
    # body: [role_id, code, item_id, fate_point, type]
    item_id = 0
    if isinstance(body, list) and len(body) >= 3 and isinstance(body[2], int) and body[2] > 0:
        item_id = body[2]
    elif isinstance(body, list) and len(body) >= 1 and isinstance(body[-1], int) and body[-1] > 0:
        item_id = body[-1]
    
    target_item = None
    if item_id:
        for it in items:
            if it.get("item_id") == item_id:
                target_item = it
                break
    if not target_item:
        for it in items:
            if it.get("part") == 1 or it.get("equiped"):
                target_item = it
                break
        if not target_item and items:
            target_item = items[0]

    if target_item:
        target_item["level"] = target_item.get("level", 1) + 1
        target_item["star"] = target_item["level"]
        item_id = target_item.get("item_id", 1002)
        cfg_item_id = target_item.get("cfg_item_id", 200328)
        new_level = target_item["level"]
        amount = target_item.get("amount", 1)
        star = new_level
        equiped = bool(target_item.get("equiped", False))
        print(f"  [FORGE] Upgraded item {item_id} (cfg {cfg_item_id}) to level {new_level}", flush=True)
    else:
        item_id = 1002
        cfg_item_id = 200328
        new_level = 2
        amount = 1
        star = 2
        equiped = True

    # 强化装备任务 100009 达成！
    if role.get("current_task") == 100009:
        role["task_completed"] = True
        print("  [TASK 100009] Equipment upgrade task completed!", flush=True)

    role["copper"] = max(0, role.get("copper", 100000) - 1000)
    _save()
    return _build_forge_response(correlation_id, item_id, cfg_item_id, new_level, amount, star, equiped)

def _build_item_response(correlation_id: str, error_code: int = -1, rewards: list = None) -> bytes:
    role = _get_role()
    items_amf3 = _build_player_items_amf3()
    reward_objects = []
    for r in (rewards or []):
        reward_objects.append(_amf3_object([
            ("type",  _amf3_int(int(r.get("type", 0)))),
            ("value", _amf3_int(int(r.get("value", 0)))),
        ]))
    result_list_obj = _amf3_object([("source", _amf3_array(reward_objects))])

    fields = [
        ("error_code",   _amf3_int(error_code)),
        ("result_list",  result_list_obj),
        ("prestige",     _amf3_int(int(role.get("prestige", 100)))),
        ("copper",       _amf3_double(float(role.get("copper", 100000)))),
        ("gold",         _amf3_int(int(role.get("gold", 5000)))),
        ("action_point", _amf3_int(int(role.get("action_point", 100)))),
        ("exploit",      _amf3_int(int(role.get("exploit", 0)))),
        ("items",        items_amf3),
        ("item_data",    _build_item_data()),
        ("generals",     _build_generals_list()),
        ("request_code", _amf3_int(0)),
    ]
    body_amf3 = _amf3_object(fields)
    return _make_ack_message(correlation_id, body_amf3)

def _handle_item_request(operation: str, body: list, correlation_id: str) -> bytes:
    role = _get_role()
    items = _get_player_items()
    equipments = role.setdefault("equipments", {"weapon": 0, "armor": 0, "horse": 0, "cloak": 0, "amulet": 0, "misc": 0})
    op_lower = operation.lower()
    rewards = []

    if "itemexchage" in op_lower or "exchange" in op_lower:
        return _handle_item_exchange(correlation_id, body)

    proto_fig = role.get("figure", 1008)
    if proto_fig < 1000:
        proto_fig = FIGURE_MAP.get(proto_fig, 1008)
    proto_ids = {proto_fig, 1001, 1007, 1008, 0, 1}
    for k in PROTAGONIST_CONFIG.keys():
        proto_ids.add(k)

    if "using" in op_lower or "use" in op_lower:
        # body: [role_id, code, general_id, item_id]
        item_id = None
        target_gen_id = proto_fig
        if isinstance(body, list) and len(body) >= 4:
            target_gen_id = body[2]
            item_id = body[3]
        elif isinstance(body, list) and len(body) >= 1:
            item_id = body[-1]
        elif isinstance(body, dict):
            item_id = body.get("4_itemId") or body.get("itemId") or body.get("item_id")
            target_gen_id = body.get("3_generalId") or body.get("generalId") or target_gen_id
        
        target_item = None
        for it in items:
            if it.get("item_id") == item_id:
                target_item = it
                break
        
        if target_item:
            cfg_id = target_item.get("cfg_item_id", 0)
            part = _get_item_part(target_item)
            if part in SLOT_NAME_MAP:
                slot_name = SLOT_NAME_MAP[part]
                is_proto = (target_gen_id in proto_ids)
                
                # 穿戴装备：卸下原本槽位中的同部位装备
                for it in items:
                    if _get_item_part(it) == part and it.get("equiped"):
                        it_gid = it.get("general_id", 0)
                        if (is_proto and it_gid in proto_ids) or (not is_proto and it_gid == target_gen_id):
                            it["equiped"] = 0
                            it["general_id"] = 0

                target_item["equiped"] = 1
                if is_proto:
                    target_item["general_id"] = 1001
                    equipments[slot_name] = target_item["item_id"]
                    print(f"  [EQUIP] Equipped item {item_id} (cfg {cfg_id}) to slot {slot_name} on protagonist {proto_fig}", flush=True)
                else:
                    target_item["general_id"] = target_gen_id
                    print(f"  [EQUIP] Equipped item {item_id} (cfg {cfg_id}) to slot {slot_name} on companion {target_gen_id}", flush=True)
            else:
                is_using_all = ("all" in op_lower)
                avail_amt = int(target_item.get("amount", 1))
                use_count = avail_amt if is_using_all else 1
                if use_count <= 0:
                    use_count = 1

                new_amt = avail_amt - use_count
                if new_amt <= 0:
                    items.remove(target_item)
                else:
                    target_item["amount"] = new_amt

                max_item_id = max([int(it.get("item_id", 0)) for it in items] + [1000])
                if cfg_id == 300063:
                    # 10级成长礼包：20级礼包*1、初级银币卡*10、金币*20、名刀·斩月*1
                    role["gold"] = role.get("gold", 5000) + 20 * use_count
                    items.append({"item_id": max_item_id + 1, "cfg_item_id": 300053, "amount": 10 * use_count, "level": 1, "star": 1, "rise": 0, "equiped": 0, "general_id": 0, "part": 0})
                    items.append({"item_id": max_item_id + 2, "cfg_item_id": 300064, "amount": 1 * use_count, "level": 1, "star": 1, "rise": 0, "equiped": 0, "general_id": 0, "part": 0})
                    items.append({"item_id": max_item_id + 3, "cfg_item_id": 200002, "amount": 1 * use_count, "level": 1, "star": 1, "rise": 0, "equiped": 0, "general_id": 0, "part": 1})
                    rewards.append({"type": 1, "value": 20 * use_count})
                    print(f"  [ITEM] Opened {use_count}x 10级成长礼包 (cfg 300063) -> awarded items & gold", flush=True)
                elif cfg_id == 300064:
                    role["gold"] = role.get("gold", 5000) + 30 * use_count
                    items.append({"item_id": max_item_id + 1, "cfg_item_id": 200048, "amount": 1 * use_count, "level": 1, "star": 1, "rise": 0, "equiped": 0, "general_id": 0, "part": 2})
                    rewards.append({"type": 1, "value": 30 * use_count})
                    print(f"  [ITEM] Opened {use_count}x 20级成长礼包 (cfg 300064) -> awarded items & gold", flush=True)
                elif cfg_id in (300053, 300054, 300055, 300001):
                    card_val = 50000
                    if cfg_id == 300054: card_val = 100000
                    elif cfg_id == 300055: card_val = 200000
                    gain_copper = card_val * use_count
                    role["copper"] = min(float(role.get("copper", 100000)) + float(gain_copper), 999999999.0)
                    rewards.append({"type": 0, "value": int(gain_copper)})
                    print(f"  [ITEM] Used {use_count}x silver card (cfg {cfg_id}) -> copper +{gain_copper}", flush=True)
                elif cfg_id == 300002:
                    gain_ap = 20 * use_count
                    role["action_point"] = role.get("action_point", 100) + gain_ap
                    rewards.append({"type": 3, "value": int(gain_ap)})
                    print(f"  [ITEM] Used {use_count}x vitality potion (cfg {cfg_id}) -> ap +{gain_ap}", flush=True)
                else:
                    gain_copper = 10000 * use_count
                    role["copper"] = min(float(role.get("copper", 100000)) + float(gain_copper), 999999999.0)
                    rewards.append({"type": 0, "value": int(gain_copper)})
                    print(f"  [ITEM] Used {use_count}x consumable item {item_id} (cfg {cfg_id}) -> copper +{gain_copper}", flush=True)
            _save()

    elif "sell" in op_lower:
        # 物品出售逻辑 (body: [role_id, code, item_id])
        item_id = None
        if isinstance(body, list) and len(body) >= 3:
            item_id = body[2]
        elif isinstance(body, list) and len(body) >= 1:
            item_id = body[-1]
        elif isinstance(body, dict):
            item_id = body.get("itemId") or body.get("item_id")

        target_item = None
        for it in items:
            if it.get("item_id") == item_id:
                target_item = it
                break

        if target_item:
            cfg_id = target_item.get("cfg_item_id", 0)
            item_cfg = config_loader.get_item(cfg_id)
            sell_price = 500
            if item_cfg:
                sell_price = int(item_cfg.get("sell_price", 500) or 500)
            if sell_price <= 0:
                sell_price = int(target_item.get("level", 1)) * 500

            amt = target_item.get("amount", 1)
            if amt > 1:
                target_item["amount"] = amt - 1
            else:
                if target_item.get("equiped"):
                    target_item["equiped"] = 0
                    part = _get_item_part(target_item)
                    if part in SLOT_NAME_MAP:
                        equipments[SLOT_NAME_MAP[part]] = 0
                items.remove(target_item)

            role["copper"] = float(role.get("copper", 100000)) + float(sell_price)
            rewards.append({"type": 0, "value": int(sell_price)})
            print(f"  [ITEM.sell] Sold item {item_id} (cfg {cfg_id}, price +{sell_price}) -> new copper {role['copper']}", flush=True)
            _save()

    elif any(k in op_lower for k in ["upgrade", "rise", "forge"]):
        return _handle_forge_request(body, correlation_id)

    elif "unequip" in op_lower:
        # body: [role_id, code, general_id, slot_or_id]
        target_gen_id = proto_fig
        slot_or_id = None
        if isinstance(body, list) and len(body) >= 4:
            target_gen_id = body[2]
            slot_or_id = body[3]
        elif isinstance(body, dict):
            target_gen_id = body.get("3_generalId") or target_gen_id
            slot_or_id = body.get("4_part") or body.get("part")
        
        is_proto = (target_gen_id in proto_ids)
        target_item = None

        if isinstance(slot_or_id, int):
            if slot_or_id >= 1000:
                for it in items:
                    if it.get("item_id") == slot_or_id:
                        target_item = it
                        break
            else:
                target_part = slot_or_id
                for it in items:
                    if _get_item_part(it) == target_part and it.get("equiped"):
                        it_gid = it.get("general_id", 0)
                        if (is_proto and it_gid in proto_ids) or (not is_proto and it_gid == target_gen_id):
                            target_item = it
                            break
        
        if target_item:
            target_item["equiped"] = 0
            target_item["general_id"] = 0
            part = _get_item_part(target_item)
            if is_proto and part in SLOT_NAME_MAP:
                equipments[SLOT_NAME_MAP[part]] = 0
            print(f"  [UNEQUIP] Unequipped item {target_item.get('item_id')} (cfg {target_item.get('cfg_item_id')}, part {part}) from general {target_gen_id}", flush=True)
        _save()

    return _build_item_response(correlation_id, error_code=-1, rewards=rewards)





# ── Request dispatcher ────────────────────────────────────────────────────────



def _extract_correlation_id(envelope: dict) -> str:

    try:

        v = envelope["bodies"][0]["value"]

        if isinstance(v, list) and v:

            v = v[0]

        if isinstance(v, AMFObject):

            v = plain(v)

        return v.get("messageId", str(uuid.uuid4()).upper()) if isinstance(v, dict) else str(uuid.uuid4()).upper()

    except Exception:

        return str(uuid.uuid4()).upper()





def _extract_operation(envelope: dict) -> str:

    try:

        v = envelope["bodies"][0]["value"]

        if isinstance(v, list) and v:

            v = v[0]

        if isinstance(v, AMFObject):

            v = plain(v)

        if not isinstance(v, dict):

            return ""

        op = v.get("operation", "")

        src = v.get("source", "")

        dest = v.get("destination", "")

        return f"{src}.{op}" if src else f"{dest}.{op}"

    except Exception:

        return ""





def _extract_body(envelope: dict) -> list:

    try:

        v = envelope["bodies"][0]["value"]

        if isinstance(v, list) and v:

            v = v[0]

        if isinstance(v, AMFObject):

            v = plain(v)

        if isinstance(v, dict):

            body = v.get("body", [])

            return body if isinstance(body, list) else []

    except Exception:

        pass

    return []






def _build_role_response(correlation_id: str) -> bytes:
    role = _get_role()
    fig = role.get("figure", 1008)
    if fig < 1000:
        fig = FIGURE_MAP.get(fig, 1008)
    cfg = PROTAGONIST_CONFIG.get(fig, PROTAGONIST_CONFIG[1008])

    fields = [
        ("error_code",              _amf3_int(-1)),
        ("request_code",            _amf3_int(0)),
        ("role_id",                 _amf3_int(role["role_id"])),
        ("name",                    _amf3_string(role["name"])),
        ("level",                   _amf3_int(role["level"])),
        ("face",                    _amf3_int(cfg["face"])),
        ("figure",                  _amf3_int(cfg["figure"])),
        ("nation",                  _amf3_int(role["nation"])),
        ("vip_level",               _amf3_int(int(role.get("vip_level", 10)))),
        ("vip_charge",              _amf3_int(int(role.get("vip_charge", 500000)))),
        ("gold",                    _amf3_int(int(role.get("gold", 100000)))),
        ("copper",                  _amf3_double(float(role.get("copper", 100000)))),
        ("area_title",              _amf3_string("小小海贼王")),
        ("server_url",              _amf3_string("http://127.0.0.1:8080/messagebroker/amf")),
        ("server_name",             _amf3_string("单机冒险服")),
        ("server_id",               _amf3_int(1)),
        ("role_data",               _build_role_data()),
    ]
    body_amf3 = _amf3_object(fields)
    return _make_ack_message(correlation_id, body_amf3)

def _build_task_get_response(correlation_id: str) -> bytes:
    return _make_ack_message(correlation_id, _build_task_data())

def _build_task_submit_response(correlation_id: str, task_id: int, action: int = 0) -> bytes:
    role = _get_role()
    current = role.get("current_task")
    last_comp_id = None
    if action == 2:
        role["task_accepted"] = True
        try:
            conn = sqlite3.connect(DB_PATH)
            cur = conn.cursor()
            cur.execute("SELECT complete_type FROM cfg_task WHERE cfg_task_id = ?", (current,))
            r = cur.fetchone()
            conn.close()
            if r and r[0] in (0, 6, 9, 10, 11, 12, 13, 14, 15, 18, 19, 106, 108):
                role["task_completed"] = True
                print(f"  [TASK] Accepted talk/equip/feature task {current} (type={r[0]}) -> immediately ready to complete!", flush=True)
            else:
                role["task_completed"] = False
                print(f"  [TASK] Accepted battle/other task {current}", flush=True)
        except Exception:
            pass
        _save()
    else:
        target_id = task_id if (task_id and task_id > 0) else current
        if target_id == current or task_id == 0:
            last_comp_id = current
            _complete_current_task()
        elif target_id:
            last_comp_id = target_id

    return _make_ack_message(correlation_id, _build_task_data(override_complete_task=last_comp_id))


def dispatch_amf(payload: bytes, stamp: str) -> bytes:

    """Decode, log, and route an AMF POST body to the correct reply builder."""

    CAPTURE_DIR.mkdir(exist_ok=True)

    raw_path = CAPTURE_DIR / f"{stamp}.amf"

    raw_path.write_bytes(payload)



    try:

        envelope = decode_envelope(payload)

        json_path = CAPTURE_DIR / f"{stamp}.json"

        json_path.write_text(json.dumps(envelope, ensure_ascii=False, default=str, indent=2), encoding="utf-8")

        print(f"  decoded: {json_path.name}", flush=True)

    except Exception as exc:

        (CAPTURE_DIR / f"{stamp}.decode-error.txt").write_text(str(exc), encoding="utf-8")

        print(f"  decode error: {exc}", flush=True)

        cid = str(uuid.uuid4()).upper()

        return _build_simple_ack(cid, code=500)



    correlation_id = _extract_correlation_id(envelope)

    operation = _extract_operation(envelope)

    body = _extract_body(envelope)

    print(f"  operation: {operation!r}  correlation: {correlation_id[:8]}...", flush=True)



    # CommandMessage ping
    try:
        v = envelope["bodies"][0]["value"]
        if isinstance(v, list) and v:
            v = v[0]
        if isinstance(v, AMFObject):
            v = plain(v)
        if isinstance(v, dict) and v.get("$class") == "flex.messaging.messages.CommandMessage":
            print("  -> ping ACK", flush=True)
            return client_ping_reply(payload)
    except Exception:
        pass

    try:
        return _dispatch_operation(operation, correlation_id, body, envelope, payload)
    except Exception as exc:
        print(f"  [DISPATCH_CATCHALL] Error handling operation {operation!r}: {exc}", flush=True)
        import traceback; traceback.print_exc()
        return _build_simple_ack(correlation_id, code=0)


def _dispatch_operation(operation: str, correlation_id: str, body: Any, envelope: dict, payload: bytes) -> bytes:
    op_upper = operation.upper()



    # ── RANDOM NAME (CREATE.generateRandomName) ────────────────────────────────

    if "GENERATERANDOMNAME" in op_upper:

        print("  -> generateRandomName response", flush=True)

        return _build_random_name_response(correlation_id)



    # ── CREATE ROLE (CREATE.create / CREATEUSERROLE) ───────────────────────────

    if ("CREATE" in op_upper and "CREATE" in op_upper.split(".")[-1]) or "CREATEUSERROLE" in op_upper:

        # body: [passport, name, figure]

        name = str(body[1]) if len(body) > 1 and body[1] else "船长"

        figure = int(body[2]) if len(body) > 2 and body[2] else 1

        print(f"  -> create role: name={name!r} figure={figure}", flush=True)

        return _build_create_role_response(correlation_id, name, figure)



    # ── LOGIN ──────────────────────────────────────────────────────────────────

    if "LOGIN" in op_upper or "GETROLELIST" in op_upper:

        print("  -> login response", flush=True)

        return _build_login_response(correlation_id)



    # ── ROLE ───────────────────────────────────────────────────────────────────

    if "ROLE" in op_upper and "ROLE" in op_upper.split(".")[-1]:

        print("  -> role data", flush=True)

        return _build_role_response(correlation_id)



    # ── TASK ───────────────────────────────────────────────────────────────────

    if "TASK" in op_upper:

        op_name = op_upper.split(".")[-1]

        task_id = 0

        if len(body) > 2 and isinstance(body[2], (int, float)):

            task_id = int(body[2])

        elif len(body) > 1 and isinstance(body[1], (int, float)):

            task_id = int(body[1])

        elif len(body) > 0 and isinstance(body[0], dict):

            task_id = int(body[0].get("3_cfgTaskId") or body[0].get("cfg_task_id") or 0)

        elif len(body) > 0 and isinstance(body[0], str):

            try:

                j = json.loads(body[0])

                task_id = int(j.get("3_cfgTaskId") or j.get("cfg_task_id") or 0)

            except Exception:

                pass

        action = 0
        if len(body) > 4 and isinstance(body[4], int):
            action = body[4]
        elif len(body) > 0 and isinstance(body[0], str):
            try:
                j = json.loads(body[0])
                if "5_action" in j:
                    action = int(j["5_action"])
                elif "action" in j:
                    action = int(j["action"])
            except Exception:
                pass
        if "DAILYTASK" in op_name:
            if any(k in op_name for k in ["STARUP", "LEGENDARY", "ADDCOUNT"]):
                return _handle_daily_task_refresh(correlation_id)
            return _build_vitality_response(correlation_id)

        if "GET" in op_name:
            role = _get_role()
            print(f"  -> task get (current={role.get('current_task')})", flush=True)
            return _build_task_get_response(correlation_id)

        print(f"  -> task {op_name.lower()} id={task_id} action={action}", flush=True)
        return _build_task_submit_response(correlation_id, task_id, action)



    # — SCENE —

    if "SCENE" in op_upper:

        op_name = op_upper.split(".")[-1]

        if op_name == "SCENE":
            role = _get_role()
            cur_sid = role.get("scene_id", 2001)
            b2 = int(body[2]) if len(body) > 2 else 0
            b3 = int(body[3]) if len(body) > 3 else 0
            
            if b2 >= 2001:
                # 真实的切换场景请求 -> 使用 scene_change 回包以触发 resetMainScene
                sid = b2
                sx = b3
                sy = int(body[4]) if len(body) > 4 else 35
                print(f"  -> scene enter/change sid={sid} ({sx}, {sy})", flush=True)
                return _build_scene_change_response(correlation_id, sid, sx, sy)
            else:
                # 场景内移动寻路: b2 是 target_x, b3 是 target_y
                tx = b2 if b2 > 0 else role.get("scene_x", 361)
                ty = b3 if b3 > 0 else role.get("scene_y", 35)
                print(f"  -> player move in scene {cur_sid} to ({tx}, {ty})", flush=True)
                return _build_scene_response(correlation_id, cur_sid, tx, ty)

        if op_name == "CHANGE":

            sid = int(body[2]) if len(body) > 2 else 2001

            sx = int(body[3]) if len(body) > 3 else 361

            sy = int(body[4]) if len(body) > 4 else 35

            print(f"  -> scene change sid={sid} x={sx} y={sy}", flush=True)

            return _build_scene_change_response(correlation_id, sid, sx, sy)

        if "SCENECHECK" in op_name:

            print("  -> scenecheck response", flush=True)

            return _build_scenecheck_response(correlation_id)

        if op_name == "NPC":
            print(f"  -> npc status list", flush=True)
            return _build_npc_status_response(correlation_id)

        if op_name == "WORD":
            npc_id = 1
            if len(body) > 2 and body[2]:
                npc_id = int(body[2])
            elif len(body) > 0 and isinstance(body[0], int) and body[0] < 100:
                npc_id = int(body[0])
            print(f"  -> npc word/dialog nid={npc_id} (body={body})", flush=True)
            return _build_npc_response(correlation_id, npc_id)

        if "ALLCOOLDOWN" in op_name:
            print(f"  -> scene {op_name.lower()} (cooldown refreshed, can_forge=True)", flush=True)
            return _build_cooldown_response(correlation_id)



    # ── CAMP ───────────────────────────────────────────────────────────────────

    if "CAMP" in op_upper:
        op_name = op_upper.split(".")[-1]

        if "CAMPELITE" in op_name:
            print("  -> camp elite info (EnterCopyWarPanel)", flush=True)
            return _build_camp_elite_response(correlation_id)

        if "RAIDCHECK" in op_name:
            print("  -> raid check info (EnterCopyWarPanel)", flush=True)
            return _build_raid_check_response(correlation_id)

        if "RAIDENTER" in op_name:
            raid_id = 3001
            if isinstance(body, list) and len(body) > 2 and body[2] and str(body[2]).isdigit():
                raid_id = int(body[2])
            print(f"  -> raid enter raid_id={raid_id}", flush=True)
            return _build_raid_enter_response(correlation_id, raid_id)

        if "CAMPTHUMB" in op_name:
            print("  -> camp thumb ACK", flush=True)
            return _build_camp_thumb_response(correlation_id)

        if "CAMPBYSCENE" in op_name:
            role = _get_role()
            role_cur_scene = int(role.get("scene_id", 2001))
            sid = int(body[1]) if (len(body) > 1 and body[1] and str(body[1]).isdigit()) else role_cur_scene
            print(f"  -> camp by scene sid={sid} (role_scene={role_cur_scene})", flush=True)
            return _build_camp_by_scene_response(correlation_id, sid)

        if "CAMPREWARD" in op_name:
            print(f"  -> camp reward ACK", flush=True)
            return _build_camp_reward_response(correlation_id)

        role = _get_role()
        role_cur_scene = int(role.get("scene_id", 2001))
        default_camp = 1004 if role_cur_scene == 2002 else 1001
        camp_id = int(body[2]) if (len(body) > 2 and body[2] and str(body[2]).isdigit()) else (int(body[1]) if (len(body) > 1 and body[1] and str(body[1]).isdigit()) else default_camp)
        print(f"  -> camp info cid={camp_id}", flush=True)
        return _build_camp_info_response(correlation_id, camp_id)



    # ── BATTLE ─────────────────────────────────────────────────────────────────

    if "BATTLE" in op_upper:
        camp_id = 10101
        if isinstance(body, list) and len(body) > 0:
            first = body[0]
            if isinstance(first, str) and "{" in first:
                try:
                    d = json.loads(first)
                    camp_id = int(d.get("3_targetId", d.get("targetId", 10101)))
                except Exception:
                    pass
            elif isinstance(first, dict):
                camp_id = int(first.get("3_targetId", first.get("targetId", 10101)))
            elif len(body) > 2 and body[2]:
                try:
                    camp_id = int(body[2])
                except Exception:
                    pass
            elif isinstance(first, (int, float)):
                camp_id = int(first)
        elif isinstance(body, dict):
            camp_id = int(body.get("3_targetId", body.get("targetId", 10101)))

        print(f"  -> battle apply target/camp={camp_id} (body={body})", flush=True)
        return _build_battle_result_response(correlation_id, camp_id, win=True)



    # ── GENERAL (crew) ─────────────────────────────────────────────────────────

    if "GENERAL" in op_upper:

        op_name = op_upper.split(".")[-1]

        if "SKILLAWAKEN" in op_name.upper():
            # 船员技能槽解锁/领悟 — body=[role_id, cfg_skill_id_or_empty, general_id, slot_idx]
            role = _get_role()
            role.setdefault("skill_point", 50)
            if role["skill_point"] <= 0:
                role["skill_point"] = 50
            role.setdefault("awakened_skills", {})  # {general_id_str: {slot_idx: cfg_skill_id}}

            gen_id = None
            slot_idx = None
            client_picked_skill = None
            if isinstance(body, list):
                print(f"  [skillAwaken] DUMP body={body}", flush=True)
                if len(body) >= 4:
                    try:
                        gen_id = int(body[2])
                        slot_idx = int(body[3])
                    except (ValueError, TypeError):
                        pass
                # body[1] 可能是客户端面板选的 cfg_skill_id（空字符串=没选=随机）
                if len(body) >= 2:
                    b1 = body[1]
                    if isinstance(b1, int) and b1 > 1000:
                        client_picked_skill = b1
                    elif isinstance(b1, str) and b1.isdigit() and int(b1) > 1000:
                        client_picked_skill = int(b1)

            print(f"  [skillAwaken] gen={gen_id}, slot={slot_idx}, client_picked={client_picked_skill}", flush=True)

            skill_id = 0
            if gen_id and slot_idx:
                aw_key = str(gen_id)
                role["awakened_skills"].setdefault(aw_key, {})

                # ★ 收集已解锁的技能，exclude 掉避免重复
                existing_skills = set()
                if aw_key in role["awakened_skills"]:
                    for sidx, sinfo in role["awakened_skills"][aw_key].items():
                        if str(sidx) != str(slot_idx):
                            existing_skills.add(sinfo.get("cfg_skill_id") if isinstance(sinfo, dict) else int(sinfo))
                print(f"  [skillAwaken] excluding existing: {existing_skills}", flush=True)

                # ★ 客户端选了就用客户端的，没选才随机
                if client_picked_skill:
                    skill_id = client_picked_skill
                    print(f"  [skillAwaken] using CLIENT-PICKED skill {skill_id}", flush=True)
                else:
                    skill_id = _pick_skill_for_slot(gen_id, slot_idx, exclude=existing_skills)
                    print(f"  [skillAwaken] random skill {skill_id}", flush=True)

                role["awakened_skills"][aw_key][str(slot_idx)] = {"cfg_skill_id": skill_id, "level": 1}
                role["skill_point"] = max(0, role["skill_point"] - 1)
                print(f"  [skillAwaken] general {gen_id} slot {slot_idx} → skill {skill_id} (level=1, sp={role['skill_point']})", flush=True)
                _save()
                return _build_skill_awaken_response(correlation_id, gen_id, skill_id)
            else:
                print(f"  [skillAwaken] PARSE FAILED body={body}", flush=True)

            _save()
            return _build_general_response(correlation_id)

        if "SKILLCLEAN" in op_name.upper() or "CLEAN" in op_name.upper():
            # 重置技能 — 只清空客户端点击的那个槽位，返还 1 点 skill_point
            role = _get_role()
            role.setdefault("awakened_skills", {})
            print(f"  [skillClean] DUMP body={body}", flush=True)
            gen_id = None
            slot_idx = None
            if isinstance(body, list) and len(body) >= 4:
                try:
                    gen_id = int(body[2])
                    slot_idx = int(body[3])
                except (ValueError, TypeError):
                    pass
            elif isinstance(body, dict):
                try:
                    gen_id = int(body.get("general_id", body.get("generalId", 0))) or None
                    slot_idx = int(body.get("slot", body.get("slot_idx", -1)))
                except (ValueError, TypeError):
                    pass
            print(f"  [skillClean] gen={gen_id}, slot={slot_idx}", flush=True)
            freed = 0
            if gen_id is not None and slot_idx is not None and str(gen_id) in role["awakened_skills"]:
                slots = role["awakened_skills"][str(gen_id)]
                if str(slot_idx) in slots:
                    del slots[str(slot_idx)]
                    freed = 1
                elif slot_idx in slots:
                    del slots[slot_idx]
                    freed = 1
                if not slots:
                    del role["awakened_skills"][str(gen_id)]
            if not freed:
                # 兜底：解析失败时按旧逻辑清空全部（避免卡住无法重置）
                freed = sum(len(slots) for slots in role["awakened_skills"].values())
                role["awakened_skills"] = {}
            role["skill_point"] = role.get("skill_point", 50) + freed
            _save()
            print(f"  -> skillClean OK (gen={gen_id}, slot={slot_idx}, freed {freed} skill_point, total={role['skill_point']})", flush=True)
            return _build_skill_awaken_response(correlation_id, gen_id or 1001, 0)

        if "SKILLUP" in op_name.upper():
            # 技能升级 — 正确解析 body 并更新 skill level
            role = _get_role()
            role.setdefault("awakened_skills", {})
            print(f"  [skillUp] body dump: body={body}", flush=True)

            general_id = None
            target_slot = None    # slot_idx (2 或 3)
            target_skill_id = None # cfg_skill_id
            level_delta = 1       # 默认升 1 级

            if isinstance(body, list):
                for i, item in enumerate(body):
                    print(f"    body[{i}] = {item!r} (type={type(item).__name__})", flush=True)
                # 尝试多种格式解析
                # 格式1: [role_id, '', general_id, slot_idx, new_level]
                # 格式2: [role_id, cfg_skill_id, general_id, slot_idx]
                # 格式3: [role_id, '', general_id, cfg_skill_id]
                for i, item in enumerate(body):
                    if isinstance(item, int):
                        if item in PROTAGONIST_CONFIG:
                            general_id = item
                        elif item in (2, 3):
                            target_slot = item
                        elif item > 1000:
                            target_skill_id = item
                        elif i == 4 and item >= 2:
                            level_delta = item
            elif isinstance(body, dict):
                general_id = int(body.get("general_id", body.get("generalId", 0))) or None
                target_skill_id = int(body.get("skill_id", body.get("cfg_skill_id", body.get("skillId", 0)))) or None
                target_slot = int(body.get("slot_idx", body.get("slotIdx", 0))) or None

            print(f"  [skillUp] parsed: general_id={general_id}, slot={target_slot}, skill_id={target_skill_id}", flush=True)

            # 找到对应 general 的 skill 并升级
            if general_id:
                aw_key = str(general_id)
                role["awakened_skills"].setdefault(aw_key, {})
                slots = role["awakened_skills"][aw_key]

                found_slot = None
                # 优先用 slot 定位
                if target_slot and target_slot in slots:
                    found_slot = target_slot
                # 否则用 skill_id 定位
                elif target_skill_id:
                    for sidx, entry in slots.items():
                        sid = entry.get("cfg_skill_id", entry) if isinstance(entry, dict) else entry
                        if int(sid) == int(target_skill_id):
                            found_slot = sidx
                            break

                if found_slot is not None:
                    entry = slots[found_slot]
                    if isinstance(entry, dict):
                        old_level = int(entry.get("level", 1))
                        new_level = old_level + level_delta
                        entry["cfg_skill_id"] = int(entry.get("cfg_skill_id", 0))
                    else:
                        # 旧格式兼容
                        old_level = 1
                        new_level = 1 + level_delta
                        slots[found_slot] = {"cfg_skill_id": int(entry), "level": new_level}

                    # ★ 限制最高 10 级（客户端超过 10 会打不开技能页面）
                    if new_level > 10:
                        print(f"  [skillUp] level {new_level} exceeds max 10, capping at 10", flush=True)
                        new_level = 10
                        level_delta = new_level - old_level
                        if level_delta <= 0:
                            print(f"  [skillUp] already at max level 10, skip", flush=True)
                            return _build_general_response(correlation_id)
                    entry["level"] = new_level

                    # 扣金币: 每级 200 gold
                    cost = 200 * level_delta
                    role["gold"] = max(role.get("gold", 0) - cost, 0)
                    print(f"  [skillUp] general {general_id} slot {found_slot} level {old_level}→{new_level} (cost={cost}, gold={role['gold']})", flush=True)
                else:
                    print(f"  [skillUp] skill not found in slots={slots}", flush=True)

            _save()
            print(f"  -> skillUp OK", flush=True)
            return _build_general_response(correlation_id)

        if "FORMATION" in op_name.upper():
            # 阵型设置（支持船员互换位置与下阵）
            role = _get_role()
            fmt_dict = _get_formation_dict(role)
            # body: [role_id, code, general_id, cfg_formation_id, pos, on]
            gen_id = 0
            pos = 0
            on = True
            if isinstance(body, list) and len(body) >= 6:
                try:
                    gen_id = int(body[2] or 0)
                    pos = int(body[4] or 0)
                    on = bool(body[5])
                except Exception:
                    pass
            elif isinstance(body, dict):
                try:
                    gen_id = int(body.get("3_generalId") or body.get("generalId") or 0)
                    pos = int(body.get("5_pos") or body.get("pos") or 0)
                    on = bool(body.get("6_on", True))
                except Exception:
                    pass

            if pos in range(1, 10):
                old_pos_of_gen = None
                for k, v in fmt_dict.items():
                    if int(v) == gen_id:
                        old_pos_of_gen = str(k)
                        break

                if on:
                    prev_occupant = int(fmt_dict.get(str(pos), 0))
                    if old_pos_of_gen and old_pos_of_gen != str(pos):
                        fmt_dict[old_pos_of_gen] = prev_occupant
                    fmt_dict[str(pos)] = gen_id
                else:
                    if old_pos_of_gen:
                        fmt_dict[old_pos_of_gen] = 0
                    if int(fmt_dict.get(str(pos), 0)) == gen_id:
                        fmt_dict[str(pos)] = 0

                role["formation"] = fmt_dict
                _save()
                print(f"  [FORMATION] Updated pos {pos} -> {gen_id} (on={on}), result={fmt_dict}", flush=True)
            return _build_general_response(correlation_id)

        if "TRAINING" in op_name.upper():
            print(f"  -> general.training handler: {operation} body={body}", flush=True)
            return _build_training_response(correlation_id)

        if "FIRE" in op_upper or "FIRE" in op_name.upper():
            role = _get_role()
            target_id = None
            if isinstance(body, list) and len(body) >= 3:
                target_id = body[2]
            elif isinstance(body, dict):
                target_id = body.get("3_generalId") or body.get("generalId") or body.get("general_id") or body.get("3_targetId") or body.get("target_id") or body.get("3_id") or body.get("id")
            
            fired_cfg_id = 0
            if target_id is not None:
                try:
                    target_id = int(target_id)
                except Exception:
                    pass
                generals = role.get("generals", [])
                removed_gen = None
                for g in list(generals):
                    if isinstance(g, dict) and (g.get("general_id") == target_id or g.get("cfg_general_id") == target_id or g.get("id") == target_id):
                        generals.remove(g)
                        removed_gen = g
                        fired_cfg_id = int(g.get("cfg_general_id", target_id))
                        break
                
                # Clean awakened skills
                role.setdefault("awakened_skills", {}).pop(str(target_id), None)
                if fired_cfg_id:
                    role.setdefault("awakened_skills", {}).pop(str(fired_cfg_id), None)
                
                # Unequip items worn by target_id
                items = _get_player_items()
                for it in items:
                    if it.get("general_id") in [target_id, fired_cfg_id]:
                        it["general_id"] = 0
                        it["equiped"] = 0
                
                print(f"  [GENERAL.fire] Dismissed crew member {target_id} ({removed_gen.get('name') if removed_gen else 'unknown'})", flush=True)
                _save()
            return _build_fire_response(correlation_id, target_id or 0, fired_cfg_id or 0)

        if "OPENCARD" in op_upper:
            print(f"  -> tavern openCard handler: {operation} body={body}", flush=True)
            return _handle_tavern_open_card(correlation_id, body)

        if "TREAT" in op_upper or "RECRUITTAVERN" in op_upper:
            # 客户端 CDlgTavern 点击召集令 (初级/中级/高级)，发送 0xd7 -> recruitTavern body=[roleId, code, type, sceneId]
            print(f"  -> tavern treat/recruitTavern (召集令) handler: {operation} body={body}", flush=True)
            return _build_tavern_treat_response(correlation_id, body, is_recruit=False)

        if "RECRUIT" in op_upper:
            # 检查如果是点击召集令传递的参数格式 [role_id, code, type, scene_id] 且 type in [1, 2, 3]
            if isinstance(body, list) and len(body) >= 3 and isinstance(body[2], int) and body[2] in [1, 2, 3]:
                print(f"  -> recruit with type {body[2]} is 召集令: {operation} body={body}", flush=True)
                return _build_tavern_treat_response(correlation_id, body, is_recruit=False)
            print(f"  -> tavern recruit handler: {operation} body={body}", flush=True)
            return _build_tavern_recruit_response(correlation_id, body)

        if any(k in op_upper for k in ["TAVERN", "STARGENERAL"]):
            print(f"  -> tavern info handler: {operation}", flush=True)
            return _build_tavern_info_response(correlation_id)

        if "POLISH" in op_upper:
            print(f"  -> general polish handler: {operation} body={body}", flush=True)
            return _handle_polish_request(operation, body, correlation_id)

        print("  -> general data", flush=True)
        return _build_general_response(correlation_id)



    # ── TAVERN ─────────────────────────────────────────────────────────────────
    if "TAVERN" in op_upper:
        if "RECRUITTAVERN" in op_upper or "TREAT" in op_upper:
            print(f"  -> tavern recruitTavern/treat (召集令): {operation}", flush=True)
            return _build_tavern_treat_response(correlation_id, body, is_recruit=False)
        if "RECRUIT" in op_upper:
            if isinstance(body, list) and len(body) >= 3 and isinstance(body[2], int) and body[2] in [1, 2, 3]:
                print(f"  -> tavern recruit (type {body[2]} is 召集令): {operation}", flush=True)
                return _build_tavern_treat_response(correlation_id, body, is_recruit=False)
            print(f"  -> tavern recruit: {operation}", flush=True)
            return _build_tavern_recruit_response(correlation_id, body)
        if "OPENCARD" in op_upper:
            print(f"  -> tavern openCard: {operation}", flush=True)
            return _handle_tavern_open_card(correlation_id, body)
        print(f"  -> tavern info: {operation}", flush=True)
        return _build_tavern_info_response(correlation_id)



    # ── ACTIVITY ───────────────────────────────────────────────────────────────

    if "ACTIVITY" in op_upper or any(k in op_upper for k in ["REWARDLOGIN", "GETREWARD", "REWARDCHECK", "VITALITY", "MALL"]):
        op_name = op_upper.split(".")[-1]
        if "REWARDLOGIN" in op_name:
            return _handle_reward_login(correlation_id)
        if "GETREWARD" in op_name:
            return _handle_get_reward(correlation_id, body)
        if "REWARDCHECK" in op_name:
            return _handle_reward_check(correlation_id)
        if "REWARDONLINE" in op_name:
            return _handle_reward_login(correlation_id)
        if "VITALITY" in op_name:
            if "REWARD" in op_name:
                return _handle_reward_vitality(correlation_id)
            return _build_vitality_response(correlation_id)
        if "MALL" in op_name:
            if "BUY" in op_name:
                return _handle_mall_buy(correlation_id, body)
            return _build_mall_response(correlation_id)
        if any(k in op_name for k in ["FIRSTPAY", "FIRSTCHARGE", "REWARDCODE"]):
            return _handle_first_pay(correlation_id)
        print("  -> activity ACK", flush=True)
        return _build_activity_response(correlation_id)

    # ── RECHARGE / PAY ─────────────────────────────────────────────────────────
    if any(k in op_upper for k in ["PAY", "RECHARGE", "VIPCHARGE"]):
        return _handle_recharge(correlation_id)



    # ── FATE ───────────────────────────────────────────────────────────────────

    if "FATE" in op_upper:

        print("  -> fate ACK", flush=True)

        return _build_fate_response(correlation_id)



    # ── CHAT ───────────────────────────────────────────────────────────────────

    if "CHAT" in op_upper:

        print("  -> chat ACK", flush=True)

        return _build_chat_response(correlation_id)



    # ── SKYLADDER / ARENA ──────────────────────────────────────────────────────

    if "SKYLADDER" in op_upper or "ARENA" in op_upper:

        print("  -> skyladder/arena ACK", flush=True)

        return _build_skyladder_response(correlation_id)

    # ── MANOR (training) / FORGE ──────────────────────────────────────────────
    if "MANOR" in op_upper or "TRAIN" in op_upper or "FORGE" in op_upper:
        op_name = op_upper.split(".")[-1]
        op_upper_check = op_name.upper()

        if "TRAININGSTART" in op_upper_check:
            # 开始训练船员
            role = _get_role()
            body = _extract_body(envelope)
            gen_id = None
            ratio_type = 0
            time_type = 0
            if isinstance(body, list) and len(body) >= 3:
                gen_id = body[2]
                if len(body) >= 4:
                    try: ratio_type = int(body[3] or 0)
                    except: ratio_type = 0
                if len(body) >= 5:
                    try: time_type = int(body[4] or 0)
                    except: time_type = 0
            elif isinstance(body, dict):
                gen_id = body.get("3_generalId") or body.get("generalId")
                ratio_type = int(body.get("4_ratioType", 0))
                time_type = int(body.get("5_timeType", 0))

            # Ratio multipliers: 0: 100%, 1: 120%, 2: 150%, 3: 200%
            TRAIN_RATES = {0: 1.0, 1: 1.2, 2: 1.5, 3: 2.0}
            rate = TRAIN_RATES.get(ratio_type, 1.0)
            duration = 28800  # 8 hours
            now_ts = float(int(time.time()))
            exp_awarded = int(28800 * 0.5 * rate)

            train_list = role.setdefault("training_list", [])
            for g in role.get("generals", []):
                if gen_id and int(g.get("general_id", 0)) == int(gen_id):
                    t_entry = None
                    for t in train_list:
                        if int(t.get("general_id", 0)) == int(gen_id):
                            t_entry = t
                            break
                    if not t_entry:
                        t_entry = {"general_id": int(gen_id)}
                        train_list.append(t_entry)
                    t_entry["start_time"] = now_ts
                    t_entry["training_end"] = now_ts + duration
                    t_entry["ratio_type"] = ratio_type
                    t_entry["time_type"] = time_type
                    t_entry["training_experience"] = exp_awarded
                    t_entry["experience"] = int(g.get("experience", 0))
                    t_entry["level"] = int(g.get("level", 1))
                    break
            if role.get("current_task") == 100025:
                role["task_completed"] = True
                print("  [TASK 100025] Crew training started -> Task completed and ready to submit!", flush=True)
            _save()
            print(f"  -> manor.trainingStart OK (gen={gen_id}, ratio={rate}, exp={exp_awarded}, end={now_ts + duration})", flush=True)
            return _build_training_response(correlation_id)

        if "STOP" in op_upper_check or "TRAININGSTOP" in op_upper_check:
            # 停止训练船员
            role = _get_role()
            body = _extract_body(envelope)
            gen_id = None
            if isinstance(body, list) and len(body) >= 3:
                gen_id = body[2]
            elif isinstance(body, dict):
                gen_id = body.get("3_generalId") or body.get("generalId")
            now_ts = float(int(time.time()))
            for t in role.get("training_list", []):
                if gen_id and int(t.get("general_id", 0)) == int(gen_id):
                    start_t = float(t.get("start_time", now_ts))
                    end_t = float(t.get("training_end", now_ts))
                    total_dur = max(1.0, end_t - start_t)
                    elapsed = max(0.0, min(total_dur, now_ts - start_t))
                    earned = int(t.get("training_experience", 3000) * (elapsed / total_dur))
                    for g in role.get("generals", []):
                        if int(g.get("general_id", 0)) == int(gen_id):
                            g["experience"] = int(g.get("experience", 0)) + earned
                            g["level"] = max(int(g.get("level", 1)), min(role.get("level", 1), int(g.get("level", 1)) + 1))
                            t["experience"] = g["experience"]
                            t["level"] = g["level"]
                            break
                    t["training_end"] = 0.0
                    break
            _save()
            print(f"  -> manor.trainingStop OK (gen={gen_id})", flush=True)
            return _build_training_response(correlation_id)

        if "JUMP" in op_upper_check:
            # 秒CD / 快速训练 / 训练10次
            role = _get_role()
            body = _extract_body(envelope)
            gen_id = None
            jump_type = 1
            if isinstance(body, list) and len(body) >= 3:
                gen_id = body[2]
                if len(body) >= 4:
                    try: jump_type = int(body[3] or 1)
                    except: jump_type = 1
            elif isinstance(body, dict):
                gen_id = body.get("3_generalId") or body.get("generalId")
                jump_type = int(body.get("4_type", 1))

            # type 1: 快速训练 1 次 (+3000 exp)
            # type 2: 金币训练 (+6000 exp, -5 gold)
            # type 3: 训练 10 次 (+30000 exp, -20 gold)
            exp_map = {1: 3000, 2: 6000, 3: 30000}
            add_exp = exp_map.get(jump_type, 3000)
            if jump_type == 2:
                role["gold"] = max(0, role.get("gold", 5000) - 5)
            elif jump_type == 3:
                role["gold"] = max(0, role.get("gold", 5000) - 20)

            for g in role.get("generals", []):
                if gen_id and int(g.get("general_id", 0)) == int(gen_id):
                    g["experience"] = int(g.get("experience", 0)) + add_exp
                    g["level"] = max(int(g.get("level", 1)), min(role.get("level", 1), int(g.get("level", 1)) + 1))
                    break
            for t in role.get("training_list", []):
                if gen_id and int(t.get("general_id", 0)) == int(gen_id):
                    t["training_end"] = 0.0  # Clear cooldown / 秒CD
                    for g in role.get("generals", []):
                        if int(g.get("general_id", 0)) == int(gen_id):
                            t["experience"] = g["experience"]
                            t["level"] = g["level"]
                            break
                    break
            _save()
            print(f"  -> manor.jump OK (gen={gen_id}, type={jump_type}, added {add_exp} exp, CD cleared)", flush=True)
            return _build_training_response(correlation_id)

        if any(k in op_upper_check for k in ["TRAININGSTATUS", "TRAININGSLOT", "TRAINING"]):
            print(f"  -> manor.trainingStatus/slot OK", flush=True)
            return _build_training_response(correlation_id)

        if "TREASURE" in op_upper_check:
            print(f"  -> manor.treasure handler: {operation} body={body}", flush=True)
            return _handle_treasure_request(operation, body, correlation_id)

        if "FORGE" in op_name:
            print(f"  -> forge handler: {operation}", flush=True)
            return _handle_forge_request(_extract_body(envelope), correlation_id)

        print(f"  -> manor training response fallback for {operation}", flush=True)
        return _build_training_response(correlation_id)

    # ── POLISH / CULTIVATE ─────────────────────────────────────────────────────
    if "POLISH" in op_upper:
        print(f"  -> polish handler: {operation} body={body}", flush=True)
        return _handle_polish_request(operation, body, correlation_id)

    # ── TREASURE ───────────────────────────────────────────────────────────────
    if "TREASURE" in op_upper:
        print(f"  -> treasure handler: {operation} body={body}", flush=True)
        return _handle_treasure_request(operation, body, correlation_id)

    # ── TALENT ─────────────────────────────────────────────────────────────────
    if "TALENT" in op_upper or "TANENT" in op_upper:
        print(f"  -> talent handler for {operation}", flush=True)
        return _handle_talent_request(operation, _extract_body(envelope), correlation_id)

    # ── ITEM ───────────────────────────────────────────────────────────────────
    if "ITEM" in op_upper or any(k in op_upper for k in ["USING", "SELL", "UNEQUIP", "UPGRADE", "FORGE", "RISE", "HAKI", "GEM"]):
        print(f"  -> item ACK for {operation}", flush=True)
        return _handle_item_request(operation, _extract_body(envelope), correlation_id)

    # Default
    print(f"  -> generic ACK for {operation!r}", flush=True)
    return _build_simple_ack(correlation_id)





# ── HTTP handler ──────────────────────────────────────────────────────────────



class Handler(BaseHTTPRequestHandler):

    server_version = "XiaoxiaoLocal/0.6"



    def _send(self, status: int, content_type: str, body: bytes) -> None:
        try:
            self.send_response(status)
            self.send_header("Content-Type", content_type)
            self.send_header("Content-Length", str(len(body)))
            self.send_header("Cache-Control", "no-store")
            self.send_header("Set-Cookie", "JSESSIONID=LOCAL_OFFLINE_SESSION_ID; Path=/")
            self.end_headers()
            self.wfile.write(body)
        except (ConnectionResetError, BrokenPipeError, ConnectionAbortedError) as e:
            print(f"  [HTTP] Client dropped connection: {e}", flush=True)
        except Exception as e:
            print(f"  [HTTP] send error: {e}", flush=True)



    def do_GET(self) -> None:

        path = urlsplit(self.path).path

        if path == "/serverlist.js":

            body = (ROOT / "serverlist.js").read_bytes()

            self._send(200, "application/json; charset=utf-8", body)

            return

        if path in ("/recharge", "/api/recharge", "/pay"):
            role = _get_role()
            role["gold"] = int(role.get("gold", 0)) + 100000
            role["vip_level"] = 10
            role["vip_charge"] = 500000
            _save()
            resp = json.dumps({
                "status": "ok",
                "message": "充值成功！已充值 100000 金币，并提升至 VIP 10 特权！",
                "gold": role["gold"],
                "vip_level": role["vip_level"],
                "vip_charge": role["vip_charge"]
            }, ensure_ascii=False).encode("utf-8")
            self._send(200, "application/json; charset=utf-8", resp)
            return

        if path == "/health":

            role = _get_role()

            info = f"local gateway ready | role: {role.get('name','?')} lv{role.get('level',1)} task:{role.get('current_task','none')}\n"

            self._send(200, "text/plain; charset=utf-8", info.encode("utf-8"))

            return

        # 静态文件服务与虚拟空 SWF 响应（彻底防止客户端 404 / IOError 崩溃）
        clean_path = path.lstrip("/").replace("../", "")
        # 尝试从 ROOT 或工作目录查找
        candidates = [
            ROOT / clean_path,
            Path(r"d:\AI\work\xiaoxiaohaizei-offline-src\assets") / clean_path,
            Path(r"d:\AI\work\xiaoxiaohaizei-offline-src\client-patch") / clean_path,
            Path(r"d:\AI\work\xx") / clean_path,
            Path(r"D:\AI\work\xx\Pockie Pirates Stuff\pockiepirates") / clean_path,
        ]
        for cand in candidates:
            if cand.is_file():
                ext = cand.suffix.lower()
                mime = "application/octet-stream"
                if ext == ".swf": mime = "application/x-shockwave-flash"
                elif ext == ".png": mime = "image/png"
                elif ext in (".jpg", ".jpeg"): mime = "image/jpeg"
                elif ext == ".json": mime = "application/json; charset=utf-8"
                elif ext == ".js": mime = "application/javascript; charset=utf-8"
                elif ext == ".txt": mime = "text/plain; charset=utf-8"
                self._send(200, mime, cand.read_bytes())
                return

        if path.lower().endswith(".swf"):
            fallback_swf = Path(r"d:\AI\work\xx\temp_empty.swf")
            if fallback_swf.is_file():
                self._send(200, "application/x-shockwave-flash", fallback_swf.read_bytes())
                return
            else:
                empty_header = b"FWS\x08\x22\x00\x00\x00x\x00\x05p\x00\x00\x0f\xa0\x00\x00\x18\x01\x00B\x44\x00\x00\x00\x00"
                self._send(200, "application/x-shockwave-flash", empty_header)
                return

        if path.lower().endswith((".png", ".jpg")):
            # 1x1 透明 PNG 避免图片加载报错崩溃
            transparent_png = b"\x89PNG\r\n\x1a\n\x00\x00\x00\rIHDR\x00\x00\x00\x01\x00\x00\x00\x01\x08\x06\x00\x00\x00\x1f\x15c4\x00\x00\x00\nIDATx\x9cc\x00\x01\x00\x00\x05\x00\x01\r\n-\xb4\x00\x00\x00\x00IEND\xaeB`\x82"
            self._send(200, "image/png", transparent_png)
            return

        self._send(404, "text/plain; charset=utf-8", b"not found\n")



    def do_POST(self) -> None:

        size = int(self.headers.get("Content-Length", "0"))

        if size < 0 or size > 32 * 1024 * 1024:

            self._send(413, "text/plain; charset=utf-8", b"request too large\n")

            return

        payload = self.rfile.read(size)

        stamp = datetime.now().strftime("%Y%m%d-%H%M%S-%f")

        print(f"POST {self.path}  {len(payload)}B  [{stamp}]", flush=True)



        path = urlsplit(self.path).path
        if path in ("/recharge", "/api/recharge", "/pay"):
            role = _get_role()
            role["gold"] = int(role.get("gold", 0)) + 100000
            role["vip_level"] = 10
            role["vip_charge"] = 500000
            _save()
            resp = json.dumps({
                "status": "ok",
                "message": "充值成功！已充值 100000 金币，并提升至 VIP 10 特权！",
                "gold": role["gold"],
                "vip_level": role["vip_level"],
                "vip_charge": role["vip_charge"]
            }, ensure_ascii=False).encode("utf-8")
            self._send(200, "application/json; charset=utf-8", resp)
            return

        if urlsplit(self.path).path != "/messagebroker/amf":

            self._send(404, "text/plain; charset=utf-8", b"not found\n")

            return



        try:
            reply = dispatch_amf(payload, stamp)
        except Exception as exc:
            print(f"  dispatch error: {exc}", flush=True)
            import traceback; traceback.print_exc()
            cid = str(uuid.uuid4()).upper()
            try:
                reply = _build_simple_ack(cid, code=0)
                self._send(200, "application/x-amf", reply)
            except Exception:
                self._send(500, "text/plain; charset=utf-8", b"internal error\n")
            return

        self._send(200, "application/x-amf", reply)



    def log_message(self, fmt: str, *args: object) -> None:

        print(f"{self.client_address[0]} {fmt % args}", flush=True)





# ── Entry point ───────────────────────────────────────────────────────────────



def main() -> None:

    parser = argparse.ArgumentParser(description="Local gateway for 小小海贼王")

    parser.add_argument("--host", default="0.0.0.0")

    parser.add_argument("--port", type=int, default=8080)

    parser.add_argument("--reset", action="store_true", help="Reset player save data")

    args = parser.parse_args()



    if args.reset:

        if SAVE_FILE.exists():

            SAVE_FILE.unlink()

            print("[重置] Player save data cleared.", flush=True)



    role = _get_role()

    print(f"[小小海贼王本地服 v0.6] Serving on {args.host}:{args.port}", flush=True)

    print(f"  当前角色: {role.get('name', '?')} Lv{role.get('level', 1)} | 任务: {role.get('current_task', 'none')}", flush=True)



    server = ThreadingHTTPServer((args.host, args.port), Handler)
    try:
        server.serve_forever()
    except (KeyboardInterrupt, SystemExit):
        pass
    except Exception as e:
        print(f"[FATAL SERVER ERROR] {e}", flush=True)
        import traceback; traceback.print_exc()
    finally:
        server.server_close()





if __name__ == "__main__":

    main()

