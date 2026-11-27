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

import copy

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





def _get_proto_figure(role: dict) -> int:
    """Return persistent protagonist figure ID (1001..1008), ignoring any town morph appearance."""
    orig = role.get("orig_figure")
    if isinstance(orig, int) and orig in PROTAGONIST_CONFIG:
        return PROTAGONIST_CONFIG[orig]["figure"]
    fig = int(role.get("figure", 0) or 0)
    if 0 < fig < 1000:
        fig = FIGURE_MAP.get(fig, 1008)
    if fig in PROTAGONIST_CONFIG:
        proto = PROTAGONIST_CONFIG[fig]["figure"]
        role["orig_figure"] = proto
        return proto
    fmt = role.get("formation", {})
    if isinstance(fmt, dict):
        for v in fmt.values():
            try:
                vi = int(v or 0)
            except Exception:
                continue
            if vi in PROTAGONIST_CONFIG:
                proto = PROTAGONIST_CONFIG[vi]["figure"]
                role["orig_figure"] = proto
                return proto
            for k, cfg in PROTAGONIST_CONFIG.items():
                if 1001 <= k <= 1008 and vi == cfg["cfg_id"]:
                    role["orig_figure"] = k
                    return k
    role["orig_figure"] = 1008
    return 1008


def _get_display_figure(role: dict) -> tuple[int, int]:
    """Return (figure, face) shown in town / avatar (morphed figure if active, else protagonist)."""
    proto_fig = _get_proto_figure(role)
    morph_fig = int(role.get("morph_figure", 0) or 0)
    if morph_fig > 0:
        morph_face = int(role.get("morph_face", 0) or morph_fig)
        return morph_fig, morph_face
    cfg = PROTAGONIST_CONFIG.get(proto_fig, PROTAGONIST_CONFIG[1008])
    return cfg["figure"], cfg["face"]


def _get_figure_card_count(role: dict) -> int:
    return sum(int(it.get("amount", 0) or 0) for it in role.get("items", []) if it.get("cfg_item_id") == 300078)


def _consume_figure_card(role: dict) -> bool:
    items = role.get("items", [])
    for idx, it in enumerate(items):
        if it.get("cfg_item_id") == 300078 and int(it.get("amount", 0) or 0) > 0:
            new_amt = int(it.get("amount", 0)) - 1
            if new_amt <= 0:
                items.pop(idx)
            else:
                it["amount"] = new_amt
            return True
    return False


def _extract_general_id_arg(body: Any) -> int:
    if isinstance(body, dict):
        for k in ("3_generalId", "generalId", "general_id", "3_targetId", "target_id", "3_id", "id"):
            val = body.get(k)
            if val is not None:
                try:
                    return int(val)
                except Exception:
                    pass
    elif isinstance(body, list):
        if len(body) >= 3 and body[2] is not None:
            try:
                return int(body[2])
            except Exception:
                pass
        elif len(body) >= 1 and isinstance(body[0], dict):
            return _extract_general_id_arg(body[0])
    elif isinstance(body, str):
        try:
            j = json.loads(body)
            return _extract_general_id_arg(j)
        except Exception:
            pass
    return 0


def _lookup_cfg_general(gid: int) -> tuple[str, int, int, int, int, int]:
    """Return (name, job, quality, face, figure, cfg_skill_id) from cfg_general."""
    try:
        conn = sqlite3.connect(DB_PATH)
        row = conn.execute(
            "SELECT name, job, quality, face, figure, cfg_skill_id FROM cfg_general WHERE cfg_general_id = ?",
            (gid,),
        ).fetchone()
        conn.close()
        if row:
            return (
                str(row[0] or "船员"),
                int(row[1] or 10001),
                int(row[2] or 4),
                int(row[3] or gid),
                int(row[4] or gid),
                int(row[5] or 51001),
            )
    except Exception:
        pass
    return ("船员", 10001, 4, gid, gid, 51001)


def _sync_diary_unlocks(role: dict) -> dict:
    """Ensure diary_unlocks tracks every recruited and dismissed crew member."""
    diary = role.setdefault("diary_unlocks", {})
    live_ids = set()
    for g in role.get("generals", []):
        if not isinstance(g, dict):
            continue
        cfg_id = int(g.get("cfg_general_id") or g.get("general_id") or 0)
        if cfg_id <= 0 or cfg_id in PROTAGONIST_CONFIG:
            continue
        live_ids.add(cfg_id)
        key = str(cfg_id)
        snap = copy.deepcopy(g)
        snap["general_id"] = cfg_id
        snap["cfg_general_id"] = cfg_id
        aw = copy.deepcopy(role.get("awakened_skills", {}).get(key, {}))
        diary[key] = {
            "cfg_general_id": cfg_id,
            "is_fired": False,
            "snapshot": snap,
            "awakened_skills": aw,
        }
    # Crew recorded directly in Sailing Log (via Tavern recruit or fire) stay ready to Convene (is_fired=True)
    for key, rec in diary.items():
        if isinstance(rec, dict):
            cid = int(rec.get("cfg_general_id", key) or 0)
            if cid not in live_ids:
                rec["is_fired"] = True
    return diary


