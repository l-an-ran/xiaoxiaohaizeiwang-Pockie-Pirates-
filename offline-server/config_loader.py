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

    conn.close()
    _LOADED = True
    return True


def ensure_loaded():
    if not _LOADED:
        init_configs()


def get_task(task_id: int) -> Optional[Dict[str, Any]]:
    ensure_loaded()
    return TASKS.get(int(task_id))


def get_next_task(current_task_id: int) -> Optional[int]:
    ensure_loaded()
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
