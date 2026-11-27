# -*- coding: utf-8 -*-
"""
config_loader.py - High-performance in-memory SQLite config loader for XiaoxiaoHaizei Offline Server.
Preloads and caches all static game configurations from onepiece.db.
"""

import sqlite3
from pathlib import Path
from typing import Any, Dict, List, Optional

SERVER_DIR = Path(__file__).resolve().parent
DB_PATH = SERVER_DIR / "onepiece.db"
if not DB_PATH.exists():
    fallback = Path(r"d:\AI\work\xiaoxiaohaizei\onepiece-reconstructed.db")
    if fallback.exists():
        DB_PATH = fallback

TASKS: Dict[int, Dict[str, Any]] = {}
NEXT_TASK_MAP: Dict[int, int] = {}
SCENES: Dict[int, Dict[str, Any]] = {}
CAMPS: Dict[int, Dict[str, Any]] = {}
ARMIES: Dict[int, Dict[str, Any]] = {}
MONSTERS: Dict[int, Dict[str, Any]] = {}
GENERALS: Dict[int, Dict[str, Any]] = {}
ITEMS: Dict[int, Dict[str, Any]] = {}
SOULS: Dict[int, Dict[str, Any]] = {}
SKILLS: Dict[int, Dict[str, Any]] = {}
LEVEL_EXP: Dict[int, int] = {}
NPCS_BY_SCENE: Dict[int, List[Dict[str, Any]]] = {}
OFFICIUM_LIST: List[int] = []

_LOADED = False


def _dict_from_row(row: sqlite3.Row) -> Dict[str, Any]:
    return {k: row[k] for k in row.keys()}


