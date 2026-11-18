import sys
from pathlib import Path
sys.path.append(str(Path(__file__).parent.parent))

import server
import config_loader

config_loader.init_configs(Path(__file__).parent.parent.parent / "assets/Env/conf/full_db.sqlite")
role = server._get_role()
initial_task = role.get("current_task")
initial_scene = role.get("scene_id")

print("--- START CHAPTER 3 INTEGRATION TEST ---")

# 1. Test nation branch transition from 100039
role["current_task"] = 100039
role["task_accepted"] = True
role["task_completed"] = True
role["nation"] = 1
server._complete_current_task()
print(f"100039 completed -> Task: {role.get('current_task')}, Scene: {role.get('scene_id')}")
assert role.get("current_task") == 110001, f"Expected 110001, got {role.get('current_task')}"
assert role.get("scene_id") == 3001, f"Expected scene 3001, got {role.get('scene_id')}"

# 2. Test accepting 110002 (type 13: 苦工)
role["current_task"] = 110002
server._build_task_submit_response("cid1", 110002, action=2)
print(f"110002 accepted -> completed: {role.get('task_completed')}")
assert role.get("task_completed") is True

# 3. Test accepting 110004 (type 14: 培养)
role["current_task"] = 110004
server._build_task_submit_response("cid2", 110004, action=2)
print(f"110004 accepted -> completed: {role.get('task_completed')}")
assert role.get("task_completed") is True

# 4. Test completing 110006 ('前往桔子镇')
role["current_task"] = 110006
role["task_accepted"] = True
role["task_completed"] = True
server._complete_current_task()
print(f"110006 completed -> Task: {role.get('current_task')}, Scene: {role.get('scene_id')}")
assert role.get("current_task") == 110007
assert role.get("scene_id") == 2003

# 5. Test battle on 10705 (Task 110008)
role["current_task"] = 110008
role["task_accepted"] = True
role["task_completed"] = False
res = server._build_battle_result_response("cid3", 10705, win=True)
print(f"Battle 10705 -> result length: {len(res)}B, Task 110008 completed: {role.get('task_completed')}")
assert role.get("task_completed") is True

# 6. Test battle on 10710 (Task 110011 - 摩奇)
role["current_task"] = 110011
role["task_accepted"] = True
role["task_completed"] = False
res = server._build_battle_result_response("cid4", 10710, win=True)
print(f"Battle 10710 (摩奇) -> result length: {len(res)}B, Task 110011 completed: {role.get('task_completed')}")
assert role.get("task_completed") is True

# 7. Test battle on 10810 (Task 110015 - 卡巴吉)
role["current_task"] = 110015
role["task_accepted"] = True
role["task_completed"] = False
res = server._build_battle_result_response("cid5", 10810, win=True)
print(f"Battle 10810 (卡巴吉) -> result length: {len(res)}B, Task 110015 completed: {role.get('task_completed')}")
assert role.get("task_completed") is True

# 8. Test battle on 10915 (Task 110021 - 小丑巴基)
role["current_task"] = 110021
role["task_accepted"] = True
role["task_completed"] = False
res = server._build_battle_result_response("cid6", 10915, win=True)
print(f"Battle 10915 (小丑巴基) -> result length: {len(res)}B, Task 110021 completed: {role.get('task_completed')}")
assert role.get("task_completed") is True

# Revert role to initial state
role["current_task"] = initial_task
role["scene_id"] = initial_scene
role["task_accepted"] = True
role["task_completed"] = False
server._save()
print("--- ALL CHAPTER 3 INTEGRATION TESTS PASSED (100%) ---")