def _build_role_data() -> bytes:

    """Build a full role_data AMF3 sealed object matching OPDataManager::onRoleData exactly."""

    now_ts = float(int(time.time()))

    role = _get_role()
    disp_fig, disp_face = _get_display_figure(role)

    fields = [

        ("role_id",                 _amf3_int(role["role_id"])),

        ("name",                    _amf3_string(role["name"])),

        ("level",                   _amf3_int(role["level"])),

        ("face",                    _amf3_int(disp_face)),

        ("figure",                  _amf3_int(disp_fig)),

        ("nation",                  _amf3_int(role["nation"])),

        ("vip_level",               _amf3_int(int(role.get("vip_level", 10)))),

        ("scene_id",                _amf3_int(role["scene_id"])),

        ("scene_x",                 _amf3_int(role["scene_x"])),

        ("scene_y",                 _amf3_int(role["scene_y"])),

        ("arena_rank",              _amf3_int(0)),

        ("arena_reward_get",        _amf3_bool(False)),

        ("free_token",              _amf3_int(0)),

        ("prestige",                _amf3_int(int(role.get("prestige", 0)))),

        ("action_point_reward_get", _amf3_bool(bool(role.get("action_point_reward_get", False)))),

        ("ap_max",                  _amf3_int(role["ap_max"])),

        ("action_point",            _amf3_int(role["action_point"])),

        ("is_hunting",              _amf3_bool(False)),

        ("is_team_replaced",        _amf3_bool(False)),

        ("gold",                    _amf3_int(role["gold"])),

        ("copper",                  _amf3_double(float(role["copper"]))),

        ("prestige_reward_get",     _amf3_bool(bool(role.get("prestige_reward_get", False)))),

        ("camp_bot_id",             _amf3_int(0)),

        ("army_bot_id",             _amf3_int(0)),

        ("exploit",                 _amf3_int(int(role.get("exploit", 0)))),

        ("ap_charge",               _amf3_int(int(role.get("ap_charge", 0)))),

        ("is_in_team",              _amf3_bool(False)),

        ("seaBlessIsActive",        _amf3_bool(float(role.get("sea_bless_end_time", 0) or 0) > time.time())),

        ("login_days",              _amf3_int(role["login_days"])),
        ("daily_login",             _amf3_bool(int(role.get("login_days", role.get("daily_login", 1) or 1)) in role.get("claimed_login_rewards", []))),

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

    # Daily tasks (type=3 航海任务, type=4 烹饪任务) matched to current scene
    cur_scene = int(role.get("scene_id", 2001) or 2001)
    scene_offset = max(1, min(27, (cur_scene - 2000) if 2001 <= cur_scene <= 2027 else 1))
    daily_task_ids = [300000 + scene_offset, 400000 + scene_offset]
    daily_progress = role.get("daily_task_progress", {})
    daily_tasks = []
    for d_id in daily_task_ids:
        d_type = 3 if d_id < 400000 else 4
        d_val = int(daily_progress.get(str(d_id), 0))
        daily_tasks.append(_amf3_object([
            ("cfg_task_id",  _amf3_int(d_id)),
            ("do_value",     _amf3_int(d_val)),
            ("complete_num", _amf3_int(d_val)),
            ("type",         _amf3_int(d_type)),
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
        ("daily_task_list",             _amf3_array(daily_tasks)),
        ("mem_daily_task_list",         _amf3_array(daily_tasks)),
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
    fig = _get_proto_figure(role)
    cfg = PROTAGONIST_CONFIG.get(fig, PROTAGONIST_CONFIG[1008])

    # 动态根据当前实际穿戴的装备，同步将军身上的六大装备槽位
    items = _get_player_items()
    active_eq = {"weapon": 0, "armor": 0, "horse": 0, "cloak": 0, "amulet": 0, "misc": 0}
    proto_fig_val = cfg["figure"]
    proto_ids = {proto_fig_val, cfg["cfg_id"], 1001, 1007, 1008, 0, 1}
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
    proto_bonuses = config_loader.calc_equip_soul_bonuses(
        items, role.get("soul_bag_list", role.get("souls", [])), role.get("general_souls", {}), True, proto_fig_val, proto_ids
    )
    proto_soul_slots = proto_bonuses["soul_slots"]

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
        ("health_point",      _amf3_int(proto_stats["hp"] + proto_bonuses["hp"])),
        ("health_point_max",  _amf3_int(proto_stats["hp_max"] + proto_bonuses["hp"])),

        # 攻防属性 (int)
        ("physical_attack",   _amf3_int(proto_stats["physical_attack"] + proto_bonuses["physical_attack"])),
        ("physical_defence",  _amf3_int(proto_stats["physical_defence"] + proto_bonuses["physical_defence"])),
        ("spell_attack",      _amf3_int(proto_stats["spell_attack"] + proto_bonuses["spell_attack"])),
        ("spell_defence",     _amf3_int(proto_stats["spell_defence"] + proto_bonuses["spell_defence"])),

        # 战斗命中/闪避/暴击/速度 (int)
        ("hit",               _amf3_int(100 + proto_bonuses["hit"])),       # 10.0% + equip/soul
        ("dodge",             _amf3_int(50 + proto_bonuses["dodge"])),      # 5.0% + equip/soul
        ("critic",            _amf3_int(160 + proto_bonuses["critic"])),    # 16.0% + equip/soul
        ("critic_resist",     _amf3_int(proto_bonuses["critic_resist"])),
        ("speed",             _amf3_int(proto_stats["speed"] + proto_bonuses["speed"])),

        # 破防/减伤/格挡 (注意字段名必须是 parray)
        ("physical_penerate", _amf3_int(proto_bonuses["physical_penerate"])),
        ("spell_penerate",    _amf3_int(proto_bonuses["spell_penerate"])),
        ("physical_derate",   _amf3_int(proto_bonuses["physical_derate"])),
        ("spell_derate",      _amf3_int(60 + proto_bonuses["spell_derate"])),
        ("parray",            _amf3_int(proto_bonuses["parray"])),
        ("parry_penerate",    _amf3_int(proto_bonuses["parry_penerate"])),

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
        ("equip_score",       _amf3_int(proto_bonuses["equip_score"])),
        ("gem_score",         _amf3_int(0)),
        ("suit_score",        _amf3_int(0)),
        ("soul_score",        _amf3_int(proto_bonuses["soul_score"])),
        ("ship_score",        _amf3_int(0)),
        ("talent_score",      _amf3_int(0)),
        ("practice_score",    _amf3_int(0)),
        ("level_score",       _amf3_int(0)),
        ("grow_score",        _amf3_int(0)),
        ("skill_score",       _amf3_int(0)),

        # 命魂体系 (int 0)
        ("main_soul",         _amf3_int(proto_soul_slots["main_soul"])),
        ("vice_soul",         _amf3_int(proto_soul_slots["vice_soul"])),
        ("tert_soul",         _amf3_int(proto_soul_slots["tert_soul"])),
        ("fourth_soul",       _amf3_int(proto_soul_slots["fourth_soul"])),
        ("fifth_soul",        _amf3_int(proto_soul_slots["fifth_soul"])),
        ("sixth_soul",        _amf3_int(proto_soul_slots["sixth_soul"])),
        ("seventh_soul",      _amf3_int(proto_soul_slots["seventh_soul"])),
        ("eighth_soul",       _amf3_int(proto_soul_slots["eighth_soul"])),

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
    c_bonuses = config_loader.calc_equip_soul_bonuses(
        items, role.get("soul_bag_list", role.get("souls", [])), role.get("general_souls", {}), False, gid, set()
    )
    c_soul_slots = c_bonuses["soul_slots"]

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

        ("health_point",      _amf3_int(c_stats["hp"] + c_bonuses["hp"])),
        ("health_point_max",  _amf3_int(c_stats["hp_max"] + c_bonuses["hp"])),
        ("physical_attack",   _amf3_int(c_stats["physical_attack"] + c_bonuses["physical_attack"])),
        ("physical_defence",  _amf3_int(c_stats["physical_defence"] + c_bonuses["physical_defence"])),
        ("spell_attack",      _amf3_int(c_stats["spell_attack"] + c_bonuses["spell_attack"])),
        ("spell_defence",     _amf3_int(c_stats["spell_defence"] + c_bonuses["spell_defence"])),
        ("speed",             _amf3_int(c_stats["speed"] + c_bonuses["speed"])),
        ("hit",               _amf3_int(100 + c_bonuses["hit"])),
        ("dodge",             _amf3_int(10 + c_bonuses["dodge"])),
        ("critic",            _amf3_int(15 + c_bonuses["critic"])),
        ("critic_resist",     _amf3_int(5 + c_bonuses["critic_resist"])),
        ("physical_penerate", _amf3_int(c_bonuses["physical_penerate"])),
        ("spell_penerate",    _amf3_int(c_bonuses["spell_penerate"])),
        ("physical_derate",   _amf3_int(c_bonuses["physical_derate"])),
        ("spell_derate",      _amf3_int(c_bonuses["spell_derate"])),
        ("parray",            _amf3_int(10 + c_bonuses["parray"])),
        ("parry_penerate",    _amf3_int(5 + c_bonuses["parry_penerate"])),
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
        ("equip_score",       _amf3_int(c_bonuses["equip_score"])),
        ("gem_score",         _amf3_int(0)),
        ("suit_score",        _amf3_int(0)),
        ("soul_score",        _amf3_int(c_bonuses["soul_score"])),
        ("ship_score",        _amf3_int(0)),
        ("talent_score",      _amf3_int(0)),
        ("practice_score",    _amf3_int(0)),
        ("level_score",       _amf3_int(0)),
        ("grow_score",        _amf3_int(0)),
        ("skill_score",       _amf3_int(0)),
        ("main_soul",         _amf3_int(c_soul_slots["main_soul"])),
        ("vice_soul",         _amf3_int(c_soul_slots["vice_soul"])),
        ("tert_soul",         _amf3_int(c_soul_slots["tert_soul"])),
        ("fourth_soul",       _amf3_int(c_soul_slots["fourth_soul"])),
        ("fifth_soul",        _amf3_int(c_soul_slots["fifth_soul"])),
        ("sixth_soul",        _amf3_int(c_soul_slots["sixth_soul"])),
        ("seventh_soul",      _amf3_int(c_soul_slots["seventh_soul"])),
        ("eighth_soul",       _amf3_int(c_soul_slots["eighth_soul"])),
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
    fig = _get_proto_figure(role)
    cfg = PROTAGONIST_CONFIG.get(fig, PROTAGONIST_CONFIG[1008])
    gen_id = cfg["figure"]

    gens = role.get("generals", [])
    if not formation:
        formation["1"] = gen_id
        for idx, g in enumerate(gens[:8]):
            formation[str(idx + 2)] = int(g.get("general_id", 0))
        for p in range(len(gens) + 2, 10):
            formation[str(p)] = 0
    return formation


def _get_formation_cfg(fmt_lvl: int) -> dict:
    """Query cfg_star_formation & next-level threshold from onepiece.db for formation_level 1..48."""
    lvl = max(1, min(48, int(fmt_lvl or 1)))
    res = {
        "level": lvl,
        "cfg_formation_id": min(8, (lvl - 1) // 6 + 1),
        "level_experience": (lvl - 1) * 1000,
        "need_experience": lvl * 1000,
        "add_hp": lvl * 200,
        "add_phy_atk": lvl * 120,
        "add_phy_def": lvl * 80,
        "add_spe_atk": lvl * 120,
        "add_spe_def": lvl * 80,
        "add_speed": lvl * 100,
    }
    try:
        conn = sqlite3.connect(DB_PATH)
        row = conn.execute(
            "SELECT cfg_formation_id, level_experience, add_hp, add_phy_atk, add_phy_def, add_spe_atk, add_spe_def, add_speed "
            "FROM cfg_star_formation WHERE level = ?",
            (lvl,),
        ).fetchone()
        next_row = conn.execute(
            "SELECT level_experience FROM cfg_star_formation WHERE level = ?",
            (min(48, lvl + 1),),
        ).fetchone()
        conn.close()
        if row:
            cur_base = int(row[1] or 0)
            nxt_base = int(next_row[0] or (cur_base + 1000)) if next_row else (cur_base + 1000)
            need_delta = max(1000, nxt_base - cur_base)
            res.update({
                "cfg_formation_id": int(row[0] or 1),
                "level_experience": cur_base,
                "need_experience": need_delta,
                "add_hp": int(row[2] or 200),
                "add_phy_atk": int(row[3] or 120),
                "add_phy_def": int(row[4] or 80),
                "add_spe_atk": int(row[5] or 120),
                "add_spe_def": int(row[6] or 80),
                "add_speed": int(row[7] or 100),
            })
    except Exception:
        pass
    return res


def _build_formations_list() -> bytes:
    role = _get_role()
    fmt_dict = _get_formation_dict(role)
    fmt_lvl = max(1, min(48, int(role.get("formation_level", 1) or 1)))
    fmt_exp = int(role.get("formation_exp", 0) or 0)
    fcfg = _get_formation_cfg(fmt_lvl)
    fields = [
        ("cfg_formation_id",          _amf3_int(fcfg["cfg_formation_id"])),
        ("level",                     _amf3_int(fmt_lvl)),
        ("formation_level",           _amf3_int(fmt_lvl)),
        ("formation_experience",      _amf3_int(fmt_exp)),
        ("formation_need_experience", _amf3_int(fcfg["need_experience"])),
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


def _build_star_general_list_entries(role: dict) -> list[bytes]:
    """Build Sailing Log (航海日志) star_general_list: protagonist + all unlocked/dismissed crew."""
    diary = _sync_diary_unlocks(role)
    proto_fig = _get_proto_figure(role)
    p_cfg = PROTAGONIST_CONFIG.get(proto_fig, PROTAGONIST_CONFIG[1008])
    p_lvl = int(role.get("level", 1))
    p_stats = _calc_general_stats(True, p_cfg["job"], p_lvl)
    p_grow = _get_grow_limits(True, p_cfg["job"], p_lvl)
    p_skills = [_amf3_object([
        ("cfg_skill_id", _amf3_int(p_cfg["skill"])),
        ("idx",          _amf3_int(1)),
        ("level",        _amf3_int(1)),
    ])]
    p_aw = role.get("awakened_skills", {}).get(str(proto_fig), {})
    for slot_idx, entry in sorted(p_aw.items()):
        sid = int(entry.get("cfg_skill_id", 0)) if isinstance(entry, dict) else int(entry)
        slv = min(int(entry.get("level", 1)) if isinstance(entry, dict) else 1, 10)
        p_skills.append(_amf3_object([("cfg_skill_id", _amf3_int(sid)), ("idx", _amf3_int(int(slot_idx))), ("level", _amf3_int(slv))]))

    entries = [_amf3_object([
        ("general_id",     _amf3_int(proto_fig)),
        ("cfg_general_id", _amf3_int(p_cfg["cfg_id"])),
        ("name",           _amf3_string(role.get("name", p_cfg["name"]))),
        ("level",          _amf3_int(p_lvl)),
        ("is_fired",       _amf3_bool(False)),
        ("is_lock",        _amf3_bool(False)),
        ("is_advanced",    _amf3_bool(False)),
        ("strength",       _amf3_double(float(p_stats["strength"]))),
        ("agility",        _amf3_double(float(p_stats["agility"]))),
        ("stamina",        _amf3_double(float(p_stats["stamina"]))),
        ("intellect",      _amf3_double(float(p_stats["intellect"]))),
        ("str_grow",       _amf3_int(int(p_grow["str_grow"]))),
        ("agi_grow",       _amf3_int(int(p_grow["agi_grow"]))),
        ("sta_grow",       _amf3_int(int(p_grow["sta_grow"]))),
        ("int_grow",       _amf3_int(int(p_grow["int_grow"]))),
        ("health_point",   _amf3_int(int(p_stats["hp"]))),
        ("skills",         _amf3_array(p_skills)),
    ])]

    live_by_cfg = {
        int(g.get("cfg_general_id") or g.get("general_id") or 0): g
        for g in role.get("generals", [])
        if isinstance(g, dict)
    }

    for key in sorted(diary.keys(), key=lambda x: int(x) if str(x).isdigit() else 0):
        rec = diary[key]
        cfg_id = int(rec.get("cfg_general_id", key))
        is_fired = 1 if rec.get("is_fired") else 0
        src = live_by_cfg.get(cfg_id) if not is_fired else None
        if src is None:
            src = rec.get("snapshot") or {}
        lvl = int(src.get("level", 1) or 1)
        g_name, g_job, g_qual, g_face, g_fig, g_sk = _lookup_cfg_general(cfg_id)
        skill_id = int(src.get("skill") or g_sk or 51001)
        c_stats = _calc_general_stats(False, cfg_id, lvl)
        c_grow = _get_grow_limits(False, cfg_id, lvl)

        sk_arr = [_amf3_object([("cfg_skill_id", _amf3_int(skill_id)), ("idx", _amf3_int(1)), ("level", _amf3_int(1))])]
        aw_map = role.get("awakened_skills", {}).get(str(cfg_id)) if not is_fired else rec.get("awakened_skills", {})
        if isinstance(aw_map, dict):
            for slot_idx, entry in sorted(aw_map.items()):
                sid = int(entry.get("cfg_skill_id", 0)) if isinstance(entry, dict) else int(entry)
                slv = min(int(entry.get("level", 1)) if isinstance(entry, dict) else 1, 10)
                if sid > 0:
                    sk_arr.append(_amf3_object([("cfg_skill_id", _amf3_int(sid)), ("idx", _amf3_int(int(slot_idx))), ("level", _amf3_int(slv))]))

        entries.append(_amf3_object([
            ("general_id",     _amf3_int(cfg_id)),
            ("cfg_general_id", _amf3_int(cfg_id)),
            ("name",           _amf3_string(str(src.get("name") or g_name))),
            ("figure",         _amf3_int(int(src.get("figure") or g_fig))),
            ("face",           _amf3_int(int(src.get("face") or g_face))),
            ("level",          _amf3_int(lvl)),
            ("is_fired",       _amf3_bool(bool(is_fired))),
            ("is_lock",        _amf3_bool(False)),
            ("is_advanced",    _amf3_bool(cfg_id >= 11000000)),
            ("strength",       _amf3_double(float(c_stats["strength"]))),
            ("agility",        _amf3_double(float(c_stats["agility"]))),
            ("stamina",        _amf3_double(float(c_stats["stamina"]))),
            ("intellect",      _amf3_double(float(c_stats["intellect"]))),
            ("str_grow",       _amf3_int(int(c_grow["str_grow"]) + int(src.get("str_grow_add", 0) or 0))),
            ("agi_grow",       _amf3_int(int(c_grow["agi_grow"]) + int(src.get("agi_grow_add", 0) or 0))),
            ("sta_grow",       _amf3_int(int(c_grow["sta_grow"]) + int(src.get("sta_grow_add", 0) or 0))),
            ("int_grow",       _amf3_int(int(c_grow["int_grow"]) + int(src.get("int_grow_add", 0) or 0))),
            ("health_point",   _amf3_int(int(c_stats["hp"]))),
            ("skills",         _amf3_array(sk_arr)),
        ]))
    return entries


def _build_star_general_response(correlation_id: str) -> bytes:
    """Reply to GENERAL.starGeneral (0xda). NOTE: MUST omit error_code or onStarGeneral skips star_general_list!"""
    role = _get_role()
    star_list = _build_star_general_list_entries(role)
    _save()
    fields = [
        ("copper",            _amf3_double(float(role.get("copper", 100000)))),
        ("gold",              _amf3_int(int(role.get("gold", 5000)))),
        ("star_general_list", _amf3_array(star_list)),
        ("request_code",      _amf3_int(0)),
    ]
    print(f"  [STARGENERAL] Returned {len(star_list)} Sailing Log entries (proto + {len(star_list)-1} crew)", flush=True)
    return _make_ack_message(correlation_id, _amf3_object(fields))


def _handle_general_recall(correlation_id: str, body: Any) -> bytes:
    """Reply to GENERAL.recall (0xd8): pay 10 gold to re-recruit a dismissed crew member with saved stats & skills."""
    role = _get_role()
    diary = _sync_diary_unlocks(role)
    target_id = _extract_general_id_arg(body)

    matched_key = None
    for key, rec in diary.items():
        snap = rec.get("snapshot") or {}
        if target_id in (int(key), int(rec.get("cfg_general_id", 0) or 0), int(snap.get("general_id", 0) or 0), int(snap.get("figure", 0) or 0)):
            matched_key = key
            break

    cur_gold = int(role.get("gold", 0) or 0)
    err_code = 0
    if matched_key and diary[matched_key].get("is_fired") and cur_gold >= 10:
        rec = diary[matched_key]
        cfg_id = int(rec.get("cfg_general_id", matched_key))
        existing_ids = {int(g.get("cfg_general_id") or g.get("general_id") or 0) for g in role.get("generals", []) if isinstance(g, dict)}
        if cfg_id not in existing_ids and _spend_gold(role, 10):
            restored = copy.deepcopy(rec.get("snapshot") or {})
            restored["general_id"] = cfg_id
            restored["cfg_general_id"] = cfg_id
            role.setdefault("generals", []).append(restored)
            aw_snap = copy.deepcopy(rec.get("awakened_skills") or {})
            if aw_snap:
                role.setdefault("awakened_skills", {})[str(cfg_id)] = aw_snap
            rec["is_fired"] = False
            _save()
            err_code = -1
            print(f"  [RECALL] Re-recruited {restored.get('name')} ({cfg_id}) lvl={restored.get('level')} for 10 gold (gold left={role['gold']})", flush=True)
    else:
        print(f"  [RECALL] Rejected target={target_id} matched={matched_key} fired={diary.get(matched_key, {}).get('is_fired') if matched_key else None} gold={cur_gold}", flush=True)

    star_list = _build_star_general_list_entries(role)
    star_gen = _build_star_general_object()
    fields = [
        ("error_code",         _amf3_int(err_code)),
        ("generals",           _build_generals_list()),
        ("formations",         _build_formations_list()),
        ("formation_level",    _amf3_int(int(role.get("formation_level", 1) or 1))),
        ("formation_card",     _amf3_int(0)),
        ("copper",             _amf3_double(float(role.get("copper", 100000)))),
        ("gold",               _amf3_int(int(role.get("gold", 0)))),
        ("exploit",            _amf3_int(int(role.get("exploit", 1000)))),
        ("general_data",       _build_general_data()),
        ("star_general_list",  _amf3_array(star_list)),
        ("STAR_GENERAL",       star_gen),
        ("star_general",       star_gen),
        ("talent_list",        _amf3_array([])),
        ("passive_skill_list", _build_passive_candidates()),
        ("request_code",       _amf3_int(0)),
    ]
    return _make_ack_message(correlation_id, _amf3_object(fields))


def _handle_role_figure(correlation_id: str, body: Any) -> bytes:
    """Reply to ROLE.figure (0x9e): morph into any lit Sailing Log crew member or recover protagonist."""
    role = _get_role()
    diary = _sync_diary_unlocks(role)
    target_id = _extract_general_id_arg(body)
    proto_fig = _get_proto_figure(role)
    p_cfg = PROTAGONIST_CONFIG.get(proto_fig, PROTAGONIST_CONFIG[1008])
    proto_cfg_id = int(p_cfg["cfg_id"])
    cur_morph_gid = int(role.get("morph_general_id", 0) or 0)
    cur_morph_fig = int(role.get("morph_figure", 0) or 0)

    err_code = 0
    if target_id in (0, proto_fig, proto_cfg_id) or (cur_morph_fig > 0 and target_id in (cur_morph_gid, cur_morph_fig)):
        role["morph_figure"] = 0
        role["morph_face"] = 0
        role["morph_general_id"] = 0
        role["figure"] = p_cfg["figure"]
        role["face"] = p_cfg["face"]
        _save()
        err_code = -1
        print(f"  [ROLE.figure] Recovered protagonist appearance {p_cfg['figure']}", flush=True)
    else:
        matched_rec = None
        for key, rec in diary.items():
            snap = rec.get("snapshot") or {}
            if target_id in (int(key), int(rec.get("cfg_general_id", 0) or 0), int(snap.get("general_id", 0) or 0), int(snap.get("figure", 0) or 0)):
                matched_rec = rec
                break
        if matched_rec is not None:
            cfg_id = int(matched_rec.get("cfg_general_id", target_id))
            snap = matched_rec.get("snapshot") or {}
            _, _, _, g_face, g_fig, _ = _lookup_cfg_general(cfg_id)
            m_fig = int(snap.get("figure") or g_fig)
            m_face = int(snap.get("face") or g_face or m_fig)
            paid = _consume_figure_card(role)
            cost_desc = "1 morph card (300078)"
            if not paid:
                if _spend_gold(role, 10):
                    paid = True
                    cost_desc = "10 gold"
            if paid:
                role["morph_general_id"] = cfg_id
                role["morph_figure"] = m_fig
                role["morph_face"] = m_face
                role["figure"] = m_fig
                role["face"] = m_face
                _save()
                err_code = -1
                print(f"  [ROLE.figure] Morphed into {snap.get('name', cfg_id)} (fig={m_fig}) using {cost_desc}", flush=True)
        else:
            print(f"  [ROLE.figure] Rejected target={target_id}: not unlocked in diary", flush=True)

    disp_fig, disp_face = _get_display_figure(role)
    fields = [
        ("error_code",   _amf3_int(err_code)),
        ("gold",         _amf3_double(float(role.get("gold", 0)))),
        ("figure_card",  _amf3_int(_get_figure_card_count(role))),
        ("figure",       _amf3_int(disp_fig)),
        ("face",         _amf3_int(disp_face)),
        ("role_data",    _build_role_data()),
        ("request_code", _amf3_int(0)),
    ]
    return _make_ack_message(correlation_id, _amf3_object(fields))


def _build_general_data() -> bytes:
    """Build general data container object expected by onGeneral / opLoginData."""
    role = _get_role()
    star_gen = _build_star_general_object()

    star_list = _build_star_general_list_entries(role)

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

    fmt_lvl = max(1, min(48, int(role.get("formation_level", 1) or 1)))
    fmt_exp = int(role.get("formation_exp", 0) or 0)
    fcfg = _get_formation_cfg(fmt_lvl)
    fields = [
        ("generals",                  _build_generals_list()),
        ("formations",                _build_formations_list()),
        ("formation_level",           _amf3_int(fmt_lvl)),
        ("formation_experience",      _amf3_int(fmt_exp)),
        ("formation_need_experience", _amf3_int(fcfg["need_experience"])),
        ("formation_shape",           _amf3_int(fcfg["cfg_formation_id"])),
        ("formation_health_point",    _amf3_int(fcfg["add_hp"])),
        ("formation_physical_attack", _amf3_int(fcfg["add_phy_atk"])),
        ("formation_physical_defence",_amf3_int(fcfg["add_phy_def"])),
        ("formation_spell_attack",    _amf3_int(fcfg["add_spe_atk"])),
        ("formation_spell_defence",   _amf3_int(fcfg["add_spe_def"])),
        ("formation_speed",           _amf3_int(fcfg["add_speed"])),
        ("formation_armor_defeating", _amf3_int(0)),
        ("formation_card",            _amf3_int(int(role.get("formation_card", 0) or 0))),
        ("formation_add_critic",      _amf3_bool(False)),
        ("formation_add_percent",     _amf3_int(0)),
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
        eff_type = int(cfg_info.get("effect_type", 0) or 0) if cfg_info else 0
        is_equip = (((part > 0) or (cfg_info and cfg_info.get("type") == 2)) and eff_type != 11)

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
    role["orig_figure"] = cfg["figure"]
    role["morph_figure"] = 0
    role["morph_face"] = 0
    role["morph_general_id"] = 0
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





def _build_scene_persons(role: dict, cur_scene: int, px: int, py: int) -> list:
    """Build AMF3 persons array (player + scene NPCs from cfg_npc) for OPDataManager::onScene."""
    fig, face = _get_display_figure(role)

    player_person = _make_person(
        role_id=role["role_id"], name=role["name"], x=px, y=py,
        figure=fig, face=face, is_npc=0,
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
    return persons


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
    persons = _build_scene_persons(role, cur_scene, px, py)

    # Note: Omit error_code so OPDataManager::onScene parses scene_id and persons normally
    fields = [
        ("scene_id",      _amf3_int(cur_scene)),
        ("lufei_follows", _amf3_bool(False)),
        ("persons",       _amf3_array(persons)),
    ]
    body_amf3 = _amf3_object(fields)
    return _make_ack_message(correlation_id, body_amf3)





def _build_scenecheck_response(correlation_id: str) -> bytes:
    """Reply to SCENE.scenecheck matching OPDataManager::onScenceCheck."""
    try:
        scene_ids = sorted({int(sid) for sid in SCENES.keys() if 1 <= int(sid) < 4000})
    except Exception:
        scene_ids = list(range(2001, 2019)) + [3001, 3002]
    try:
        camp_ids = sorted({int(cid) for cid in CAMPS.keys() if 1001 <= int(cid) <= 2999})
    except Exception:
        camp_ids = (
            list(range(1001, 1051)) +
            [2006, 2008, 2010, 2012, 2014, 2016, 2019, 2022, 2024, 2026, 2029, 2032, 2034, 2036, 2039, 2040, 2041, 2042, 2043, 2044, 2045, 2049, 2050]
        )
    can_pass = scene_ids + camp_ids
    fields = [
        ("can_pass_list",    _amf3_array([_amf3_int(sid) for sid in can_pass])),
        ("need_camp_list",   _amf3_array([])),
        ("unavailable_list", _amf3_array([])),
        ("error_code",       _amf3_int(-1)),
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
                ("is_finish",     _amf3_bool(bool(is_finish))),
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
            req_cid = int(req_cid or 0)
            is_open = 1 if req_cid <= 0 else 0
            if req_cid > 0:
                req_armies = conn.execute("SELECT cfg_army_id FROM cfg_army WHERE cfg_camp_id = ? OR CAST(cfg_camp_id AS INT) = ?", (req_cid, req_cid)).fetchall()
                if req_armies:
                    req_defeated = sum(1 for (aid,) in req_armies if camp_stars.get(str(aid), 0) > 0)
                    is_open = 1 if req_defeated >= len(req_armies) else 0
            e_armies = conn.execute("SELECT cfg_army_id FROM cfg_army WHERE cfg_camp_id = ? OR CAST(cfg_camp_id AS INT) = ?", (e_cid, e_cid)).fetchall()
            e_finish = bool(e_armies and sum(1 for (aid,) in e_armies if camp_stars.get(str(aid), 0) > 0) >= len(e_armies))
            elite_list.append(_amf3_object([
                ("elite_cfg_camp_id", _amf3_int(e_cid)),
                ("is_open",           _amf3_bool(bool(is_open))),
                ("is_finish",         _amf3_bool(e_finish)),
            ]))
        conn.close()
    except Exception as e:
        print(f"  [CAMP] error in campByScene: {e}", flush=True)

    if not camps and scene_id in (2001, 2002, 2003):
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
                ("is_finish",     _amf3_bool(False)),
            ]))
            elite_list.append(_amf3_object([
                ("elite_cfg_camp_id", _amf3_int(cid)),
                ("is_open",           _amf3_bool(True)),
                ("is_finish",         _amf3_bool(False)),
            ]))

    fields = [
        ("error",        _amf3_int(-1)),
        ("elite_list",   _amf3_array(elite_list)),
        ("camp_list",    _amf3_array(camps)),
        ("request_code", _amf3_int(0)),
        ("error_code",   _amf3_int(-1)),
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

    total_stars = sum(int(camp_stars.get(str(a), 0)) for a, o in army_cfg_list)
    all_cleared = (len(army_cfg_list) > 0 and all(int(camp_stars.get(str(a), 0)) > 0 for a, o in army_cfg_list))
    camp_rewards = role.get("camp_rewards", {})
    fields = [
        (("current_raid" if camp_id >= 3000 else "current_camp"), _amf3_int(camp_id)),
        ("role_id",         _amf3_int(role["role_id"])),
        ("current_order",   _amf3_int(current_order)),
        ("task_army_id",    _amf3_int(task_army)),
        ("camp_score",      _amf3_int(total_stars)),
        ("memcamp_score",   _amf3_int(total_stars)),
        ("can_get_perfect", _amf3_bool(all_cleared)),
        ("copper",          _amf3_double(float(role["copper"]))),
        ("gold",            _amf3_int(role["gold"])),
        ("get_reward_1",    _amf3_bool(bool(camp_rewards.get(f"{camp_id}_1", 0)))),
        ("get_reward_2",    _amf3_bool(bool(camp_rewards.get(f"{camp_id}_2", 0)))),
        ("get_reward_3",    _amf3_bool(bool(camp_rewards.get(f"{camp_id}_3", 0)))),
        ("army_star_list",  _amf3_array(stars)),
        ("raid_score_list", _amf3_array([])),
        ("request_code",    _amf3_int(0)),
        ("error_code",      _amf3_int(error_code)),
    ]
    body_amf3 = _amf3_object(fields)
    return _make_ack_message(correlation_id, body_amf3)



def _build_camp_reward_response(correlation_id: str, body: Any = None, operation: str = "") -> bytes:
    """Reply to CAMP.campReward / raidReward / acquireCampReward matching OPDataManager::onCampRewardInfo."""
    import random
    role = _get_role()
    op_upper = operation.upper()
    SUIT_BOOKS = [300003, 300004, 300005, 300006, 300007, 300008, 300009, 300010, 300011, 300012, 300013, 300014, 300015, 300016, 300017]

    if "ACQUIRE" in op_upper:
        item_id = int(role.pop("pending_raid_item", 0) or random.choice(SUIT_BOOKS))
        role["pending_raid_reward"] = False
        cur_rid = str(role.get("current_raid_id", 3001))
        role.setdefault("raid_reward_claimed", {})[cur_rid] = True
        reward_copper = 100000
        reward_gold = 20
        role["copper"] = min(999999999.0, float(role.get("copper", 100000)) + float(reward_copper))
        role["gold"] = int(role.get("gold", 100000)) + reward_gold
        _add_item_to_bag(item_id, 1)
        _save()
        print(f"  [CAMP.acquire] Granted item={item_id} copper+{reward_copper} gold+{reward_gold}", flush=True)
        return _make_ack_message(correlation_id, _amf3_object([
            ("error_code",    _amf3_int(-1)),
            ("reward_copper", _amf3_int(reward_copper)),
            ("reward_gold",   _amf3_int(reward_gold)),
            ("item_id",       _amf3_int(item_id)),
            ("item_amount",   _amf3_int(1)),
            ("copper",        _amf3_double(float(role["copper"]))),
            ("gold",          _amf3_int(role["gold"])),
        ]))

    camp_id = 1001
    reward_idx = 0
    if isinstance(body, list):
        if len(body) > 2 and str(body[2]).isdigit():
            camp_id = int(body[2])
        if len(body) > 3 and str(body[3]).isdigit():
            reward_idx = int(body[3])

    # Raid card-draw check (raidReward [role, '', 1, 6] or post-acquire campReward [role, '', type, card, 6])
    is_raid_card_check = ("RAIDREWARD" in op_upper) or (camp_id < 1000 and isinstance(body, list) and len(body) >= 4)
    if is_raid_card_check and not role.get("pending_raid_reward", False):
        cur_rid = int(role.get("current_raid_id", 3001) or 3001)
        armies = _get_camp_army_list(cur_rid)
        cs = role.get("camp_stars", {})
        all_done = bool(armies) and all(int(cs.get(str(a), 0)) > 0 for a, _ in armies)
        if all_done and not role.get("raid_reward_claimed", {}).get(str(cur_rid), False):
            role["pending_raid_reward"] = True
            _save()
        else:
            return _make_ack_message(correlation_id, _amf3_object([
                ("error_code", _amf3_int(0)),
                ("amount",     _amf3_int(0)),
            ]))

    camp_rewards = role.setdefault("camp_rewards", {})
    reward_copper = 100000
    reward_gold = 20
    jump_wand = 5
    picked_book = random.choice(SUIT_BOOKS)
    role["pending_raid_item"] = picked_book
    try:
        conn = sqlite3.connect(DB_PATH)
        rows = conn.execute(
            "SELECT idx, copper, gold, jump_wand, item_1, item_2 FROM cfg_camp_reward WHERE cfg_camp_id = ? ORDER BY idx",
            (camp_id,)
        ).fetchall()
        conn.close()
        if rows and reward_idx > 0 and camp_id >= 1000:
            pick = rows[min(reward_idx - 1, len(rows) - 1)]
            slot_key = f"{camp_id}_{reward_idx}"
            if not camp_rewards.get(slot_key):
                camp_rewards[slot_key] = 1
                reward_copper = int(pick[1] or 100000)
                reward_gold = int(pick[2] or 20)
                jump_wand = int(pick[3] or 5)
                role["copper"] = min(999999999.0, float(role.get("copper", 100000)) + float(reward_copper))
                role["gold"] = int(role.get("gold", 100000)) + reward_gold
                for it_id in (pick[4], pick[5]):
                    if it_id and int(it_id) > 0:
                        _add_item_to_bag(int(it_id), 1)
                if pick[4] and int(pick[4]) > 0:
                    picked_book = int(pick[4])
                print(f"  [CAMP.reward] Claimed camp={camp_id} slot={reward_idx} items=({pick[4]}, {pick[5]})", flush=True)
    except Exception as e:
        print(f"  [CAMP.reward] err: {e}", flush=True)
    _save()

    return _make_ack_message(correlation_id, _amf3_object([
        ("error_code",          _amf3_int(-1)),
        ("amount",              _amf3_int(1)),
        ("jump_wand",           _amf3_int(jump_wand)),
        ("mayget_copper",       _amf3_int(reward_copper)),
        ("mayget_gold",         _amf3_int(reward_gold)),
        ("mayget_item_id",      _amf3_int(picked_book)),
        ("mayget_item_amount",  _amf3_int(1)),
        ("mayget_item_id2",     _amf3_int(300053)),
        ("mayget_item_amount2", _amf3_int(1)),
        ("mayget_item_jumpwand",_amf3_int(jump_wand)),
        ("item_id",             _amf3_int(picked_book)),
        ("item_amount",         _amf3_int(1)),
        ("copper",              _amf3_double(float(role.get("copper", 100000)))),
        ("gold",                _amf3_int(int(role.get("gold", 100000)))),
        ("current_camp",        _amf3_int(camp_id)),
        ("get_reward_1",        _amf3_bool(bool(camp_rewards.get(f"{camp_id}_1", 0)))),
        ("get_reward_2",        _amf3_bool(bool(camp_rewards.get(f"{camp_id}_2", 0)))),
        ("get_reward_3",        _amf3_bool(bool(camp_rewards.get(f"{camp_id}_3", 0)))),
    ]))


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
            ("camp_id",       _amf3_int(cid)),
            ("cfg_camp_id",   _amf3_int(cid)),
            ("memcamp_score", _amf3_int(3)),
            ("camp_score",    _amf3_int(3)),
            ("is_finish",     _amf3_bool(True)),
        ]))
    # OPDataManager::onCampElite indexes root[0][i] -> AMFObject, root[0][i][j] -> property
    return _make_ack_message(correlation_id, _amf3_array([_amf3_array(elite_items)]))


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
    role = _get_role()
    role["current_raid_id"] = int(raid_id)
    _record_daily_action(19)
    _save()
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



    persons = _build_scene_persons(role, target_scene, x, y)

    # Note: error_code and request_code are omitted so OPDataManager keeps m_errorCode=-1,
    # which enables CMainScene::OnNetPackageEPv to execute bl resetMainScene and load mainscene_<target_scene>.
    # Including persons ensures OPDataManager::onSceneChange (0x413854) replaces UserInfo+0x330 before resetMainScene.
    fields = [

        ("scene_id",      _amf3_int(target_scene)),

        ("scene_x",       _amf3_int(x)),

        ("scene_y",       _amf3_int(y)),

        ("lufei_follows", _amf3_bool(False)),

        ("persons",       _amf3_array(persons)),

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
        elif next_task:
            try:
                nt_cfg = get_task(next_task)
                if nt_cfg and nt_cfg.get("get_npc"):
                    conn_npc = sqlite3.connect(DB_PATH)
                    nrow = conn_npc.execute(
                        "SELECT cfg_scene_id, scene_x, scene_y FROM cfg_npc WHERE cfg_npc_id = ?",
                        (int(nt_cfg["get_npc"]),),
                    ).fetchone()
                    conn_npc.close()
                    if nrow and int(nrow[0] or 0) > 0:
                        t_sid = int(nrow[0])
                        cur_sid = int(role.get("scene_id", 2001) or 2001)
                        if t_sid != cur_sid and t_sid < 4000:
                            role["scene_id"] = t_sid
                            role["scene_x"] = int(nrow[1] or 400)
                            role["scene_y"] = int(nrow[2] or 50)
                            unlocked = role.setdefault("unlocked_scenes", [2001, 2002, 2003, 2004])
                            if t_sid not in unlocked:
                                unlocked.append(t_sid)
                            print(f"  [DYNAMIC SCENE TRANSITION] Task {current} -> Next {next_task} NPC in Scene {t_sid}!", flush=True)
            except Exception:
                pass
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


def _is_task_condition_met(role: dict, t_cfg: dict) -> bool:
    """Evaluate complete_type for main & branch tasks cleanly."""
    if not t_cfg:
        return False
    ctype = int(t_cfg.get("complete_type") or 0)
    cat = int(t_cfg.get("complete_category") or 0)
    val = int(t_cfg.get("complete_value") or 1)
    if ctype in (0, 1, 6, 9, 10, 11, 12, 13, 14, 15, 18, 19, 106, 108):
        return True
    if ctype == 3:
        have = sum(int(it.get("amount", 0) or 0) for it in role.get("items", []) if int(it.get("cfg_item_id", 0) or 0) == cat)
        return have >= max(1, val)
    if ctype in (4, 17):
        wins = role.get("battle_wins", {})
        return int(wins.get(str(cat), 0) or 0) >= 1
    if ctype == 16:
        stars = role.get("camp_stars", {})
        try:
            conn = sqlite3.connect(DB_PATH)
            aids = [int(r[0]) for r in conn.execute("SELECT cfg_army_id FROM cfg_army WHERE cfg_camp_id = ? OR CAST(cfg_camp_id AS INT) = ?", (cat, cat)).fetchall()]
            conn.close()
            total_s = sum(int(stars.get(str(aid), 0) or 0) for aid in aids)
            return total_s >= max(1, val)
        except Exception:
            return False
    return False


def _check_task_battle_complete(camp_id: int) -> None:
    """Check if a battle win completes the current task (types 3/4/16/17)."""
    role = _get_role()
    wins = role.setdefault("battle_wins", {})
    camp_stars = role.setdefault("camp_stars", {})

    wins[str(camp_id)] = int(wins.get(str(camp_id), 0) or 0) + 1
    camp_stars[str(camp_id)] = 3

    current_task = role.get("current_task")
    if not current_task:
        _save()
        return

    try:
        t_cfg = get_task(current_task)
        if t_cfg:
            ctype = int(t_cfg.get("complete_type") or 0)
            target_cat = int(t_cfg.get("complete_category") or 0)
            target_val = int(t_cfg.get("complete_value") or 1)
            if ctype in (4, 17):
                army_cfg = get_army(target_cat)
                target_camp = int(army_cfg.get("cfg_camp_id") or 0) if army_cfg else 0
                if camp_id == target_cat or (target_camp > 0 and camp_id == target_camp):
                    role["task_completed"] = True
                    wins[str(target_cat)] = max(wins.get(str(target_cat), 0), 1)
                    camp_stars[str(target_cat)] = 3
                    print(f"  [TASK] Army {target_cat} defeated (ctype={ctype}) -> Task {current_task} ready!", flush=True)
            elif ctype == 3 and target_cat > 0:
                _add_item_to_bag(target_cat, 1)
                if _is_task_condition_met(role, t_cfg):
                    role["task_completed"] = True
                    print(f"  [TASK] Quest item {target_cat} x{target_val} collected -> Task {current_task} ready!", flush=True)
            elif ctype == 16 and _is_task_condition_met(role, t_cfg):
                role["task_completed"] = True
                print(f"  [TASK] Camp {target_cat} stars >= {target_val} -> Task {current_task} ready!", flush=True)
        _save()
    except Exception as e:
        print(f"  [TASK] error checking battle task completion: {e}", flush=True)



# ==========================================
# 标准九宫格对位算法 (Pockie Pirates 对位规则)
# ==========================================
POS_TO_RC = {
    1: (0, 0), 2: (1, 0), 3: (2, 0),
    4: (0, 1), 5: (1, 1), 6: (2, 1),
    7: (0, 2), 8: (1, 2), 9: (2, 2),
}

ROW_FALLBACK_ORDER = {
    0: [0, 1, 2],  # 上行 -> 上、中、下
    1: [1, 0, 2],  # 中行 -> 中、上、下
    2: [2, 1, 0],  # 下行 -> 下、中、上
}

def _pick_primary_target(attacker, enemies):
    alive = [u for u in enemies if u["hp"] > 0]
    if not alive:
        return None
    att_pos = attacker.get("pos", 1)
    att_r, _ = POS_TO_RC.get(att_pos, (1, 0))
    grid = {POS_TO_RC.get(u["pos"], (1, 0)): u for u in alive}
    # 前排阻挡列优先 (c=0 -> c=1 -> c=2)，再按同行优先 -> 上下就近行选择
    for c in (0, 1, 2):
        for r in ROW_FALLBACK_ORDER.get(att_r, [1, 0, 2]):
            if (r, c) in grid:
                return grid[(r, c)]
    return alive[0]

def _get_skill_hit_targets(caster, primary, skill_id, allies, enemies):
    sinfo = get_skill(skill_id) or {}
    starget = int(sinfo.get("target", 2) or 2)
    srange = int(sinfo.get("range", 1) or 1)

    if starget == 1:
        # 友方增益/治疗
        if srange == 5:
            return list(allies)
        elif srange == 2:
            cr, _ = POS_TO_RC.get(caster.get("pos", 1), (1, 0))
            hits = [u for u in allies if POS_TO_RC.get(u.get("pos", 1), (1, 0))[0] == cr]
            return hits if hits else [caster]
        return [caster]

    # 敌方技能攻击
    if not primary:
        return []
    if srange == 1:
        return [primary]

    pr, pc = POS_TO_RC.get(primary.get("pos", 1), (1, 0))
    if srange == 2:
        # 整行贯穿（如巴基 51006/52001, 达斯琪 52009, MR.1 52015, 罗布路奇 52024 等）
        hits = [u for u in enemies if POS_TO_RC.get(u.get("pos", 1), (1, 0))[0] == pr]
        return hits if hits else [primary]
    elif srange == 3:
        # 整列穿透（如MR.2 52016, 伯吉斯 52028, 克利克 51013 等）
        hits = [u for u in enemies if POS_TO_RC.get(u.get("pos", 1), (1, 0))[1] == pc]
        return hits if hits else [primary]
    elif srange == 4:
        # 扩散/周围溅射（如卡巴吉 51004, 啾 51016 等）
        hits = [u for u in enemies if abs(POS_TO_RC.get(u.get("pos", 1), (1, 0))[0] - pr) + abs(POS_TO_RC.get(u.get("pos", 1), (1, 0))[1] - pc) <= 1]
        return hits if hits else [primary]
    elif srange == 5:
        # 全屏全体（如艾斯 52019, 艾尼路 52011, 鹰眼 52017, 熊 52033 等）
        return list(enemies)
    elif srange == 7:
        # 十字范围（以主目标为中心横排+竖列，如斯摩格 52014, 佩罗娜 52037 等）
        hits = [u for u in enemies if POS_TO_RC.get(u.get("pos", 1), (1, 0))[0] == pr or POS_TO_RC.get(u.get("pos", 1), (1, 0))[1] == pc]
        return hits if hits else [primary]
    return [primary]

def _build_battle_result_response(correlation_id: str, camp_id: int, win: bool = True, boss_battle: bool = False) -> bytes:
    """Reply to BATTLE.battle matching OPDataManager::onBattleInfo."""
    role = _get_role()
    wins = role.setdefault("battle_wins", {})
    camp_stars = role.setdefault("camp_stars", {})

    # ── Step 1: Assemble teams and run speed-ordered combat simulation first ─
    fig = _get_proto_figure(role)
    cfg = PROTAGONIST_CONFIG.get(fig, PROTAGONIST_CONFIG[1008])

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

    # Complete verified PVR battle figures (v0.08: all DB-used figures + upgraded VMDK/xx animations)
    ANDROID_COMPLETE_FIGURES = {
        *(range(1001, 1009)),
        10004, 10005, 10006, 10007, 10008, 10009, 10010, 10011, 10012, 10013, 10014, 10015, 10016, 10017, 10018, 10019,
        10020, 10021, 10022, 10023, 10024, 10025, 10026, 10027, 10028, 10029, 10030, 10031, 10032, 10033, 10034, 10035,
        10036, 10037, 10038, 10039, 10040, 10041, 10042, 10043, 10044, 10046, 10047,
        10057, 10058, 10060, 10061, 10062, 10063, 10064, 10065, 10066, 10067, 10068, 10069, 10070, 10071, 10073, 10074,
        10075, 10076, 10077, 10078, 10080, 10083, 10084, 10087, 10088, 10089, 10090, 10091, 10092, 10097, 10098, 10099,
        10100, 10101, 10102, 10103, 10104, 10105, 10107, 10108, 10109, 10110, 10111, 10112, 10113, 10116, 10120, 10121,
        10122, 10123, 10124, 10125, 10126, 10127, 10128, 10133, 10134, 10135, 10136, 10137, 10138, 10139, 10140, 10143,
        10144, 10145, 10146, 10147, 10148, 10153, 10154, 10155, 10156, 10157, 10158, 10159, 10160, 10161, 10162,
    }
    ANDROID_VALID_FIGURES = set(ANDROID_COMPLETE_FIGURES)
    SPECIAL_BATTLE_FIGURE_MAP = {}

    # 2. 高人气/主线知名船员“特征精准代打表” (外观与武器风格最贴合的完整真贴图，绝不降级为普通小兵)
    ANDROID_ICONIC_FIGURE_MAP = {
        # 10010 蒙卡 已补齐 personbattle_32.pvr 解锁原生原皮直通！
        # 10011 巴基 已通过专属 personbattle_10011.pvr 解锁原生原皮直通！
        # 10013: 10042,  # 阿龙 (鱼人狂战)       -> 野牛多鲁顿 (10042) -> 已直通专属真图集
        # 10022: 10019,  # 克洛 (百计猫爪)       -> 猫爪十刃刺客 (10019) -> 已直通专属真图集
        # 10029: 10021,  # 乌索普 (狙击手)       -> 已直通专属真图集
        # 10030: 10012,  # 娜美 (女性航海士)     -> 已直通专属真图集
        # 10033: 10019,  # 罗布·路奇 -> 已直通专属真图集
        # 10039: 10014,  # 斯摩格 -> 已直通专属真图集 (海军上校)     -> 海军剑士长 (10014)
        10154: 10009,  # 黄猿 (海军大将)       -> 佛萨/高阶重剑 (10009)        # 
        # 10078: 10009,  # 摩奇                 -> 10009        #  -> 已直通专属真图集 (已直通专属真图集)
        # 10074: 10061,  # 卡巴吉               -> 10061 -> 已直通专属真图集 (已直通专属真图集)
        10062: 10021,  # 狡诈神枪手           -> 10021
        10063: 10070,  # 嗜血船医             -> 10070
        10058: 10009,  # 航海士队长           -> 10009        # 
        # 10089: 10004,  # 布奇                 -> 10004 -> 已直通专属真图集        # (已直通专属真图集)
        # 10090: 10019,  # 山姆                 -> 10019        #  -> 已直通专属真图集 (已直通专属真图集)
        # 10087: 10009,  # 鬼人阿金 (高阶狂战/重击双拐) -> 10009 -> 已直通专属真图集 (已直通专属真图集)
        # 10088: 10009,  # 鬼人阿金副本怪       -> 10009        #  -> 已直通专属真图集
        # 10083: 10070,  # 赞高 (催眠师/高阶航海) -> 10070 -> 已直通专属真图集        # (已直通专属真图集)
        # 10073: 10021,  # 贝鲁梅伯 (火枪手)     -> 10021 -> 已直通专属真图集 (已直通专属真图集)
        # 10091: 10012,  # 铁壁巴拉             -> 10012 -> 已直通专属真图集
        # 10097: 10004,  # 黑带克罗欧比         -> 10004 -> 已直通专属真图集
        # 10098: 10004,  # 六刀流小八           -> 10004 -> 已直通专属真图集
        # 10099: 10021,  # 啾                   -> 10021 -> 已直通专属真图集
        # 10101: 10042,  # MR.3 -> 已直通专属真图集               -> 10042
        # 10103: 10021,  # 白铁瓦尔波           -> 10021 -> 已直通专属真图集
        10034: 10021,  # 杰斯/克罗马利蒙      -> 10021
        # ★ 后续主线章节 (巴拉迪/可可西亚村/罗格镇/磁鼓岛) 敌军与BOSS精准特征映射
        10084: 10039,  # 铁拳芬布迪 (巴拉迪BOSS) -> 海军军官 (10039)
        10075: 10073,  # 海军枪手               -> 海军枪手/贝鲁梅伯 (10073)
        10076: 10014,  # 海军剑士               -> 海军剑士长 (10014)
        10036: 10088,  # 爱迪曼 (克利克盾牌)    -> 铁壁巴拉 (10088)
        10080: 10042,  # 利基 (摩奇巨狮)        -> 兽人狂战 (10042)
        10007: 10014,  # 德雷克/守卫队长        -> 剑士队长 (10014)
        10008: 10105,  # 丹彼尔/国防队长        -> 多鲁顿 (10105)
        10005: 10070,  # 冷酷船医               -> 10070
        10018: 10070,  # 船医队长               -> 10070
        10043: 10070,  # 见习船医               -> 10070
        10044: 10070,  # 船医队长               -> 10070
        10071: 10070,  # 狡诈船医               -> 10070
        10006: 10021,  # 神枪手队长             -> 10021
        10077: 10021,  # 嗜血神枪手             -> 10021
        10060: 10070,  # 冷酷航海士             -> 10070
    }

    # 3. 全量酒馆招募船员: (职业 job, 品质 quality) 高阶真贴图分级表
    #    job:     1=剑豪, 2=狙击手, 3=船医, 4=航海士 (以及 10001~10004)
    #    quality: 1=绿(C), 2=蓝(B), 3=紫(A), 4=金/橙(S), 5=红(SS)
    #    彻底杜绝 10001/10002 普通小兵！
    ANDROID_JOB_QUALITY_MAP = {
        # 1 = 剑豪 (前排近战/刀剑/重武)
        1: {1: 10014, 2: 10019, 3: 10061, 4: 10009, 5: 10004},
        # 2 = 狙击手 (敏捷/远程/刺杀)
        2: {1: 10019, 2: 10021, 3: 10021, 4: 10042, 5: 10004},
        # 3 = 船医 (治疗/辅助)
        3: {1: 10070, 2: 10070, 3: 10070, 4: 10012, 5: 10070},
        # 4 = 航海士 (法系/群攻/控场)
        4: {1: 10070, 2: 10012, 3: 10012, 4: 10009, 5: 10004},
    }

    def _get_safe_battle_figure(f_val, job=0, quality=1, is_enemy=False, unit_name="", is_companion=False) -> int:
        try:
            fv = int(f_val)
        except Exception:
            fv = 0

        if fv <= 0:
            return 1001

        # Tier 1: 主角全系 (1001~1008) 或已拥有完整非空 PVR 的原生真贴图 (如 10012 亚尔丽塔等) -> 100% 直通
        if fv in ANDROID_COMPLETE_FIGURES:
            return fv
        if is_companion and (1001 <= fv <= 1008):
            return fv

        # Tier 2: 知名角色特征精准代打表 (杜绝 Blank.png 隐形同时杜绝变成小兵)
        if fv in ANDROID_ICONIC_FIGURE_MAP:
            return ANDROID_ICONIC_FIGURE_MAP[fv]

        # Tier 3: 职业 × 品质 高阶真贴图分级映射
        j = int(job) if str(job).isdigit() else 1
        if j > 10000:
            j -= 10000
        if j not in ANDROID_JOB_QUALITY_MAP:
            j = 1

        q = 3
        try:
            q = int(quality)
        except Exception:
            q = 3
        q = max(1, min(5, q))

        mapped = ANDROID_JOB_QUALITY_MAP[j].get(q, 10014)
        return mapped

    # Valid open battle skills loaded directly from database configs
    VALID_OPEN_SKILLS = set(config_loader.SKILLS.keys()) if config_loader.SKILLS else {
        11001, 11003, 11005, 11007, 11008, 12021, 12022, 12024,
        13042, 13044, 13047, 14061, 14067, 51001, 51004, 51005, 51006, 51009, 51011, 51017
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
        "speed": proto_stats.get("speed", 100),
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

        row = cur.execute("SELECT name, face, figure, quality, cfg_skill_id, job FROM cfg_general WHERE cfg_general_id = ? OR figure = ?", (c_cfg_id, c_fig)).fetchone()
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
            "speed": comp_stats.get("speed", 100),
        })
        if len(attack_generals) >= 5:
            break

    # 2. Enemy team (defend_generals) from cfg_army pos1..pos9
    def_name = "白胡子" if boss_battle else "海贼部队"
    def_face = 10066 if boss_battle else 1001
    def_figure = 10066 if boss_battle else 1001
    army_level = 100 if boss_battle else 1
    battle_bg = 1
    matched_camp_id = 0
    pos_monsters = [(5, 10066)] if boss_battle else []

    if not boss_battle:
        try:
            # 1. Try directly matching army_id or camp_id
            row = cur.execute(
                "SELECT name, face, figure, level, pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, pos9, cfg_camp_id "
                "FROM cfg_army WHERE cfg_army_id = ? OR cfg_camp_id = ? ORDER BY cfg_army_id ASC LIMIT 1",
                (camp_id, camp_id)
            ).fetchone()

            # 2. If camp_id is a task ID (e.g. 100030), find complete_category (army ID)
            if not row:
                t_row = cur.execute("SELECT complete_category FROM cfg_task WHERE cfg_task_id = ?", (camp_id,)).fetchone()
                if t_row and t_row[0]:
                    target_aid = int(t_row[0])
                    row = cur.execute(
                        "SELECT name, face, figure, level, pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, pos9, cfg_camp_id "
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
                        "SELECT name, face, figure, level, pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, pos9, cfg_camp_id "
                        "FROM cfg_army WHERE cfg_camp_id = ? ORDER BY cfg_army_id ASC LIMIT 1",
                        (target_cid,)
                    ).fetchone()

            if row:
                def_name = row[0]
                def_face = int(row[1] or 1001)
                def_figure = int(row[2] or 1001)
                army_level = int(row[3] or 1)
                matched_camp_id = int(row[13] or 0)
                for p_idx in range(9):
                    val = str(row[4 + p_idx] or '0')
                    if val != '0':
                        pos_monsters.append((p_idx + 1, int(val)))

            if matched_camp_id > 0:
                bg_row = cur.execute(
                    "SELECT battle_background FROM cfg_camp WHERE cfg_camp_id = ?",
                    (matched_camp_id,)
                ).fetchone()
                if bg_row and str(bg_row[0]).isdigit():
                    bg_val = int(bg_row[0])
                    if 1 <= bg_val <= 13:
                        battle_bg = bg_val
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

            m_pa = 100 + army_level * 10
            m_spd = 80
            m_row = cur.execute(
                "SELECT name, face, figure, level, quality, hp, cast_skill, category, phy_atk, spe_atk, speed FROM cfg_monster WHERE figure = ? ORDER BY abs(level - ?) LIMIT 1",
                (m_fig, army_level)
            ).fetchone()
            if m_row:
                m_name = m_row[0]
                m_face = int(m_row[1] or m_fig)
                m_qual = int(m_row[4] or 1)
                m_hp = int(m_row[5] or m_hp)
                m_skill_id = int(m_row[6] or 11003)
                m_job = int(m_row[7] or 1)
                m_pa = max(int(m_row[8] or 0), int(m_row[9] or 0), m_pa)
                m_spd = int(m_row[10] or 80)

            m_hp_max = m_hp
            if boss_battle:
                m_hp = max(1, min(m_hp_max, int(role.get("mausoleum_hp", m_hp_max) or m_hp_max)))

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
                ("health_point_max", _amf3_int(m_hp_max)),
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
                "hp_max": m_hp_max,
                "face": m_face,
                "name": m_name,
                "morale": 50,
                "skill_id": m_skill_id,
                "anger_skill_id": m_skill_id,
                "pa": m_pa,
                "speed": m_spd,
            })
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
            "speed": 80,
        })

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
        ("background",            _amf3_int(battle_bg)),
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

    def _execute_unit_turn(actor: dict, caster_side: int, allies: list, foes: list) -> tuple[bytes | None, int]:
        """Execute one combat action ordered by Speed; allow lethal 0 HP for both sides."""
        if actor["hp"] <= 0 or not foes:
            return None, 0
        opp_side = 2 if caster_side == 1 else 1
        is_skill = actor.get("morale", 50) >= 100
        sk_cand = int(actor.get("skill_id") or 11003)
        sinfo = get_skill(sk_cand) or {}
        target_type = int(sinfo.get("target", 2) or 2)

        if is_skill:
            action_type = 2
            action_val = sk_cand if sk_cand in VALID_OPEN_SKILLS else 11003
            new_morale = 0
            srange = int(sinfo.get("range", 1) or 1)
            base_m = (1.4 if srange == 5 else (1.6 if srange in (2, 3, 7) else 1.8)) if caster_side == 1 else (1.2 if srange == 5 else (1.4 if srange in (2, 3, 7) else 1.5))
        else:
            action_type = 1
            action_val = 0
            new_morale = min(100, actor.get("morale", 50) + 25)
            base_m = 1.0

        dealt_to_foes = 0
        effect_list = []
        if is_skill and target_type == 1:
            hit_targets = _get_skill_hit_targets(actor, actor, action_val, allies, foes)
            t_pos, t_side, t_morale = actor["pos"], caster_side, new_morale
            heal_amt = max(100, int(actor.get("pa", 150) * 1.2)) if caster_side == 1 else max(80, int(actor.get("pa", 100) * 0.8))
            caster_inc = False
            for ally in hit_targets:
                ally["hp"] = min(ally["hp_max"], ally["hp"] + heal_amt)
                a_m = new_morale if ally["pos"] == actor["pos"] else min(100, ally.get("morale", 50) + 15)
                if ally["pos"] == actor["pos"]:
                    caster_inc = True
                ally["morale"] = a_m
                effect_list.append(_amf3_object([
                    ("target_accident_status", _amf3_int(0)),
                    ("counter_skill_id",       _amf3_int(0)),
                    ("target_position",        _amf3_int(ally["pos"])),
                    ("target_side",            _amf3_int(caster_side)),
                    ("target_health_point",    _amf3_int(max(0, ally["hp"]))),
                    ("target_morale",          _amf3_int(a_m)),
                    ("target_buff_list",       _amf3_array([])),
                ]))
            if not caster_inc:
                actor["morale"] = new_morale
                effect_list.append(_amf3_object([
                    ("target_accident_status", _amf3_int(0)),
                    ("counter_skill_id",       _amf3_int(0)),
                    ("target_position",        _amf3_int(actor["pos"])),
                    ("target_side",            _amf3_int(caster_side)),
                    ("target_health_point",    _amf3_int(max(0, actor["hp"]))),
                    ("target_morale",          _amf3_int(new_morale)),
                    ("target_buff_list",       _amf3_array([])),
                ]))
        else:
            primary = _pick_primary_target(actor, foes)
            if not primary:
                return None, 0
            t_pos, t_side = primary["pos"], opp_side
            hit_targets = _get_skill_hit_targets(actor, primary, action_val, allies, foes) if is_skill else [primary]
            raw_base = max(50, int(actor.get("pa", 150) * 0.8)) if caster_side == 1 else max(15, int(actor.get("pa", 100) * 0.3))
            floor_dmg = 80 if caster_side == 1 else 15
            last_dmg = floor_dmg
            for tgt in hit_targets:
                tgt_mor = min(100, tgt.get("morale", 50) + 25)
                dmg = min(tgt["hp"], max(floor_dmg, int(raw_base * base_m)))
                tgt["hp"] = max(0, tgt["hp"] - dmg)
                tgt["morale"] = tgt_mor
                dealt_to_foes += dmg
                last_dmg = dmg
                effect_list.append(_amf3_object([
                    ("target_accident_status", _amf3_int(0)),
                    ("counter_skill_id",       _amf3_int(0)),
                    ("target_position",        _amf3_int(tgt["pos"])),
                    ("target_side",            _amf3_int(opp_side)),
                    ("target_health_point",    _amf3_int(max(0, tgt["hp"]))),
                    ("target_morale",          _amf3_int(tgt_mor)),
                    ("target_buff_list",       _amf3_array([])),
                ]))
            if action_type == 1:
                action_val = last_dmg
            actor["morale"] = new_morale
            effect_list.append(_amf3_object([
                ("target_accident_status", _amf3_int(0)),
                ("counter_skill_id",       _amf3_int(0)),
                ("target_position",        _amf3_int(actor["pos"])),
                ("target_side",            _amf3_int(caster_side)),
                ("target_health_point",    _amf3_int(max(0, actor["hp"]))),
                ("target_morale",          _amf3_int(new_morale)),
                ("target_buff_list",       _amf3_array([])),
            ]))
            t_morale = primary.get("morale", 50)
            for tgt in hit_targets:
                if tgt["hp"] <= 0 and tgt in foes:
                    foes.remove(tgt)

        act_obj = _amf3_object([
            ("action_value",          _amf3_int(action_val)),
            ("action_target_side",    _amf3_int(t_side)),
            ("action_type",           _amf3_int(action_type)),
            ("action_target_morale",  _amf3_int(t_morale)),
            ("action_target_position",_amf3_int(t_pos)),
            ("effect_targets",        _amf3_array(effect_list)),
        ])
        rnd_obj = _amf3_object([
            ("face",                        _amf3_int(actor["face"])),
            ("now_boold_point",             _amf3_int(max(0, actor["hp"]))),
            ("max_boold_point",             _amf3_int(actor["hp_max"])),
            ("battle_id",                   _amf3_int(1)),
            ("caster_side",                 _amf3_int(caster_side)),
            ("caster_position",             _amf3_int(actor["pos"])),
            ("morale",                      _amf3_int(new_morale)),
            ("defend_pet_morale",           _amf3_int(0)),
            ("attack_pet_morale",           _amf3_int(0)),
            ("caster_round_action",         act_obj),
            ("caster_pre_action_buff_list", _amf3_array([])),
            ("caster_after_action_list",    _amf3_array([])),
        ])
        return rnd_obj, (dealt_to_foes if caster_side == 1 else 0)

    # Run up to 15 rounds sorted across both sides by Speed descending
    turn = 0
    while alive_enemies and alive_players and turn < 15:
        turn += 1
        queue = sorted(
            [(1, u) for u in alive_players] + [(2, u) for u in alive_enemies],
            key=lambda it: (-int(it[1].get("speed", 100)), it[0], int(it[1]["pos"])),
        )
        for c_side, actor in queue:
            if not alive_enemies or not alive_players:
                break
            if actor["hp"] <= 0:
                continue
            allies_ref = alive_players if c_side == 1 else alive_enemies
            foes_ref = alive_enemies if c_side == 1 else alive_players
            rnd_obj, d_enemy = _execute_unit_turn(actor, c_side, allies_ref, foes_ref)
            if rnd_obj is not None:
                combat_rounds.append(rnd_obj)
                total_enemy_damage += d_enemy

    # Determine genuine outcome after combat ends
    win = bool(win and (len(alive_enemies) == 0))
    if boss_battle:
        cur_wb_hp = int(role.get("mausoleum_hp", 1000000))
        role["mausoleum_hp"] = max(0, cur_wb_hp - total_enemy_damage)
        role["mausoleum_damage"] = int(role.get("mausoleum_damage", 0)) + total_enemy_damage
        win = (role["mausoleum_hp"] <= 0 or len(alive_enemies) == 0)

    reward_copper = 0
    reward_experience = 0
    reward_exploit = 0
    reward_prestige = 5
    reward_item_1 = 0
    reward_item_amt_1 = 0
    leveled_up = False
    wins[str(camp_id)] = wins.get(str(camp_id), 0) + (1 if win else 0)

    if boss_battle:
        boss_dmg = max(1, int(total_enemy_damage))
        reward_copper = boss_dmg
        reward_prestige = max(10, int(boss_dmg * 3 // 1000))
        role["copper"] = min(999999999.0, float(role.get("copper", 0) or 0) + float(reward_copper))
        role["prestige"] = int(role.get("prestige", 0) or 0) + reward_prestige

    if win:
        camp_stars[str(camp_id)] = max(camp_stars.get(str(camp_id), 0), 3)
        if camp_id >= 30000:
            raid_id = 3000 + (camp_id - 30000) // 100
            armies = _get_camp_army_list(raid_id)
            if armies and all(int(camp_stars.get(str(a), 0)) > 0 for a, _ in armies):
                role["current_raid_id"] = raid_id
                if not role.get("raid_reward_claimed", {}).get(str(raid_id), False):
                    role["pending_raid_reward"] = True
        try:
            conn_rw = sqlite3.connect(DB_PATH)
            conn_rw.row_factory = sqlite3.Row
            cur_rw = conn_rw.cursor()
            army_row = cur_rw.execute("SELECT * FROM cfg_army WHERE cfg_army_id = ?", (camp_id,)).fetchone()
            if not army_row:
                army_row = cur_rw.execute("SELECT * FROM cfg_army WHERE cfg_camp_id = ? ORDER BY cfg_army_id ASC LIMIT 1", (camp_id,)).fetchone()
            if boss_battle:
                reward_experience, reward_exploit, reward_copper = 5000, 200, 50000
                role["prestige"] = int(role.get("prestige") or 1000) + 200
            elif army_row:
                keys = army_row.keys()
                reward_experience = int(army_row["reward_experience"] or 500) if "reward_experience" in keys else 500
                reward_exploit = int(army_row["reward_exploit"] or 40) if "reward_exploit" in keys else 40
                reward_copper = reward_experience * 2
                drop_item_id = int(army_row["reward_item"] or 0) if "reward_item" in keys else 0
                drop_ratio = float(army_row["drop_ratio"] or 0.0) if "drop_ratio" in keys else 0.0
                if drop_item_id > 0 and (random.random() <= drop_ratio or drop_ratio >= 1.0 or wins.get(str(camp_id), 0) <= 1):
                    reward_item_1, reward_item_amt_1 = drop_item_id, 1
            else:
                reward_experience, reward_exploit, reward_copper = 500, 40, 1000

            cur_task = role.get("current_task")
            if cur_task:
                row = cur_rw.execute(
                    "SELECT complete_type, complete_category, reward_copper, reward_experience, "
                    "reward_item_1, reward_item_amount_1 FROM cfg_task WHERE cfg_task_id = ?",
                    (cur_task,)
                ).fetchone()
                if row:
                    ctype, ccat = int(row["complete_type"]), int(row["complete_category"])
                    t_camp_row = cur_rw.execute("SELECT cfg_camp_id FROM cfg_army WHERE cfg_army_id = ?", (ccat,)).fetchone()
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
            role["copper"] = min(role.get("copper", 0) + reward_copper, 999999999)
            role["exploit"] = role.get("exploit", 0) + reward_exploit
            role["exp"] = role.get("exp", 0) + reward_experience
            role["experience"] = role["exp"]
            while True:
                row = cur_rw.execute("SELECT experience_need FROM cfg_level_experience WHERE level = ?", (role["level"],)).fetchone()
                if not row:
                    break
                exp_need = int(row[0])
                if role["exp"] >= exp_need and role["level"] < 100:
                    role["exp"] -= exp_need
                    role["experience"] = role["exp"]
                    role["level"] += 1
                    role["skill_point"] = role.get("skill_point", 0) + 1
                    leveled_up = True
                else:
                    break
            for g in role.get("generals", []):
                if not isinstance(g, dict) or not g.get("cfg_general_id"):
                    continue
                g_exp = int(g.get("exp", g.get("experience", 0))) + reward_experience
                g["exp"] = g_exp
                g["experience"] = g_exp
                while True:
                    row = cur_rw.execute("SELECT experience_need FROM cfg_level_experience WHERE level = ?", (g.get("level", 1),)).fetchone()
                    if not row:
                        break
                    exp_need = int(row[0])
                    if g["exp"] >= exp_need and g["level"] < role["level"]:
                        g["exp"] -= exp_need
                        g["experience"] = g["exp"]
                        g["level"] += 1
                    else:
                        break
            conn_rw.close()
        except Exception as e:
            print(f"  [BATTLE] reward error: {e}", flush=True)
        if reward_item_1 > 0 and reward_item_amt_1 > 0:
            _add_item_to_bag(reward_item_1, reward_item_amt_1)
        _check_task_battle_complete(camp_id)

    _save()
    print(f"  [BATTLE] army_id={camp_id} boss={boss_battle} win={win} dmg={total_enemy_damage} level={role['level']} leveled_up={leveled_up}", flush=True)

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

    # 4. Battle settlement — CBattleScene::viewBattleResult expects winner=1 (win) or 2 (defeat)
    res = _amf3_object([
        ("winner",            _amf3_int(1 if win else 2)),
        ("score",             _amf3_int(5)),
        ("can_skip",          _amf3_bool(True)),
        ("is_skip",           _amf3_int(1)),
        ("speed",             _amf3_int(3)),
        ("is_npc",            _amf3_bool(True)),
        ("reward_copper",     _amf3_int(reward_copper)),
        ("reward_experience", _amf3_int(reward_experience)),
        ("reward_exploit",    _amf3_int(reward_exploit)),
        ("prestige",          _amf3_int(reward_prestige if boss_battle else 5)),
        ("role_id",           _amf3_int(role["role_id"])),
        ("reward_item",       _amf3_array([_amf3_object([("cfg_item_id", _amf3_int(reward_item_1)), ("amount", _amf3_int(reward_item_amt_1))])] if (reward_item_1 > 0 and reward_item_amt_1 > 0) else [])),
        ("story_word",        _amf3_string("")),
        ("role_rank",         _amf3_int(1)),
        ("arena_battle",      _amf3_int(0)),
        ("copper",            _amf3_double(float(role["copper"]))),
        ("boss_battle",       _amf3_int(1 if boss_battle else 0)),
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
        ("result",                 _amf3_int(1 if win else 2)),
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

    fmt_lvl = max(1, min(48, int(role.get("formation_level", 1) or 1)))
    fmt_exp = int(role.get("formation_exp", 0) or 0)
    fcfg = _get_formation_cfg(fmt_lvl)
    fields = [
        ("generals",                  _build_generals_list()),
        ("formations",                _build_formations_list()),
        ("formation_level",           _amf3_int(fmt_lvl)),
        ("formation_experience",      _amf3_int(fmt_exp)),
        ("formation_need_experience", _amf3_int(fcfg["need_experience"])),
        ("formation_shape",           _amf3_int(fcfg["cfg_formation_id"])),
        ("formation_health_point",    _amf3_int(fcfg["add_hp"])),
        ("formation_physical_attack", _amf3_int(fcfg["add_phy_atk"])),
        ("formation_physical_defence",_amf3_int(fcfg["add_phy_def"])),
        ("formation_spell_attack",    _amf3_int(fcfg["add_spe_atk"])),
        ("formation_spell_defence",   _amf3_int(fcfg["add_spe_def"])),
        ("formation_speed",           _amf3_int(fcfg["add_speed"])),
        ("formation_armor_defeating", _amf3_int(0)),
        ("formation_card",            _amf3_int(int(role.get("formation_card", 0) or 0))),
        ("formation_add_critic",      _amf3_bool(False)),
        ("formation_add_percent",     _amf3_int(0)),
        ("copper",          _amf3_double(role.get("copper", 100000))),
        ("gold",            _amf3_int(role.get("gold", 5000))),
        ("exploit",         _amf3_int(role.get("exploit", 1000))),
        ("general_data",    _build_general_data()),
        ("talent_list",     _amf3_array(talent_list)),
        ("talent_cooldown", _amf3_double(0.0)),
        ("server_time",     _amf3_double(float(int(time.time())))),
        ("passive_skill_list", _build_passive_candidates()),
        ("TAVERN_GENERALS", tavern_arr),
        ("tavern_generals", tavern_arr),
        ("STAR_GENERAL",    star_gen),
        ("star_general",    star_gen),
        ("star_general_list", _amf3_array(_build_star_general_list_entries(role))),
        ("request_code",    _amf3_int(0)),
        ("error_code",      _amf3_int(-1)),
        ("status",          _amf3_int(1)),
        ("role_data",       _build_role_data()),
        ("task_data",       _build_task_data()),
    ]
    return _amf3_object(fields)


def _build_general_response(correlation_id: str) -> bytes:
    return _make_ack_message(correlation_id, _build_general_body_amf3())


def _handle_talent_request(operation: str, body: Any, correlation_id: str) -> bytes:
    role = _get_role()
    op_upper = operation.upper()
    is_role_talent = ("TALENTROLE" in op_upper) or op_upper.endswith(".ROLE")
    is_upgrade = ("UP" in op_upper) or ("SPIKE" in op_upper)

    role.setdefault("awakened_talents", {})
    role.setdefault("role_talents", {})

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

    err_code = -1
    if is_upgrade and talent_id is not None:
        try:
            tid_int = int(talent_id)
            if is_role_talent:
                rt = role["role_talents"]
                cur_lvl = int(rt.get(str(tid_int), 0))
                next_lvl = cur_lvl + 1
                if next_lvl > 10:
                    err_code = 0
                else:
                    req_t, req_l, cost_val = 0, 0, 10000
                    try:
                        conn = sqlite3.connect(DB_PATH)
                        row = conn.execute(
                            "SELECT require_talent, require_level, cost_value FROM cfg_talent_level WHERE cfg_talent_id = ? AND level = ?",
                            (tid_int, next_lvl),
                        ).fetchone()
                        conn.close()
                        if row:
                            req_t, req_l, cost_val = int(row[0] or 0), int(row[1] or 0), int(row[2] or 10000)
                    except Exception:
                        pass
                    cur_req = int(rt.get(str(req_t), 0)) if req_t > 0 else 999
                    cur_copper = float(role.get("copper", 100000) or 0)
                    if req_t > 0 and cur_req < req_l:
                        err_code = 0
                    elif cur_copper < cost_val:
                        err_code = 0
                    else:
                        role["copper"] = max(0.0, cur_copper - float(cost_val))
                        rt[str(tid_int)] = next_lvl
                        _record_daily_action(6)
                        if role.get("current_task") in (100031, 100037):
                            role["task_completed"] = True
                        _save()
                        print(f"  [ROLE_TALENT] Upgraded role talent {tid_int} to level {next_lvl} (cost {cost_val} copper)", flush=True)
            else:
                ct = role["awakened_talents"]
                cur_lvl = int(ct.get(str(tid_int), 0))
                next_lvl = cur_lvl + 1
                cost_exp, max_lvl = 50, 130
                try:
                    conn = sqlite3.connect(DB_PATH)
                    row = conn.execute("SELECT cost_exploit, max_level FROM cfg_talent WHERE cfg_talent_id = ?", (tid_int,)).fetchone()
                    conn.close()
                    if row:
                        cost_exp, max_lvl = int(row[0] or 50), int(row[1] or 130)
                except Exception:
                    pass
                if next_lvl <= max_lvl:
                    if "SPIKE" in op_upper:
                        _spend_gold(role, 10)
                    role["exploit"] = max(0, int(role.get("exploit", 1000) or 0) - min(cost_exp, int(role.get("exploit", 0) or 0)))
                    ct[str(tid_int)] = next_lvl
                    _record_daily_action(6)
                    if role.get("current_task") in (100031, 100037):
                        role["task_completed"] = True
                    _save()
                    print(f"  [TALENT] Upgraded crew talent {tid_int} to level {next_lvl}", flush=True)
        except Exception as e:
            print(f"  [TALENT] Error upgrading talent {talent_id}: {e}", flush=True)

    # Build talent_list strictly matching cfg_talent_role (protagonist) or cfg_talent (crew)
    talent_items = []
    source_map = role["role_talents"] if is_role_talent else role["awakened_talents"]
    try:
        conn = sqlite3.connect(DB_PATH)
        cur = conn.cursor()
        sql = "SELECT cfg_talent_id, max_level FROM cfg_talent_role ORDER BY cfg_talent_id" if is_role_talent else "SELECT cfg_talent_id, max_level FROM cfg_talent ORDER BY cfg_talent_id"
        for r in cur.execute(sql):
            t_id, max_l = int(r[0]), int(r[1])
            lvl = int(source_map.get(str(t_id), 0))
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
    upgraded_lvl = int(source_map.get(str(upgraded_tid), 0))

    resp_fields = [
        ("status",             _amf3_int(1)),
        ("error_code",         _amf3_int(err_code)),
        ("talent_id",          _amf3_int(upgraded_tid)),
        ("cfg_talent_id",      _amf3_int(upgraded_tid)),
        ("level",              _amf3_int(upgraded_lvl)),
        ("copper",             _amf3_double(float(role.get("copper", 100000)))),
        ("gold",               _amf3_int(int(role.get("gold", 5000)))),
        ("exploit",            _amf3_int(int(role.get("exploit", 1000)))),
        ("talent_cooldown",    _amf3_double(0.0)),
        ("server_time",        _amf3_double(float(int(time.time())))),
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
        ("formation_level", _amf3_int(int(role.get("formation_level", 1) or 1))),
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
        ("star_general_list", _amf3_array(_build_star_general_list_entries(role))),
        ("request_code",    _amf3_int(0)),
        ("error_code",      _amf3_int(-1)),
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
    excluded_ids = {int(k) for k in _sync_diary_unlocks(role).keys()}
    filtered_scene = [c for c in scene_pool if c[0] not in excluded_ids]
    draw_pool = filtered_scene if len(filtered_scene) >= 5 else [c for c in scene_pool if not any(True for _ in [1])]
    if filtered_scene and len(filtered_scene) < 5:
        draw_pool = list(filtered_scene) + [c for c in scene_pool if c[0] not in {x[0] for x in filtered_scene}]
    if req_type in [1, 2, 3] and not is_open_card and not is_recruit:
        # Guarantee 贝鲁梅伯 (10042230) for Task 100024 in East Blue
        guarantee_id = 10042230 if (role.get("current_task") == 100024 and cur_scene == 1 and 10042230 not in excluded_ids) else None

        active_pool = filtered_scene if filtered_scene else scene_pool
        all_ids = [c[0] for c in active_pool]
        pool_ids = [c[0] for c in active_pool if c[3] <= 5]
        if len(pool_ids) < 5:
            pool_ids = list(all_ids)
        epic_ids = [c[0] for c in active_pool if c[3] >= 5]

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
            if not _spend_gold(role, 50):
                role["gold"] = max(role.get("gold", 5000) - 50, 0)
        elif req_type == 3:
            if not _spend_gold(role, 100):
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

    # Default / Init (exclude already unlocked/dismissed crew when candidates remain)
    if not round_state or "cfg_ids" not in round_state:
        default_pool = filtered_scene if filtered_scene else scene_pool
        default_drawn = [c[0] for c in default_pool[:5]]
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
        ("open_general1",   _amf3_bool(bool(open_gens[0]))),
        ("cfg_general_id2", _amf3_int(cfg_ids[1])),
        ("open_general2",   _amf3_bool(bool(open_gens[1]))),
        ("cfg_general_id3", _amf3_int(cfg_ids[2])),
        ("open_general3",   _amf3_bool(bool(open_gens[2]))),
        ("cfg_general_id4", _amf3_int(cfg_ids[3])),
        ("open_general4",   _amf3_bool(bool(open_gens[3]))),
        ("cfg_general_id5", _amf3_int(cfg_ids[4])),
        ("open_general5",   _amf3_bool(bool(open_gens[4]))),
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
        ("open_general1",   _amf3_bool(bool(open_gens[0]))),
        ("open_general2",   _amf3_bool(bool(open_gens[1]))),
        ("open_general3",   _amf3_bool(bool(open_gens[2]))),
        ("open_general4",   _amf3_bool(bool(open_gens[3]))),
        ("open_general5",   _amf3_bool(bool(open_gens[4]))),
        ("tavern_epic",     tavern_epic_arr),
        ("tavern_generals", tavern_generals_arr),
        ("generals",        _build_generals_list()),
        ("formations",      _build_formations_list()),
        ("formation_level", _amf3_int(int(role.get("formation_level", 1) or 1))),
        ("general_data",    _build_general_data()),
        ("talent_list",     _amf3_array(talent_list)),
        ("talent_cooldown", _amf3_double(0.0)),
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
    diary = _sync_diary_unlocks(role)
    key = str(target_gid)
    # Tavern recruitment enters Sailing Log directly (is_fired=True -> Convene button lit) without entering active Crew
    if key not in diary:
        snap = {
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
        }
        diary[key] = {
            "cfg_general_id": target_gid,
            "is_fired": True,
            "snapshot": snap,
            "awakened_skills": {},
        }
        print(f"  [TAVERN RECRUIT] Unlocked in Sailing Log (ready to Convene): {g_name} (id={target_gid}, skill={gen_skill})", flush=True)
    elif key not in {str(g.get("cfg_general_id") or g.get("general_id") or 0) for g in role["generals"] if isinstance(g, dict)}:
        diary[key]["is_fired"] = True

    _sync_diary_unlocks(role)
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
        ("error_code",    _amf3_int(-1)),
    ]
    body_amf3 = _amf3_object(fields)
    return _make_ack_message(correlation_id, body_amf3)


def _handle_reward_login(correlation_id: str) -> bytes:
    role = _get_role()
    daily_login = max(1, min(7, int(role.get("login_days", role.get("daily_login", 1) or 1))))
    claimed = role.get("claimed_login_rewards", [])
    max_claimed_step = max(claimed) if claimed else 0
    is_claimed_today = daily_login in claimed

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

    fields = [
        ("online_time",   _amf3_double(7200.0)),
        ("reward_list",   _amf3_array(reward_list)),
        ("reward_list2",  _amf3_array([])),
        ("daily_login",   _amf3_bool(is_claimed_today)),
        ("pay_first",     _amf3_bool(bool(role.get("pay_first", False)))),
        ("copper",        _amf3_double(float(role.get("copper", 100000)))),
        ("gold",          _amf3_int(int(role.get("gold", 5000)))),
        ("reward_copper", _amf3_int(0)),
        ("reward_gold",   _amf3_int(0)),
        ("error_code",    _amf3_int(-1)),
        ("request_code",  _amf3_int(0)),
        ("status",        _amf3_int(1)),
        ("role_data",     _build_role_data()),
    ]
    print(f"  -> ACTIVITY.rewardLogin OK: daily_login={daily_login} claimed={claimed}", flush=True)
    return _make_ack_message(correlation_id, _amf3_object(fields))


def _handle_get_reward(correlation_id: str, body: Any = None) -> bytes:
    role = _get_role()
    daily_login = max(1, min(7, int(role.get("login_days", role.get("daily_login", 1) or 1))))
    claimed = role.setdefault("claimed_login_rewards", [])
    req_type = 2
    step_to_claim = daily_login
    if isinstance(body, list) and len(body) > 2:
        if str(body[2]).isdigit():
            req_type = int(body[2]) or 2
        if len(body) > 3 and str(body[3]).isdigit() and int(body[3]) > 0:
            step_to_claim = int(body[3])
    elif isinstance(body, dict):
        req_type = int(body.get("type", 2) or 2)
        if int(body.get("step", 0) or 0) > 0:
            step_to_claim = int(body["step"])

    # Query cfg_reward for (req_type, step_to_claim)
    items = _get_player_items()
    reward_items_given = []
    reward_copper = 0
    reward_gold = 0
    try:
        conn = sqlite3.connect(DB_PATH)
        row = conn.execute(
            "SELECT cfg_item_id, amount, cfg_item_id_2, amount_2, cfg_item_id_3, amount_3 FROM cfg_reward WHERE type = ? AND step = ?",
            (req_type, step_to_claim),
        ).fetchone()
        conn.close()
        if row:
            for i_col, a_col in ((0, 1), (2, 3), (4, 5)):
                iid = int(row[i_col] or 0)
                amt = int(row[a_col] or 0)
                if amt > 0:
                    if iid == 0:
                        reward_copper += amt
                    elif iid == 1:
                        reward_gold += amt
                    else:
                        reward_items_given.append((iid, amt))
    except Exception as e:
        print(f"  [GETREWARD DB ERROR] {e}", flush=True)

    if not reward_items_given and reward_copper == 0 and reward_gold == 0:
        reward_items_given = [(300076, 2)]

    if reward_copper > 0:
        role["copper"] = min(999999999.0, float(role.get("copper", 100000)) + float(reward_copper))
    if reward_gold > 0:
        role["gold"] = int(role.get("gold", 5000)) + reward_gold

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

    if req_type == 2 and step_to_claim not in claimed:
        claimed.append(step_to_claim)
    _save()

    reward_list = [
        _amf3_object([
            ("type", _amf3_int(2)),
            ("step", _amf3_int(max(claimed) if claimed else 0)),
        ]),
        _amf3_object([
            ("type", _amf3_int(1)),
            ("step", _amf3_int(0)),
        ]),
    ]
    reward_list2 = [
        _amf3_object([
            ("item_id", _amf3_int(iid)),
            ("amount",  _amf3_int(amt)),
        ]) for iid, amt in reward_items_given
    ]

    fields = [
        ("online_time",   _amf3_double(7200.0)),
        ("reward_list",   _amf3_array(reward_list)),
        ("reward_list2",  _amf3_array(reward_list2)),
        ("daily_login",   _amf3_bool(daily_login in claimed)),
        ("pay_first",     _amf3_bool(bool(role.get("pay_first", False)))),
        ("copper",        _amf3_double(float(role.get("copper", 100000)))),
        ("gold",          _amf3_int(int(role.get("gold", 5000)))),
        ("reward_copper", _amf3_int(reward_copper)),
        ("reward_gold",   _amf3_int(reward_gold)),
        ("error_code",    _amf3_int(-1)),
        ("request_code",  _amf3_int(0)),
        ("status",        _amf3_int(1)),
        ("role_data",     _build_role_data()),
        ("bag_list",      _build_player_items_amf3()),
        ("item_data",     _build_item_data()),
    ]
    print(f"  -> ACTIVITY.getreward OK: claimed type={req_type} day={step_to_claim} items={reward_items_given}", flush=True)
    return _make_ack_message(correlation_id, _amf3_object(fields))


def _handle_reward_check(correlation_id: str) -> bytes:
    role = _get_role()
    daily_login = max(1, min(7, int(role.get("login_days", role.get("daily_login", 1) or 1))))
    claimed = role.get("claimed_login_rewards", [])
    has_unclaimed = 1 if daily_login not in claimed else 0
    reward_list = [
        _amf3_object([("type", _amf3_int(2)), ("step", _amf3_int(max(claimed) if claimed else 0))]),
        _amf3_object([("type", _amf3_int(1)), ("step", _amf3_int(0))]),
    ]
    fields = [
        ("status",          _amf3_int(1)),
        ("error_code",      _amf3_int(-1)),
        ("online_time",     _amf3_double(7200.0)),
        ("daily_login",     _amf3_bool(daily_login in claimed)),
        ("pay_first",       _amf3_bool(bool(role.get("pay_first", False)))),
        ("reward_list",     _amf3_array(reward_list)),
        ("has_reward",      _amf3_int(has_unclaimed)),
        ("login_reward",    _amf3_int(has_unclaimed)),
        ("online_reward",   _amf3_int(0)),
    ]
    return _make_ack_message(correlation_id, _amf3_object(fields))


def _get_daily_vitality_cap(role: dict) -> int:
    """VIP 0-4 max 100 vitality (5 tiers); VIP 5+ max 160 vitality (8 tiers)."""
    return 160 if int(role.get("vip_level", 0) or 0) >= 5 else 100


def _get_daily_max_submits(role: dict) -> int:
    return 8 if int(role.get("vip_level", 0) or 0) >= 5 else 5


def _get_level_cup_id(level: int) -> int:
    """Wiki & CDlgRInsert exact level brackets: <=59 Copper, 60-89 Silver, 90-109 Gold, >=110 Jade."""
    lvl = int(level or 1)
    if lvl <= 59:
        return 300184  # 铜酒杯
    if lvl <= 89:
        return 300185  # 银酒杯
    if lvl <= 109:
        return 300186  # 金酒杯
    return 300187      # 玉酒杯


def _reset_daily_state(role: dict, today_str: str | None = None) -> None:
    """Reset all daily quest counters, vitality, quality & daily flags cleanly."""
    if today_str is None:
        today_str = datetime.now().strftime("%Y-%m-%d")
    role["daily_reset_date"] = today_str
    role["daily_actions"] = {}
    role["vitality"] = 0
    role["daily_count"] = 0
    role["daily_quality"] = 1
    role["daily_refresh"] = 0
    role["vitality_fetched"] = []
    role["daily_task_progress"] = {}
    role["tax_count_today"] = 0
    role["fish_count"] = 0
    role["dock_used_count"] = 0
    role["legion_contribute_today"] = 0
    role["ap_charge"] = 0
    role["prestige_reward_get"] = False
    role["action_point_reward_get"] = False


def _ensure_daily_fresh(role: dict) -> bool:
    today_str = datetime.now().strftime("%Y-%m-%d")
    if role.get("daily_reset_date") != today_str:
        _reset_daily_state(role, today_str)
        return True
    return False


def _recompute_daily_vitality(role: dict) -> int:
    actions = role.get("daily_actions", {})
    completed = 0
    for aid in range(1, 33):
        if int(actions.get(str(aid), 0) or 0) >= 1:
            completed += 1
    vit = min(_get_daily_vitality_cap(role), completed * 5)
    role["vitality"] = vit
    return vit


def _spend_gold(role: dict, amount: int) -> bool:
    """Spend gold safely and record Daily Action 20 (每日金币消费) when cost > 0."""
    cost = int(amount or 0)
    if cost <= 0:
        return True
    cur = int(role.get("gold", 0) or 0)
    if cur < cost:
        return False
    role["gold"] = cur - cost
    _record_daily_action(20)
    return True


def _grant_role_exp(role: dict, exp_amount: int) -> bool:
    """Add experience to protagonist and process any resulting level-ups."""
    gain = int(exp_amount or 0)
    if gain <= 0:
        return False
    role["exp"] = int(role.get("exp", role.get("experience", 0)) or 0) + gain
    role["experience"] = role["exp"]
    leveled = False
    try:
        while int(role.get("level", 1)) < 100:
            need = get_exp_need(int(role.get("level", 1)))
            if need <= 0 or role["exp"] < need:
                break
            role["exp"] -= need
            role["experience"] = role["exp"]
            role["level"] = int(role["level"]) + 1
            role["skill_point"] = int(role.get("skill_point", 0) or 0) + 1
            leveled = True
        role["officium"] = get_officium_for_level(int(role.get("level", 1)))
    except Exception:
        pass
    return leveled


def _record_daily_action(action_id: int) -> None:
    role = _get_role()
    _ensure_daily_fresh(role)
    actions = role.setdefault("daily_actions", {})
    k = str(int(action_id))
    actions[k] = int(actions.get(k, 0) or 0) + 1
    _recompute_daily_vitality(role)


def _build_vitality_response(correlation_id: str) -> bytes:
    role = _get_role()
    if _ensure_daily_fresh(role):
        _save()
    vit = _recompute_daily_vitality(role)
    items = role.get("items", [])
    tong_cup = sum(int(it.get("amount", 0) or 0) for it in items if it.get("cfg_item_id") == 300184)
    yin_cup = sum(int(it.get("amount", 0) or 0) for it in items if it.get("cfg_item_id") == 300185)
    jin_cup = sum(int(it.get("amount", 0) or 0) for it in items if it.get("cfg_item_id") == 300186)
    yu_cup = sum(int(it.get("amount", 0) or 0) for it in items if it.get("cfg_item_id") == 300187)

    daily_actions = role.get("daily_actions", {})
    action_list = []
    try:
        conn = sqlite3.connect(DB_PATH)
        c = conn.cursor()
        c.execute("SELECT action FROM cfg_action ORDER BY action")
        for row in c.fetchall():
            act_id = int(row[0])
            action_list.append(_amf3_object([
                ("action", _amf3_int(act_id)),
                ("count",  _amf3_int(int(daily_actions.get(str(act_id), 0)))),
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
        ("vitality",      _amf3_int(vit)),
        ("daily_count",   _amf3_int(int(role.get("daily_count", 0) or 0))),
        ("daily_quality", _amf3_int(max(1, min(5, int(role.get("daily_quality") or 1))))),
        ("daily_refresh", _amf3_int(int(role.get("daily_refresh", 0) or 0))),
        ("action_list",   _amf3_array(action_list)),
        ("copper",        _amf3_double(float(role.get("copper", 100000)))),
        ("gold",          _amf3_int(int(role.get("gold", 100000)))),
        ("prestige",      _amf3_int(int(role.get("prestige", 1000)))),
        ("action_point",  _amf3_int(int(role.get("action_point", 100)))),
    ]
    body_amf3 = _amf3_object(fields)
    return _make_ack_message(correlation_id, body_amf3)


def _build_check_vitality_response(correlation_id: str) -> bytes:
    """Reply to ACTIVITY.checkVitality matching OPDataManager::opCheckVitality."""
    role = _get_role()
    if _ensure_daily_fresh(role):
        _save()
    vit = _recompute_daily_vitality(role)
    fetched = role.get("vitality_fetched", [])
    daily_actions = role.get("daily_actions", {})
    vitality_list = []
    try:
        conn = sqlite3.connect(DB_PATH)
        for (act_id,) in conn.execute("SELECT action FROM cfg_action ORDER BY action").fetchall():
            aid = int(act_id)
            vitality_list.append(_amf3_object([
                ("type",  _amf3_int(aid)),
                ("count", _amf3_int(int(daily_actions.get(str(aid), 0)))),
            ]))
        conn.close()
    except Exception as e:
        print(f"  [CHECKVITALITY] cfg_action query error: {e}", flush=True)

    fields = [
        ("error_code",    _amf3_int(-1)),
        ("vitality",      _amf3_int(vit)),
        ("fetched_list",  _amf3_array([_amf3_int(int(x)) for x in fetched])),
        ("vitality_list", _amf3_array(vitality_list)),
    ]
    return _make_ack_message(correlation_id, _amf3_object(fields))


# (rope_amt, orange_crystal_amt, red_crystal_amt) per task quality 1..5
_DAILY_QUALITY_BONUSES = {
    1: (0, 2, 0),    # 普通: 橙色魂晶*2
    2: (0, 5, 0),    # 优秀: 橙色魂晶*5
    3: (0, 10, 2),   # 白金: 橙色魂晶*10, 红色魂晶*2
    4: (1, 10, 5),   # 传奇: 打捞绳*1, 橙色魂晶*10, 红色魂晶*5
    5: (5, 10, 10),  # 史诗: 打捞绳*5, 橙色魂晶*10, 红色魂晶*10
}


def _apply_daily_submit_rewards(role: dict, quality: int) -> tuple[int, int, int, int, int]:
    """Increment daily_count and grant authentic level/tier-scaled cups, +5 potions, crystals, exp, copper & prestige."""
    q = max(1, min(5, int(quality or 1)))
    lvl = max(1, int(role.get("level", 1) or 1))
    tier_idx = int(role.get("daily_count") or 0) + 1  # 1..5 (VIP0-4) or 1..8 (VIP5+)
    cup_id = _get_level_cup_id(lvl)
    cup_amt = tier_idx
    rope_amt, orange_amt, red_amt = _DAILY_QUALITY_BONUSES[q]

    reward_exp = int(4000 * lvl * (1.0 + 0.3 * q))
    reward_copper = int(500 * lvl * (1.0 + 0.2 * (q - 1)))
    reward_prestige = int(50 + 5 * lvl + 30 * (q - 1))

    role["daily_count"] = tier_idx
    role["daily_quality"] = 1
    role["daily_refresh"] = 0
    role["copper"] = min(float(role.get("copper", 100000)) + float(reward_copper), 999999999.0)
    role["prestige"] = int(role.get("prestige") or 0) + reward_prestige
    _grant_role_exp(role, reward_exp)

    _add_item_to_bag(cup_id, cup_amt)
    _add_item_to_bag(300077, 2)  # 活力药水（小）+5 x2 per 20-vitality tier (Wiki rule)
    if rope_amt > 0:
        _add_item_to_bag(300061, rope_amt)
    if orange_amt > 0:
        _add_item_to_bag(300242, orange_amt)
    if red_amt > 0:
        _add_item_to_bag(300243, red_amt)
    return reward_exp, reward_copper, reward_prestige, cup_id, cup_amt


def _handle_reward_vitality(correlation_id: str, body: Any = None) -> bytes:
    role = _get_role()
    _ensure_daily_fresh(role)
    vit = _recompute_daily_vitality(role)
    # If an explicit step_id (>=3rd element) is provided, treat as vitality chest claim
    if isinstance(body, list) and len(body) >= 3 and isinstance(body[2], (int, float)) and int(body[2]) > 0:
        step_id = int(body[2])
        fetched = role.setdefault("vitality_fetched", [])
        cup_id = _get_level_cup_id(int(role.get("level", 1) or 1))
        if step_id not in fetched:
            fetched.append(step_id)
        reward_exp = 5000 * max(1, int(role.get("level", 1) or 1))
        reward_copper = 1000 * max(1, int(role.get("level", 1) or 1))
        cup_amt = 1
        role["copper"] = min(float(role.get("copper", 100000)) + float(reward_copper), 999999999.0)
        _grant_role_exp(role, reward_exp)
        _add_item_to_bag(cup_id, cup_amt)
        _add_item_to_bag(300077, 2)
        _save()
        err_code = -1
    else:
        # CDlgRInsert::OnBtntijiaobtnClickEv sends ACTIVITY.rewardvitality [role_id, '']
        daily_count = int(role.get("daily_count") or 0)
        cap_submits = _get_daily_max_submits(role)
        max_submits = min(cap_submits, vit // 20)
        if daily_count >= max_submits:
            err_code = 0
            reward_exp, reward_copper, cup_id, cup_amt = 0, 0, _get_level_cup_id(int(role.get("level", 1) or 1)), 0
            print(f"  [DAILY SUBMIT] Blocked: daily_count={daily_count} >= max_submits={max_submits} (vitality={vit}, cap={cap_submits})", flush=True)
        else:
            quality = max(1, min(5, int(role.get("daily_quality") or 1)))
            reward_exp, reward_copper, _, cup_id, cup_amt = _apply_daily_submit_rewards(role, quality)
            _save()
            err_code = -1
            print(f"  [DAILY SUBMIT] Submitted #{role['daily_count']}/{cap_submits} quality={quality} -> cup={cup_id}x{cup_amt} exp+{reward_exp}", flush=True)

    fields = [
        ("error_code",         _amf3_int(err_code)),
        ("reward_experience",  _amf3_int(reward_exp)),
        ("reward_copper",      _amf3_int(reward_copper)),
        ("reward_item",        _amf3_int(cup_id)),
        ("item_amount",        _amf3_int(cup_amt)),
        ("daily_count",        _amf3_int(int(role.get("daily_count") or 0))),
        ("daily_quality",      _amf3_int(max(1, min(5, int(role.get("daily_quality") or 1))))),
        ("daily_refresh",      _amf3_int(int(role.get("daily_refresh") or 0))),
        ("vitality",           _amf3_int(int(role.get("vitality") or 0))),
        ("copper",             _amf3_double(float(role["copper"]))),
        ("gold",               _amf3_int(int(role.get("gold", 100000)))),
        ("prestige",           _amf3_int(int(role.get("prestige", 1000)))),
    ]
    return _make_ack_message(correlation_id, _amf3_object(fields))


def _handle_daily_task_refresh(correlation_id: str, op_name: str = "") -> bytes:
    role = _get_role()
    _ensure_daily_fresh(role)
    cur_q = max(1, min(5, int(role.get("daily_quality") or 1)))
    err_code = -1
    if "LEGENDARY" in op_name:
        if cur_q < 5 and int(role.get("vip_level", 0) or 0) >= 5 and _spend_gold(role, 100):
            role["daily_quality"] = 5
            _save()
            print(f"  [DAILY LEGENDARY] Upgraded directly to Epic (5) for 100 gold", flush=True)
        else:
            err_code = 0
    else:
        if cur_q >= 5:
            err_code = 0
        else:
            ref_n = int(role.get("daily_refresh") or 0)
            cost = min(50, (ref_n + 1) * 2)  # Wiki: 2G, 4G, 6G... escalating
            if _spend_gold(role, cost):
                role["daily_refresh"] = ref_n + 1
                # Wiki: 50% upgrade chance per attempt, never downgrades
                if random.random() < 0.5:
                    role["daily_quality"] = min(5, cur_q + 1)
                _save()
                print(f"  [DAILY STARUP] Refresh #{role['daily_refresh']} cost={cost}G -> quality={role['daily_quality']}", flush=True)
            else:
                err_code = 0

    fields = [
        ("error_code",    _amf3_int(err_code)),
        ("daily_quality", _amf3_int(max(1, min(5, int(role.get("daily_quality") or 1))))),
        ("daily_count",   _amf3_int(int(role.get("daily_count", 0)))),
        ("daily_refresh", _amf3_int(int(role.get("daily_refresh", 0)))),
        ("copper",        _amf3_double(float(role.get("copper", 100000)))),
        ("gold",          _amf3_int(int(role.get("gold", 100000)))),
        ("prestige",      _amf3_int(int(role.get("prestige", 1000)))),
    ]
    return _make_ack_message(correlation_id, _amf3_object(fields))


def _handle_daily_task_submit(correlation_id: str, op_name: str = "", body: Any = None) -> bytes:
    return _handle_reward_vitality(correlation_id, body)


def _handle_daily_prestige_reward(correlation_id: str) -> bytes:
    role = _get_role()
    _ensure_daily_fresh(role)
    if role.get("prestige_reward_get"):
        return _make_ack_message(correlation_id, _amf3_object([
            ("error_code", _amf3_int(0)),
            ("prestige",   _amf3_int(int(role.get("prestige", 0)))),
            ("copper",     _amf3_double(float(role.get("copper", 100000)))),
            ("gold",       _amf3_int(int(role.get("gold", 100000)))),
        ]))
    lvl = max(1, int(role.get("level", 1) or 1))
    reward_prestige = 50 + 5 * lvl
    reward_copper = 500 * lvl
    role["prestige"] = int(role.get("prestige", 0) or 0) + reward_prestige
    role["copper"] = min(float(role.get("copper", 100000)) + float(reward_copper), 999999999.0)
    role["prestige_reward_get"] = True
    _record_daily_action(18)  # 每日领取悬赏
    _save()
    fields = [
        ("error_code",          _amf3_int(-1)),
        ("reward_prestige",     _amf3_int(reward_prestige)),
        ("reward_copper",       _amf3_int(reward_copper)),
        ("prestige",            _amf3_int(role["prestige"])),
        ("copper",              _amf3_double(float(role["copper"]))),
        ("gold",                _amf3_int(int(role.get("gold", 100000)))),
        ("prestige_reward_get", _amf3_bool(True)),
    ]
    return _make_ack_message(correlation_id, _amf3_object(fields))


def _handle_action_point_charge(correlation_id: str) -> bytes:
    """Handle ROLE/ACTIVITY.actionPointCharge: buy +20 action_point for 20 gold (Daily Task #21)."""
    role = _get_role()
    _ensure_daily_fresh(role)
    now_ts = float(int(time.time()))
    if not _spend_gold(role, 20):
        return _make_ack_message(correlation_id, _amf3_object([
            ("error_code",   _amf3_int(0)),
            ("gold",         _amf3_int(int(role.get("gold", 0)))),
            ("action_point", _amf3_int(int(role.get("action_point", 100)))),
            ("server_time",  _amf3_double(now_ts)),
        ]))
    role["action_point"] = int(role.get("action_point", 100) or 0) + 20
    role["ap_charge"] = int(role.get("ap_charge", 0) or 0) + 1
    _record_daily_action(21)  # 每日购买活力
    _save()
    print(f"  [ACTIONPOINTCHARGE] +20 AP -> {role['action_point']} (ap_charge={role['ap_charge']}, gold={role['gold']})", flush=True)
    return _make_ack_message(correlation_id, _amf3_object([
        ("error_code",   _amf3_int(-1)),
        ("action_point", _amf3_int(role["action_point"])),
        ("ap_charge",    _amf3_int(role["ap_charge"])),
        ("gold",         _amf3_int(int(role.get("gold", 0)))),
        ("server_time",  _amf3_double(now_ts)),
        ("role_data",    _build_role_data()),
    ]))


def _handle_reward_action_point(correlation_id: str) -> bytes:
    """Handle ACTIVITY.rewardActionPoint: free daily +25 action_point."""
    role = _get_role()
    _ensure_daily_fresh(role)
    if role.get("action_point_reward_get"):
        err_code = 0
    else:
        role["action_point"] = int(role.get("action_point", 100) or 0) + 25
        role["action_point_reward_get"] = True
        _record_daily_action(18)
        _save()
        err_code = -1
    return _make_ack_message(correlation_id, _amf3_object([
        ("error_code",              _amf3_int(err_code)),
        ("action_point",            _amf3_int(int(role.get("action_point", 100)))),
        ("action_point_reward_get", _amf3_bool(bool(role.get("action_point_reward_get", False)))),
        ("role_data",               _build_role_data()),
    ]))


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

    # Verify & deduct required currency/cups (unless need_item == 0)
    err_code = -1
    if need_item > 0 and need_amount > 0:
        total_have = sum(int(it.get("amount", 0) or 0) for it in items if it.get("cfg_item_id") == need_item)
        if total_have < need_amount:
            err_code = 0
        else:
            rem = need_amount
            for it in list(items):
                if it.get("cfg_item_id") == need_item and rem > 0:
                    cur_amt = int(it.get("amount", 0) or 0)
                    if cur_amt <= rem:
                        rem -= cur_amt
                        items.remove(it)
                    else:
                        it["amount"] = cur_amt - rem
                        rem = 0
            _add_item_to_bag(target_cfg_item_id, count)
            _save()
            print(f"  [EXCHANGE] Exchanged product {exchange_id}: consumed {need_amount} of cfg {need_item}, awarded {count} of cfg {target_cfg_item_id}", flush=True)
    else:
        _add_item_to_bag(target_cfg_item_id, count)
        _save()
        print(f"  [EXCHANGE] Exchanged product {exchange_id}: awarded {count} of cfg {target_cfg_item_id}", flush=True)

    fields = [
        ("error_code",   _amf3_int(err_code)),
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
    for p in MALL_PRODUCTS[:6]:
        p_elems.append(_amf3_object([
            ("product_id",  _amf3_int(p["product_id"])),
            ("cfg_item_id", _amf3_int(p["cfg_item_id"])),
            ("cost_type",   _amf3_int(p["cost_type"])),
            ("cost_value",  _amf3_int(p["cost_value"])),
        ]))

    fields = [
        ("error_code",    _amf3_int(-1)),
        ("server_time",   _amf3_double(now_ts)),
        ("cooldown_mall", _amf3_double(now_ts + 86400.0)),
        ("product_list",  _amf3_array(p_elems)),
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
    if not _spend_gold(role, cost):
        role["gold"] = max(0, int(role.get("gold", 100000)) - cost)
        if cost > 0:
            _record_daily_action(20)
    _add_item_to_bag(target_prod["cfg_item_id"], count)
    _record_daily_action(25)
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
    """Handle ACTIVITY.rewardFirstPay (0x103) matching OPDataManager::onRewardFirstPay."""
    role = _get_role()
    already_claimed = bool(role.get("pay_first", False))
    first_pay_items = [
        (300002, 3),   # 活力药水 x3
        (300057, 5),   # 超级银币卡 x5
        (300049, 4),   # 超级召集令 x4
        (200495, 1),   # 炎灵
        (200496, 1),   # 圣天使之杖
        (300085, 5),   # 传说宝箱（衣服） x5
    ]
    if not already_claimed:
        role["pay_first"] = True
        role["gold"] = int(role.get("gold", 0)) + 10000
        role["vip_level"] = max(int(role.get("vip_level", 0)), 10)
        role["vip_charge"] = max(int(role.get("vip_charge", 0)), 500000)
        for iid, amt in first_pay_items:
            _add_item_to_bag(iid, amt)
        _save()
        print("  [FIRST PAY] Granted first charge 6-item pack, 10000 gold & VIP 10", flush=True)

    e_arr = [
        _amf3_object([("item_id", _amf3_int(iid)), ("amount", _amf3_int(amt))])
        for iid, amt in first_pay_items
    ]
    fields = [
        ("error",        _amf3_int(-1)),
        ("error_code",   _amf3_int(-1)),
        ("request_code", _amf3_int(0)),
        ("pay_first",    _amf3_bool(True)),
        ("gold",         _amf3_int(int(role.get("gold", 0)))),
        ("copper",       _amf3_double(float(role.get("copper", 100000)))),
        ("e",            _amf3_array(e_arr)),
        ("bag_list",     _build_player_items_amf3()),
    ]
    return _make_ack_message(correlation_id, _amf3_object(fields))


def _handle_reward_code(body: Any, correlation_id: str) -> bytes:
    """Handle ACTIVITY.rewardCode (0xf8) matching OPDataManager::onRewardCode."""
    role = _get_role()
    pack_code = ""
    if isinstance(body, dict):
        pack_code = str(body.get("3_PackCode", body.get("PackCode", "")) or "")
    elif isinstance(body, list) and len(body) > 2:
        pack_code = str(body[2] or "")

    pack_items = [
        (300055, 3),   # 高级银币卡
        (300002, 2),   # 活力药水
        (300049, 2),   # 超级召集令
    ]
    role["gold"] = int(role.get("gold", 0)) + 500
    role["copper"] = min(999999999.0, float(role.get("copper", 100000)) + 50000.0)
    role["exploit"] = int(role.get("exploit", 0)) + 500
    for iid, amt in pack_items:
        _add_item_to_bag(iid, amt)
    _save()
    print(f"  [REWARD CODE] Redeemed pack_code={pack_code!r}", flush=True)

    item_objs = [
        _amf3_object([("cfg_item_id", _amf3_int(iid)), ("amount", _amf3_int(amt))])
        for iid, amt in pack_items
    ]
    fields = [
        ("error",        _amf3_int(-1)),
        ("error_code",   _amf3_int(-1)),
        ("request_code", _amf3_int(0)),
        ("pack_name",    _amf3_string(pack_code or "海贼王豪华礼包")),
        ("gold",         _amf3_int(int(role.get("gold", 0)))),
        ("copper",       _amf3_double(float(role.get("copper", 100000)))),
        ("exploit",      _amf3_int(int(role.get("exploit", 0)))),
        ("items",        _amf3_array([_amf3_array(item_objs)])),
        ("item_data",    _build_item_data()),
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
    _record_daily_action(4)
    gen_id = 1001
    polish_type = 1
    confirm = False

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

    if "CONFIRM" in operation.upper():
        # polishConfirm: 0/6 = 维持原属性(keep), 1/5 = 替换属性(replace)
        if polish_type in (1, 5):
            confirm = True
        else:
            confirm = False
            polish_type = 6

    target = None
    is_proto = False
    proto_fig = _get_proto_figure(role)
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
        if not _spend_gold(role, c_gold):
            role["gold"] = max(0, int(role.get("gold", 5000)) - c_gold)
            if c_gold > 0:
                _record_daily_action(20)

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
    if gold_cost > 0 and not _spend_gold(role, gold_cost):
        role["gold"] = max(0, int(role.get("gold", 0)) - gold_cost)
        _record_daily_action(20)

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

    _record_daily_action(14)
    _save()
    print(f"  -> MANOR.treasure OK: count={count} ropes_used={ropes_used} gold_cost={gold_cost}", flush=True)

    rewards = [_amf3_object([
        ("cfgItemId",     _amf3_int(reward_item_id)),
        ("cfgItem_count", _amf3_int(2 * count)),
        ("amount",        _amf3_int(2 * count)),
        ("type",          _amf3_int(1)),
    ])]
    resp_fields = [
        ("status",          _amf3_int(1)),
        ("error_code",      _amf3_int(-1)),
        ("error",           _amf3_int(-1)),
        ("type",            _amf3_int(int(body_dict.get("type", 0) or 0))),
        ("count",           _amf3_int(count)),
        ("cfgItemId",       _amf3_int(reward_item_id)),
        ("amount",          _amf3_int(2 * count)),
        ("reward_list",     _amf3_array(rewards)),
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





def _handle_skyladder_or_arena(operation: str, body: Any, correlation_id: str) -> bytes:
    """Handle SKYLADDER.* and ARENA.* matching onSkyLadderData & supportArenaData."""
    role = _get_role()
    op_upper = operation.upper()
    now_ts = float(int(time.time()))
    if "ARENA" in op_upper:
        if "RANKREWARD" in op_upper:
            reward_copper = 25000
            reward_exploit = 500
            role["copper"] = min(999999999.0, float(role.get("copper", 100000)) + float(reward_copper))
            role["prestige"] = int(role.get("prestige", 1000) or 1000) + reward_exploit
            _add_item_to_bag(300053, 1)
            _save()
            return _make_ack_message(correlation_id, _amf3_object([
                ("error_code",     _amf3_int(-1)),
                ("exploit",        _amf3_int(role["prestige"])),
                ("copper",         _amf3_double(float(role["copper"]))),
                ("reward_copper",  _amf3_int(reward_copper)),
                ("reward_exploit", _amf3_int(reward_exploit)),
                ("reward_item",    _amf3_int(300053)),
                ("item_amount",    _amf3_int(1)),
                ("arena_rank",     _amf3_int(1)),
            ]))
        if "BONUSCOUNTCHARGE" in op_upper:
            _spend_gold(role, 10)
            role["arena_bonus_count"] = int(role.get("arena_bonus_count", 5) or 5) + 5
            _save()
        elif "REFRESH" in op_upper:
            role["arena_refresh_seed"] = int(role.get("arena_refresh_seed", 0) or 0) + 1
            _save()
        elif any(k in op_upper for k in ["BATTLE", "SPIKE", "FIGHT", "APPLY", "CLICK"]):
            if "SPIKE" in op_upper:
                _spend_gold(role, 5)
            role["honor"] = int(role.get("honor", 1000)) + 100
            role["arena_win_count"] = int(role.get("arena_win_count", 0)) + 1
            _record_daily_action(2)
            _save()
            return _build_battle_result_response(correlation_id, 10101, win=True)

        win_cnt = int(role.get("arena_win_count", 1))
        seed = int(role.get("arena_refresh_seed", 0) or 0)
        pools = [
            ["海贼猎人", "海军少尉", "赏金猎手"],
            ["克洛船长", "铁拳芬布迪", "小丑巴基"],
            ["阿龙海贼", "克利克舰队", "鹰眼弟子"],
        ]
        names = pools[seed % len(pools)]
        opp_list = [
            _amf3_object([
                ("id",       _amf3_int(90001 + seed * 10 + i)),
                ("face",     _amf3_int(1001 + i)),
                ("name",     _amf3_string(n)),
                ("officium", _amf3_int(3 + i)),
                ("defeated", _amf3_bool(False)),
                ("rank",     _amf3_int(2 + i)),
                ("level",    _amf3_int(max(10, int(role.get("level", 10)) - 2 + i))),
            ]) for i, n in enumerate(names)
        ]
        fields = [
            ("error_code",            _amf3_int(-1)),
            ("server_time",           _amf3_double(now_ts)),
            ("get_reward_time",       _amf3_double(0.0)),
            ("copper",                _amf3_double(float(role.get("copper", 100000)))),
            ("gold",                  _amf3_int(int(role.get("gold", 100000)))),
            ("arena_battle_cooldown", _amf3_double(0.0)),
            ("arena_bonus_count",     _amf3_int(int(role.get("arena_bonus_count", 5) or 5))),
            ("arena_left_count",      _amf3_int(15)),
            ("arena_win_streak",      _amf3_int(win_cnt)),
            ("arena_win_count",       _amf3_int(win_cnt)),
            ("arena_loss_count",      _amf3_int(0)),
            ("arena_win_rate",        _amf3_int(100)),
            ("arena_rank",            _amf3_int(1)),
            ("arena_reward_rank",     _amf3_int(1)),
            ("opponent_list",         _amf3_array(opp_list)),
            ("rank_list",             _amf3_array([])),
        ]
        return _make_ack_message(correlation_id, _amf3_object(fields))

    is_fight = any(k in op_upper for k in ["KLICK", "CLICK", "FIGHT", "APPLY", "CHALLENGE"])
    if is_fight:
        role["honor"] = int(role.get("honor", 1000)) + 100
        role["sky_score"] = int(role.get("sky_score", 1000)) + 20
        role["arena_win_count"] = int(role.get("arena_win_count", 0)) + 1
        _record_daily_action(2)
        _save()
        return _build_battle_result_response(correlation_id, 10101, win=True)

    # SKYLADDER (onSkyLadderData checks error_code == -1)
    sky_score = int(role.get("sky_score", 1000))
    honor = int(role.get("honor", 1000))
    win_cnt = int(role.get("arena_win_count", 1))
    fields = [
        ("error_code",             _amf3_int(-1)),
        ("request_code",           _amf3_int(0)),
        ("role_id",                _amf3_int(role["role_id"])),
        ("role_name",              _amf3_string(role["name"])),
        ("level",                  _amf3_int(int(role.get("level", 1)))),
        ("rank",                   _amf3_int(1)),
        ("my_rank",                _amf3_int(1)),
        ("myRank",                 _amf3_int(1)),
        ("sequence",               _amf3_int(1)),
        ("score",                  _amf3_int(sky_score)),
        ("sky_score",              _amf3_int(sky_score)),
        ("sky_score_change",       _amf3_int(20)),
        ("honor",                  _amf3_int(honor)),
        ("account",                _amf3_int(10)),
        ("single_win_account",     _amf3_double(float(win_cnt))),
        ("single_fail_account",    _amf3_int(0)),
        ("team_win_account",       _amf3_int(0)),
        ("team_fail_account",      _amf3_int(0)),
        ("sky_mars_diamond_count", _amf3_int(0)),
        ("next_need_gold",         _amf3_double(0.0)),
        ("top_ten",                _amf3_array([])),
        ("rank_list",              _amf3_array([])),
    ]
    return _make_ack_message(correlation_id, _amf3_object(fields))


def _build_skyladder_response(correlation_id: str) -> bytes:
    return _handle_skyladder_or_arena("SKYLADDER.SkyLadder", [], correlation_id)


def _handle_manor_request(operation: str, body: Any, correlation_id: str) -> bytes:
    """Handle MANOR.manor/tax/farm/fish/dock/slave matching OPDataManager."""
    role = _get_role()
    op_name = operation.upper().split(".")[-1]
    now_ts = float(int(time.time()))

    if "TAX" in op_name or "COLLECT" in op_name:
        role["tax_count_today"] = int(role.get("tax_count_today", 0)) + 1
        role["copper"] = min(999999999.0, float(role.get("copper", 100000)) + 25000.0)
        _record_daily_action(1)
        _save()

    if any(k in op_name for k in ["FARM", "FISH", "HARVEST", "PLANT"]):
        if any(k in op_name for k in ["FISH", "HARVEST", "PLANT", "WATER"]):
            role["fish_count"] = int(role.get("fish_count", 0)) + 1
            role["copper"] = min(999999999.0, float(role.get("copper", 100000)) + 20000.0)
            _record_daily_action(5)
            _save()
        farm_list = [
            _amf3_object([
                ("idx",          _amf3_int(i)),
                ("type",         _amf3_int(1)),
                ("status",       _amf3_int(1)),
                ("harvest_time", _amf3_double(0.0)),
                ("count",        _amf3_int(1)),
                ("is_finished",  _amf3_bool(True)),
            ]) for i in range(1, 7)
        ]
        fields = [
            ("error_code",   _amf3_int(-1)),
            ("harvest",      _amf3_int(1)),
            ("contribute",   _amf3_int(0)),
            ("server_time",  _amf3_double(now_ts)),
            ("land_count",   _amf3_int(6)),
            ("copper",       _amf3_double(float(role.get("copper", 100000)))),
            ("gold",         _amf3_int(int(role.get("gold", 100000)))),
            ("fish_count",   _amf3_int(int(role.get("fish_count", 0)))),
            ("fish_copper",  _amf3_int(20000)),
            ("max_count",    _amf3_int(10)),
            ("action_point", _amf3_int(int(role.get("action_point", 100)))),
            ("farm_list",    _amf3_array(farm_list)),
        ]
        return _make_ack_message(correlation_id, _amf3_object(fields))

    if "DOCK" in op_name:
        if "STEAL" in op_name or "ROB" in op_name:
            role["copper"] = min(999999999.0, float(role.get("copper", 100000)) + 30000.0)
            _record_daily_action(9)
            _save()
            return _make_ack_message(correlation_id, _amf3_object([
                ("error_code",    _amf3_int(-1)),
                ("is_success",    _amf3_bool(True)),
                ("stolen_copper", _amf3_int(30000)),
                ("copper",        _amf3_double(float(role["copper"]))),
            ]))
        if "FETCH" in op_name or "SAIL" in op_name or "START" in op_name or "DISPATCH" in op_name:
            role["copper"] = min(999999999.0, float(role.get("copper", 100000)) + 50000.0)
            used = int(role.get("dock_used_count", 0) or 0)
            if used < 4:
                role["dock_used_count"] = used + 1
            _record_daily_action(8)
            _save()
        dock_used = min(4, max(0, int(role.get("dock_used_count", 0) or 0)))
        ship_list = [
            _amf3_object([
                ("id",                _amf3_int(100 + i)),
                ("ship_id",           _amf3_int(100 + i)),
                ("role_id",           _amf3_int(90010 + i)),
                ("role_level",        _amf3_int(20 + i * 5)),
                ("quality",           _amf3_int(5)),
                ("status",            _amf3_int(1)),
                ("base_copper",       _amf3_int(50000)),
                ("acquire_copper",    _amf3_int(50000)),
                ("base_exploit",      _amf3_int(100)),
                ("stolen_times",      _amf3_int(0)),
                ("arrive_time",       _amf3_double(0.0)),
                ("cfg_item_id",       _amf3_int(0)),
                ("item_id",           _amf3_int(0)),
                ("stealer_name_list", _amf3_array([])),
            ]) for i in range(3)
        ]
        fields = [
            ("error_code",         _amf3_int(-1)),
            ("copper",             _amf3_double(float(role.get("copper", 100000)))),
            ("gold",               _amf3_int(int(role.get("gold", 100000)))),
            ("ship_count",         _amf3_int(3)),
            ("dock_count",         _amf3_int(3)),
            ("dock_steal_count",   _amf3_int(5)),
            ("dock_refresh_count", _amf3_int(3)),
            ("dock_left_count",    _amf3_int(dock_used)),
            ("dock_quality",       _amf3_int(5)),
            ("dock_last_steal",    _amf3_double(0.0)),
            ("server_time",        _amf3_double(now_ts)),
            ("ship_list",          _amf3_array(ship_list)),
            ("dock_data",          _amf3_array([])),
            ("dock_ship",          ship_list[0]),
            ("steal_name",         _amf3_string("")),
            ("steal_id",           _amf3_int(0)),
            ("exploit",            _amf3_int(int(role.get("prestige", 1000)))),
        ]
        return _make_ack_message(correlation_id, _amf3_object(fields))

    if "POST" in op_name:
        return _handle_post_request(operation, body, correlation_id)

    if "PRISON" in op_name:
        if "BEGIN" in op_name:
            role["prison_on"] = 1
            role["prison_order"] = 1
            role["prison_alive"] = 1
            _save()
        elif "RESET" in op_name:
            if int(role.get("prison_order", 1) or 1) > 1:
                _spend_gold(role, 10)
            role["prison_on"] = 1
            role["prison_order"] = 1
            role["prison_alive"] = 1
            _save()
        elif "REVIVE" in op_name:
            _spend_gold(role, 10)
            role["prison_alive"] = 1
            role["prison_revive"] = int(role.get("prison_revive", 0) or 0) + 1
            _save()
        elif any(k in op_name for k in ["BATTLE", "FIGHT", "ATTACK", "CHALLENGE"]):
            order_id = 1
            if isinstance(body, list) and len(body) > 2 and str(body[2]).isdigit():
                order_id = int(body[2])
            army_id = 60801
            try:
                conn = sqlite3.connect(DB_PATH)
                row = conn.execute("SELECT cfg_army_id FROM cfg_prison_army WHERE [order] = ? OR cfg_army_id = ? LIMIT 1", (order_id, order_id)).fetchone()
                conn.close()
                if row:
                    army_id = int(row[0])
            except Exception:
                pass
            role["prestige"] = int(role.get("prestige", 1000) or 1000) + 500
            role["prison_order"] = min(20, int(role.get("prison_order", 1) or 1) + 1)
            _record_daily_action(30)
            _save()
            return _build_battle_result_response(correlation_id, army_id, win=True)
        star_list = []
        try:
            conn = sqlite3.connect(DB_PATH)
            for (aid,) in conn.execute("SELECT cfg_army_id FROM cfg_prison_army ORDER BY [order] LIMIT 20").fetchall():
                star_list.append(_amf3_object([
                    ("cfg_army_id",   _amf3_int(int(aid))),
                    ("mem_army_star", _amf3_int(3)),
                ]))
            conn.close()
        except Exception:
            pass
        return _make_ack_message(correlation_id, _amf3_object([
            ("error_code",    _amf3_int(-1)),
            ("gold",          _amf3_int(int(role.get("gold", 100000)))),
            ("exploit",       _amf3_int(int(role.get("prestige", 1000)))),
            ("prison_on",     _amf3_bool(bool(role.get("prison_on", 1)))),
            ("prison_count",  _amf3_int(10)),
            ("prison_alive",  _amf3_bool(bool(role.get("prison_alive", 1)))),
            ("prison_revive", _amf3_int(int(role.get("prison_revive", 0) or 0))),
            ("prison_order",  _amf3_int(int(role.get("prison_order", 1) or 1))),
            ("star_list",     _amf3_array(star_list)),
        ]))

    if "SLAVE" in op_name or "CAPTURE" in op_name or "GRAB" in op_name:
        if any(k in op_name for k in ["WORK", "FETCH", "CAPTURE", "GRAB"]):
            role["copper"] = min(999999999.0, float(role.get("copper", 100000)) + 15000.0)
            _record_daily_action(17)
            if "CAPTURE" in op_name:
                _record_daily_action(31)
            _save()
        rec_list = [
            _amf3_object([
                ("role_id",        _amf3_int(91001 + i)),
                ("name",           _amf3_string(n)),
                ("face",           _amf3_int(1001 + i)),
                ("nation",         _amf3_int(1)),
                ("level",          _amf3_int(15 + i * 5)),
                ("last_heartbeat", _amf3_double(now_ts)),
                ("master_name",    _amf3_string("")),
            ]) for i, n in enumerate(["海贼苦工", "海军逃兵", "赏金海贼"])
        ]
        fields = [
            ("error_code",           _amf3_int(-1)),
            ("gold",                 _amf3_int(int(role.get("gold", 100000)))),
            ("copper",               _amf3_double(float(role.get("copper", 100000)))),
            ("exploit",              _amf3_int(int(role.get("prestige", 1000)))),
            ("server_time",          _amf3_double(now_ts)),
            ("capture_left_cout",    _amf3_int(5)),
            ("jump_wand_count",      _amf3_int(5)),
            ("fetch_copper",         _amf3_int(15000)),
            ("slave_recommend_list", _amf3_array(rec_list)),
        ]
        return _make_ack_message(correlation_id, _amf3_object(fields))

    # Default: MANOR.manor (onManor)
    fig = role.get("figure", 1008)
    if fig < 1000:
        fig = FIGURE_MAP.get(fig, 1008)
    tax_today = int(role.get("tax_count_today", 0))
    fields = [
        ("error_code",      _amf3_int(-1)),
        ("name",            _amf3_string(role["name"])),
        ("face",            _amf3_int(fig)),
        ("officium",        _amf3_int(int(role.get("officium", 1)))),
        ("nation",          _amf3_int(int(role.get("nation", 1)))),
        ("ship_shape",      _amf3_int(1)),
        ("is_occupied",     _amf3_bool(False)),
        ("occupant_id",     _amf3_int(0)),
        ("occupant_name",   _amf3_string("")),
        ("is_captured",     _amf3_bool(False)),
        ("master_id",       _amf3_int(0)),
        ("master_name",     _amf3_string("")),
        ("step",            _amf3_int(1)),
        ("farm_mature",     _amf3_bool(True)),
        ("tax_left_count",  _amf3_int(max(0, 15 - tax_today))),
        ("tax_max_count",   _amf3_int(15)),
        ("tax_count_today", _amf3_int(tax_today)),
        ("dock_ships",      _amf3_array([])),
        ("capture_list",    _amf3_array([])),
        ("copper",          _amf3_double(float(role.get("copper", 100000)))),
        ("gold",            _amf3_int(int(role.get("gold", 100000)))),
    ]
    return _make_ack_message(correlation_id, _amf3_object(fields))


def _handle_legion_request(operation: str, body: Any, correlation_id: str) -> bytes:
    """Handle LEGION.* matching OPDataManager::onLegion/Detail/Member/Tech/ApplyList."""
    role = _get_role()
    op_name = operation.upper().split(".")[-1]
    now_ts = float(int(time.time()))
    contrib = int(role.get("legion_contribute", 1000))
    contrib_today = int(role.get("legion_contribute_today", 0))

    if any(k in op_name for k in ["DONATE", "CONTRIBUTE", "UPGRADE", "STUDY"]):
        contrib += 100
        contrib_today += 100
        role["legion_contribute"] = contrib
        role["legion_contribute_today"] = contrib_today
        role["copper"] = max(0.0, float(role.get("copper", 100000)) - 10000.0)
        _record_daily_action(32)
        _save()

    if "TECH" in op_name or "DONATE" in op_name or "CONTRIBUTE" in op_name:
        techs = [
            _amf3_object([
                ("tech_id",              _amf3_int(i)),
                ("level",                _amf3_int(5)),
                ("name",                 _amf3_string(n)),
                ("next_contribute_need", _amf3_int(100)),
            ]) for i, n in [(1, "军团攻击"), (2, "军团防御"), (3, "军团生命"), (4, "军团银币")]
        ]
        return _make_ack_message(correlation_id, _amf3_object([
            ("error_code",          _amf3_int(-1)),
            ("contribute",          _amf3_int(contrib)),
            ("contribute_today",    _amf3_int(contrib_today)),
            ("role_contribute",     _amf3_int(contrib)),
            ("role_contribute_max", _amf3_int(100000)),
            ("tech_list",           _amf3_array(techs)),
        ]))

    if "DETAIL" in op_name:
        return _make_ack_message(correlation_id, _amf3_object([
            ("error_code",  _amf3_int(-1)),
            ("name",        _amf3_string("草帽海贼团")),
            ("level",       _amf3_int(10)),
            ("nation",      _amf3_int(int(role.get("nation", 1)))),
            ("leader_name", _amf3_string(role["name"])),
            ("contribute",  _amf3_int(contrib)),
            ("notice",      _amf3_string("单机离线军团全天开放，欢迎贡献！")),
            ("number",      _amf3_int(1)),
            ("number_max",  _amf3_int(50)),
        ]))

    if "MEMBER" in op_name:
        members = [_amf3_object([
            ("role_id",          _amf3_int(role["role_id"])),
            ("role_name",        _amf3_string(role["name"])),
            ("officium",         _amf3_int(int(role.get("officium", 1)))),
            ("is_online",        _amf3_bool(True)),
            ("last_time",        _amf3_double(now_ts)),
            ("position",         _amf3_int(1)),
            ("contribute_today", _amf3_int(contrib_today)),
            ("contribute",       _amf3_int(contrib)),
        ])]
        return _make_ack_message(correlation_id, _amf3_object([
            ("error_code",  _amf3_int(-1)),
            ("legion_list", _amf3_array(members)),
        ]))

    if "APPLYLIST" in op_name:
        return _make_ack_message(correlation_id, _amf3_object([
            ("error_code",  _amf3_int(-1)),
            ("can_approve", _amf3_bool(True)),
            ("apply_list",  _amf3_array([])),
        ]))

    legions = [_amf3_object([
        ("legion_id",            _amf3_int(1)),
        ("flag",                 _amf3_int(1)),
        ("level",                _amf3_int(10)),
        ("legion_name",          _amf3_string("草帽海贼团")),
        ("legion_people_number", _amf3_int(50)),
        ("legion_leader_name",   _amf3_string(role["name"])),
        ("legion_nation",        _amf3_int(int(role.get("nation", 1)))),
        ("legion_number_now",    _amf3_int(1)),
        ("legion_rank",          _amf3_int(1)),
        ("applying",             _amf3_bool(False)),
    ])]
    return _make_ack_message(correlation_id, _amf3_object([
        ("error_code",  _amf3_int(-1)),
        ("legion_id",   _amf3_int(1)),
        ("legion_list", _amf3_array(legions)),
    ]))


def _handle_sea_chest_request(correlation_id: str, body: Any = None) -> bytes:
    """Handle SCENE.seaChest matching OPDataManager::onSeaChest."""
    role = _get_role()
    chest_type = 0
    any_count = 1
    if isinstance(body, dict):
        chest_type = int(body.get("3_type", body.get("type", 0)) or 0)
        any_count = max(1, int(body.get("4_anyCount", body.get("anyCount", body.get("count", 1))) or 1))
    elif isinstance(body, list):
        if len(body) >= 3 and str(body[2]).lstrip("-").isdigit():
            chest_type = int(body[2])
        if len(body) >= 4 and str(body[3]).isdigit():
            any_count = max(1, int(body[3]))
    chest_type = max(0, min(2, chest_type))

    cost_per = 10 if chest_type == 1 else (20 if chest_type == 2 else 0)
    gold_cost = cost_per * any_count
    if gold_cost > 0:
        _spend_gold(role, gold_cost)
    role["copper"] = min(999999999.0, float(role.get("copper", 100000)) + 10000.0 * any_count)

    pool_by_type = {
        0: [(300053, 2 * any_count), (300051, 1 * any_count)],
        1: [(300076, 1 * any_count), (300053, 5 * any_count)],
        2: [(300077, 1 * any_count), (300056, 2 * any_count)],
    }
    chosen = pool_by_type.get(chest_type, [(300053, any_count)])
    for iid, cnt in chosen:
        _add_item_to_bag(iid, cnt)

    _record_daily_action(14)
    _save()
    rewards = [
        _amf3_object([
            ("cfgItemId",     _amf3_int(iid)),
            ("cfgItem_count", _amf3_int(cnt)),
        ]) for iid, cnt in chosen
    ]
    return _make_ack_message(correlation_id, _amf3_object([
        ("error",       _amf3_int(-1)),
        ("error_code",  _amf3_int(-1)),
        ("type",        _amf3_int(chest_type)),
        ("gold",        _amf3_int(int(role.get("gold", 100000)))),
        ("copper",      _amf3_double(float(role.get("copper", 100000)))),
        ("count",       _amf3_int(any_count)),
        ("reward_list", _amf3_array(rewards)),
        ("bag_list",    _build_player_items_amf3()),
        ("item_data",   _build_item_data()),
    ]))


def _handle_trail_request(operation: str, body: Any, correlation_id: str) -> bytes:
    """Handle TASK.trail / TASK.trailReward matching OPDataManager::onTrail & onTrailReWard."""
    role = _get_role()
    claimed = role.setdefault("trail_claimed", [])
    op_upper = operation.upper()

    if "REWARD" in op_upper:
        tid = 1001
        if isinstance(body, list) and len(body) >= 3 and str(body[2]).isdigit():
            tid = int(body[2])
        if tid not in claimed:
            claimed.append(tid)
        _add_item_to_bag(300056, 1)
        _add_item_to_bag(300076, 1)
        _record_daily_action(23)
        _save()
        return _make_ack_message(correlation_id, _amf3_object([
            ("error_code", _amf3_int(-1)),
        ]))

    trail_list = []
    try:
        conn = sqlite3.connect(DB_PATH)
        for (tid,) in conn.execute("SELECT cfg_trail_id FROM cfg_trail ORDER BY cfg_trail_id").fetchall():
            tid = int(tid)
            trail_list.append(_amf3_object([
                ("cfg_trail_id", _amf3_int(tid)),
                ("trail1",       _amf3_bool(True)),
                ("trail2",       _amf3_bool(True)),
                ("trail3",       _amf3_bool(True)),
                ("get_reward",   _amf3_bool(tid in claimed)),
                ("army_score",   _amf3_int(3)),
            ]))
        conn.close()
    except Exception as e:
        print(f"  [TRAIL] query error: {e}", flush=True)

    return _make_ack_message(correlation_id, _amf3_object([
        ("error_code", _amf3_int(-1)),
        ("trail_list", _amf3_array(trail_list)),
    ]))


def _build_pets_amf3() -> bytes:
    role = _get_role()
    pets = role.setdefault("pets", [])
    if not pets:
        pets.append({
            "pet_id": 1, "cfg_pet_id": 1, "level": 10, "quality": 4, "exp": 0,
            "health_point": 2000, "physical_attack": 300, "spell_attack": 300,
            "physical_defence": 150, "spell_defence": 150, "speed": 120,
            "hit": 10, "critic": 10, "prepared": 1, "is_birth": 1, "rebirth": 0,
            "str_grow": 500, "agi_grow": 500, "sta_grow": 500, "int_grow": 500, "luc_grow": 500,
            "str_grow_ceil": 4000, "agi_grow_ceil": 4000, "sta_grow_ceil": 4000, "int_grow_ceil": 4000, "luc_grow_ceil": 4000,
        })
    pet_objs = []
    for p in pets:
        pet_objs.append(_amf3_object([
            ("pet_id",           _amf3_int(int(p.get("pet_id", 1)))),
            ("cfg_pet_id",       _amf3_int(int(p.get("cfg_pet_id", 1)))),
            ("level",            _amf3_int(int(p.get("level", 10)))),
            ("quality",          _amf3_int(int(p.get("quality", 4)))),
            ("exp",              _amf3_int(int(p.get("exp", 0)))),
            ("health_point",     _amf3_int(int(p.get("health_point", 2000)))),
            ("physical_attack",  _amf3_int(int(p.get("physical_attack", 300)))),
            ("spell_attack",     _amf3_int(int(p.get("spell_attack", 300)))),
            ("physical_defence", _amf3_int(int(p.get("physical_defence", 150)))),
            ("spell_defence",    _amf3_int(int(p.get("spell_defence", 150)))),
            ("speed",            _amf3_int(int(p.get("speed", 120)))),
            ("hit",              _amf3_int(int(p.get("hit", 10)))),
            ("critic",           _amf3_int(int(p.get("critic", 10)))),
            ("prepared",         _amf3_bool(bool(p.get("prepared", 1)))),
            ("is_birth",         _amf3_bool(bool(p.get("is_birth", 1)))),
            ("rebirth",          _amf3_int(int(p.get("rebirth", 0)))),
            ("str_grow",         _amf3_int(int(p.get("str_grow", 500)))),
            ("agi_grow",         _amf3_int(int(p.get("agi_grow", 500)))),
            ("sta_grow",         _amf3_int(int(p.get("sta_grow", 500)))),
            ("int_grow",         _amf3_int(int(p.get("int_grow", 500)))),
            ("luc_grow",         _amf3_int(int(p.get("luc_grow", 500)))),
            ("str_grow_ceil",    _amf3_int(int(p.get("str_grow_ceil", 4000)))),
            ("agi_grow_ceil",    _amf3_int(int(p.get("agi_grow_ceil", 4000)))),
            ("sta_grow_ceil",    _amf3_int(int(p.get("sta_grow_ceil", 4000)))),
            ("int_grow_ceil",    _amf3_int(int(p.get("int_grow_ceil", 4000)))),
            ("luc_grow_ceil",    _amf3_int(int(p.get("luc_grow_ceil", 4000)))),
            ("skill_slot",       _amf3_int(3)),
            ("skills",           _amf3_array([])),
        ]))
    return _amf3_array(pet_objs)


def _add_pet_from_cfg(cfg_pet_id: int) -> dict:
    role = _get_role()
    pets = role.setdefault("pets", [])
    next_id = max([int(p.get("pet_id", 0)) for p in pets] + [0]) + 1
    new_pet = {
        "pet_id": next_id, "cfg_pet_id": cfg_pet_id, "level": 1, "quality": 4, "exp": 0,
        "health_point": 2000, "physical_attack": 300, "spell_attack": 300,
        "physical_defence": 150, "spell_defence": 150, "speed": 120,
        "hit": 10, "critic": 10, "prepared": 0, "is_birth": 1, "rebirth": 0,
        "str_grow": 500, "agi_grow": 500, "sta_grow": 500, "int_grow": 500, "luc_grow": 500,
        "str_grow_ceil": 4000, "agi_grow_ceil": 4000, "sta_grow_ceil": 4000, "int_grow_ceil": 4000, "luc_grow_ceil": 4000,
    }
    try:
        conn = sqlite3.connect(DB_PATH)
        conn.row_factory = sqlite3.Row
        row = conn.execute("SELECT * FROM cfg_pet WHERE cfg_pet_id = ?", (cfg_pet_id,)).fetchone()
        conn.close()
        if row:
            for k in ("str_grow", "agi_grow", "sta_grow", "int_grow", "luc_grow",
                      "str_grow_ceil", "agi_grow_ceil", "sta_grow_ceil", "int_grow_ceil", "luc_grow_ceil"):
                new_pet[k] = int(row[k])
    except Exception:
        pass
    pets.append(new_pet)
    return new_pet


def _handle_pet_request(operation: str, body: Any, correlation_id: str) -> bytes:
    """Handle GENERAL.pet / PET.* matching OPDataManager::onPetData & onPets."""
    role = _get_role()
    pets = role.setdefault("pets", [])
    if not pets:
        _add_pet_from_cfg(1)
        pets[0]["level"] = 10
        pets[0]["prepared"] = 1
        _save()

    op_upper = operation.upper()
    if "BIRTH" in op_upper and "REBIRTH" not in op_upper:
        pet_id = 1
        if isinstance(body, list) and len(body) > 2 and str(body[2]).isdigit():
            pet_id = int(body[2])
        target_pet = next((p for p in pets if int(p.get("pet_id", 1)) == pet_id), pets[0])
        target_pet["is_birth"] = 1
        target_pet["rebirth"] = int(target_pet.get("rebirth", 0)) + 1
        target_pet["level"] = 1
        target_pet["quality"] = min(5, int(target_pet.get("quality", 4)) + 1)
        target_pet["health_point"] = int(target_pet.get("health_point", 2000)) + 500
        target_pet["physical_attack"] = int(target_pet.get("physical_attack", 300)) + 100
        target_pet["spell_attack"] = int(target_pet.get("spell_attack", 300)) + 100
        for gk in ("str_grow", "agi_grow", "sta_grow", "int_grow", "luc_grow"):
            target_pet[gk] = min(4000, int(target_pet.get(gk, 500)) + 100)
        _record_daily_action(22)
        _save()
        print(f"  [PET.birth] Hatched/Rebirthed pet {pet_id}: rebirth={target_pet['rebirth']} quality={target_pet['quality']}", flush=True)
    elif "PREPARE" in op_upper:
        pet_id = int(body[2]) if isinstance(body, list) and len(body) > 2 and str(body[2]).isdigit() else 1
        for p in pets:
            p["prepared"] = 1 if int(p.get("pet_id", 1)) == pet_id else 0
        _save()
    elif any(k in op_upper for k in ["TRAIN", "INTERACT", "FEED", "PLAY"]):
        # petFeed sends [role_id, code, feed_type, pet_id]; petTrain sends [role_id, code, pet_id, ...]
        if "FEED" in op_upper and isinstance(body, list) and len(body) > 3 and str(body[3]).isdigit():
            pet_id = int(body[3])
        elif isinstance(body, list) and len(body) > 2 and str(body[2]).isdigit():
            pet_id = int(body[2])
        else:
            pet_id = 1
        target_pet = next((p for p in pets if int(p.get("pet_id", 1)) == pet_id), pets[0])
        target_pet["exp"] = int(target_pet.get("exp", 0)) + 1000
        cur_lvl = int(target_pet.get("level", 1))
        need_exp = cur_lvl * 1000
        if target_pet["exp"] >= need_exp and cur_lvl < 100:
            target_pet["exp"] -= need_exp
            target_pet["level"] = cur_lvl + 1
        _record_daily_action(22)
        _save()
        print(f"  [PET.feed/train] pet_id={pet_id} level={target_pet['level']} exp={target_pet['exp']}", flush=True)
    elif "REBIRTH" in op_upper or "SKILLSLOT" in op_upper or "POLISH" in op_upper or "CULTIVATE" in op_upper:
        pet_id = int(body[2]) if isinstance(body, list) and len(body) > 2 and str(body[2]).isdigit() else 1
        target_pet = next((p for p in pets if int(p.get("pet_id", 1)) == pet_id), pets[0])
        if "REBIRTH" in op_upper:
            target_pet["rebirth"] = int(target_pet.get("rebirth", 0) or 0) + 1
            for gk in ("str_grow", "agi_grow", "sta_grow", "int_grow", "luc_grow"):
                target_pet[gk] = min(4000, int(target_pet.get(gk, 500) or 500) + 50)
        elif "SKILLSLOT" in op_upper:
            target_pet["skill_slot"] = min(6, int(target_pet.get("skill_slot", 1) or 1) + 1)
            _spend_gold(role, 20)
        _record_daily_action(26)
        _save()
    elif "ADVENTURE" in op_upper:
        _record_daily_action(27)
        _save()

    return _make_ack_message(correlation_id, _amf3_object([
        ("error_code",          _amf3_int(-1)),
        ("pets",                _build_pets_amf3()),
        ("gold",                _amf3_int(int(role.get("gold", 100000)))),
        ("train_pet_count",     _amf3_int(5)),
        ("item_amount",         _amf3_int(10)),
        ("polish_str_grow_add", _amf3_int(10)),
        ("polish_sta_grow_add", _amf3_int(10)),
        ("polish_luc_grow_add", _amf3_int(10)),
        ("polish_int_grow_add", _amf3_int(10)),
        ("polish_agi_grow_add", _amf3_int(10)),
        ("result_1",            _amf3_int(1)),
        ("result_2",            _amf3_int(1)),
        ("result_3",            _amf3_int(1)),
    ]))


def _handle_hunting_request(operation: str, correlation_id: str) -> bytes:
    """Handle SCENE.checkHunting / hunting actions matching opCheckHunting."""
    role = _get_role()
    now_ts = float(int(time.time()))
    if any(k in operation.upper() for k in ("SPIKE", "ATTACK", "HUNTINGSTART", "BEGINHUNTING")):
        _record_daily_action(24)
        _save()
    return _make_ack_message(correlation_id, _amf3_object([
        ("error_code",              _amf3_int(-1)),
        ("dao_courage",             _amf3_int(10)),
        ("zei_courage",             _amf3_int(10)),
        ("hunting_spike",           _amf3_int(5)),
        ("attack_count",            _amf3_int(5)),
        ("defence_count",           _amf3_int(5)),
        ("hunting_action_cooldown", _amf3_double(0.0)),
        ("hunting_left_cooldown",   _amf3_double(0.0)),
        ("honor",                   _amf3_int(int(role.get("honor", 1000)))),
        ("gold",                    _amf3_int(int(role.get("gold", 100000)))),
        ("server_time",             _amf3_double(now_ts)),
        ("scene_data",              _amf3_array([])),
        ("record_list",             _amf3_array([])),
    ]))


def _handle_mausoleum_request(operation: str, correlation_id: str) -> bytes:
    """Handle SCENE.mausoleumEnter / mausoleumLeave / mausoleumCheck / mausoleumRevive (挑战白胡子)."""
    role = _get_role()
    op_upper = operation.upper()
    if "ENTER" in op_upper:
        cur_sid = int(role.get("scene_id", 2001) or 2001)
        if cur_sid != 4001:
            role["mausoleum_prev_scene"] = [
                cur_sid,
                int(role.get("scene_x", 361) or 361),
                int(role.get("scene_y", 35) or 35),
            ]
        if int(role.get("mausoleum_hp") or 0) <= 0:
            role["mausoleum_hp"] = 1000000
            role["mausoleum_damage"] = 0
        role.setdefault("mausoleum_weak_ts", 0.0)
        return _build_scene_change_response(correlation_id, 4001, 800, 121)

    if "LEAVE" in op_upper:
        prev = role.get("mausoleum_prev_scene") or [2001, 361, 35]
        prev_sid = int(prev[0]) if int(prev[0]) != 4001 else 2001
        return _build_scene_change_response(correlation_id, prev_sid, int(prev[1]), int(prev[2]))

    now_ts = float(int(time.time()))
    if "REVIVE" in op_upper:
        _spend_gold(role, 2)
        role["mausoleum_weak_ts"] = 0.0
        _save()
    elif "ATTACK" in op_upper or "FIGHT" in op_upper:
        dmg = 250000
        role["mausoleum_hp"] = max(0, int(role.get("mausoleum_hp", 1000000)) - dmg)
        role["mausoleum_damage"] = int(role.get("mausoleum_damage", 0)) + dmg
        role["copper"] = min(999999999.0, float(role.get("copper", 100000)) + float(dmg))
        role["prestige"] = int(role.get("prestige", 0) or 0) + max(10, int(dmg * 3 // 1000))
        _record_daily_action(10)
        _save()

    cur_hp = int(role.get("mausoleum_hp") or 1000000)
    if cur_hp <= 0:
        cur_hp = 1000000
        role["mausoleum_hp"] = cur_hp
    cur_dmg = int(role.get("mausoleum_damage", 0) or 0)
    weak_ts = float(role.get("mausoleum_weak_ts", 0.0) or 0.0)
    dmg_list = []
    if cur_dmg > 0:
        dmg_list.append(_amf3_object([
            ("role_id", _amf3_int(int(role.get("role_id", 100001)))),
            ("name",    _amf3_string(str(role.get("name", "船长")))),
            ("damage",  _amf3_double(float(cur_dmg))),
        ]))
    return _make_ack_message(correlation_id, _amf3_object([
        ("error_code",           _amf3_int(-1)),
        ("gold",                 _amf3_int(int(role.get("gold", 100000)))),
        ("max_health_point",     _amf3_double(1000000.0)),
        ("monster_health_point", _amf3_double(float(cur_hp))),
        ("server_time",          _amf3_double(now_ts)),
        ("weak_time",            _amf3_double(weak_ts)),
        ("role_damage",          _amf3_double(float(cur_dmg))),
        ("role_damage_rank",     _amf3_int(1)),
        ("damageList",           _amf3_array(dmg_list)),
    ]))







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
        ("error_code",             _amf3_int(-1)),
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
        ("error_code",            _amf3_int(-1)),
    ]
    body_amf3 = _amf3_object(fields)
    return _make_ack_message(correlation_id, body_amf3)

def _handle_forge_request(body: list, correlation_id: str, operation: str = "") -> bytes:
    role = _get_role()
    items = _get_player_items()
    if "SPIKE" in operation.upper():
        _spend_gold(role, 10)
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
    _record_daily_action(3)
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
        ("pets",         _build_pets_amf3()),
        ("request_code", _amf3_int(0)),
    ]
    body_amf3 = _amf3_object(fields)
    return _make_ack_message(correlation_id, body_amf3)


SOUL_BAG_MAX = 60


def _handle_item_request(operation: str, body: list, correlation_id: str) -> bytes:
    role = _get_role()
    items = _get_player_items()
    equipments = role.setdefault("equipments", {"weapon": 0, "armor": 0, "horse": 0, "cloak": 0, "amulet": 0, "misc": 0})
    op_lower = operation.lower()
    rewards = []

    if "itemexchage" in op_lower or "exchange" in op_lower:
        return _handle_item_exchange(correlation_id, body)

    if "soul" in op_lower:
        altar_souls = role.setdefault("soul_altar_list", [])
        bag_souls = role.setdefault("soul_bag_list", role.get("souls", []))
        role["soul_bag_list"] = bag_souls
        role["souls"] = bag_souls
        soul_alter = int(role.get("soul_alter", 1) or 1)
        if not bag_souls and not altar_souls:
            bag_souls.append({
                "soul_id": 1, "cfg_soul_id": 3, "level": 1, "exp": 0,
                "is_equiped": 0, "general_id": 0, "pos": 0, "sell_price": 14000,
            })

        def _next_soul_id():
            all_ids = [int(s.get("soul_id", 0)) for s in altar_souls + bag_souls]
            return max(all_ids + [0]) + 1

        def _soul_meta(s: dict) -> tuple[int, int, int, int]:
            cfg = config_loader.get_soul(int(s.get("cfg_soul_id", 0) or 0))
            if not cfg:
                return (2, 0, 30, 120)
            return (
                int(cfg.get("quality") or 2),
                int(cfg.get("is_exp") or 0),
                int(cfg.get("eat_exp") or 30),
                int(cfg.get("level_param") or 0),
            )

        def _apply_soul_exp(keeper: dict, fodder_list: list[dict]) -> int:
            """Feed fodder souls into keeper using cfg_soul.level_param; stop at max level 10."""
            _, is_exp_k, _, lp = _soul_meta(keeper)
            if int(keeper.get("level", 1) or 1) >= 10 or lp <= 0 or is_exp_k == 1:
                return 0
            eaten = 0
            for fodder in fodder_list:
                if int(keeper.get("level", 1) or 1) >= 10:
                    break
                if fodder is keeper or fodder.get("is_equiped"):
                    continue
                _, _, eat_exp, _ = _soul_meta(fodder)
                keeper["exp"] = int(keeper.get("exp", 0) or 0) + eat_exp + int(fodder.get("exp", 0) or 0)
                lvl = int(keeper.get("level", 1) or 1)
                while lvl < 10:
                    cost = lp * lvl
                    if keeper["exp"] >= cost:
                        keeper["exp"] -= cost
                        lvl += 1
                    else:
                        break
                if lvl >= 10:
                    keeper["level"] = 10
                    keeper["exp"] = 0
                else:
                    keeper["level"] = lvl
                bag_souls.remove(fodder)
                eaten += 1
            return eaten

        soul_err_code = -1

        if "worship" in op_lower:
            import random
            cnt = 10 if "raid" in op_lower else 1
            role["copper"] = max(0.0, float(role.get("copper", 100000)) - 10000.0 * cnt)
            rows = []
            try:
                conn = sqlite3.connect(DB_PATH)
                rows = conn.execute("SELECT cfg_soul_id, sell_price FROM cfg_soul").fetchall()
                conn.close()
            except Exception:
                pass
            for _ in range(cnt):
                if len(altar_souls) >= 16:
                    break
                cfg_sid, s_price = (int(r[0]), int(r[1] or 4200)) if not rows else random.choice(rows)
                altar_souls.append({
                    "soul_id": _next_soul_id(), "cfg_soul_id": int(cfg_sid), "level": 1, "exp": 0,
                    "is_equiped": 0, "general_id": 0, "pos": 0, "sell_price": int(s_price or 4200),
                })
                soul_alter = 1 if soul_alter >= 5 else soul_alter + 1
            role["soul_alter"] = soul_alter
            _record_daily_action(13)
            _save()
            active_list = altar_souls
        elif "getall" in op_lower:
            unequipped_cnt = sum(1 for s in bag_souls if not s.get("is_equiped"))
            remaining = []
            moved = 0
            for s in altar_souls:
                if unequipped_cnt < SOUL_BAG_MAX:
                    bag_souls.append(s)
                    unequipped_cnt += 1
                    moved += 1
                else:
                    remaining.append(s)
            altar_souls[:] = remaining
            if moved > 0:
                _record_daily_action(13)
                _save()
            elif remaining:
                soul_err_code = 0
            active_list = altar_souls
        elif "soulget" in op_lower or op_lower.endswith(".get"):
            sid = int(body[2] or 0) if isinstance(body, list) and len(body) >= 3 else 0
            picked = next((s for s in altar_souls if int(s.get("soul_id", 0)) == sid), None)
            unequipped_cnt = sum(1 for s in bag_souls if not s.get("is_equiped"))
            if picked and unequipped_cnt < SOUL_BAG_MAX:
                altar_souls.remove(picked)
                bag_souls.append(picked)
                _record_daily_action(13)
                _save()
            else:
                soul_err_code = 0
            active_list = altar_souls
        elif "combine" in op_lower:
            # 一键合成：合并未装备的低品质/经验影子 (quality <= 4 或 is_exp == 1) 到未满级(<10)最高品质影子
            unequipped = [s for s in bag_souls if not s.get("is_equiped")]
            candidates = [
                s for s in unequipped
                if int(s.get("level", 1) or 1) < 10 and _soul_meta(s)[1] == 0 and _soul_meta(s)[3] > 0
            ]
            if candidates and len(unequipped) > 1:
                candidates.sort(
                    key=lambda x: (_soul_meta(x)[0], int(x.get("level", 1) or 1), int(x.get("exp", 0) or 0)),
                    reverse=True,
                )
                keeper = candidates[0]
                fodder = [
                    s for s in unequipped
                    if s is not keeper and (_soul_meta(s)[1] == 1 or _soul_meta(s)[0] <= 4)
                ]
                fodder.sort(
                    key=lambda x: (0 if _soul_meta(x)[1] == 1 else _soul_meta(x)[0], int(x.get("level", 1) or 1), int(x.get("exp", 0) or 0))
                )
                eaten = _apply_soul_exp(keeper, fodder)
                if eaten > 0:
                    _record_daily_action(13)
                    _save()
                    print(f"  [ITEM.soulCombine] Merged {eaten} souls into soul_id={keeper['soul_id']} lvl={keeper['level']} exp={keeper['exp']}", flush=True)
                else:
                    soul_err_code = 0
            else:
                soul_err_code = 0
            active_list = bag_souls
        elif "unequip" in op_lower:
            gen_souls = role.setdefault("general_souls", {})
            SLOT_KEYS = ["main_soul", "vice_soul", "tert_soul", "fourth_soul", "fifth_soul", "sixth_soul", "seventh_soul", "eighth_soul"]
            proto_fig = _get_proto_figure(role)
            proto_gid = int(PROTAGONIST_CONFIG.get(proto_fig, {}).get("general_id", 1008))
            proto_ids = {1001, 1007, 1008, proto_fig, proto_gid}
            proto_keys = list(dict.fromkeys([str(proto_gid), str(proto_fig), "1008", "1001", "1007"]))
            known_gids = proto_ids | {int(g.get("general_id", 0)) for g in role.get("generals", []) if g.get("general_id")}

            gid = 0
            slot_idx = 0
            if isinstance(body, list) and len(body) >= 4:
                a, b = int(body[2] or 0), int(body[3] or 0)
                if 1 <= b <= 8 and (a in known_gids or a >= 1000 or str(a) in gen_souls):
                    gid, slot_idx = a, b
                elif 1 <= a <= 8 and (b in known_gids or b >= 1000 or str(b) in gen_souls):
                    slot_idx, gid = a, b

            if slot_idx and gid:
                is_p = gid in proto_ids
                target_ids = proto_ids if is_p else {gid}
                target_keys = proto_keys if is_p else [str(gid)]
                skey = SLOT_KEYS[slot_idx - 1]
                matched_sids = set()
                for tk in target_keys + [str(gid)]:
                    gs = gen_souls.get(tk)
                    if isinstance(gs, dict) and int(gs.get(skey, 0) or 0) > 0:
                        matched_sids.add(int(gs[skey]))
                        gs[skey] = 0
                for s in bag_souls:
                    s_id = int(s.get("soul_id", 0))
                    if s_id in matched_sids or (
                        int(s.get("is_equiped", 0) or 0) == 1
                        and int(s.get("general_id", 0) or 0) in target_ids
                        and int(s.get("pos", 0) or 0) == slot_idx
                    ):
                        s["is_equiped"] = 0
                        s["general_id"] = 0
                        s["pos"] = 0
                        for gs in gen_souls.values():
                            if isinstance(gs, dict):
                                for k in SLOT_KEYS:
                                    if int(gs.get(k, 0) or 0) == s_id:
                                        gs[k] = 0
                _save()
            else:
                sid = 0
                if isinstance(body, list) and len(body) >= 3:
                    for arg in body[2:]:
                        if str(arg).isdigit() and any(int(s.get("soul_id", 0)) == int(arg) for s in bag_souls):
                            sid = int(arg)
                            break
                if sid:
                    for s in bag_souls:
                        if int(s.get("soul_id", 0)) == sid:
                            s["is_equiped"] = 0
                            s["general_id"] = 0
                            s["pos"] = 0
                            break
                    for gs in gen_souls.values():
                        if isinstance(gs, dict):
                            for sk in SLOT_KEYS:
                                if int(gs.get(sk, 0) or 0) == sid:
                                    gs[sk] = 0
                    _save()
            active_list = bag_souls
        elif "eat" in op_lower:
            # 吞噬/升级影魔: 客户端发 [role_id, code, general_id, fodder_soul_id, target_soul_id]
            fodder_sid = 0
            target_sid = 0
            if isinstance(body, list):
                if len(body) >= 5:
                    fodder_sid = int(body[3] or 0)
                    target_sid = int(body[4] or 0)
                elif len(body) >= 4:
                    target_sid = int(body[2] or 0)
                    fodder_sid = int(body[3] or 0)
            keeper = next((s for s in bag_souls if int(s.get("soul_id", 0)) == target_sid), None)
            fodder = next((s for s in bag_souls if int(s.get("soul_id", 0)) == fodder_sid), None)
            if keeper and fodder and keeper is not fodder and not fodder.get("is_equiped"):
                eaten = _apply_soul_exp(keeper, [fodder])
                if eaten > 0:
                    _record_daily_action(13)
                    _save()
                    print(f"  [ITEM.soulEat] soul_id={keeper['soul_id']} ate soul_id={fodder_sid} -> lvl={keeper['level']} exp={keeper['exp']}", flush=True)
                else:
                    soul_err_code = 0
                    print(f"  [ITEM.soulEat] Skipped eat: soul_id={target_sid} already lvl={keeper.get('level')} (max 10)", flush=True)
            else:
                soul_err_code = 0
            active_list = bag_souls
        elif any(k in op_lower for k in ("equip", "wear", "put", "using", "use")):
            gen_souls = role.setdefault("general_souls", {})
            proto_fig = _get_proto_figure(role)
            proto_gid = int(PROTAGONIST_CONFIG.get(proto_fig, {}).get("general_id", 1008))
            proto_ids = {1001, 1007, 1008, proto_fig, proto_gid}
            proto_keys = list(dict.fromkeys([str(proto_gid), str(proto_fig), "1008", "1001", "1007"]))
            known_gids = proto_ids | {int(g.get("general_id", 0)) for g in role.get("generals", []) if g.get("general_id")}
            bag_sids = {int(s.get("soul_id", 0)) for s in bag_souls}

            gid = proto_gid
            sid = 0
            slot_idx = 1
            if isinstance(body, list) and len(body) >= 4:
                a, b = int(body[2] or 0), int(body[3] or 0)
                if a in known_gids and b in bag_sids:
                    gid, sid = a, b
                elif a in bag_sids:
                    sid, gid = a, b
                else:
                    gid, sid = a, b
                if len(body) >= 5 and str(body[4]).isdigit():
                    slot_idx = max(1, min(8, int(body[4])))
            SLOT_KEYS = ["main_soul", "vice_soul", "tert_soul", "fourth_soul", "fifth_soul", "sixth_soul", "seventh_soul", "eighth_soul"]
            skey = SLOT_KEYS[slot_idx - 1]
            is_p = gid in proto_ids
            target_ids = proto_ids if is_p else {gid}
            target_keys = proto_keys if is_p else [str(gid)]

            # Evict any soul currently occupying (gid, slot_idx)
            old_sids = set()
            for tk in target_keys:
                gs = gen_souls.get(tk)
                if isinstance(gs, dict) and int(gs.get(skey, 0) or 0) > 0:
                    old_sids.add(int(gs[skey]))
            old_sids.discard(sid)
            for s in bag_souls:
                s_id = int(s.get("soul_id", 0))
                if s_id in old_sids or (
                    s_id != sid
                    and int(s.get("is_equiped", 0) or 0) == 1
                    and int(s.get("general_id", 0) or 0) in target_ids
                    and int(s.get("pos", 0) or 0) == slot_idx
                ):
                    s["is_equiped"] = 0
                    s["general_id"] = 0
                    s["pos"] = 0

            # Clear sid from any previous slot before equipping into target slot
            for gs in gen_souls.values():
                if isinstance(gs, dict):
                    for k in SLOT_KEYS:
                        if int(gs.get(k, 0) or 0) == sid:
                            gs[k] = 0

            for s in bag_souls:
                if int(s.get("soul_id", 0)) == sid:
                    s["is_equiped"] = 1
                    s["general_id"] = proto_gid if is_p else gid
                    s["pos"] = slot_idx
                    for tk in target_keys:
                        gen_souls.setdefault(tk, {})[skey] = sid
                    break
            _save()
            active_list = bag_souls
        elif "sellall" in op_lower:
            gained = sum(int(s.get("sell_price", 4200)) for s in altar_souls)
            altar_souls.clear()
            role["copper"] = min(999999999.0, float(role.get("copper", 100000)) + float(gained))
            _record_daily_action(13)
            _save()
            active_list = altar_souls
        elif "sell" in op_lower:
            sid = int(body[2] or 0) if isinstance(body, list) and len(body) >= 3 else 0
            target = next((s for s in altar_souls if int(s.get("soul_id", 0)) == sid), None)
            if target:
                altar_souls.remove(target)
                role["copper"] = min(999999999.0, float(role.get("copper", 100000)) + float(target.get("sell_price", 4200)))
                _record_daily_action(13)
                _save()
                active_list = altar_souls
            else:
                b_target = next((s for s in bag_souls if int(s.get("soul_id", 0)) == sid and not s.get("is_equiped")), None)
                if b_target:
                    bag_souls.remove(b_target)
                    role["copper"] = min(999999999.0, float(role.get("copper", 100000)) + float(b_target.get("sell_price", 4200)))
                    _record_daily_action(13)
                    _save()
                active_list = bag_souls
        elif "bag" in op_lower:
            active_list = bag_souls
        else:
            active_list = altar_souls

        gen_souls = role.get("general_souls", {})
        SLOT_KEYS = ["main_soul", "vice_soul", "tert_soul", "fourth_soul", "fifth_soul", "sixth_soul", "seventh_soul", "eighth_soul"]
        proto_fig = _get_proto_figure(role)
        proto_gid = int(PROTAGONIST_CONFIG.get(proto_fig, {}).get("general_id", 1008))
        proto_ids = {1001, 1007, 1008, proto_fig, proto_gid}

        # Reconcile bag_souls <-> general_souls so place/is_equiped and general slots match
        is_altar = (active_list is altar_souls)
        if not is_altar:
            bag_sids = {int(s.get("soul_id", 0)): s for s in bag_souls}
            for gk, gs in list(gen_souls.items()):
                if not isinstance(gs, dict):
                    continue
                try:
                    g_num = int(gk)
                except ValueError:
                    continue
                for idx_s, sk in enumerate(SLOT_KEYS, 1):
                    sid_v = int(gs.get(sk, 0) or 0)
                    if sid_v > 0 and sid_v in bag_sids:
                        sb = bag_sids[sid_v]
                        if int(sb.get("is_equiped", 0) or 0) != 1:
                            sb["is_equiped"] = 1
                            sb["general_id"] = proto_gid if g_num in proto_ids else g_num
                            sb["pos"] = idx_s
                    elif sid_v > 0:
                        gs[sk] = 0

        gen_objs = []
        seen_gids = set()
        for g in [{"general_id": proto_gid}, {"general_id": 1008}, {"general_id": 1001}] + list(role.get("generals", [])):
            gid = int(g.get("general_id", proto_fig))
            if gid in seen_gids:
                continue
            seen_gids.add(gid)
            gs = gen_souls.get(str(gid), {})
            g_fields = [("general_id", _amf3_int(gid))]
            for sk in SLOT_KEYS:
                g_fields.append((sk, _amf3_int(int(gs.get(sk, 0)))))
            gen_objs.append(_amf3_object(g_fields))
        soul_objs = [
            _amf3_object([
                ("soul_id",     _amf3_int(int(s.get("soul_id", 1)))),
                ("cfg_soul_id", _amf3_int(int(s.get("cfg_soul_id", 1)))),
                ("level",       _amf3_int(int(s.get("level", 1)))),
                ("experience",  _amf3_int(int(s.get("exp", 0)))),
                ("exp",         _amf3_int(int(s.get("exp", 0)))),
                ("equiped",     _amf3_bool(bool(s.get("is_equiped", 0)))),
                ("is_equiped",  _amf3_bool(bool(s.get("is_equiped", 0)))),
                ("general_id",  _amf3_int(int(s.get("general_id", 0)))),
                ("place",       _amf3_int(0 if is_altar else (2 if s.get("is_equiped") else 1))),
                ("pos",         _amf3_int(int(s.get("pos", 0)) or (idx + 1))),
                ("sell_price",  _amf3_int(int(s.get("sell_price", 4200)))),
            ]) for idx, s in enumerate(active_list)
        ]
        return _make_ack_message(correlation_id, _amf3_object([
            ("error_code",   _amf3_int(soul_err_code)),
            ("copper",       _amf3_double(float(role.get("copper", 100000)))),
            ("gold",         _amf3_int(int(role.get("gold", 100000)))),
            ("sell_price",   _amf3_int(sum(int(s.get("sell_price", 4200)) for s in active_list))),
            ("soul_alter",   _amf3_double(float(soul_alter))),
            ("soul_list",    _amf3_array(soul_objs)),
            ("general_list", _amf3_array(gen_objs)),
        ]))

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

        target_item = next((it for it in items if it.get("item_id") == item_id), None)
        item_err_code = -1

        if not target_item:
            item_err_code = 268
        else:
            cfg_id = int(target_item.get("cfg_item_id", 0) or 0)
            cfg = config_loader.get_item(cfg_id)
            item_type = int(cfg.get("type", 0) or 0) if cfg else 0
            eff_type = int(cfg.get("effect_type", 0) or 0) if cfg else 0
            eff_val = int(cfg.get("effect_value", 0) or 0) if cfg else 0
            part = _get_item_part(target_item)

            if item_type == 2 and eff_type == 0 and part in SLOT_NAME_MAP:
                slot_name = SLOT_NAME_MAP[part]
                is_proto = (target_gen_id in proto_ids)
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
                _save()
            elif item_type == 4:
                # 贝壳只能在装备镶嵌界面使用
                item_err_code = 2004
                print(f"  [ITEM.using] Rejected shell {item_id} (cfg {cfg_id}) in bag", flush=True)
            elif item_type in (1, 5, 6, 7, 8, 11, 12) or (eff_type == 0) or (item_type == 2 and eff_type == 11):
                # 只能在特定界面消耗的材料/卷轴/打捞绳/训练药水/酒杯/海魂石/修炼结晶/碎片等
                item_err_code = 268
                print(f"  [ITEM.using] Rejected non-bag item {item_id} (cfg {cfg_id}, type={item_type}, eff={eff_type})", flush=True)
            else:
                avail_amt = max(1, int(target_item.get("amount", 1) or 1))
                use_count = avail_amt if ("all" in op_lower) else 1
                consumed = 0

                def _consume(n: int) -> None:
                    rem = avail_amt - n
                    if rem <= 0:
                        items.remove(target_item)
                    else:
                        target_item["amount"] = rem

                SILVER_CARDS = {300053: 5000, 300054: 10000, 300055: 20000, 300056: 50000, 300057: 100000}
                PACK_CONTENTS = {
                    300063: (20, [(300053, 10), (300064, 1), (200002, 1)]),
                    300064: (30, [(300065, 1), (200048, 1)]),
                    300065: (40, [(300066, 1), (300053, 50), (300061, 3)]),
                    300066: (40, [(300067, 1), (300053, 50), (300061, 5), (300033, 2)]),
                    300067: (50, [(300068, 1), (300053, 50), (300061, 5)]),
                    300068: (50, [(300069, 1), (300053, 50), (300061, 5)]),
                    300069: (50, [(300070, 1), (300053, 50), (300061, 10)]),
                    300070: (50, [(300071, 1), (300053, 50), (300061, 10)]),
                    300071: (100, [(300072, 1), (300054, 50), (300061, 10)]),
                    300072: (100, [(300073, 1), (300054, 100), (300061, 10)]),
                    300073: (100, [(300054, 100), (300061, 10)]),
                    300074: (0, [(300002, 1), (300057, 2), (300049, 1), (300084, 1)]),
                    300084: (0, [(200039, 1)]),
                    300097: (0, [(300057, 1), (300081, 1)]),
                    300133: (0, [(300033, 2), (300038, 2), (300041, 3)]),
                    300134: (0, [(300034, 2), (300038, 4), (300041, 5)]),
                    300135: (0, [(300035, 2), (300038, 5), (300041, 8)]),
                    300245: (0, [(300003, 1), (300004, 1), (300005, 1), (300006, 1), (300007, 1), (300008, 1)]),
                    300246: (0, [(300009, 1), (300010, 1), (300011, 1), (300012, 1), (300013, 1), (300014, 1)]),
                    300247: (0, [(300015, 1), (300016, 1), (300017, 1), (300018, 1), (300019, 1), (300020, 1)]),
                    300248: (0, [(300021, 1), (300022, 1), (300023, 1), (300024, 1), (300025, 1), (300026, 1)]),
                }

                if eff_type == 2 and eff_val > 0:
                    gain_ap = eff_val * use_count
                    role["action_point"] = int(role.get("action_point", 100)) + gain_ap
                    rewards.append({"type": 3, "value": int(gain_ap)})
                    consumed = use_count
                elif eff_type in (3, 25) and eff_val > 0:
                    gain_p = eff_val * use_count
                    role["prestige"] = int(role.get("prestige", 1000)) + gain_p
                    consumed = use_count
                elif eff_type == 1 and eff_val > 0:
                    gain_c = eff_val * 100 * use_count
                    role["copper"] = min(999999999.0, float(role.get("copper", 100000)) + float(gain_c))
                    rewards.append({"type": 0, "value": int(gain_c)})
                    consumed = use_count
                elif eff_type == 33 and eff_val > 0:
                    role["diamond"] = int(role.get("diamond", 0) or 0) + eff_val * use_count
                    consumed = use_count
                elif eff_type == 34 and eff_val > 0:
                    role["honor"] = int(role.get("honor", 1000) or 0) + eff_val * use_count
                    consumed = use_count
                elif eff_type == 35 and eff_val > 0:
                    role["orange_crystal"] = int(role.get("orange_crystal", 100) or 0) + eff_val * use_count
                    consumed = use_count
                elif eff_type == 36 and eff_val > 0:
                    role["red_crystal"] = int(role.get("red_crystal", 100) or 0) + eff_val * use_count
                    consumed = use_count
                elif eff_type == 27 and eff_val > 0:
                    role["god_war_bless"] = int(role.get("god_war_bless", 0) or 0) + eff_val * use_count
                    consumed = use_count
                elif eff_type == 26:
                    if int(role.get("level", 1)) < 45:
                        item_err_code = 268
                    else:
                        role["orange_crystal"] = int(role.get("orange_crystal", 100) or 0) + 10 * use_count
                        consumed = use_count
                elif eff_type == 24 and eff_val > 0:
                    bag_souls = role.setdefault("soul_bag_list", role.get("souls", []))
                    role["soul_bag_list"] = bag_souls
                    role["souls"] = bag_souls
                    altar_souls = role.setdefault("soul_altar_list", [])
                    unequipped_cnt = sum(1 for s in bag_souls if not s.get("is_equiped"))
                    scfg = config_loader.get_soul(eff_val)
                    s_price = int(scfg.get("sell_price") or 4200) if scfg else 4200
                    for _ in range(use_count):
                        if unequipped_cnt >= SOUL_BAG_MAX:
                            break
                        new_sid = max([int(s.get("soul_id", 0)) for s in altar_souls + bag_souls] + [0]) + 1
                        bag_souls.append({
                            "soul_id": new_sid, "cfg_soul_id": eff_val, "level": 1, "exp": 0,
                            "is_equiped": 0, "general_id": 0, "pos": 0, "sell_price": s_price,
                        })
                        unequipped_cnt += 1
                        consumed += 1
                    if consumed == 0:
                        item_err_code = 268
                elif eff_type == 13 and eff_val > 0:
                    for _ in range(use_count):
                        _add_pet_from_cfg(eff_val)
                    consumed = use_count
                elif eff_type == 21 and eff_val > 0:
                    comp = next((g for g in role.get("generals", []) if int(g.get("general_id", 0)) == int(target_gen_id or 0)), None)
                    if comp:
                        comp["exp"] = int(comp.get("exp", comp.get("experience", 0)) or 0) + eff_val * use_count
                        comp["experience"] = comp["exp"]
                        consumed = use_count
                    else:
                        item_err_code = 268
                elif eff_type == 11 and eff_val > 0:
                    if avail_amt >= 99:
                        _add_item_to_bag(eff_val, 1)
                        consumed = 99
                    else:
                        item_err_code = 268
                elif cfg_id in SILVER_CARDS:
                    gain_c = SILVER_CARDS[cfg_id] * use_count
                    role["copper"] = min(999999999.0, float(role.get("copper", 100000)) + float(gain_c))
                    rewards.append({"type": 0, "value": int(gain_c)})
                    consumed = use_count
                elif cfg_id == 300076:
                    gain_g = 10 * use_count
                    role["gold"] = int(role.get("gold", 5000)) + gain_g
                    rewards.append({"type": 1, "value": gain_g})
                    consumed = use_count
                elif cfg_id in PACK_CONTENTS:
                    g_gold, drop_list = PACK_CONTENTS[cfg_id]
                    if g_gold > 0:
                        role["gold"] = int(role.get("gold", 5000)) + g_gold * use_count
                        rewards.append({"type": 1, "value": g_gold * use_count})
                    for d_cid, d_amt in drop_list:
                        _add_item_to_bag(d_cid, d_amt * use_count)
                    consumed = use_count
                elif eff_type in (8, 23):
                    # Generic chest/box fallback -> random shell or silver card
                    for _ in range(use_count):
                        _add_item_to_bag(random.choice([500001, 500061, 500051, 300054]), 1)
                    consumed = use_count
                elif item_type == 9 and eff_type >= 9000:
                    role["food"] = int(role.get("food", 0) or 0) + eff_val * use_count
                    consumed = use_count
                else:
                    item_err_code = 268
                    print(f"  [ITEM.using] Rejected unsupported item {item_id} (cfg {cfg_id}, type={item_type}, eff={eff_type})", flush=True)

                if consumed > 0:
                    _consume(consumed)
                    _save()
                    print(f"  [ITEM.using] Consumed {consumed}x item {item_id} (cfg {cfg_id}, eff={eff_type})", flush=True)
        return _build_item_response(correlation_id, error_code=item_err_code, rewards=rewards)

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

    elif "upgrade" in op_lower and isinstance(body, list) and len(body) >= 4 and int(body[2] or 0) >= 100000:
        target_cfg_id = int(body[2])
        mat_item_id = int(body[3])
        for it in list(items):
            if int(it.get("item_id", 0)) == mat_item_id:
                amt = int(it.get("amount", 1))
                if amt <= 1:
                    items.remove(it)
                else:
                    it["amount"] = amt - 1
                break
        _add_item_to_bag(target_cfg_id, 1)
        _record_daily_action(29)
        _save()
        print(f"  [ITEM.upgrade] Crafted cfg_item_id={target_cfg_id} consuming item_id={mat_item_id}", flush=True)
        return _build_item_response(correlation_id, error_code=-1, rewards=[{"type": 2, "value": target_cfg_id}])

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
            if part in SLOT_NAME_MAP:
                sname = SLOT_NAME_MAP[part]
                if is_proto:
                    equipments[sname] = 0
                else:
                    for g in role.get("generals", []):
                        if int(g.get("general_id", 0)) == int(target_gen_id):
                            g[sname] = 0
                            break
            print(f"  [UNEQUIP] Unequipped item {target_item.get('item_id')} (cfg {target_item.get('cfg_item_id')}, part {part}) from general {target_gen_id}", flush=True)
        _save()

    elif "melt" in op_lower:
        item_id = None
        if isinstance(body, list) and len(body) >= 3 and str(body[2]).isdigit():
            item_id = int(body[2])
        elif isinstance(body, list) and len(body) >= 1 and str(body[-1]).isdigit():
            item_id = int(body[-1])
        target_item = None
        for it in items:
            if item_id is not None and int(it.get("item_id", 0)) == item_id:
                target_item = it
                break
        if target_item:
            if target_item.get("equiped"):
                part = _get_item_part(target_item)
                if part in SLOT_NAME_MAP and equipments.get(SLOT_NAME_MAP[part]) == target_item.get("item_id"):
                    equipments[SLOT_NAME_MAP[part]] = 0
            items.remove(target_item)
            _add_item_to_bag(300056, 2)
            role["copper"] = min(999999999.0, float(role.get("copper", 100000)) + 5000.0)
            rewards.append({"type": 0, "value": 5000})
            _record_daily_action(28)
            _save()
            print(f"  [ITEM.melt] Melted item {item_id} -> +2 cfg_300056 & +5000 copper", flush=True)
        return _build_item_response(correlation_id, error_code=-1, rewards=rewards)

    if "haki" in op_lower:
        haki_list = [
            _amf3_object([
                ("haki_id",     _amf3_int(1)),
                ("refine_left", _amf3_int(10)),
                ("is_equiped",  _amf3_bool(True)),
                ("refine_add",  _amf3_int(10)),
            ])
        ]
        return _make_ack_message(correlation_id, _amf3_object([
            ("error_code",    _amf3_int(-1)),
            ("copper",        _amf3_double(float(role.get("copper", 100000)))),
            ("gold",          _amf3_int(int(role.get("gold", 100000)))),
            ("refine_left",   _amf3_int(10)),
            ("refine_result", _amf3_int(1)),
            ("haki_list",     _amf3_array(haki_list)),
        ]))

    if "melt" in op_lower:
        _record_daily_action(28)
        _save()
    elif "rise" in op_lower:
        _record_daily_action(29)
        _save()
    elif "upgrade" in op_lower:
        _record_daily_action(3)
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
    disp_fig, disp_face = _get_display_figure(role)

    fields = [
        ("error_code",              _amf3_int(-1)),
        ("request_code",            _amf3_int(0)),
        ("role_id",                 _amf3_int(role["role_id"])),
        ("name",                    _amf3_string(role["name"])),
        ("level",                   _amf3_int(role["level"])),
        ("face",                    _amf3_int(disp_face)),
        ("figure",                  _amf3_int(disp_fig)),
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
            t_cfg = get_task(current) if current else None
            if t_cfg and _is_task_condition_met(role, t_cfg):
                role["task_completed"] = True
                print(f"  [TASK] Accepted task {current} (type={t_cfg.get('complete_type')}) -> condition already satisfied!", flush=True)
            else:
                role["task_completed"] = False
                print(f"  [TASK] Accepted task {current}", flush=True)
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


def _handle_bot_request(operation: str, body: Any, correlation_id: str) -> bytes:
    """Handle ROLE.botCheck / ROLE.botStart matching OPDataManager::opBotCheck."""
    role = _get_role()
    now_ts = float(int(time.time()))
    if "START" in operation.upper():
        role["copper"] = min(999999999.0, float(role.get("copper", 100000)) + 50000.0)
        role["exp"] = int(role.get("exp", 0)) + 20000
        role["experience"] = role["exp"]
        _save()
    return _make_ack_message(correlation_id, _amf3_object([
        ("error_code",     _amf3_int(-1)),
        ("copper",         _amf3_double(float(role.get("copper", 100000)))),
        ("bot_copper",     _amf3_int(50000)),
        ("bot_experience", _amf3_int(20000)),
        ("start_time",     _amf3_double(now_ts - 3600.0)),
        ("end_time",       _amf3_double(now_ts)),
        ("server_time",    _amf3_double(now_ts)),
    ]))


def _handle_ancient_dragon_request(operation: str, body: Any, correlation_id: str) -> bytes:
    """Handle ACTIVITY/SKYLADDER.AncientDragon / Start / Promote / Reward matching onAncientDragonData."""
    role = _get_role()
    op_upper = operation.upper()
    dragon = role.setdefault("ancient_dragon", {
        "dragon_period": 1, "dragon_quality": 4, "dragon_count": 0,
        "level": 1, "left_count": 5, "is_start": 0,
        "is_can_promoted": 1, "is_get_reward": 0, "promte_state": 1,
    })
    if "REWARD" in op_upper:
        period = max(1, min(5, int(dragon.get("dragon_period", 1) or 1)))
        role["red_crystal"] = int(role.get("red_crystal", 100) or 0) + 10 * period
        role["orange_crystal"] = int(role.get("orange_crystal", 100) or 0) + 15 * period
        role["prestige"] = int(role.get("prestige", 1000) or 1000) + 250 * period
        dragon["is_start"] = 0
        dragon["is_get_reward"] = 0
        dragon["dragon_period"] = 1
        dragon["is_can_promoted"] = 1
        dragon["promte_state"] = 1
        _save()
    elif "PROMOTE" in op_upper:
        req_type = int(body[2]) if isinstance(body, list) and len(body) > 2 and str(body[2]).isdigit() else 1
        if req_type >= 2:
            _spend_gold(role, 20)
        next_p = min(5, max(1, int(dragon.get("dragon_period", 1) or 1)) + 1)
        dragon["dragon_quality"] = min(5, max(4, next_p))
        dragon["dragon_period"] = next_p
        dragon["is_start"] = 1
        dragon["is_get_reward"] = 1
        dragon["is_can_promoted"] = 1 if next_p < 5 else 0
        dragon["promte_state"] = 1
        role["prestige"] = int(role.get("prestige", 1000) or 1000) + 200
        _save()
    elif "START" in op_upper:
        left_c = int(dragon.get("left_count", 5) or 0)
        if left_c <= 0:
            _spend_gold(role, 10)
        else:
            dragon["left_count"] = left_c - 1
        dragon["is_start"] = 1
        dragon["is_get_reward"] = 1
        dragon["is_can_promoted"] = 1
        dragon["promte_state"] = 1
        dragon["dragon_period"] = max(1, min(5, int(dragon.get("dragon_period", 1) or 1)))
        dragon["dragon_count"] = max(1, int(dragon.get("dragon_count", 0) or 0) + 1)
        dragon["level"] = min(10, int(dragon.get("level", 1) or 1) + 1)
        role["prestige"] = int(role.get("prestige", 1000) or 1000) + 300
        _save()
    return _make_ack_message(correlation_id, _amf3_object([
        ("error_code",      _amf3_int(-1)),
        ("red_crystal",     _amf3_int(int(role.get("red_crystal", 100)))),
        ("orange_crystal",  _amf3_int(int(role.get("orange_crystal", 100)))),
        ("dragon_period",   _amf3_int(max(1, min(5, int(dragon.get("dragon_period", 1) or 1))))),
        ("dragon_quality",  _amf3_int(int(dragon.get("dragon_quality", 4)))),
        ("dragon_count",    _amf3_double(float(max(0, int(dragon.get("dragon_count", 0) or 0))))),
        ("gold",            _amf3_double(float(role.get("gold", 100000)))),
        ("level",           _amf3_int(int(dragon.get("level", 1)))),
        ("left_count",      _amf3_int(int(dragon.get("left_count", 5)))),
        ("is_start",        _amf3_bool(bool(dragon.get("is_start", 0)))),
        ("is_can_promoted", _amf3_bool(bool(dragon.get("is_can_promoted", 1)))),
        ("is_get_reward",   _amf3_bool(bool(dragon.get("is_get_reward", 0)))),
        ("exploit",         _amf3_double(float(role.get("prestige", 1000) or 1000))),
        ("promte_state",    _amf3_bool(bool(dragon.get("promte_state", 1)))),
    ]))


def _handle_general_advance_request(operation: str, body: Any, correlation_id: str) -> bytes:
    """Handle GENERAL.generalAdvancedList / generalAdvancedStart matching opGeneralAdvance."""
    role = _get_role()
    op_upper = operation.upper()
    adv_rows = []
    try:
        conn = sqlite3.connect(DB_PATH)
        adv_rows = conn.execute(
            "SELECT old_id, new_id, orange_hj, red_hj, need_exploit FROM cfg_general_advance"
        ).fetchall()
        conn.close()
    except Exception:
        pass
    adv_by_old = {int(r[0]): r for r in adv_rows}

    if "START" in op_upper:
        req_gid = 0
        if isinstance(body, list) and len(body) > 2 and str(body[2]).lstrip("-").isdigit():
            req_gid = int(body[2])
        elif isinstance(body, dict):
            req_gid = int(body.get("3_generalId", body.get("generalId", 0)) or 0)
        target_gen = None
        for g in role.get("generals", []):
            if int(g.get("general_id", 0)) == req_gid or int(g.get("cfg_general_id", 0)) == req_gid:
                target_gen = g
                break
        if target_gen is not None:
            old_cfg = int(target_gen.get("cfg_general_id", target_gen.get("general_id", 0)))
            adv_row = adv_by_old.get(old_cfg)
            if adv_row:
                _, new_cfg, orange_need, red_need, exp_need = adv_row
                role["orange_crystal"] = max(0, int(role.get("orange_crystal", 100) or 0) - int(orange_need or 0))
                role["red_crystal"] = max(0, int(role.get("red_crystal", 100) or 0) - int(red_need or 0))
                role["prestige"] = max(0, int(role.get("prestige", 1000) or 0) - min(int(exp_need or 0), int(role.get("prestige", 0) or 0)))
                target_gen["cfg_general_id"] = int(new_cfg)
                try:
                    conn = sqlite3.connect(DB_PATH)
                    grow = conn.execute(
                        "SELECT name, figure, face, quality, cfg_skill_id FROM cfg_general WHERE cfg_general_id = ?",
                        (int(new_cfg),),
                    ).fetchone()
                    conn.close()
                    if grow:
                        target_gen["name"] = str(grow[0])
                        target_gen["figure"] = int(grow[1])
                        target_gen["face"] = int(grow[2])
                        target_gen["quality"] = int(grow[3])
                        target_gen["skill_id"] = int(grow[4])
                except Exception:
                    pass
            target_gen["is_advanced"] = 1
            for k in ("str_grow_add", "agi_grow_add", "sta_grow_add", "int_grow_add"):
                target_gen[k] = int(target_gen.get(k, 0) or 0) + 5
            _sync_diary_unlocks(role)
            _save()

    owned_by_cfg = {int(g.get("cfg_general_id", g.get("general_id", 0))): g for g in role.get("generals", [])}
    adv_list = []
    seen_old = set()
    for old_id, new_id, *_ in adv_rows:
        old_id, new_id = int(old_id), int(new_id)
        seen_old.add(old_id)
        g = owned_by_cfg.get(old_id) or owned_by_cfg.get(new_id)
        adv_list.append(_amf3_object([
            ("old_general_id",       _amf3_int(old_id)),
            ("new_general_id",       _amf3_int(new_id)),
            ("level",                _amf3_int(int(g.get("level", 1)) if g else 1)),
            ("is_advanced",          _amf3_bool(bool(g and (int(g.get("cfg_general_id", 0)) == new_id or g.get("is_advanced"))))),
            ("is_have_this_general", _amf3_bool(bool(g))),
            ("strGrowAdd",           _amf3_double(float(g.get("str_grow_add", 0)) if g else 0.0)),
            ("agiGrowAdd",           _amf3_double(float(g.get("agi_grow_add", 0)) if g else 0.0)),
            ("staGrowAdd",           _amf3_double(float(g.get("sta_grow_add", 0)) if g else 0.0)),
            ("intGrowAdd",           _amf3_double(float(g.get("int_grow_add", 0)) if g else 0.0)),
        ]))
    for g in role.get("generals", []):
        gid = int(g.get("cfg_general_id", g.get("general_id", 1001)))
        if gid not in seen_old:
            adv_list.append(_amf3_object([
                ("old_general_id",       _amf3_int(gid)),
                ("new_general_id",       _amf3_int(gid)),
                ("level",                _amf3_int(int(g.get("level", 1)))),
                ("is_advanced",          _amf3_bool(bool(g.get("is_advanced", 0)))),
                ("is_have_this_general", _amf3_bool(True)),
                ("strGrowAdd",           _amf3_double(float(g.get("str_grow_add", 0)))),
                ("agiGrowAdd",           _amf3_double(float(g.get("agi_grow_add", 0)))),
                ("staGrowAdd",           _amf3_double(float(g.get("sta_grow_add", 0)))),
                ("intGrowAdd",           _amf3_double(float(g.get("int_grow_add", 0)))),
            ]))
    return _make_ack_message(correlation_id, _amf3_object([
        ("error_code",           _amf3_int(-1)),
        ("orange_crystal",       _amf3_int(int(role.get("orange_crystal", 100)))),
        ("red_crystal",          _amf3_int(int(role.get("red_crystal", 100)))),
        ("blue_fame",            _amf3_int(int(role.get("blue_fame", 1000)))),
        ("exploit",              _amf3_int(int(role.get("prestige", 1000) or 1000))),
        ("advance_general_list", _amf3_array(adv_list)),
    ]))


def _handle_team_request(operation: str, body: Any, correlation_id: str) -> bytes:
    """Handle CAMP.team / teamCreate / teamStart / teamCount / teamCountCharge matching opTeam & getTeamStart."""
    role = _get_role()
    op_upper = operation.upper()
    if "COUNTCHARGE" in op_upper:
        _spend_gold(role, 10)
        role["team_count"] = int(role.get("team_count", 3) or 3) + 1
        _save()
    members = [_amf3_object([
        ("role_id",   _amf3_int(int(role.get("role_id", 100001)))),
        ("name",      _amf3_string(str(role.get("name", "船长")))),
        ("role_face", _amf3_int(int(role.get("figure", 1008)))),
        ("is_leader", _amf3_bool(True)),
        ("officium",  _amf3_int(int(role.get("officium", 1)))),
    ])]
    if "START" in op_upper or "FIGHT" in op_upper:
        _record_daily_action(16)
        role["prestige"] = int(role.get("prestige", 1000) or 1000) + 500
        _grant_role_exp(role, 5000)
        _save()
        att_entry = _amf3_object([
            ("role_id",   _amf3_int(int(role.get("role_id", 100001)))),
            ("name",      _amf3_string(str(role.get("name", "船长")))),
            ("role_name", _amf3_string(str(role.get("name", "船长")))),
            ("level",     _amf3_int(int(role.get("level", 1)))),
            ("face",      _amf3_int(int(role.get("figure", 1008)))),
        ])
        def_entry = _amf3_object([
            ("role_id",   _amf3_int(95001)),
            ("name",      _amf3_string("巴基海贼团")),
            ("role_name", _amf3_string("巴基海贼团")),
            ("level",     _amf3_int(max(10, int(role.get("level", 10))))),
            ("face",      _amf3_int(10011)),
        ])
        prep_data = _amf3_object([
            ("legion_battle_id",      _amf3_int(1)),
            ("legion_attack_id",      _amf3_int(int(role.get("role_id", 100001)))),
            ("legion_denfender_id",   _amf3_int(95001)),
            ("legion_attack_name",    _amf3_string(str(role.get("name", "船长")))),
            ("legion_denfender_name", _amf3_string("巴基海贼团")),
            ("list_attacker",         _amf3_array([att_entry])),
            ("list_defender",         _amf3_array([def_entry])),
        ])
        end_data = _amf3_object([
            ("winner_side",       _amf3_int(1)),
            ("reward_exploit",    _amf3_int(500)),
            ("reward_experience", _amf3_int(5000)),
            ("legion_id",         _amf3_int(1)),
            ("score_change",      _amf3_int(20)),
            ("reward_list",       _amf3_array([])),
        ])
        return _make_ack_message(correlation_id, _amf3_object([
            ("error_code",                    _amf3_int(-1)),
            ("count",                         _amf3_int(int(role.get("team_count", 3) or 3))),
            ("member_list",                   _amf3_array(members)),
            ("legion_battle_prepare_data",    prep_data),
            ("legion_battle_end_data",        end_data),
            ("legion_battle_round_data_list", _amf3_array([])),
            ("role_data",                     _build_role_data()),
            ("winner_side",                   _amf3_int(1)),
            ("reward_exploit",                _amf3_int(500)),
            ("reward_experience",             _amf3_int(5000)),
            ("score_change",                  _amf3_int(20)),
            ("reward_list",                   _amf3_array([])),
        ]))
    return _make_ack_message(correlation_id, _amf3_object([
        ("error_code",  _amf3_int(-1)),
        ("count",       _amf3_int(int(role.get("team_count", 3) or 3))),
        ("member_list", _amf3_array(members)),
    ]))


def _handle_challenge_request(operation: str, body: Any, correlation_id: str) -> bytes:
    """Handle ROLE.challenge / challengeBattle / challengeSpike matching onChallenge & onChallengeSpike (Daily #12)."""
    role = _get_role()
    op_upper = operation.upper()
    now_ts = float(int(time.time()))
    if "SPIKE" in op_upper:
        _spend_gold(role, 10)
        _record_daily_action(12)
        role["prestige"] = int(role.get("prestige", 1000) or 1000) + 100
        _save()
        return _make_ack_message(correlation_id, _amf3_object([
            ("error_code", _amf3_int(-1)),
            ("gold",       _amf3_int(int(role.get("gold", 0)))),
        ]))
    if "BATTLE" in op_upper:
        _record_daily_action(12)
        role["prestige"] = int(role.get("prestige", 1000) or 1000) + 100
        _save()
        return _build_battle_result_response(correlation_id, 10101, win=True)
    lvl = max(10, int(role.get("level", 10) or 10))
    ch_list = [_amf3_object([
        ("idx",         _amf3_int(i + 1)),
        ("name",        _amf3_string(n)),
        ("level",       _amf3_int(lvl + i * 2)),
        ("prize",       _amf3_int(10000 + i * 5000)),
        ("score",       _amf3_int(100 + i * 20)),
        ("replay_name", _amf3_string("")),
        ("winner",      _amf3_int(0)),
        ("act_time",    _amf3_double(now_ts)),
    ]) for i, n in enumerate(["亚尔丽塔擂主", "克洛擂主", "巴基擂主", "阿龙擂主"])]
    return _make_ack_message(correlation_id, _amf3_object([
        ("error_code",     _amf3_int(-1)),
        ("server_time",    _amf3_double(now_ts)),
        ("cooldown",       _amf3_double(0.0)),
        ("count",          _amf3_int(10)),
        ("challenge_list", _amf3_array(ch_list)),
        ("change_list",    _amf3_array([])),
    ]))


def _handle_colosseum_request(operation: str, body: Any, correlation_id: str) -> bytes:
    """Handle ACTIVITY.Colosseum / StartColosseum / ChangeColosseum / GetColosseumReward (Assistant #12, Daily #12)."""
    import random
    role = _get_role()
    op_upper = operation.upper()
    now_ts = float(int(time.time()))
    col = role.setdefault("colosseum", {
        "pos": [1, 2, 3, 4, 5, 6],
        "colosseum_account": 5,
        "colosseum_turn_account": 3,
        "is_colosseum_finish": 0,
        "combo_kind": 1,
    })
    if "REWARD" in op_upper:
        role["blue_fame"] = int(role.get("blue_fame", 1000) or 0) + 100
        role["prestige"] = int(role.get("prestige", 1000) or 0) + 200
        col["is_colosseum_finish"] = 0
        _save()
    elif "CHANGE" in op_upper:
        turns = int(col.get("colosseum_turn_account", 3) or 0)
        if turns <= 0:
            _spend_gold(role, 10)
        else:
            col["colosseum_turn_account"] = turns - 1
        col["pos"] = [random.randint(1, 6) for _ in range(6)]
        col["combo_kind"] = random.randint(1, 5)
        col["is_colosseum_finish"] = 1
        _save()
    elif "START" in op_upper:
        acc = int(col.get("colosseum_account", 5) or 0)
        if acc <= 0:
            _spend_gold(role, 20)
        else:
            col["colosseum_account"] = acc - 1
        col["pos"] = [random.randint(1, 6) for _ in range(6)]
        col["combo_kind"] = random.randint(1, 5)
        col["is_colosseum_finish"] = 1
        _record_daily_action(12)
        _save()
    pos = col.get("pos", [1, 2, 3, 4, 5, 6])
    fields = [
        ("error_code",             _amf3_int(-1)),
        ("blue_fame",              _amf3_int(int(role.get("blue_fame", 1000) or 0))),
        ("colosseum_account",      _amf3_int(int(col.get("colosseum_account", 5)))),
        ("diamond",                _amf3_int(int(role.get("diamond", 100) or 0))),
        ("gold",                   _amf3_int(int(role.get("gold", 0)))),
        ("expoit",                 _amf3_int(int(role.get("prestige", 1000) or 0))),
        ("next_need_gold",         _amf3_double(10.0)),
        ("next_need_blue_fame",    _amf3_int(100)),
        ("system_time",            _amf3_double(now_ts)),
        ("colosseum_turn_account", _amf3_int(int(col.get("colosseum_turn_account", 3)))),
        ("is_colosseum_finish",    _amf3_bool(bool(col.get("is_colosseum_finish", 0)))),
        ("combo_kind",             _amf3_int(int(col.get("combo_kind", 1)))),
    ]
    for i in range(6):
        fields.append((f"pos{i + 1}", _amf3_int(int(pos[i] if i < len(pos) else i + 1))))
    return _make_ack_message(correlation_id, _amf3_object(fields))


def _handle_sea_bless_request(operation: str, correlation_id: str) -> bytes:
    """Handle ACTIVITY.seaBlessData / ACTIVITY.seaBless matching onSeaBlessData (488G -> 7 days, Assistant #13)."""
    role = _get_role()
    op_upper = operation.upper()
    now_ts = float(int(time.time()))
    end_ts = float(role.get("sea_bless_end_time", 0) or 0)
    if op_upper.endswith("SEABLESS"):
        if _spend_gold(role, 488):
            end_ts = max(end_ts, now_ts) + 7.0 * 86400.0
            role["sea_bless_end_time"] = end_ts
            _save()
    can_buy = end_ts <= now_ts
    return _make_ack_message(correlation_id, _amf3_object([
        ("error_code",     _amf3_int(-1)),
        ("endTime",        _amf3_double(end_ts)),
        ("seaBlessCanBuy", _amf3_bool(can_buy)),
        ("gold",           _amf3_int(int(role.get("gold", 0)))),
        ("system_time",    _amf3_double(now_ts)),
        ("invalidTime",    _amf3_double(0.0)),
    ]))


def _get_blue_event_row(event_id: int) -> tuple[int, int, int]:
    """Return (event_type, param1, param2) from cfg_blue_event."""
    try:
        conn = sqlite3.connect(DB_PATH)
        row = conn.execute(
            "SELECT event_type, param1, param2 FROM cfg_blue_event WHERE cfg_event_id = ?",
            (int(event_id),),
        ).fetchone()
        conn.close()
        if row:
            return int(row[0] or 1), int(row[1] or 0), int(row[2] or 0)
    except Exception:
        pass
    return 1, 5, 0


def _apply_blue_event(role: dict, ab: dict, ev_id: int, allow_gold: bool = False) -> int:
    """Resolve cfg_blue_event row matching All Blue mechanics; return event_value."""
    import random
    etype, p1, p2 = _get_blue_event_row(ev_id)
    if etype == 1:
        val = max(1, p1)
        role["blue_fame"] = int(role.get("blue_fame", 0) or 0) + val
        return val
    if etype == 2:
        # Silver bonfire/giant event: spend 100k silver if available, grant param1 fame
        cost = 100000.0
        if float(role.get("copper", 0) or 0) >= cost:
            role["copper"] = float(role.get("copper", 0)) - cost
        val = max(1, p1)
        role["blue_fame"] = int(role.get("blue_fame", 0) or 0) + val
        return val
    if etype == 3:
        # Gold event (e.g. Rayleigh 20G -> +param1 fame)
        val = max(1, p1)
        if allow_gold and _spend_gold(role, 20):
            role["blue_fame"] = int(role.get("blue_fame", 0) or 0) + val
            return val
        elif not allow_gold:
            # Batch/auto-resolve safely without surprise gold spend unless confirmed
            role["blue_fame"] = int(role.get("blue_fame", 0) or 0) + val
            return val
        return 0
    if etype == 4:
        lo, hi = min(p1, p2), max(p1, p2)
        val = random.randint(max(1, lo), max(1, hi))
        role["blue_fame"] = int(role.get("blue_fame", 0) or 0) + val
        return val
    if etype == 5:
        bonus = max(1, p1)
        ab["blue_bonus_left"] = int(ab.get("blue_bonus_left", 0) or 0) + bonus
        return bonus
    return 0


def _handle_allblue_request(operation: str, body: Any, correlation_id: str) -> bytes:
    """Handle ROLE.allBlue* & GENERAL.recruitAllBlue matching onAllBlue* (Assistant #15)."""
    import random
    role = _get_role()
    op_upper = operation.upper()
    ab = role.setdefault("allblue", {
        "blue_pos": 0,
        "blue_left": 10,
        "blue_bonus_left": 5,
        "blue_buy_count": 0,
        "blue_event": 0,
    })
    ab["blue_pos"] = int(ab.get("blue_pos", 0) or 0) % 16
    point = 0
    arrive_fame = 0
    event_id = 0
    event_value = 0
    event_list = []

    if "RECRUIT" in op_upper:
        cfg_gid = 0
        if isinstance(body, list) and len(body) > 2 and str(body[2]).isdigit():
            cfg_gid = int(body[2])
        if cfg_gid > 0:
            _recruit_general_from_cfg(cfg_gid)
            _sync_diary_unlocks(role)
            _save()
        return _make_ack_message(correlation_id, _amf3_object([
            ("error_code",     _amf3_int(-1)),
            ("cfg_general_id", _amf3_int(cfg_gid)),
            ("blue_fame",      _amf3_int(int(role.get("blue_fame", 1000) or 0))),
        ]))

    def _pick_event_for_tile(tile_pos: int) -> int:
        if tile_pos == 0:
            return random.randint(1, 3)
        base = ((tile_pos - 1) % 15) * 3 + 1
        return min(45, max(1, base + random.randint(0, 2)))

    if "DICEBATCH" in op_upper:
        avail = int(ab.get("blue_left", 0) or 0) + int(ab.get("blue_bonus_left", 0) or 0)
        rolls = min(5, max(1, avail))
        for _ in range(rolls):
            if int(ab.get("blue_left", 0) or 0) > 0:
                ab["blue_left"] = int(ab["blue_left"]) - 1
            elif int(ab.get("blue_bonus_left", 0) or 0) > 0:
                ab["blue_bonus_left"] = int(ab["blue_bonus_left"]) - 1
            old_pos = int(ab.get("blue_pos", 0) or 0) % 16
            p = random.randint(1, 6)
            raw_sum = old_pos + p
            new_pos = raw_sum % 16
            ab["blue_pos"] = new_pos
            step_arrive = 20 if raw_sum >= 16 else 0
            if step_arrive > 0:
                role["blue_fame"] = int(role.get("blue_fame", 1000) or 0) + step_arrive
            ev_id = _pick_event_for_tile(new_pos)
            ev_val = _apply_blue_event(role, ab, ev_id, allow_gold=False)
            point += p
            arrive_fame += step_arrive
            event_id = ev_id
            event_value = ev_val
            event_list.append(_amf3_object([
                ("point",       _amf3_int(p)),
                ("arrive_fame", _amf3_int(step_arrive)),
                ("event_id",    _amf3_int(ev_id)),
                ("event_value", _amf3_int(ev_val)),
            ]))
        ab["blue_event"] = 0
        _save()
    elif "DICE" in op_upper:
        old_pos = int(ab.get("blue_pos", 0) or 0) % 16
        point = random.randint(1, 6)
        raw_sum = old_pos + point
        ab["blue_pos"] = raw_sum % 16
        if int(ab.get("blue_left", 0) or 0) > 0:
            ab["blue_left"] = int(ab["blue_left"]) - 1
        elif int(ab.get("blue_bonus_left", 0) or 0) > 0:
            ab["blue_bonus_left"] = int(ab["blue_bonus_left"]) - 1
        arrive_fame = 20 if raw_sum >= 16 else 0
        if arrive_fame > 0:
            role["blue_fame"] = int(role.get("blue_fame", 1000) or 0) + arrive_fame
        event_id = _pick_event_for_tile(ab["blue_pos"])
        event_value = _apply_blue_event(role, ab, event_id, allow_gold=False)
        ab["blue_event"] = 0
        _save()
    elif "CHARGE" in op_upper:
        # Matches CDlgAllBlueMain::OnBtnzengjiabtnClick: (blue_buy_count + 1) * 100 gold
        cost = 100 * (int(ab.get("blue_buy_count", 0)) + 1)
        _spend_gold(role, cost)
        ab["blue_buy_count"] = int(ab.get("blue_buy_count", 0)) + 1
        ab["blue_left"] = int(ab.get("blue_left", 0)) + 5
        _save()
    elif "EVENT" in op_upper:
        req_ev = int(ab.get("blue_event", 0) or 0)
        if isinstance(body, dict) and str(body.get("3_id", "")).isdigit():
            req_ev = int(body["3_id"])
        elif isinstance(body, list) and len(body) > 2 and str(body[2]).isdigit():
            req_ev = int(body[2])
        if req_ev <= 0:
            req_ev = _pick_event_for_tile(int(ab.get("blue_pos", 0) or 0))
        event_id = req_ev
        event_value = _apply_blue_event(role, ab, req_ev, allow_gold=True)
        ab["blue_event"] = 0
        _save()

    owned_cfgs = sorted({
        int(g.get("cfg_general_id", g.get("general_id", 0)))
        for g in role.get("generals", [])
        if int(g.get("cfg_general_id", g.get("general_id", 0)) or 0) > 0
    } | {
        int(k) for k in role.get("diary_unlocks", {}).keys() if str(k).isdigit() and int(k) > 0
    })
    # Note: OPDataManager::onAllBlue* read copper & gold via ldrd (DOUBLE).
    # OPDataManager::onAllBlueDice clears vector<ALLBLUE_DICE> before each key and pushes after each key,
    # so event_value/event_id/arrive_fame/point MUST appear LAST for single-roll packets!
    return _make_ack_message(correlation_id, _amf3_object([
        ("error_code",      _amf3_int(-1)),
        ("general_have",    _amf3_array([_amf3_int(x) for x in owned_cfgs])),
        ("blue_bonus_left", _amf3_int(int(ab.get("blue_bonus_left", 5)))),
        ("copper",          _amf3_double(float(role.get("copper", 100000)))),
        ("blue_fame",       _amf3_int(int(role.get("blue_fame", 1000) or 0))),
        ("blue_buy_count",  _amf3_int(int(ab.get("blue_buy_count", 0)))),
        ("blue_pos",        _amf3_int(int(ab.get("blue_pos", 0)) % 16)),
        ("blue_left",       _amf3_int(int(ab.get("blue_left", 10)))),
        ("gold",            _amf3_double(float(role.get("gold", 0)))),
        ("blue_event",      _amf3_int(int(ab.get("blue_event", 0)))),
        ("event_list",      _amf3_array(event_list)),
        ("event_value",     _amf3_int(event_value)),
        ("event_id",        _amf3_int(event_id)),
        ("arrive_fame",     _amf3_int(arrive_fame)),
        ("point",           _amf3_int(point)),
    ]))


def _handle_grab_request(operation: str, body: Any, correlation_id: str) -> bytes:
    """Handle ROLE.grabPeople / grabBattleStart / grabChaos matching onGrabPeople (Assistant #16, Daily #17)."""
    role = _get_role()
    op_upper = operation.upper()
    step = int(role.get("grab_step", 1) or 1)
    grab_id = int(role.get("grab_id", 1) or 1)
    army_id = 70001
    reward_exp = 0
    is_chaos = 0
    if "CHAOS" in op_upper or "BATTLE" in op_upper:
        if "CHAOS" in op_upper:
            _spend_gold(role, 10)
            is_chaos = 1
        reward_exp = 50000
        _grant_role_exp(role, reward_exp)
        role["copper"] = min(999999999.0, float(role.get("copper", 100000)) + 20000.0)
        step = 1 if step >= 5 else step + 1
        role["grab_step"] = step
        _record_daily_action(17)
        _save()
    try:
        conn = sqlite3.connect(DB_PATH)
        row = conn.execute("SELECT armyID FROM cfg_grab_army WHERE grabID = ? AND step = ? LIMIT 1", (str(grab_id), str(step))).fetchone()
        conn.close()
        if row and str(row[0]).isdigit():
            army_id = int(row[0])
    except Exception:
        pass
    return _make_ack_message(correlation_id, _amf3_object([
        ("error_code",            _amf3_int(-1)),
        ("generals",              _build_generals_list()),
        ("formations",            _build_formations_list()),
        ("step",                  _amf3_int(step)),
        ("cfg_grab_id",           _amf3_int(grab_id)),
        ("gold",                  _amf3_int(int(role.get("gold", 0)))),
        ("battle_general_number", _amf3_int(5)),
        ("cfg_grab_army_id",      _amf3_int(army_id)),
        ("is_chaos",              _amf3_int(is_chaos)),
        ("is_complete",           _amf3_int(0)),
        ("grab_level",            _amf3_int(max(70, int(role.get("level", 70) or 70)))),
        ("reward_experience",     _amf3_int(reward_exp)),
    ]))


def _handle_turn_reward_request(operation: str, correlation_id: str) -> bytes:
    """Handle ACTIVITY.turnRewardData / turnReward / rewardCreate / Consume* (Assistant #17)."""
    import random
    role = _get_role()
    op_upper = operation.upper()
    now_ts = float(int(time.time()))
    if "REWARDCREATE" in op_upper:
        role["gold"] = int(role.get("gold", 0)) + 100
        _save()
        return _make_ack_message(correlation_id, _amf3_object([
            ("error_code",        _amf3_int(-1)),
            ("reward_gold",       _amf3_int(100)),
            ("gold",              _amf3_int(role["gold"])),
            ("reward_vip_charge", _amf3_int(int(role.get("vip_charge", 500000)))),
        ]))
    if "CONSUMEHONOR" in op_upper:
        return _make_ack_message(correlation_id, _amf3_object([
            ("error_code", _amf3_int(-1)),
            ("left_honor", _amf3_int(int(role.get("honor", 1000) or 0))),
        ]))
    if "TURNREWARDDATA" in op_upper:
        records = role.get("turn_reward_records", [])
        if not records:
            records = [{"rolename": role.get("name", "船长"), "itemId": 300053, "amount": 1}]
        rec_objs = [_amf3_object([
            ("rolename", _amf3_string(str(r.get("rolename", role.get("name", "船长"))))),
            ("itemId",   _amf3_int(int(r.get("itemId", 300053)))),
            ("amount",   _amf3_int(int(r.get("amount", 1)))),
        ]) for r in records[-5:]]
        return _make_ack_message(correlation_id, _amf3_object([
            ("error_code",         _amf3_int(-1)),
            ("system_time",        _amf3_double(now_ts)),
            ("endTime",            _amf3_double(now_ts + 7.0 * 86400.0)),
            ("lastFiveRecordList", _amf3_array(rec_objs)),
        ]))
    # Spin lucky wheel (turnReward)
    wheel = [(300053, 1), (300055, 1), (300077, 2), (300056, 1), (300058, 1), (300059, 1), (300076, 1), (300051, 2)]
    idx = random.randrange(len(wheel))
    item_id, amt = wheel[idx]
    _spend_gold(role, 20)
    _add_item_to_bag(item_id, amt)
    recs = role.setdefault("turn_reward_records", [])
    recs.append({"rolename": role.get("name", "船长"), "itemId": item_id, "amount": amt})
    role["turn_reward_records"] = recs[-5:]
    _save()
    return _make_ack_message(correlation_id, _amf3_object([
        ("error_code", _amf3_int(-1)),
        ("cfgItemId",  _amf3_int(item_id)),
        ("amount",     _amf3_int(amt)),
        ("index",      _amf3_int(idx)),
    ]))


def _handle_mail_request(operation: str, body: Any, correlation_id: str) -> bytes:
    """Handle MAIL.mail / read / send / drop matching opMailData & opMailReadData (Assistant #19)."""
    role = _get_role()
    op_name = operation.upper().split(".")[-1]
    now_ts = float(int(time.time()))
    mails = role.setdefault("mails", [
        {
            "id": 1, "sender_name": "海军总部", "title": "欢迎来到小小海贼王离线版",
            "content": "日常任务与小秘书功能已全部修复，祝航行愉快！",
            "attachment": "300053*1", "is_read": 0, "time": now_ts, "claimed": False,
        },
        {
            "id": 2, "sender_name": "娜美", "title": "航行补给物资",
            "content": "附赠活力药水（小）用于补充出海活力。",
            "attachment": "300077*2", "is_read": 0, "time": now_ts - 60.0, "claimed": False,
        },
    ])
    if op_name == "READ":
        mid = int(body[2]) if isinstance(body, list) and len(body) > 2 and str(body[2]).isdigit() else 1
        target = next((m for m in mails if int(m.get("id", 0)) == mid), mails[0] if mails else None)
        if target:
            target["is_read"] = 1
            if not target.get("claimed") and target.get("attachment"):
                for part in str(target["attachment"]).split(","):
                    if "*" in part:
                        try:
                            iid, cnt = [int(x) for x in part.split("*")[:2]]
                            _add_item_to_bag(iid, cnt)
                        except Exception:
                            pass
                target["claimed"] = True
            _save()
            return _make_ack_message(correlation_id, _amf3_object([
                ("error_code", _amf3_int(-1)),
                ("content",    _amf3_string(str(target.get("content", "")))),
                ("attachment", _amf3_string(str(target.get("attachment", "")))),
            ]))
        return _make_ack_message(correlation_id, _amf3_object([
            ("error_code", _amf3_int(-1)),
            ("content",    _amf3_string("")),
            ("attachment", _amf3_string("")),
        ]))
    if op_name == "SEND":
        title = str(body[3]) if isinstance(body, list) and len(body) > 3 else "玩家邮件"
        content = str(body[4]) if isinstance(body, list) and len(body) > 4 else ""
        next_id = max([int(m.get("id", 0)) for m in mails], default=0) + 1
        mails.insert(0, {
            "id": next_id, "sender_name": str(role.get("name", "船长")),
            "title": title, "content": content, "attachment": "",
            "is_read": 0, "time": now_ts, "claimed": True,
        })
        _save()
    elif op_name == "DROP":
        drop_ids = set()
        if isinstance(body, list) and len(body) > 2:
            arg = body[2]
            if isinstance(arg, list):
                drop_ids = {int(x) for x in arg if str(x).isdigit()}
            elif str(arg).isdigit():
                drop_ids = {int(arg)}
        if drop_ids:
            role["mails"] = [m for m in mails if int(m.get("id", 0)) not in drop_ids]
        else:
            role["mails"] = []
        mails = role["mails"]
        _save()

    mail_objs = [_amf3_object([
        ("id",          _amf3_int(int(m.get("id", 1)))),
        ("sender_name", _amf3_string(str(m.get("sender_name", "系统")))),
        ("title",       _amf3_string(str(m.get("title", "邮件")))),
        ("is_read",     _amf3_bool(bool(m.get("is_read", 0)))),
        ("time",        _amf3_double(float(m.get("time", now_ts)))),
    ]) for m in mails]
    return _make_ack_message(correlation_id, _amf3_object([
        ("error_code", _amf3_int(-1)),
        ("mail_list",  _amf3_array(mail_objs)),
    ]))


def _handle_raid_sweep_request(operation: str, body: Any, correlation_id: str) -> bytes:
    """Handle CAMP.raidSweep / raidSweepCheck / raidSweepCancle / raidSweepSpike matching opRaidSweep (Daily #19)."""
    role = _get_role()
    op_upper = operation.upper()
    raid_id = int(role.get("current_raid_id", 3001) or 3001)
    if isinstance(body, list) and len(body) > 2 and str(body[2]).isdigit():
        raid_id = int(body[2])
    if "SPIKE" in op_upper:
        _spend_gold(role, 10)
    is_passive = ("CHECK" in op_upper or "CANCLE" in op_upper or "CANCEL" in op_upper)
    if not is_passive:
        role["copper"] = min(999999999.0, float(role.get("copper", 100000)) + 20000.0)
        role["prestige"] = int(role.get("prestige", 1000) or 1000) + 500
        _grant_role_exp(role, 10000)
        _record_daily_action(19)
        _save()
    return _make_ack_message(correlation_id, _amf3_object([
        ("error_code",                  _amf3_int(-1)),
        ("level",                       _amf3_int(int(role.get("level", 1)))),
        ("raid_sweep_id",               _amf3_int(0)),
        ("raid_sweep_cooldown",         _amf3_double(0.0)),
        ("copper",                      _amf3_double(float(role.get("copper", 100000)))),
        ("gold",                        _amf3_int(int(role.get("gold", 0)))),
        ("action_point",                _amf3_int(int(role.get("action_point", 100)))),
        ("sum_experience",              _amf3_int(10000)),
        ("beat_count",                  _amf3_int(1)),
        ("all_rewards",                 _amf3_array([])),
        ("reward_experience",           _amf3_int(10000)),
        ("reward_exploit",              _amf3_int(500)),
        ("reward_copper",               _amf3_int(20000)),
        ("reward_gold",                 _amf3_int(0)),
        ("reward_jump_wand",            _amf3_int(0)),
        ("reward_item",                 _amf3_int(0)),
        ("reward_package_item",         _amf3_int(0)),
        ("reward_perfect_copper",       _amf3_int(0)),
        ("reward_perfect_gold",         _amf3_int(0)),
        ("reward_perfect_jump_wand",    _amf3_int(0)),
        ("reward_perfect_item",         _amf3_int(0)),
        ("reward_perfect_package_item", _amf3_int(0)),
    ]))


def _handle_post_request(operation: str, body: Any, correlation_id: str) -> bytes:
    """Handle MANOR.post / postEvent / postRefresh matching OPDataManager::onPostData."""
    import random
    role = _get_role()
    op_upper = operation.upper()
    island_ids = list(range(1, 15))
    try:
        conn = sqlite3.connect(DB_PATH)
        rows = conn.execute("SELECT cfg_adventure_island_id FROM cfg_adventure_island ORDER BY cfg_adventure_island_id").fetchall()
        conn.close()
        if rows:
            island_ids = [int(r[0]) for r in rows]
    except Exception:
        pass

    post_event = role.setdefault("post_event", random.sample(island_ids, min(4, len(island_ids))))
    if not isinstance(post_event, list) or len(post_event) < 4:
        post_event = random.sample(island_ids, min(4, len(island_ids)))
        role["post_event"] = post_event
    post_history = role.setdefault("post_history", [])
    if not isinstance(post_history, list):
        post_history = []
        role["post_history"] = post_history

    reward_exp = 0
    if "EVENT" in op_upper:
        idx = int(body[2]) if isinstance(body, list) and len(body) > 2 and str(body[2]).isdigit() else 0
        chosen_island = post_event[idx] if 0 <= idx < len(post_event) else post_event[0]
        if len(post_history) >= 4:
            post_history.clear()
        post_history.append(int(chosen_island))
        reward_exp = 10000
        role["copper"] = min(999999999.0, float(role.get("copper", 100000)) + 20000.0)
        role["exp"] = int(role.get("exp", 0)) + reward_exp
        role["experience"] = role["exp"]
        _add_item_to_bag(300053, 1)
        role["post_event"] = random.sample(island_ids, min(4, len(island_ids)))
        post_event = role["post_event"]
        _record_daily_action(27)
        _save()
        print(f"  [MANOR.postEvent] idx={idx} island={chosen_island} history={post_history}", flush=True)
    elif "REFRESH" in op_upper:
        role["copper"] = max(0.0, float(role.get("copper", 100000)) - 2000.0)
        post_event = random.sample(island_ids, min(4, len(island_ids)))
        role["post_event"] = post_event
        _save()
        print(f"  [MANOR.postRefresh] new islands={post_event}", flush=True)

    event_list = []
    try:
        conn = sqlite3.connect(DB_PATH)
        for (cid,) in conn.execute("SELECT cfg_combine_id FROM cfg_adventure_combine ORDER BY cfg_combine_id LIMIT 10").fetchall():
            event_list.append(_amf3_object([
                ("cfg_combine_id", _amf3_int(int(cid))),
                ("event_level",    _amf3_int(1)),
            ]))
        conn.close()
    except Exception:
        pass

    return _make_ack_message(correlation_id, _amf3_object([
        ("error_code",         _amf3_int(-1)),
        ("copper",             _amf3_double(float(role.get("copper", 100000)))),
        ("gold",               _amf3_int(int(role.get("gold", 100000)))),
        ("exploit",            _amf3_int(int(role.get("prestige", 1000) or 1000))),
        ("copper_cost",        _amf3_int(2000)),
        ("post_event",         _amf3_array([_amf3_int(int(x)) for x in post_event])),
        ("reward_experience",  _amf3_int(reward_exp)),
        ("post_refresh_count", _amf3_int(5)),
        ("post_history",       _amf3_array([_amf3_int(int(x)) for x in post_history])),
        ("event_list",         _amf3_array(event_list)),
        ("reward_list",        _amf3_array([])),
        ("pets",               _build_pets_amf3()),
    ]))


def _dispatch_operation(operation: str, correlation_id: str, body: Any, envelope: dict, payload: bytes) -> bytes:
    op_upper = operation.upper()



    # ── RANDOM NAME (CREATE.generateRandomName) ────────────────────────────────

    if "GENERATERANDOMNAME" in op_upper:

        print("  -> generateRandomName response", flush=True)

        return _build_random_name_response(correlation_id)



    # ── CREATE ROLE (CREATE.create / CREATEUSERROLE) ───────────────────────────

    if op_upper.startswith("COM.ARTHUR.SERVER.NET.SERVICES.IMPL.CREATE.") or "CREATEUSERROLE" in op_upper:

        # body: [passport, name, figure]

        name = str(body[1]) if len(body) > 1 and body[1] else "船长"

        figure = int(body[2]) if len(body) > 2 and body[2] else 1

        print(f"  -> create role: name={name!r} figure={figure}", flush=True)

        return _build_create_role_response(correlation_id, name, figure)



    # ── LOGIN ──────────────────────────────────────────────────────────────────

    if (op_upper.split(".")[-1] in ("LOGIN", "USERLOGIN", "ROLELOGIN") or "GETROLELIST" in op_upper) and "REWARD" not in op_upper:

        print("  -> login response", flush=True)

        return _build_login_response(correlation_id)



    # ── ROLE ───────────────────────────────────────────────────────────────────

    if "ROLE" in op_upper:
        op_last = op_upper.split(".")[-1]
        if op_last == "ROLE":
            print("  -> role data", flush=True)
            return _build_role_response(correlation_id)
        if "FIGURE" in op_last:
            print(f"  -> role figure/morph handler: {operation} body={body}", flush=True)
            return _handle_role_figure(correlation_id, body)
        if "ACTIONPOINTCHARGE" in op_last or "BUYACTIONPOINT" in op_last or "BUYVITALITY" in op_last:
            return _handle_action_point_charge(correlation_id)
        if "REWARDACTIONPOINT" in op_last:
            return _handle_reward_action_point(correlation_id)
        if "BOT" in op_last:
            print(f"  -> bot handler for {operation}", flush=True)
            return _handle_bot_request(operation, body, correlation_id)
        if "TALENT" in op_last:
            print(f"  -> talent handler for {operation}", flush=True)
            return _handle_talent_request(operation, body, correlation_id)
        if "POST" in op_last:
            print(f"  -> role.post handler for {operation}", flush=True)
            return _handle_post_request(operation, body, correlation_id)
        if "ALLBLUE" in op_last:
            print(f"  -> role.allBlue handler for {operation}", flush=True)
            return _handle_allblue_request(operation, body, correlation_id)
        if "GRAB" in op_last:
            print(f"  -> role.grab handler for {operation}", flush=True)
            return _handle_grab_request(operation, body, correlation_id)
        if "CHALLENGE" in op_last:
            print(f"  -> role.challenge handler for {operation}", flush=True)
            return _handle_challenge_request(operation, body, correlation_id)
        if "ARENA" in op_last:
            print(f"  -> role.arena handler for {operation}", flush=True)
            return _handle_skyladder_or_arena(operation, body, correlation_id)
        if "VIEWTARGET" in op_last:
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
        if "DAILYPRESTIGEREWARD" in op_name:
            return _handle_daily_prestige_reward(correlation_id)

        if "TRAIL" in op_name:
            return _handle_trail_request(operation, body, correlation_id)

        if "DAILYTASK" in op_name:
            if any(k in op_name for k in ["STARUP", "LEGENDARY", "ADDCOUNT"]):
                return _handle_daily_task_refresh(correlation_id, op_name)
            if any(k in op_name for k in ["CHECK", "INFO", "GET", "LIST"]):
                return _build_vitality_response(correlation_id)
            return _handle_daily_task_submit(correlation_id, op_name, body)

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

        if "SEACHEST" in op_name:
            print("  -> scene seaChest", flush=True)
            return _handle_sea_chest_request(correlation_id, body)

        if "HUNTING" in op_name:
            print(f"  -> scene hunting handler for {operation}", flush=True)
            return _handle_hunting_request(operation, correlation_id)

        if "MAUSOLEUM" in op_name or "WARENTER" in op_name:
            print(f"  -> scene mausoleum/war handler for {operation}", flush=True)
            return _handle_mausoleum_request(operation, correlation_id)



    # ── CAMP ───────────────────────────────────────────────────────────────────

    if "CAMP" in op_upper:
        op_name = op_upper.split(".")[-1]

        if "TEAM" in op_name:
            print(f"  -> camp team handler for {operation}", flush=True)
            return _handle_team_request(operation, body, correlation_id)

        if "CAMPELITE" in op_name:
            print("  -> camp elite info (EnterCopyWarPanel)", flush=True)
            return _build_camp_elite_response(correlation_id)

        if "RAIDSWEEP" in op_name:
            print(f"  -> camp raidSweep handler for {operation}", flush=True)
            return _handle_raid_sweep_request(operation, body, correlation_id)

        if "CAMPBOT" in op_name:
            role = _get_role()
            if "START" in op_name or "SPIKE" in op_name:
                if "SPIKE" in op_name:
                    _spend_gold(role, 10)
                _grant_role_exp(role, 5000)
                role["copper"] = min(999999999.0, float(role.get("copper", 100000)) + 10000.0)
                _record_daily_action(15)
                _save()
            camp_id = int(body[2]) if isinstance(body, list) and len(body) > 2 and str(body[2]).isdigit() else 1001
            print(f"  -> camp bot handler {op_name} cid={camp_id}", flush=True)
            return _build_camp_info_response(correlation_id, camp_id)

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

        if "CAMPREWARD" in op_name or "RAIDREWARD" in op_name or "ACQUIRECAMPREWARD" in op_name:
            print(f"  -> camp/raid reward ACK op={op_name} body={body}", flush=True)
            return _build_camp_reward_response(correlation_id, body, operation)

        if "RAIDLEAVE" in op_name or "RESET" in op_name:
            role = _get_role()
            rid = int(body[2]) if isinstance(body, list) and len(body) > 2 and str(body[2]).isdigit() else int(role.get("current_raid_id", 3001) or 3001)
            cs = role.setdefault("camp_stars", {})
            for aid, _ in _get_camp_army_list(rid):
                cs.pop(str(aid), None)
            role.setdefault("raid_reward_claimed", {}).pop(str(rid), None)
            role["pending_raid_reward"] = False
            _save()
            print(f"  -> raid leave/reset raid_id={rid} cleared stars & reward state", flush=True)
            return _build_raid_check_response(correlation_id)

        role = _get_role()
        role_cur_scene = int(role.get("scene_id", 2001))
        default_camp = 1004 if role_cur_scene == 2002 else 1001
        camp_id = int(body[2]) if (len(body) > 2 and body[2] and str(body[2]).isdigit()) else (int(body[1]) if (len(body) > 1 and body[1] and str(body[1]).isdigit()) else default_camp)
        print(f"  -> camp info cid={camp_id}", flush=True)
        return _build_camp_info_response(correlation_id, camp_id)



    # ── BATTLE ─────────────────────────────────────────────────────────────────

    if "BATTLE." in op_upper:
        if "MATCHAPPLY" in op_upper:
            role = _get_role()
            role["honor"] = int(role.get("honor", 1000)) + 100
            role["arena_win_count"] = int(role.get("arena_win_count", 0)) + 1
            _record_daily_action(2)
            _record_daily_action(12)
            _save()
            print(f"  -> battle.matchApply (duel/arena) win!", flush=True)
            return _build_battle_result_response(correlation_id, 10101, win=True)
        camp_id = 10101
        battle_type = 0
        if isinstance(body, list) and len(body) > 0:
            first = body[0]
            if isinstance(first, str) and "{" in first:
                try:
                    d = json.loads(first)
                    camp_id = int(d.get("3_targetId", d.get("targetId", 10101)))
                    battle_type = int(d.get("4_battleType", d.get("battleType", 0)) or 0)
                except Exception:
                    pass
            elif isinstance(first, dict):
                camp_id = int(first.get("3_targetId", first.get("targetId", 10101)))
                battle_type = int(first.get("4_battleType", first.get("battleType", 0)) or 0)
            elif len(body) > 2:
                try:
                    camp_id = int(body[2]) if body[2] else 0
                except Exception:
                    pass
                if len(body) > 3 and body[3]:
                    try:
                        battle_type = int(body[3])
                    except Exception:
                        pass
            elif isinstance(first, (int, float)):
                camp_id = int(first)
        elif isinstance(body, dict):
            camp_id = int(body.get("3_targetId", body.get("targetId", 10101)))
            battle_type = int(body.get("4_battleType", body.get("battleType", 0)) or 0)

        role = _get_role()
        is_boss_battle = (battle_type == 9) or (int(role.get("scene_id", 2001) or 2001) == 4001 and camp_id == 0)
        if is_boss_battle:
            _record_daily_action(10)
            return _build_battle_result_response(correlation_id, 0, boss_battle=True)

        if camp_id == 0:
            camp_id = 10101
        print(f"  -> battle apply target/camp={camp_id} battle_type={battle_type} (body={body})", flush=True)
        is_raid_battle = (3001 <= camp_id <= 3006) or (30100 <= camp_id <= 30999)
        is_trial_battle = (50001 <= camp_id <= 50999) or (battle_type == 5)
        if is_trial_battle:
            _record_daily_action(23)
        elif is_raid_battle:
            _record_daily_action(19)
        else:
            _record_daily_action(15)
        return _build_battle_result_response(correlation_id, camp_id)



    # ── GENERAL (crew) ─────────────────────────────────────────────────────────

    if "GENERAL" in op_upper:

        op_name = op_upper.split(".")[-1]

        if "PET" in op_name:
            print(f"  -> general.pet handler for {operation}", flush=True)
            return _handle_pet_request(operation, body, correlation_id)

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
                    if not _spend_gold(role, cost):
                        role["gold"] = max(role.get("gold", 0) - cost, 0)
                        if cost > 0:
                            _record_daily_action(20)
                    print(f"  [skillUp] general {general_id} slot {found_slot} level {old_level}→{new_level} (cost={cost}, gold={role['gold']})", flush=True)
                else:
                    print(f"  [skillUp] skill not found in slots={slots}", flush=True)

            _save()
            print(f"  -> skillUp OK", flush=True)
            return _build_general_response(correlation_id)

        if "FORMATION" in op_name.upper():
            role = _get_role()
            if any(k in op_name.upper() for k in ("LEVEL", "UPGRADE", "PROMOTION")):
                req_type = 1
                if isinstance(body, dict):
                    req_type = int(body.get("4_type", body.get("type", 1)) or 1)
                elif isinstance(body, list) and len(body) >= 4 and str(body[3]).isdigit():
                    req_type = int(body[3])
                cur_lvl = max(1, min(48, int(role.get("formation_level", 1) or 1)))
                fcfg = _get_formation_cfg(cur_lvl)
                need_exp = int(fcfg["need_experience"])
                if "PROMOTION" in op_name.upper():
                    add_exp = max(1000, need_exp)
                elif req_type >= 3:
                    add_exp = max(1000, need_exp)
                    _spend_gold(role, 50)
                elif req_type == 2:
                    add_exp = 1000
                    _spend_gold(role, 20)
                else:
                    add_exp = 500
                    role["copper"] = max(0.0, float(role.get("copper", 100000)) - 10000.0)
                cur_exp = int(role.get("formation_exp", 0) or 0) + add_exp
                while cur_exp >= need_exp and cur_lvl < 48:
                    cur_exp -= need_exp
                    cur_lvl += 1
                    need_exp = int(_get_formation_cfg(cur_lvl)["need_experience"])
                role["formation_level"] = cur_lvl
                role["formation_exp"] = cur_exp
                _record_daily_action(7)
                _save()
                print(f"  [FORMATION LEVELUP] type={req_type} formation_level={cur_lvl} exp={cur_exp}/{need_exp}", flush=True)
                return _build_general_response(correlation_id)
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

        if "RECALL" in op_upper or "RECALL" in op_name.upper():
            print(f"  -> general.recall handler: {operation} body={body}", flush=True)
            return _handle_general_recall(correlation_id, body)

        if "FIRE" in op_upper or "FIRE" in op_name.upper():
            role = _get_role()
            target_id = _extract_general_id_arg(body) or None
            
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
                
                # Snapshot stats & awakened skills into Sailing Log (diary_unlocks) before removing from active crew
                aw_dict = role.setdefault("awakened_skills", {})
                aw_snap = copy.deepcopy(aw_dict.get(str(fired_cfg_id)) or aw_dict.get(str(target_id)) or {})
                if removed_gen is not None and fired_cfg_id:
                    snap = copy.deepcopy(removed_gen)
                    snap["general_id"] = fired_cfg_id
                    snap["cfg_general_id"] = fired_cfg_id
                    role.setdefault("diary_unlocks", {})[str(fired_cfg_id)] = {
                        "cfg_general_id": fired_cfg_id,
                        "is_fired": True,
                        "snapshot": snap,
                        "awakened_skills": aw_snap,
                    }
                aw_dict.pop(str(target_id), None)
                if fired_cfg_id:
                    aw_dict.pop(str(fired_cfg_id), None)
                
                # Clear dismissed crew from formation slots
                fmt = role.get("formation", {})
                if isinstance(fmt, dict):
                    for pos, val in list(fmt.items()):
                        try:
                            if int(val or 0) in (target_id, fired_cfg_id):
                                fmt[pos] = 0
                        except Exception:
                            pass

                # Unequip items worn by target_id
                items = _get_player_items()
                for it in items:
                    if it.get("general_id") in [target_id, fired_cfg_id]:
                        it["general_id"] = 0
                        it["equiped"] = 0
                
                print(f"  [GENERAL.fire] Dismissed crew member {target_id} ({removed_gen.get('name') if removed_gen else 'unknown'}) -> saved to Sailing Log", flush=True)
                _save()
            return _build_fire_response(correlation_id, target_id or 0, fired_cfg_id or 0)

        if "STARGENERAL" in op_upper or "STARGENERAL" in op_name.upper():
            print(f"  -> general.starGeneral (Sailing Log) handler: {operation}", flush=True)
            return _build_star_general_response(correlation_id)

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

        if "TAVERN" in op_upper:
            print(f"  -> tavern info handler: {operation}", flush=True)
            return _build_tavern_info_response(correlation_id)

        if "GENERALADVANCED" in op_name.upper():
            print(f"  -> general advance handler: {operation}", flush=True)
            return _handle_general_advance_request(operation, body, correlation_id)

        if "RECRUITALLBLUE" in op_name.upper() or "ALLBLUE" in op_name.upper():
            print(f"  -> general allBlue recruit handler: {operation}", flush=True)
            return _handle_allblue_request(operation, body, correlation_id)

        if "DAILYPRESTIGEREWARD" in op_name.upper():
            return _handle_daily_prestige_reward(correlation_id)

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

    if "ACTIVITY" in op_upper or any(k in op_upper for k in ["REWARDLOGIN", "GETREWARD", "REWARDCHECK", "FIRSTPAY", "FIRSTCHARGE", "REWARDCODE", "VITALITY", "MALL", "SEABLESS", "TURNREWARD", "REWARDCREATE", "CONSUMEHONOR", "CONSUMEDIAMOND"]):
        op_name = op_upper.split(".")[-1]
        if "ANCIENTDRAGON" in op_name:
            return _handle_ancient_dragon_request(operation, body, correlation_id)
        if "SEABLESS" in op_name:
            return _handle_sea_bless_request(operation, correlation_id)
        if any(k in op_name for k in ["TURNREWARD", "REWARDCREATE", "CONSUMEHONOR", "CONSUMEDIAMOND"]):
            return _handle_turn_reward_request(operation, correlation_id)
        if "COLOSSEUM" in op_name:
            return _handle_colosseum_request(operation, body, correlation_id)
        if "SKYLADDER" in op_name or "SKYBATTLECHECK" in op_name:
            return _handle_skyladder_or_arena(operation, body, correlation_id)
        if "REWARDLOGIN" in op_name:
            return _handle_reward_login(correlation_id)
        if "GETREWARD" in op_name:
            return _handle_get_reward(correlation_id, body)
        if "REWARDCHECK" in op_name:
            return _handle_reward_check(correlation_id)
        if "REWARDONLINE" in op_name:
            return _handle_reward_login(correlation_id)
        if "CHECKVITALITY" in op_name:
            return _build_check_vitality_response(correlation_id)
        if "ACTIONPOINTCHARGE" in op_name or "BUYACTIONPOINT" in op_name or "BUYVITALITY" in op_name:
            return _handle_action_point_charge(correlation_id)
        if "REWARDACTIONPOINT" in op_name:
            return _handle_reward_action_point(correlation_id)
        if "VITALITY" in op_name:
            if "REWARD" in op_name:
                return _handle_reward_vitality(correlation_id, body)
            return _build_vitality_response(correlation_id)
        if "MALL" in op_name:
            if "BUY" in op_name:
                return _handle_mall_buy(correlation_id, body)
            return _build_mall_response(correlation_id)
        if "MAUSOLEUM" in op_name:
            return _handle_mausoleum_request(operation, correlation_id)
        if "FIRSTPAY" in op_name or "FIRSTCHARGE" in op_name:
            return _handle_first_pay(correlation_id)
        if "REWARDCODE" in op_name:
            return _handle_reward_code(body, correlation_id)
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



    if "PET" in op_upper:
        print(f"  -> pet handler for {operation}", flush=True)
        return _handle_pet_request(operation, body, correlation_id)

    # ── LEGION ─────────────────────────────────────────────────────────────────

    if "LEGION" in op_upper:
        print(f"  -> legion handler for {operation}", flush=True)
        return _handle_legion_request(operation, body, correlation_id)

    # ── SKYLADDER / ARENA ──────────────────────────────────────────────────────

    if "ANCIENTDRAGON" in op_upper:
        print(f"  -> ancient dragon handler for {operation}", flush=True)
        return _handle_ancient_dragon_request(operation, body, correlation_id)

    if "COLOSSEUM" in op_upper:
        print(f"  -> colosseum handler for {operation}", flush=True)
        return _handle_colosseum_request(operation, body, correlation_id)

    if "CHALLENGE" in op_upper:
        print(f"  -> challenge handler for {operation}", flush=True)
        return _handle_challenge_request(operation, body, correlation_id)

    if "ALLBLUE" in op_upper:
        print(f"  -> allBlue handler for {operation}", flush=True)
        return _handle_allblue_request(operation, body, correlation_id)

    if "MAIL" in op_upper:
        print(f"  -> mail handler for {operation}", flush=True)
        return _handle_mail_request(operation, body, correlation_id)

    if "SKYLADDER" in op_upper or "ARENA" in op_upper:

        print(f"  -> skyladder/arena handler for {operation}", flush=True)

        return _handle_skyladder_or_arena(operation, body, correlation_id)

    if "GRAB" in op_upper:
        print(f"  -> grab handler for {operation}", flush=True)
        return _handle_grab_request(operation, body, correlation_id)

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
            _record_daily_action(11)
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
                if not _spend_gold(role, 5):
                    role["gold"] = max(0, role.get("gold", 5000) - 5)
                    _record_daily_action(20)
            elif jump_type == 3:
                if not _spend_gold(role, 20):
                    role["gold"] = max(0, role.get("gold", 5000) - 20)
                    _record_daily_action(20)

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
            _record_daily_action(11)
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
            return _handle_forge_request(_extract_body(envelope), correlation_id, operation)

        print(f"  -> manor handler for {operation}", flush=True)
        return _handle_manor_request(operation, body, correlation_id)

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
        return _handle_talent_request(operation, body, correlation_id)

    # ── ITEM ───────────────────────────────────────────────────────────────────
    if "ITEM" in op_upper or any(k in op_upper for k in ["USING", "SELL", "UNEQUIP", "UPGRADE", "FORGE", "RISE", "HAKI", "GEM"]):
        print(f"  -> item ACK for {operation}", flush=True)
        return _handle_item_request(operation, body, correlation_id)

    # Default
    print(f"  -> generic ACK for {operation!r}", flush=True)
    return _build_simple_ack(correlation_id)





# ── HTTP handler ──────────────────────────────────────────────────────────────



class Handler(BaseHTTPRequestHandler):

    server_version = "XiaoxiaoLocal/0.6"
    protocol_version = "HTTP/1.1"
    disable_nagle_algorithm = True

    def _send(self, status: int, content_type: str, body: bytes) -> None:
        try:
            conn_hdr = self.headers.get("Connection", "")
            is_http11 = (getattr(self, "request_version", "HTTP/1.0") == "HTTP/1.1")
            keep_alive = ("keep-alive" in conn_hdr.lower()) or (is_http11 and "close" not in conn_hdr.lower())
            self.close_connection = not keep_alive
            self.log_request(status)
            status_text = self.responses.get(status, ("OK",))[0]
            conn_val = "keep-alive" if keep_alive else "close"
            head = (
                f"HTTP/1.1 {status} {status_text}\r\n"
                f"Server: {self.server_version}\r\n"
                f"Content-Type: {content_type}\r\n"
                f"Content-Length: {len(body)}\r\n"
                f"Connection: {conn_val}\r\n"
                f"Cache-Control: no-store\r\n"
                f"Set-Cookie: JSESSIONID=LOCAL_OFFLINE_SESSION_ID; Path=/\r\n"
                f"\r\n"
            ).encode("ascii")
            self.wfile.write(head + body)
            self.wfile.flush()
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

