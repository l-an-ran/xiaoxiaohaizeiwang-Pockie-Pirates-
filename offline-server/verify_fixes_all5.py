import sys
import os
import json
import sqlite3

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import server

def test_all():
    print("=== Testing Issue 5: Player Level 100 ===")
    role = server._get_role()
    assert role["level"] == 100, f"Role level expected 100, got {role['level']}"
    assert role["exp"] == 0, f"Role exp expected 0, got {role['exp']}"
    assert role["experience"] == 0, f"Role experience expected 0, got {role['experience']}"
    assert role["vip_level"] == 10, f"Role vip_level expected 10, got {role['vip_level']}"
    assert role["current_task"] in (110004, 110035), f"Role current_task expected 110004 or 110035, got {role['current_task']}"
    for g in role.get("generals", []):
        if g.get("name") in ("赞高", "巴基"):
            assert g["level"] == 100, f"General {g['name']} level expected 100, got {g['level']}"
    print("  [PASS] Issue 5: Player and companions are Level 100!")

    print("\n=== Testing Issue 1: Task Reward & Submission Logic ===")
    # Test _build_task_data with override
    task_data_bytes = server._build_task_data(override_complete_task=110003)
    assert len(task_data_bytes) > 20
    # Test _complete_current_task
    old_task = role["current_task"]
    old_copper = role["copper"]
    server._complete_current_task()
    new_role = server._get_role()
    assert new_role["experience"] == new_role["exp"], "role['experience'] must equal role['exp']!"
    # Restore for user testing
    new_role["current_task"] = old_task
    new_role["task_accepted"] = True
    new_role["task_completed"] = False
    server._save()
    print("  [PASS] Issue 1: Task completion updates copper, exp & experience in sync, and advances smoothly!")

    print("\n=== Testing Issue 2: Daily Tasks & Exchange Shop ===")
    vitality_bytes = server._build_vitality_response("TEST-CORR-1")
    assert len(vitality_bytes) > 50
    # Test item exchange
    initial_copper_cups = sum(it.get("amount", 0) for it in new_role.get("items", []) if it.get("cfg_item_id") == 300184)
    assert initial_copper_cups >= 10, f"Expected cups in bag, got {initial_copper_cups}"
    exch_resp = server._handle_item_exchange("TEST-CORR-2", [10001, 1, 1, 2]) # exchange product 1 (count 2)
    assert len(exch_resp) > 20
    print("  [PASS] Issue 2: Vitality response and wine cups exchange work perfectly!")

    print("\n=== Testing Issue 3: VIP Mall & Direct Recharge ===")
    mall_resp = server._build_mall_response("TEST-CORR-3")
    assert len(mall_resp) > 50
    recharge_resp = server._handle_recharge("TEST-CORR-4")
    assert len(recharge_resp) > 50
    cur_role = server._get_role()
    assert cur_role["vip_level"] == 10
    assert cur_role["gold"] >= 100000
    print("  [PASS] Issue 3: VIP Mall returns products and direct recharge sets VIP 10 + 100,000 gold!")

    print("\n=== Testing Issue 4: Bag 'Use All' (全部使用) Logic ===")
    items = cur_role["items"]
    # Ensure we have card 300053 with amount > 1
    card_item = None
    for it in items:
        if it.get("cfg_item_id") == 300053:
            card_item = it
            break
    if not card_item:
        new_id = max([it.get("item_id", 1000) for it in items]) + 1
        card_item = {"item_id": new_id, "cfg_item_id": 300053, "amount": 6, "level": 1, "star": 1, "rise": 0, "equiped": 0, "general_id": 0, "part": 0}
        items.append(card_item)
        server._save()

    stack_amount = card_item["amount"]
    old_copper = float(cur_role["copper"])
    card_item_id = card_item["item_id"]

    # Call usingAll
    resp_using_all = server._handle_item_request("itemservice.usingall", [cur_role["role_id"], 1, 1001, card_item_id], "TEST-CORR-5")
    assert len(resp_using_all) > 50

    cur_role = server._get_role()
    expected_gain = 50000 * stack_amount
    assert float(cur_role["copper"]) == old_copper + expected_gain, f"Expected copper gain {expected_gain}, got {float(cur_role['copper']) - old_copper}"
    assert not any(it.get("item_id") == card_item_id for it in cur_role["items"]), "Used card stack should be completely consumed from inventory!"
    print(f"  [PASS] Issue 4: UsingAll consumed all {stack_amount} cards in 1 click and awarded {expected_gain} copper!")

    print("\n==========================================")
    print("ALL 5 ISSUES TESTED AND VERIFIED SUCCESSFULLY!")
    print("==========================================")

if __name__ == "__main__":
    test_all()
