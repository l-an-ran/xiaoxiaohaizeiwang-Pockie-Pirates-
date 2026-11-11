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

    SAVE_FILE.write_text(json.dumps(data, ensure_ascii=False, indent=2), encoding="utf-8")





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
            conn = sqlite3.connect(DB_PATH)
            row = conn.execute("SELECT complete_type, complete_category FROM cfg_task WHERE cfg_task_id = ?", (cur_task,)).fetchone()
            conn.close()
            if row:
                ctype, ccat = int(row[0]), int(row[1])
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
        conn2 = sqlite3.connect(DB_PATH)
        cur2 = conn2.cursor()
        cur2.execute("SELECT experience_need FROM cfg_level_experience WHERE level = ?", (r["level"],))
        row2 = cur2.fetchone()
        conn2.close()
        max_exp_at_level = int(row2[0]) if row2 else 0
        if max_exp_at_level > 0 and r.get("exp", 0) >= max_exp_at_level:
            r["exp"] = 0
        if max_exp_at_level > 0 and r.get("exp", 0) < 0:
            r["exp"] = 0
    except Exception:
        pass

    # ── 自动计算 officium (官职) — 客户端领悟技能/招募船员的前置条件 ────
    # 用 level 直接映射到 cfg_level_prestige.officium
    try:
        conn3 = sqlite3.connect(DB_PATH)
        cur3 = conn3.cursor()
        cur3.execute("SELECT officium FROM cfg_level_prestige WHERE officium <= ? ORDER BY officium DESC LIMIT 1", (r["level"],))
        row3 = cur3.fetchone()
        conn3.close()
        r["officium"] = int(row3[0]) if row3 else max(1, r["level"])
    except Exception:
        r["officium"] = max(1, r["level"])

    # 确保有 skill_point
    r.setdefault("skill_point", r["level"] - 1)

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

        ("vip_level",               _amf3_int(0)),

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

        ("exploit",                 _amf3_int(0)),

        ("ap_charge",               _amf3_int(0)),

        ("is_in_team",              _amf3_bool(False)),

        ("login_days",              _amf3_int(role["login_days"])),

        ("vip_charge",              _amf3_int(0)),

        ("junior_token",            _amf3_int(0)),

        ("middle_token",            _amf3_int(0)),

        ("raid_sweep_id",           _amf3_int(0)),

        ("create_reward_get",       _amf3_bool(False)),

        ("step",                    _amf3_int(0)),

        ("legion_id",               _amf3_int(0)),

        ("legion_name",             _amf3_string("")),

        ("raid_count",              _amf3_int(0)),
        ("experience",              _amf3_int(role.get("experience", 0))),
        ("skill_point",             _amf3_int(role.get("skill_point", 0))),
        ("officium",                _amf3_int(role.get("officium", 1))),

        ("server_time",             _amf3_double(now_ts)),

        ("bot_general_start",       _amf3_double(0.0)),

    ]

    return _amf3_object(fields)





def _build_task_data() -> bytes:
    role = _get_role()
    completed = role.get("completed_tasks", [])
    last_completed = completed[-1] if completed else 100000
    current = role.get("current_task", 100001) or 100001
    task_accepted = role.get("task_accepted", False)
    task_completed = role.get("task_completed", False)

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

    fields = [
        ("action",                      _amf3_int(0)),
        ("complete_task",               _amf3_int(last_completed)),
        ("accpetable_task",             _amf3_int(acceptable_task)),
        ("get_task",                    _amf3_int(get_task)),
        ("mem_task_list",               _amf3_array(mem_tasks)),
        ("mem_branch_task_list",        _amf3_array([])),
        ("accpetable_branch_task_list", _amf3_array([])),
    ]
    return _amf3_object(fields)