def init_configs(db_file: Optional[Path] = None) -> bool:
    global _LOADED, DB_PATH
    if db_file:
        DB_PATH = Path(db_file)
    if not DB_PATH.exists():
        print(f"[CONFIG] Warning: database file not found at {DB_PATH}")
        return False

    print(f"[CONFIG] Preloading configuration from {DB_PATH} ...")
    TASKS.clear()
    NEXT_TASK_MAP.clear()
    SCENES.clear()
    CAMPS.clear()
    ARMIES.clear()
    MONSTERS.clear()
    GENERALS.clear()
    ITEMS.clear()
    SKILLS.clear()
    LEVEL_EXP.clear()
    NPCS_BY_SCENE.clear()
    OFFICIUM_LIST.clear()

    conn = sqlite3.connect(DB_PATH)
    conn.row_factory = sqlite3.Row
    cur = conn.cursor()

    # 1. Tasks
    try:
        rows = cur.execute("SELECT * FROM cfg_task WHERE cfg_task_id IS NOT NULL AND cfg_task_id > 1").fetchall()
        for r in rows:
            d = _dict_from_row(r)
            tid = int(d["cfg_task_id"])
            TASKS[tid] = d
            req = d.get("require_task")
            if req and int(req) > 0 and int(req) not in NEXT_TASK_MAP:
                NEXT_TASK_MAP[int(req)] = tid
        print(f"[CONFIG] Loaded {len(TASKS)} tasks")
    except Exception as e:
        print(f"[CONFIG] Error loading cfg_task: {e}")

    # 2. Scenes
    try:
        rows = cur.execute("SELECT * FROM cfg_scene WHERE cfg_scene_id IS NOT NULL").fetchall()
        for r in rows:
            d = _dict_from_row(r)
            sid = int(d["cfg_scene_id"])
            SCENES[sid] = d
        print(f"[CONFIG] Loaded {len(SCENES)} scenes")
    except Exception as e:
        print(f"[CONFIG] Error loading cfg_scene: {e}")

    # 3. Camps
    try:
        rows = cur.execute("SELECT * FROM cfg_camp WHERE cfg_camp_id IS NOT NULL").fetchall()
        for r in rows:
            d = _dict_from_row(r)
            cid = int(d["cfg_camp_id"])
            CAMPS[cid] = d
        print(f"[CONFIG] Loaded {len(CAMPS)} camps")
    except Exception as e:
        print(f"[CONFIG] Error loading cfg_camp: {e}")

    # 4. Armies
    try:
        rows = cur.execute("SELECT * FROM cfg_army WHERE cfg_army_id IS NOT NULL").fetchall()
        for r in rows:
            d = _dict_from_row(r)
            aid = int(d["cfg_army_id"])
            ARMIES[aid] = d
        print(f"[CONFIG] Loaded {len(ARMIES)} armies")
    except Exception as e:
        print(f"[CONFIG] Error loading cfg_army: {e}")

    # 5. Monsters
    try:
        rows = cur.execute("SELECT * FROM cfg_monster WHERE cfg_monster_id IS NOT NULL").fetchall()
        for r in rows:
            d = _dict_from_row(r)
            mid = int(d["cfg_monster_id"])
            MONSTERS[mid] = d
        print(f"[CONFIG] Loaded {len(MONSTERS)} monsters")
    except Exception as e:
        print(f"[CONFIG] Error loading cfg_monster: {e}")

    # 6. Generals
    try:
        rows = cur.execute("SELECT * FROM cfg_general WHERE cfg_general_id IS NOT NULL").fetchall()
        for r in rows:
            d = _dict_from_row(r)
            gid = int(d["cfg_general_id"])
            GENERALS[gid] = d
        print(f"[CONFIG] Loaded {len(GENERALS)} generals")
    except Exception as e:
        print(f"[CONFIG] Error loading cfg_general: {e}")

    # 7. Items
    try:
        rows = cur.execute("SELECT * FROM cfg_item WHERE cfg_item_id IS NOT NULL").fetchall()
        for r in rows:
            d = _dict_from_row(r)
            iid = int(d["cfg_item_id"])
            ITEMS[iid] = d
        print(f"[CONFIG] Loaded {len(ITEMS)} items")
    except Exception as e:
        print(f"[CONFIG] Error loading cfg_item: {e}")

    # 8. Skills
    try:
        rows = cur.execute("SELECT * FROM cfg_skill WHERE cfg_skill_id IS NOT NULL").fetchall()
        for r in rows:
            d = _dict_from_row(r)
            skid = int(d["cfg_skill_id"])
            SKILLS[skid] = d
        print(f"[CONFIG] Loaded {len(SKILLS)} skills")
    except Exception as e:
        print(f"[CONFIG] Error loading cfg_skill: {e}")

    # 9. Level Experience
    try:
        rows = cur.execute("SELECT level, experience_need FROM cfg_level_experience WHERE level IS NOT NULL").fetchall()
        for r in rows:
            LEVEL_EXP[int(r["level"])] = int(r["experience_need"])
        print(f"[CONFIG] Loaded {len(LEVEL_EXP)} level-exp thresholds")
    except Exception as e:
        print(f"[CONFIG] Error loading cfg_level_experience: {e}")

    # 10. NPCs by scene
    try:
        rows = cur.execute("SELECT * FROM cfg_npc WHERE cfg_scene_id IS NOT NULL ORDER BY cfg_npc_id").fetchall()
        for r in rows:
            d = _dict_from_row(r)
            sid = int(d["cfg_scene_id"])
            NPCS_BY_SCENE.setdefault(sid, []).append(d)
        print(f"[CONFIG] Loaded {sum(len(v) for v in NPCS_BY_SCENE.values())} NPCs across {len(NPCS_BY_SCENE)} scenes")
    except Exception as e:
        print(f"[CONFIG] Error loading cfg_npc: {e}")

    # 11. Officium list
    try:
        rows = cur.execute("SELECT officium FROM cfg_level_prestige WHERE officium IS NOT NULL ORDER BY officium ASC").fetchall()
        for r in rows:
            OFFICIUM_LIST.append(int(r["officium"]))
        print(f"[CONFIG] Loaded {len(OFFICIUM_LIST)} officium ranks")
    except Exception as e:
        print(f"[CONFIG] Error loading cfg_level_prestige: {e}")

    # 12. Souls
    SOULS.clear()
    try:
        rows = cur.execute("SELECT * FROM cfg_soul WHERE cfg_soul_id IS NOT NULL").fetchall()
        for r in rows:
            d = _dict_from_row(r)
            SOULS[int(d["cfg_soul_id"])] = d
        print(f"[CONFIG] Loaded {len(SOULS)} souls")
    except Exception as e:
        print(f"[CONFIG] Error loading cfg_soul: {e}")

    conn.close()
    _LOADED = True
    return True


def ensure_loaded():
    if not _LOADED:
        init_configs()


def get_task(task_id: int) -> Optional[Dict[str, Any]]:
    ensure_loaded()
    return TASKS.get(int(task_id))


