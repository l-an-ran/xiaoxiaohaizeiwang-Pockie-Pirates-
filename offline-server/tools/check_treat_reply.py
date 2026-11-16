import sys, os
sys.path.insert(0, "d:/AI/work/xiaoxiaohaizei-offline-src/offline-server")
from server import _get_role

role = _get_role()
print("Role:", role.get("name"))
print("Generals:", role.get("generals"))
print("Tavern round:", role.get("tavern_round"))
print("Items:", len(role.get("items", [])))