PROTAGONIST_CONFIG = {
    1001: {"cfg_id": 10031001, "job": 10001, "skill": 11004, "name": "男剑豪", "figure": 1001, "face": 1001},
    1002: {"cfg_id": 10031009, "job": 10001, "skill": 11004, "name": "女剑豪", "figure": 1002, "face": 1002},
    1003: {"cfg_id": 10032010, "job": 10002, "skill": 12023, "name": "男狙击", "figure": 1003, "face": 1003},
    1004: {"cfg_id": 10032002, "job": 10002, "skill": 12023, "name": "女狙击", "figure": 1004, "face": 1004},
    1005: {"cfg_id": 10033011, "job": 10003, "skill": 13044, "name": "男航海", "figure": 1005, "face": 1005},
    1006: {"cfg_id": 10033003, "job": 10003, "skill": 13044, "name": "女航海", "figure": 1006, "face": 1006},
    1007: {"cfg_id": 10034004, "job": 10004, "skill": 14067, "name": "男船医", "figure": 1007, "face": 1007},
    1008: {"cfg_id": 10034020, "job": 10004, "skill": 14067, "name": "女船医", "figure": 1008, "face": 1008},
    10004: {"cfg_id": 10031001, "job": 10001, "skill": 11004, "name": "男剑豪", "figure": 1001, "face": 1001},
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
    import sqlite3
    _db_p = r"d:\AI\work\xiaoxiaohaizei\clean_onepiece.db"
    if os.path.exists(_db_p):
        _conn = sqlite3.connect(_db_p)
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
    if cfg_id in CFG_ITEM_PARTS:
        return CFG_ITEM_PARTS[cfg_id]
    return ITEM_PART_LOOKUP.get(cfg_id, 0)

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
    for it in items:
        if it.get("equiped"):
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

    # 严格按照从 libOnePiece.so (0x403c54) 逆向出的所有 80+ 字段下发，彻底杜绝栈内存野指针
    main_general = _amf3_object([
        # 基础标识
        ("general_id",        _amf3_int(cfg["figure"])),
        ("cfg_general_id",    _amf3_int(cfg["cfg_id"])),
        ("is_role",           _amf3_bool(True)),
        ("have_inherited",    _amf3_bool(False)),
        ("marole",            _amf3_int(1)),
        ("name",              _amf3_string(role.get("name", "妮可罗宾"))),
        ("job",               _amf3_int(cfg["job"])),
        ("level",             _amf3_int(role.get("level", 1))),
        ("figure",            _amf3_int(cfg["figure"])),
        ("face",              _amf3_int(cfg["face"])),
        ("quality",           _amf3_int(1)),
        ("experience",        _amf3_int(role.get("experience", 0))),
        ("skill_point",       _amf3_int(role.get("skill_point", 5))),
        ("skills",            _amf3_array(skills_list)),

        # 四维基础 (客户端使用 ldrd [r3, #0x48] 作为 double 读取)
        ("strength",          _amf3_double(25.0)),
        ("agility",           _amf3_double(25.0)),
        ("intellect",         _amf3_double(25.0)),
        ("stamina",           _amf3_double(30.0)),

        # 初始四维 (double)
        ("init_strength",     _amf3_double(25.0)),
        ("init_agility",      _amf3_double(25.0)),
        ("init_intellect",    _amf3_double(25.0)),
        ("init_stamina",      _amf3_double(30.0)),

        # 四维上限 (double)
        ("strength_ceil",     _amf3_double(100.0)),
        ("agility_ceil",      _amf3_double(100.0)),
        ("intellect_ceil",    _amf3_double(100.0)),
        ("stamina_ceil",      _amf3_double(100.0)),

        # 四维成长 (int)
        ("str_grow",          _amf3_int(25)),
        ("agi_grow",          _amf3_int(25)),
        ("sta_grow",          _amf3_int(30)),
        ("int_grow",          _amf3_int(20)),
        ("str_grow_add",      _amf3_int(0)),
        ("agi_grow_add",      _amf3_int(0)),
        ("sta_grow_add",      _amf3_int(0)),
        ("int_grow_add",      _amf3_int(0)),
        ("temp_str_grow_add", _amf3_int(0)),
        ("temp_agi_grow_add", _amf3_int(0)),
        ("temp_sta_grow_add", _amf3_int(0)),
        ("temp_int_grow_add", _amf3_int(0)),

        # 体力与生命 (int)
        ("health_point",      _amf3_int(600)),
        ("health_point_max",  _amf3_int(600)),

        # 攻防属性 (int)
        ("physical_attack",   _amf3_int(200)),
        ("physical_defence",  _amf3_int(100)),
        ("spell_attack",      _amf3_int(150)),
        ("spell_defence",     _amf3_int(100)),

        # 战斗命中/闪避/暴击/速度 (int)
        ("hit",               _amf3_int(100)),       # 10.0%
        ("dodge",             _amf3_int(50)),        # 5.0%
        ("critic",            _amf3_int(160)),       # 16.0%
        ("critic_resist",     _amf3_int(0)),
        ("speed",             _amf3_int(150)),

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

    return _amf3_array([main_general])


def _build_formations_list() -> bytes:
    role = _get_role()
    fig = role.get("figure", 1008)
    if fig < 1000:
        fig = FIGURE_MAP.get(fig, 1008)
    if fig not in PROTAGONIST_CONFIG:
        fig = 1008
    cfg = PROTAGONIST_CONFIG[fig]
    gen_id = cfg["figure"]

    fmt = _amf3_object([
        ("cfg_formation_id", _amf3_int(1001)),
        ("level",            _amf3_int(1)),
        ("pos_1",            _amf3_int(gen_id)),

        ("pos_2",            _amf3_int(0)),

        ("pos_3",            _amf3_int(0)),

        ("pos_4",            _amf3_int(0)),

        ("pos_5",            _amf3_int(0)),

        ("pos_6",            _amf3_int(0)),

        ("pos_7",            _amf3_int(0)),

        ("pos_8",            _amf3_int(0)),

        ("pos_9",            _amf3_int(0)),

    ])

    return _amf3_array([fmt])





def _build_general_data() -> bytes:

    """Build general data container object expected by onGeneral / opLoginData."""

    role = _get_role()

    fields = [

        ("generals",        _build_generals_list()),

        ("formations",      _build_formations_list()),

        ("formation_level", _amf3_int(1)),

        ("copper",          _amf3_double(role.get("copper", 100000))),

        ("gold",            _amf3_int(role.get("gold", 5000))),

        ("exploit",         _amf3_int(role.get("exploit", 1000))),

        ("request_code",    _amf3_int(0)),

        ("error_code",      _amf3_int(0)),

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
        lvl = int(item.get("level", 1))
        # 装备强化等级必须双向对齐 level 与 star，且至少为 1（由客户端 USER_ITEM+0x10 读取展示）
        star_val = int(item.get("star", 0))
        if star_val <= 0:
            star_val = lvl if lvl > 0 else 1
            item["star"] = star_val
        if lvl <= 0:
            lvl = star_val
            item["level"] = lvl
        it = _amf3_object([
            ("item_id",      _amf3_int(int(item.get("item_id", 0)))),
            ("cfg_item_id",  _amf3_int(int(item.get("cfg_item_id", 0)))),
            ("amount",       _amf3_int(int(item.get("amount", 1)))),
            ("level",        _amf3_int(lvl)),
            ("star",         _amf3_int(star_val)),
            ("rise",         _amf3_int(int(item.get("rise", 0)))),
            ("hole1",        _amf3_int(int(item.get("hole1", 0)))),
            ("hole2",        _amf3_int(int(item.get("hole2", 0)))),
            ("hole3",        _amf3_int(int(item.get("hole3", 0)))),
            ("hole4",        _amf3_int(int(item.get("hole4", 0)))),
            ("hole5",        _amf3_int(int(item.get("hole5", 0)))),
            ("hole6",        _amf3_int(int(item.get("hole6", 0)))),
            ("equiped",      _amf3_bool(bool(item.get("equiped", 0)))),
        ])
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

    # ★ DYNAMIC NPC loading from cfg_npc table — supports ALL scenes
    try:
        conn = sqlite3.connect(DB_PATH)
        conn.row_factory = sqlite3.Row
        npc_rows = conn.execute(
            "SELECT cfg_npc_id, name, face, figure, scene_x, scene_y FROM cfg_npc WHERE cfg_scene_id = ? ORDER BY cfg_npc_id",
            (cur_scene,)
        ).fetchall()
        conn.close()
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
        print(f"  [SCENE {cur_scene}] Loaded {len(npc_rows)} NPCs from db", flush=True)
    except Exception as e:
        print(f"  [SCENE] Failed to load NPCs from db: {e}", flush=True)

    fields = [
        ("error_code",    _amf3_int(0)),
        ("scene_id",      _amf3_int(cur_scene)),
        ("lufei_follows", _amf3_int(0)),
        ("persons",       _amf3_array(persons)),
        ("request_code",  _amf3_int(0)),
    ]
    body_amf3 = _amf3_object(fields)
    return _make_ack_message(correlation_id, body_amf3)





def _build_scenecheck_response(correlation_id: str) -> bytes:

    """Reply to SCENE.scenecheck matching OPDataManager::onScenceCheck."""

    fields = [

        ("can_pass_list",    _amf3_array([_amf3_int(2001), _amf3_int(1001), _amf3_int(1002), _amf3_int(1003)])),

        ("need_camp_list",   _amf3_array([])),

        ("unavailable_list", _amf3_array([])),

        ("error_code",       _amf3_int(0)),

        ("request_code",     _amf3_int(0)),

    ]

    body_amf3 = _amf3_object(fields)

    return _make_ack_message(correlation_id, body_amf3)





DB_PATH = r"d:\AI\work\xiaoxiaohaizei\onepiece-reconstructed.db"


def _pick_skill_for_slot(general_id: int, slot_idx: int, exclude: set = None) -> int:
    """Pick a cfg_skill_id for a general's skill slot (2 or 3).
    
    Deterministic: slot_idx 2 → passive index 0, slot_idx 3 → passive index 1.
    Each general gets a unique skill per slot, no repeats.
    """
    exclude = exclude or set()
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
    if job is None:
        return 11001

    try:
        c = sqlite3.connect(DB_PATH).cursor()
        c.execute("SELECT cfg_skill_id FROM cfg_skill WHERE job=? AND cfg_skill_id!=? AND rank=1 ORDER BY cfg_skill_id", (job, starter_skill or 0))
        all_candidates = [r[0] for r in c.fetchall()]
        c.close()
        passive_candidates = all_candidates[-6:] if len(all_candidates) >= 6 else all_candidates
        if passive_candidates:
            # ★ Deterministic: slot_idx 2 -> index 0, slot_idx 3 -> index 1
            # This guarantees no repeats and stable mapping
            idx = (slot_idx - 2) % len(passive_candidates)
            # But if the determined slot's skill is already excluded, skip to next
            while passive_candidates[idx] in exclude and len(exclude) < len(passive_candidates):
                idx = (idx + 1) % len(passive_candidates)
            return passive_candidates[idx]
    except Exception:
        pass
    return starter_skill or 11001


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
        camp_rows = conn.execute("SELECT cfg_camp_id, require_camp_id, last_order FROM cfg_camp WHERE scene_id = ? ORDER BY cfg_camp_id", (scene_id,)).fetchall()
        for cid, req_cid, last_order in camp_rows:
            cid = int(cid)
            req_cid = int(req_cid)
            last_order = int(last_order) if last_order else 5
            army_rows = conn.execute("SELECT cfg_army_id FROM cfg_army WHERE cfg_camp_id = ?", (cid,)).fetchall()
            defeated_count = sum(1 for (aid,) in army_rows if camp_stars.get(str(aid), 0) > 0)
            total_count = len(army_rows) if army_rows else last_order
            is_finish = 1 if (defeated_count >= total_count and total_count > 0) else 0

            is_open = 1
            if req_cid > 0:
                req_armies = conn.execute("SELECT cfg_army_id FROM cfg_army WHERE cfg_camp_id = ?", (req_cid,)).fetchall()
                if req_armies:
                    req_defeated = sum(1 for (aid,) in req_armies if camp_stars.get(str(aid), 0) > 0)
                    is_open = 1 if req_defeated >= len(req_armies) else 0

            camps.append(_amf3_object([
                ("cfg_camp_id",   _amf3_int(cid)),
                ("camp_score",    _amf3_int(defeated_count)),
                ("memcamp_score", _amf3_int(defeated_count)),
                ("is_finish",     _amf3_int(is_finish)),
            ]))
            elite_list.append(_amf3_object([
                ("elite_cfg_camp_id", _amf3_int(cid)),
                ("is_open",           _amf3_int(is_open)),
                ("is_finish",         _amf3_int(is_finish)),
            ]))
        conn.close()
    except Exception as e:
        print(f"  [CAMP] error in campByScene: {e}", flush=True)

    if not camps:
        camps = [
            _amf3_object([
                ("cfg_camp_id",   _amf3_int(1001)),
                ("camp_score",    _amf3_int(5)),
                ("memcamp_score", _amf3_int(5)),
                ("is_finish",     _amf3_int(1)),
            ]),
            _amf3_object([
                ("cfg_camp_id",   _amf3_int(1002)),
                ("camp_score",    _amf3_int(0)),
                ("memcamp_score", _amf3_int(0)),
                ("is_finish",     _amf3_int(0)),
            ]),
        ]
        elite_list = [
            _amf3_object([
                ("elite_cfg_camp_id", _amf3_int(1001)),
                ("is_open",           _amf3_int(1)),
                ("is_finish",         _amf3_int(1)),
            ]),
            _amf3_object([
                ("elite_cfg_camp_id", _amf3_int(1002)),
                ("is_open",           _amf3_int(1)),
                ("is_finish",         _amf3_int(0)),
            ]),
        ]

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
        rows = conn.execute("SELECT cfg_army_id, [order] FROM cfg_army WHERE cfg_camp_id = ? OR cfg_camp_id = ? ORDER BY CAST([order] AS INT)", (camp_id, str(camp_id))).fetchall()
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
    return armies


def _build_camp_info_response(correlation_id: str, camp_id: int = 1001) -> bytes:
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
        ("error_code",      _amf3_int(0)),
    ]
    body_amf3 = _amf3_object(fields)
    return _make_ack_message(correlation_id, body_amf3)



def _build_camp_reward_response(correlation_id: str) -> bytes:
    """Reply to CAMP.campReward matching OPDataManager::onCampRewardInfo."""
    body_amf3 = _amf3_array([])
    return _make_ack_message(correlation_id, body_amf3)


def _build_scene_change_response(correlation_id: str, target_scene: int, x: int, y: int) -> bytes:

    """Reply to SCENE.change — teleport to new scene."""

    role = _get_role()

    role["scene_id"] = target_scene

    role["scene_x"] = x

    role["scene_y"] = y

    _save()

    print(f"  [SCENE CHANGE] -> scene={target_scene} x={x} y={y}", flush=True)



    fields = [

        ("scene_id",     _amf3_int(target_scene)),

        ("scene_x",      _amf3_int(x)),

        ("scene_y",      _amf3_int(y)),

        ("request_code", _amf3_int(0)),

        ("error_code",   _amf3_int(0)),

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
        conn = sqlite3.connect(DB_PATH)
        cur = conn.cursor()
        cur.execute("SELECT reward_copper, reward_experience, reward_item_1, reward_item_amount_1, reward_item_2, reward_item_amount_2 FROM cfg_task WHERE cfg_task_id = ?", (current,))
        r = cur.fetchone()
        if r:
            # ★ FIX: copper 封顶 999999999, exp 加到 role["exp"] 里
            role["copper"] = min(role.get("copper", 0) + (r[0] or 0), 999999999)
            role.setdefault("exp", 0)
            role["exp"] = role.get("exp", 0) + (r[1] or 0)
            it1, amt1 = r[2], r[3]
            it2, amt2 = r[4], r[5]
            if it1 and amt1 and int(it1) > 0 and int(amt1) > 0:
                _add_item_to_bag(int(it1), int(amt1))
            if it2 and amt2 and int(it2) > 0 and int(amt2) > 0:
                _add_item_to_bag(int(it2), int(amt2))

        # ★ FIX: exp 升级循环 — 用 cfg_level_experience 表
        cur.execute("SELECT experience_need FROM cfg_level_experience WHERE level = ?", (role["level"],))
        while True:
            cur.execute("SELECT experience_need FROM cfg_level_experience WHERE level = ?", (role["level"],))
            row = cur.fetchone()
            if not row:
                break
            exp_need = int(row[0])
            if role["exp"] >= exp_need and role["level"] < 100:
                role["exp"] -= exp_need
                role["level"] += 1
                role.setdefault("skill_point", 0)
                role["skill_point"] += 1
                print(f"  [LEVEL UP] Task {current} → Lv {role['level']} (remain exp: {role['exp']}, skill_point+1)", flush=True)
            else:
                break

        # 查找主线后续任务
        next_row = cur.execute("SELECT cfg_task_id FROM cfg_task WHERE require_task = ? ORDER BY cfg_task_id", (current,)).fetchone()
        if next_row:
            next_task = int(next_row[0])
        else:
            cand = current + 1
            if cur.execute("SELECT cfg_task_id FROM cfg_task WHERE cfg_task_id = ?", (cand,)).fetchone():
                next_task = cand
            else:
                next_task = None
        conn.close()
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
        conn = sqlite3.connect(DB_PATH)
        row = conn.execute("SELECT complete_type, complete_category FROM cfg_task WHERE cfg_task_id = ?", (current_task,)).fetchone()
        if row and int(row[0]) == 4:
            target_aid = int(row[1])
            target_camp_row = conn.execute("SELECT cfg_camp_id FROM cfg_army WHERE cfg_army_id = ?", (target_aid,)).fetchone()
            target_camp = int(target_camp_row[0]) if target_camp_row else 0
            if camp_id == target_aid or (target_camp > 0 and camp_id == target_camp):
                role["task_completed"] = True
                wins[str(target_aid)] = max(wins.get(str(target_aid), 0), 1)
                camp_stars[str(target_aid)] = 3
                print(f"  [TASK] Army {target_aid} defeated -> Task {current_task} ready to submit!", flush=True)
                _save()
        conn.close()
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
    reward_item_1 = 0
    reward_item_amt_1 = 0
    leveled_up = False

    if win:
        camp_stars[str(camp_id)] = max(camp_stars.get(str(camp_id), 0), 3)

        try:
            conn = sqlite3.connect(DB_PATH)
            cur = conn.cursor()

            # Check if current task matches this battle (complete_type=4, complete_category=camp_id/army_id)
            cur_task = role.get("current_task")
            if cur_task:
                row = cur.execute(
                    "SELECT complete_type, complete_category, reward_copper, reward_experience, "
                    "reward_item_1, reward_item_amount_1 FROM cfg_task WHERE cfg_task_id = ?",
                    (cur_task,)
                ).fetchone()
                if row:
                    ctype, ccat = int(row[0]), int(row[1])
                    # For battle tasks, complete_category IS the army_id (which equals our camp_id arg)
                    if ctype == 4 and ccat == camp_id:
                        reward_copper = int(row[2] or 500)
                        reward_experience = int(row[3] or 100)
                        reward_item_1 = int(row[4] or 0)
                        reward_item_amt_1 = int(row[5] or 0)
                        print(f"  [BATTLE] Task {cur_task} battle match → copper={reward_copper} exp={reward_experience} item={reward_item_1}", flush=True)
                    else:
                        # Not a task battle — give base camp reward
                        reward_copper = 500
                        reward_experience = 100
                else:
                    reward_copper = 500
                    reward_experience = 100
            conn.close()
        except Exception as e:
            print(f"  [BATTLE] reward lookup error: {e}", flush=True)

        # Apply rewards
        role["copper"] = min(role.get("copper", 0) + reward_copper, 999999999)
        role.setdefault("exp", 0)
        role["exp"] = role.get("exp", 0) + reward_experience

        # Level up using cfg_level_experience table
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
                    role["level"] += 1
                    role.setdefault("skill_point", 0)
                    role["skill_point"] += 1
                    leveled_up = True
                    print(f"  [LEVEL UP] → Lv {role['level']} (exp remaining: {role['exp']}, skill_point+1)", flush=True)
                else:
                    break
            conn.close()
        except Exception as e:
            print(f"  [BATTLE] level check error: {e}", flush=True)

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

    # 1. Player team (attacker)
    atk_skill = _amf3_object([
        ("cfg_skill_id", _amf3_int(cfg["skill"])),
        ("idx",          _amf3_int(1)),
        ("level",        _amf3_int(1)),
    ])
    atk_gen = _amf3_object([
        ("position",         _amf3_int(1)),
        ("id",               _amf3_int(cfg["figure"])),
        ("cfg_general_id",   _amf3_int(cfg["cfg_id"])),
        ("name",             _amf3_string(role["name"])),
        ("face",             _amf3_int(cfg["face"])),
        ("figure",           _amf3_int(cfg["figure"])),
        ("quality",          _amf3_int(3)),
        ("level",            _amf3_int(role["level"])),
        ("health_point",     _amf3_int(600)),
        ("health_point_max", _amf3_int(600)),
        ("morale",           _amf3_int(50)),
        ("category",         _amf3_int(1)),
        ("skill_list",       _amf3_array([atk_skill])),
    ])

    # 2. Enemy team
    def_name = "海贼部队"
    def_face = 1001
    def_figure = 1001
    try:
        conn = sqlite3.connect(DB_PATH)
        row = conn.execute("SELECT name, face, figure FROM cfg_army WHERE cfg_army_id = ?", (camp_id,)).fetchone()
        conn.close()
        if row:
            def_name = row[0]
            def_face = int(row[1])
            def_figure = int(row[2])
    except Exception:
        pass

    def_skill = _amf3_object([
        ("cfg_skill_id", _amf3_int(11003)),
        ("idx",          _amf3_int(1)),
        ("level",        _amf3_int(1)),
    ])
    def_gen = _amf3_object([
        ("position",         _amf3_int(1)),
        ("id",               _amf3_int(2)),
        ("cfg_general_id",   _amf3_int(100001)),
        ("name",             _amf3_string(def_name)),
        ("face",             _amf3_int(def_face)),
        ("figure",           _amf3_int(def_figure)),
        ("quality",          _amf3_int(1)),
        ("level",            _amf3_int(1)),
        ("health_point",     _amf3_int(224)),
        ("health_point_max", _amf3_int(224)),
        ("morale",           _amf3_int(50)),
        ("category",         _amf3_int(2)),
        ("skill_list",       _amf3_array([def_skill])),
    ])

    prep = _amf3_object([
        ("attack_role_id",        _amf3_int(role["role_id"])),
        ("attack_role_name",      _amf3_string(role["name"])),
        ("attack_formation_shape",_amf3_int(1)),
        ("attack_formation_level",_amf3_int(1)),
        ("attack_generals",       _amf3_array([atk_gen])),
        ("attack_pet",            _amf3_array([])),
        ("defend_role_id",        _amf3_int(camp_id)),
        ("defend_role_name",      _amf3_string(def_name)),
        ("defend_formation_shape",_amf3_int(1)),
        ("defend_formation_level",_amf3_int(1)),
        ("defend_generals",       _amf3_array([def_gen])),
        ("defend_pet",            _amf3_array([])),
        ("background",            _amf3_int(1)),
        ("battle_id",             _amf3_int(1)),
    ])

    # 3. Single-round combat (player one-shots enemy for clean offline playback)
    effect_target = _amf3_object([
        ("target_side",           _amf3_int(2)),
        ("target_position",       _amf3_int(1)),
        ("target_health_point",   _amf3_int(0)),
        ("target_morale",         _amf3_int(0)),
        ("action_value",          _amf3_int(224)),
        ("action_type",           _amf3_int(1)),
    ])
    round_action = _amf3_object([
        ("action_type",           _amf3_int(1)),
        ("action_value",          _amf3_int(224)),
        ("action_target_side",    _amf3_int(2)),
        ("action_target_position",_amf3_int(1)),
        ("action_target_morale",  _amf3_int(0)),
        ("effect_targets",        _amf3_array([effect_target])),
    ])
    combat_round = _amf3_object([
        ("battle_id",             _amf3_int(1)),
        ("caster_side",           _amf3_int(1)),
        ("caster_position",       _amf3_int(1)),
        ("now_boold_point",       _amf3_int(600)),
        ("max_boold_point",       _amf3_int(600)),
        ("face",                  _amf3_int(cfg["face"])),
        ("defend_pet_morale",     _amf3_int(0)),
        ("attack_pet_morale",     _amf3_int(0)),
        ("caster_round_action",   round_action),
        ("caster_pre_action_buff_list", _amf3_array([])),
        ("caster_pre_action_list",      _amf3_array([])),
        ("caster_after_action_list",    _amf3_array([])),
    ])

    # 4. Victory settlement — uses ACTUAL reward values computed above
    res = _amf3_object([
        ("winner",            _amf3_int(1 if win else 0)),
        ("score",             _amf3_int(5)),
        ("can_skip",          _amf3_int(1)),
        ("is_npc",            _amf3_int(1)),
        ("reward_copper",     _amf3_int(reward_copper)),
        ("reward_experience", _amf3_int(reward_experience)),
        ("reward_exploit",    _amf3_int(10)),
        ("prestige",          _amf3_int(5)),
        ("role_id",           _amf3_int(role["role_id"])),
        ("reward_item",       _amf3_array([])),
        ("story_word",        _amf3_string("")),
        ("role_rank",         _amf3_int(1)),
        ("arena_battle",      _amf3_int(0)),
        ("copper",            _amf3_double(float(role["copper"]))),
        ("boss_battle",       _amf3_int(0)),
        ("slave_battle",      _amf3_int(0)),
        ("damage",            _amf3_int(224)),
        ("item_amount",       _amf3_int(0)),
        ("target_name",       _amf3_string(def_name)),
        ("attackScore",       _amf3_int(100)),
    ])

    fields = [
        ("copper",                 _amf3_double(float(role["copper"]))),
        ("action_point",           _amf3_int(role["action_point"])),
        ("prepare_data",           prep),
        ("result_data",            res),
        ("round_data_list",        _amf3_array([combat_round])),
        ("story_word",             _amf3_int(0)),
        ("attack_formation_level", _amf3_int(1)),
        ("attack_role_name",       _amf3_string(role["name"])),
        ("battle_id",              _amf3_int(1)),
        ("defend_formation_shape", _amf3_int(1)),
        ("result",                 _amf3_int(1 if win else 0)),
        ("camp_id",                _amf3_int(camp_id)),
        ("exp",                    _amf3_int(reward_experience if win else 0)),
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

    fields = [
        ("generals",        _build_generals_list()),
        ("formations",      _build_formations_list()),
        ("formation_level", _amf3_int(1)),
        ("copper",          _amf3_double(role.get("copper", 100000))),
        ("gold",            _amf3_int(role.get("gold", 5000))),
        ("exploit",         _amf3_int(role.get("exploit", 1000))),
        ("general_data",    _build_general_data()),
        ("talent_list",     _amf3_array(talent_list)),
        ("passive_skill_list", _build_passive_candidates()),
        ("request_code",    _amf3_int(0)),
        ("error_code",      _amf3_int(0)),
    ]
    return _amf3_object(fields)


def _build_general_response(correlation_id: str) -> bytes:
    return _make_ack_message(correlation_id, _build_general_body_amf3())





def _build_activity_response(correlation_id: str) -> bytes:

    fields = [

        ("activity_data", b"\x09\x01\x01"),

        ("request_code",  _amf3_int(0)),

        ("error_code",    _amf3_int(0)),

    ]

    body_amf3 = _amf3_object(fields)

    return _make_ack_message(correlation_id, body_amf3)





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

def _build_item_response(correlation_id: str) -> bytes:
    role = _get_role()
    items_amf3 = _build_player_items_amf3()
    fields = [
        ("prestige",     _amf3_int(int(role.get("prestige", 100)))),
        ("copper",       _amf3_double(float(role.get("copper", 100000)))),
        ("gold",         _amf3_int(int(role.get("gold", 5000)))),
        ("action_point", _amf3_int(int(role.get("action_point", 100)))),
        ("exploit",      _amf3_int(int(role.get("exploit", 0)))),
        ("items",        items_amf3),
        ("item_data",    _build_item_data()),
        ("request_code", _amf3_int(0)),
        ("error_code",   _amf3_int(0)),
    ]
    body_amf3 = _amf3_object(fields)
    return _make_ack_message(correlation_id, body_amf3)

def _handle_item_request(operation: str, body: list, correlation_id: str) -> bytes:
    role = _get_role()
    items = _get_player_items()
    equipments = role.setdefault("equipments", {"weapon": 0, "armor": 0, "horse": 0, "cloak": 0, "amulet": 0, "misc": 0})
    op_lower = operation.lower()

    if "using" in op_lower or "use" in op_lower:
        # body: [role_id, code, general_id, item_id]
        item_id = None
        if isinstance(body, list) and len(body) >= 4:
            item_id = body[3]
        elif isinstance(body, list) and len(body) >= 1:
            item_id = body[-1]
        
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
                # 穿戴装备：卸下原本槽位中的同部位装备
                for it in items:
                    if _get_item_part(it) == part and it.get("equiped"):
                        it["equiped"] = 0
                        it["general_id"] = 0
                target_item["equiped"] = 1
                target_item["general_id"] = role.get("figure", 1008)
                equipments[slot_name] = target_item["item_id"]
                print(f"  [EQUIP] Equipped item {item_id} (cfg {cfg_id}) to slot {slot_name} (part {part})", flush=True)
            else:
                amt = target_item.get("amount", 1) - 1
                if amt <= 0:
                    items.remove(target_item)
                else:
                    target_item["amount"] = amt
                role["copper"] = role.get("copper", 100000) + 1000
                print(f"  [ITEM] Used consumable item {item_id} (cfg {cfg_id})", flush=True)
            _save()

    elif any(k in op_lower for k in ["upgrade", "rise", "forge"]):
        return _handle_forge_request(body, correlation_id)

    elif "unequip" in op_lower:
        # body: [role_id, code, general_id, slot_or_id]
        slot_or_id = body[3] if isinstance(body, list) and len(body) >= 4 else None
        target_item = None
        if isinstance(slot_or_id, int):
            if slot_or_id >= 1000:
                for it in items:
                    if it.get("item_id") == slot_or_id:
                        target_item = it
                        break
            else:
                # 客户端发出的卸下参数 body[3] 就是部位 part 本身 (1:武器, 2:衣服, 3:鞋子, 4:披风, 5:帽子, 6:戒指)
                target_part = slot_or_id
                for it in items:
                    if _get_item_part(it) == target_part and it.get("equiped"):
                        target_item = it
                        break
        
        if target_item:
            target_item["equiped"] = 0
            target_item["general_id"] = 0
            part = _get_item_part(target_item)
            if part in SLOT_NAME_MAP:
                equipments[SLOT_NAME_MAP[part]] = 0
            print(f"  [UNEQUIP] Unequipped item {target_item.get('item_id')} (cfg {target_item.get('cfg_item_id')}, part {part})", flush=True)
        _save()

    return _build_item_response(correlation_id)





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
    fields = [
        ("role_data",    _build_role_data()),
        ("request_code", _amf3_int(0)),
        ("error_code",   _amf3_int(0)),
    ]
    body_amf3 = _amf3_object(fields)
    return _make_ack_message(correlation_id, body_amf3)

def _build_task_get_response(correlation_id: str) -> bytes:
    return _make_ack_message(correlation_id, _build_task_data())

def _build_task_submit_response(correlation_id: str, task_id: int, action: int = 0) -> bytes:
    role = _get_role()
    current = role.get("current_task")
    if action == 2:
        role["task_accepted"] = True
        try:
            conn = sqlite3.connect(DB_PATH)
            cur = conn.cursor()
            cur.execute("SELECT complete_type FROM cfg_task WHERE cfg_task_id = ?", (current,))
            r = cur.fetchone()
            conn.close()
            if r and r[0] in (0, 6, 9, 12, 106, 108):
                role["task_completed"] = True
                print(f"  [TASK] Accepted talk/equip/feature task {current} (type={r[0]}) -> immediately ready to complete!", flush=True)
            else:
                role["task_completed"] = False
                print(f"  [TASK] Accepted battle/other task {current}", flush=True)
        except Exception:
            pass
        _save()
    else:
        if task_id == current or task_id == 0:
            _complete_current_task()

    return _make_ack_message(correlation_id, _build_task_data())


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
                # 真实的切换场景请求
                sid = b2
                sx = b3
                sy = int(body[4]) if len(body) > 4 else 35
                print(f"  -> scene enter sid={sid} ({sx}, {sy})", flush=True)
                return _build_scene_response(correlation_id, sid, sx, sy)
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

        if "CAMPBYSCENE" in op_name:

            sid = int(body[1]) if len(body) > 1 and body[1] else 2001

            print(f"  -> camp by scene sid={sid}", flush=True)

            return _build_camp_by_scene_response(correlation_id, sid)

        if "CAMPREWARD" in op_name:
            print(f"  -> camp reward ACK", flush=True)
            return _build_camp_reward_response(correlation_id)

        camp_id = int(body[2]) if len(body) > 2 and body[2] else (int(body[1]) if len(body) > 1 and body[1] else 1001)

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
            # 船员技能槽解锁 — body=[role_id, cfg_skill_id_or_empty, general_id, slot_idx]
            role = _get_role()
            role.setdefault("skill_point", 0)
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

            if gen_id and slot_idx:
                aw_key = str(gen_id)
                role["awakened_skills"].setdefault(aw_key, {})
                if slot_idx in role["awakened_skills"][aw_key]:
                    print(f"  [skillAwaken] general {gen_id} slot {slot_idx} already unlocked", flush=True)
                elif role["skill_point"] <= 0:
                    print(f"  [skillAwaken] no skill_point left!", flush=True)
                else:
                    # ★ 收集已解锁的技能，exclude 掉避免重复
                    existing_skills = set()
                    if aw_key in role["awakened_skills"]:
                        for sidx, sinfo in role["awakened_skills"][aw_key].items():
                            if sidx != slot_idx:
                                existing_skills.add(sinfo.get("cfg_skill_id"))
                    print(f"  [skillAwaken] excluding existing: {existing_skills}", flush=True)
                    # ★ 客户端选了就用客户端的，没选才随机
                    if client_picked_skill:
                        skill_id = client_picked_skill
                        print(f"  [skillAwaken] using CLIENT-PICKED skill {skill_id}", flush=True)
                    else:
                        skill_id = _pick_skill_for_slot(gen_id, slot_idx, exclude=existing_skills)
                        print(f"  [skillAwaken] random skill {skill_id}", flush=True)
                    role["awakened_skills"][aw_key][slot_idx] = {"cfg_skill_id": skill_id, "level": 1}
                    role["skill_point"] -= 1
                    print(f"  [skillAwaken] general {gen_id} slot {slot_idx} → skill {skill_id} (level=1, sp={role['skill_point']})", flush=True)
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
                if slot_idx in slots:
                    del slots[slot_idx]
                    freed = 1
                    if not slots:
                        del role["awakened_skills"][str(gen_id)]
            if not freed:
                # 兜底：解析失败时按旧逻辑清空全部（避免卡住无法重置）
                freed = sum(len(slots) for slots in role["awakened_skills"].values())
                role["awakened_skills"] = {}
            role["skill_point"] = role.get("skill_point", 0) + freed
            _save()
            print(f"  -> skillClean OK (gen={gen_id}, slot={slot_idx}, freed {freed} skill_point, total={role['skill_point']})", flush=True)
            return _build_general_response(correlation_id)

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
            # 阵型设置
            print(f"  -> formation OK", flush=True)
            return _build_general_response(correlation_id)

        print("  -> general data", flush=True)
        return _build_general_response(correlation_id)



    # ── ACTIVITY ───────────────────────────────────────────────────────────────

    if "ACTIVITY" in op_upper:

        print("  -> activity ACK", flush=True)

        return _build_activity_response(correlation_id)



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
    if "MANOR" in op_upper or "FORGE" in op_upper:
        op_name = op_upper.split(".")[-1]
        op_upper_check = op_name.upper()

        if "TRAININGSTART" in op_upper_check or "TRAINING" in op_upper_check:
            # 开始训练船员 — 离线服直接成功 + 给一点经验
            role = _get_role()
            role.setdefault("exp", 0)
            role["exp"] += 1000
            _save()
            print(f"  -> manor.trainingStart OK (+1000 exp, total={role['exp']})", flush=True)
            return _build_general_response(correlation_id)

        if "TRAININGSTATUS" in op_upper_check or "TRAINING" in op_upper_check:
            # 训练状态查询
            print(f"  -> manor.trainingStatus OK", flush=True)
            return _build_general_response(correlation_id)

        if "FORGE" in op_name or "MANOR" in op_upper:
            print(f"  -> manor/forge handler: {operation}", flush=True)
            return _handle_forge_request(_extract_body(envelope), correlation_id)

        print(f"  -> manor generic ACK for {operation}", flush=True)
        return _build_simple_ack(correlation_id)

    # ── ITEM ───────────────────────────────────────────────────────────────────
    if "ITEM" in op_upper or any(k in op_upper for k in ["USING", "UNEQUIP", "UPGRADE", "FORGE", "RISE", "HAKI", "GEM"]):
        print(f"  -> item ACK for {operation}", flush=True)
        return _handle_item_request(operation, _extract_body(envelope), correlation_id)



    # Default

    print(f"  -> generic ACK for {operation!r}", flush=True)

    return _build_simple_ack(correlation_id)





# ── HTTP handler ──────────────────────────────────────────────────────────────



class Handler(BaseHTTPRequestHandler):

    server_version = "XiaoxiaoLocal/0.6"



    def _send(self, status: int, content_type: str, body: bytes) -> None:

        self.send_response(status)

        self.send_header("Content-Type", content_type)

        self.send_header("Content-Length", str(len(body)))

        self.send_header("Cache-Control", "no-store")

        self.send_header("Set-Cookie", "JSESSIONID=LOCAL_OFFLINE_SESSION_ID; Path=/")

        self.end_headers()

        self.wfile.write(body)



    def do_GET(self) -> None:

        path = urlsplit(self.path).path

        if path == "/serverlist.js":

            body = (ROOT / "serverlist.js").read_bytes()

            self._send(200, "application/json; charset=utf-8", body)

            return

        if path == "/health":

            role = _get_role()

            info = f"local gateway ready | role: {role.get('name','?')} lv{role.get('level',1)} task:{role.get('current_task','none')}\n"

            self._send(200, "text/plain; charset=utf-8", info.encode("utf-8"))

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



        if urlsplit(self.path).path != "/messagebroker/amf":

            self._send(404, "text/plain; charset=utf-8", b"not found\n")

            return



        try:

            reply = dispatch_amf(payload, stamp)

        except Exception as exc:

            print(f"  dispatch error: {exc}", flush=True)

            import traceback; traceback.print_exc()

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

    except KeyboardInterrupt:

        pass

    finally:

        server.server_close()





if __name__ == "__main__":

    main()