def get_next_task(current_task_id: int, nation: int = 0) -> Optional[int]:
    ensure_loaded()
    # 0. Faction branch check
    if current_task_id == 100039:
        return 120001 if nation == 2 else 110001
    if nation > 0:
        for tid, t in TASKS.items():
            if t.get("require_task") and int(t["require_task"]) == current_task_id:
                req_nat = int(t.get("require_nation") or 0)
                if req_nat == nation:
                    return tid
    # 1. Direct match by require_task map
    if current_task_id in NEXT_TASK_MAP:
        return NEXT_TASK_MAP[current_task_id]
    # 2. Candidate + 1
    cand = current_task_id + 1
    if cand in TASKS:
        return cand
    return None


def get_scene(scene_id: int) -> Optional[Dict[str, Any]]:
    ensure_loaded()
    return SCENES.get(int(scene_id))


def get_camp(camp_id: int) -> Optional[Dict[str, Any]]:
    ensure_loaded()
    return CAMPS.get(int(camp_id))


def get_army(army_id: int) -> Optional[Dict[str, Any]]:
    ensure_loaded()
    return ARMIES.get(int(army_id))


def get_monster(monster_id: int) -> Optional[Dict[str, Any]]:
    ensure_loaded()
    return MONSTERS.get(int(monster_id))


def get_general(general_id: int) -> Optional[Dict[str, Any]]:
    ensure_loaded()
    return GENERALS.get(int(general_id))


def get_item(item_id: int) -> Optional[Dict[str, Any]]:
    ensure_loaded()
    return ITEMS.get(int(item_id))


def get_soul(soul_id: int) -> Optional[Dict[str, Any]]:
    ensure_loaded()
    return SOULS.get(int(soul_id))


SOUL_SLOT_KEYS = (
    "main_soul", "vice_soul", "tert_soul", "fourth_soul",
    "fifth_soul", "sixth_soul", "seventh_soul", "eighth_soul",
)

_EQUIP_ABILITY_FIELD = {
    1: "hp",
    2: "physical_attack",
    3: "physical_defence",
    4: "spell_attack",
    5: "spell_defence",
    9: "speed",
}

_SOUL_ABILITY_FIELD = {
    1: "hp",
    2: "physical_attack",
    3: "physical_defence",
    4: "spell_attack",
    5: "spell_defence",
    6: "hit",
    7: "dodge",
    8: "critic",
    9: "speed",
    12: "parray",
    13: "parry_penerate",
    14: "critic_resist",
}


