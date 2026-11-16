import json

save_path = "d:/AI/work/xiaoxiaohaizei-offline-src/offline-server/player_save.json"
with open(save_path, "r", encoding="utf-8") as f:
    data = json.load(f)

role = data["role"]

# Reset tavern_round to East Blue clean initial state
role["tavern_round"] = {
    "cfg_ids": [10042230, 10041220, 10041228, 10041229, 10052199],
    "open_generals": [0, 0, 0, 0, 0],
    "open_count": 0,
    "type": 1,
}

# Replace invalid dummy 索隆 (cfg_id 1, 2, 3) with legitimate 贝鲁梅伯 (10042230)
role["generals"] = [
    {
        "general_id": 10042230,
        "cfg_general_id": 10042230,
        "name": "贝鲁梅伯",
        "quality": 4,
        "star": 2,
        "job": 10002,
        "figure": 10073,
        "face": 10073,
        "level": 1,
        "skill": 51002,
        "experience": 0,
    }
]

# Ensure role has skill_point for testing skill awaken
role["skill_point"] = max(role.get("skill_point", 0), 10)

with open(save_path, "w", encoding="utf-8") as f:
    json.dump(data, f, ensure_ascii=False, indent=2)

print("player_save.json updated successfully!")
