import json

with open("d:/AI/work/xiaoxiaohaizei-offline-src/offline-server/player_save.json", "r", encoding="utf-8") as f:
    data = json.load(f)

role = data["role"]
print("Role name:", role.get("name"))
print("Generals:", role.get("generals"))
print("Tavern round:", role.get("tavern_round"))
print("Current task:", role.get("current_task"))
print("Task completed:", role.get("task_completed"))
print("Equipments:", role.get("equipments"))