def calc_equip_soul_bonuses(
    items: List[Dict[str, Any]],
    souls: List[Dict[str, Any]],
    general_souls: Dict[str, Any],
    is_proto: bool,
    gid: int,
    proto_ids: set,
) -> Dict[str, Any]:
    """Compute cumulative equip + soul attribute bonuses, scores, and resolved 8 soul slots."""
    ensure_loaded()
    bonuses: Dict[str, Any] = {
        "hp": 0,
        "physical_attack": 0,
        "physical_defence": 0,
        "spell_attack": 0,
        "spell_defence": 0,
        "speed": 0,
        "hit": 0,
        "dodge": 0,
        "critic": 0,
        "critic_resist": 0,
        "physical_penerate": 0,
        "spell_penerate": 0,
        "physical_derate": 0,
        "spell_derate": 0,
        "parray": 0,
        "parry_penerate": 0,
        "equip_score": 0,
        "soul_score": 0,
        "soul_slots": {sk: 0 for sk in SOUL_SLOT_KEYS},
    }

    for it in items:
        if int(it.get("equiped", 0) or 0) != 1:
            continue
        it_gid = int(it.get("general_id", 0) or 0)
        if not ((is_proto and it_gid in proto_ids) or (not is_proto and it_gid == gid)):
            continue
        cfg = get_item(int(it.get("cfg_item_id", 0) or 0))
        if not cfg:
            continue
        bonuses["hp"] += int(cfg.get("add_hp") or 0)
        bonuses["physical_attack"] += int(cfg.get("add_phy_atk") or 0)
        bonuses["physical_defence"] += int(cfg.get("add_phy_def") or 0)
        bonuses["spell_attack"] += int(cfg.get("add_spe_atk") or 0)
        bonuses["spell_defence"] += int(cfg.get("add_spe_def") or 0)
        bonuses["hit"] += int(cfg.get("add_hit") or 0)
        bonuses["dodge"] += int(cfg.get("add_dodge") or 0)
        bonuses["critic"] += int(cfg.get("add_crit") or 0)
        bonuses["speed"] += int(cfg.get("add_speed") or 0)
        bonuses["parray"] += int(cfg.get("add_parry") or 0)
        bonuses["parry_penerate"] += int(cfg.get("add_againt_parry") or 0)
        bonuses["critic_resist"] += int(cfg.get("add_againt_crit") or 0)

        enh_lvl = max(1, int(it.get("star") or it.get("level") or 1))
        grow = int(cfg.get("ability_grow") or 0) * (enh_lvl - 1)
        field = _EQUIP_ABILITY_FIELD.get(int(cfg.get("ability_type") or 0))
        if field and grow:
            bonuses[field] += grow
        qual = max(1, int(cfg.get("quality") or 1))
        bonuses["equip_score"] += qual * 50 + enh_lvl * 25

    soul_by_id = {
        int(s.get("soul_id", 0)): s
        for s in souls
        if isinstance(s, dict) and int(s.get("soul_id", 0) or 0) > 0
    }
    slots = bonuses["soul_slots"]

    # Prefer authoritative general_id/pos flags on bag souls first
    for s in souls:
        if not isinstance(s, dict) or int(s.get("is_equiped", 0) or 0) != 1:
            continue
        s_gid = int(s.get("general_id", 0) or 0)
        pos = int(s.get("pos", 0) or 0)
        if not (1 <= pos <= 8):
            continue
        if (is_proto and s_gid in proto_ids) or (not is_proto and s_gid == gid):
            slots[SOUL_SLOT_KEYS[pos - 1]] = int(s.get("soul_id", 0))

    # Backfill from general_souls map (reconciling legacy save state)
    if isinstance(general_souls, dict):
        key_candidates = ([str(gid)] + [str(pid) for pid in sorted(proto_ids)]) if is_proto else [str(gid)]
        for k in key_candidates:
            gs = general_souls.get(k)
            if not isinstance(gs, dict):
                continue
            for sk in SOUL_SLOT_KEYS:
                if slots[sk] == 0:
                    sid = int(gs.get(sk, 0) or 0)
                    if sid in soul_by_id:
                        slots[sk] = sid

    for sk in SOUL_SLOT_KEYS:
        sid = slots[sk]
        if sid <= 0 or sid not in soul_by_id:
            slots[sk] = 0
            continue
        s = soul_by_id[sid]
        scfg = get_soul(int(s.get("cfg_soul_id", 0) or 0))
        if not scfg:
            continue
        slvl = max(1, int(s.get("level", 1) or 1))
        atype = int(scfg.get("ability_type") or 0)
        abase = int(scfg.get("ability_base") or 0)
        agrow = int(scfg.get("ability_grow") or 0)
        sval = abase + (slvl - 1) * agrow
        field = _SOUL_ABILITY_FIELD.get(atype)
        if field and sval:
            bonuses[field] += sval
        qual = max(1, int(scfg.get("quality") or 1))
        bonuses["soul_score"] += slvl * qual * 100

    return bonuses


def get_skill(skill_id: int) -> Optional[Dict[str, Any]]:
    ensure_loaded()
    return SKILLS.get(int(skill_id))


def get_exp_need(level: int) -> int:
    ensure_loaded()
    return LEVEL_EXP.get(int(level), 9999999)


def get_npcs_for_scene(scene_id: int) -> List[Dict[str, Any]]:
    ensure_loaded()
    return NPCS_BY_SCENE.get(int(scene_id), [])


def get_officium_for_level(level: int) -> int:
    ensure_loaded()
    if not OFFICIUM_LIST:
        return max(1, level)
    res = OFFICIUM_LIST[0]
    for off in OFFICIUM_LIST:
        if off <= level:
            res = off
        else:
            break
    return res


def get_skills_by_job(job: int, exclude_skill: int = 0, rank: int = 1) -> List[int]:
    ensure_loaded()
    matched = [
        skid for skid, sk in SKILLS.items()
        if sk.get("job") == job and skid != exclude_skill and sk.get("rank") == rank
    ]
    matched.sort()
    return matched


# Self-init on module import
init_configs()
