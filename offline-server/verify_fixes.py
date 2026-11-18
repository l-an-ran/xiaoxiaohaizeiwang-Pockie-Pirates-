import sys, os
sys.path.insert(0, r"d:\AI\work\xiaoxiaohaizei-offline-src\offline-server")
import server

print("=== 1. Testing _build_role_data and daily_login ===")
role_bytes = server._build_role_data()
assert b"daily_login" in role_bytes, "daily_login must be in _build_role_data"
print("  OK: daily_login present in role_data")

print("=== 2. Testing _build_general_data and star_general ===")
gen_bytes = server._build_general_data()
assert b"star_general" in gen_bytes, "star_general must be in _build_general_data"
assert b"STAR_GENERAL" in gen_bytes, "STAR_GENERAL must be in _build_general_data"
print("  OK: star_general present in general_data")

print("=== 3. Testing _make_companion_general_amf3 fields ===")
role = server._get_role()
if role.get("generals"):
    g0 = role["generals"][0]
    comp_bytes = server._make_companion_general_amf3(g0)
    assert b"agility" in comp_bytes, "agility must be in companion"
    assert b"intellect" in comp_bytes, "intellect must be in companion"
    assert b"stamina" in comp_bytes, "stamina must be in companion"
    assert b"health_point" in comp_bytes, "health_point must be in companion"
    assert b"str_grow_add" in comp_bytes, "str_grow_add must be in companion"
    assert b"temp_str_grow_add" in comp_bytes, "temp_str_grow_add must be in companion"
    print("  OK: companion general fields match standard role schema")

print("=== 4. Testing Talent Upgrade (ROLE.talentUp) ===")
cid = "TEST-CID-TALENT"
resp = server._handle_talent_request("com.arthur.server.net.services.impl.ROLE.talentUp", [100001, "", 2], cid)
assert b"talent_list" in resp or b"general_data" in resp
print("  OK: talent upgrade handled successfully")

print("=== 5. Testing Polish / Cultivate ===")
resp_polish = server._handle_polish_request("GENERAL.polish", {"3_generalId": 1001, "4_type": 1}, cid)
assert b"general_data" in resp_polish
print("  OK: polish request handled successfully")
resp_confirm = server._handle_polish_request("GENERAL.polishConfirm", {"3_generalId": 1001, "4_type": 5}, cid)
assert b"general_data" in resp_confirm
print("  OK: polishConfirm request handled successfully")

print("=== 6. Testing Underwater Treasure (MANOR.treasure) ===")
resp_treasure = server._handle_treasure_request("MANOR.treasure", {"anyCount": 1}, cid)
assert b"bag_list" in resp_treasure or b"copper" in resp_treasure
print("  OK: treasure request handled successfully")

print("=== 7. Testing Login Reward (ACTIVITY.rewardLogin & getreward) ===")
resp_login = server._handle_reward_login(cid)
assert b"reward_list" in resp_login
assert b"daily_login" in resp_login
print("  OK: rewardLogin handled successfully")

resp_get = server._handle_get_reward(cid)
assert b"reward_list" in resp_get
assert b"daily_login" in resp_get
print("  OK: getreward handled successfully")

print("\nALL VERIFICATIONS PASSED!")
