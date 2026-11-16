import urllib.request
import json
import uuid
import sys
import os

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

# Helper to test AMF3 gateway if needed, or HTTP endpoints
try:
    req = urllib.request.urlopen("http://127.0.0.1:8080/health", timeout=3)
    print("Health check response code:", req.getcode())
    print("Health body:", req.read().decode())
except Exception as e:
    print("Health check failed:", e)

# Test saving and reading role
from server import _get_role, _save, _build_tavern_treat_response, _handle_tavern_open_card, _build_tavern_recruit_response, _build_general_response, _build_skill_awaken_response, _build_item_response, _handle_item_request

print("\n--- Testing Tavern Treat (召集令) ---")
res_treat = _build_tavern_treat_response("test-1", body=[100001, "", 1, 2002])
print("Treat response length:", len(res_treat))
role = _get_role()
print("Tavern round after treat:", role.get("tavern_round"))
assert role["tavern_round"]["open_count"] == 0
assert role["tavern_round"]["open_generals"] == [0, 0, 0, 0, 0]
assert 10061202 not in role["tavern_round"]["cfg_ids"], "Error: Zoro should NOT be in East Blue tavern pool!"

print("\n--- Testing Tavern Open Card (翻牌) ---")
res_open = _handle_tavern_open_card("test-2", body=[100001, "", 1])
print("Open card response length:", len(res_open))
role = _get_role()
print("Tavern round after open card slot 1:", role.get("tavern_round"))
assert role["tavern_round"]["open_count"] == 1
assert role["tavern_round"]["open_generals"][0] == role["tavern_round"]["cfg_ids"][0]

print("\n--- Testing Tavern Recruit (招募) ---")
first_card = role["tavern_round"]["cfg_ids"][0]
res_recruit = _build_tavern_recruit_response("test-3", body=[100001, "", first_card])
print("Recruit response length:", len(res_recruit))
role = _get_role()
gen_ids = [g.get("cfg_general_id") for g in role.get("generals", [])]
print("Recruited generals in save:", gen_ids)
assert first_card in gen_ids

print("\n--- Testing General Fire (解雇船员) ---")
from server import _dispatch_operation
res_fire = _dispatch_operation("GENERAL.fire", "test-4", [100001, "", first_card], {}, b"")
print("Fire response length:", len(res_fire))
role = _get_role()
gen_ids_after = [g.get("cfg_general_id") for g in role.get("generals", [])]
print("Generals in save after fire:", gen_ids_after)
assert first_card not in gen_ids_after

print("\n--- Testing Skill Awaken (技能领悟即时刷新) ---")
res_awaken = _dispatch_operation("GENERAL.skillAwaken", "test-5", [100001, "", 1008, 2], {}, b"")
print("Skill awaken response length:", len(res_awaken))

print("\n--- Testing Item Using (背包装备穿戴即时刷新) ---")
items = role.get("items", [])
if items:
    first_item_id = items[0].get("item_id")
    res_using = _handle_item_request("ITEM.using", [100001, "", 1008, first_item_id], "test-6")
    print("Item using response length:", len(res_using))

print("\n>>> ALL 4 CORE SUBSYSTEM UNIT TESTS PASSED 100%! <<<")
