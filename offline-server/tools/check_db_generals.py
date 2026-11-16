import sqlite3

conn = sqlite3.connect("d:/AI/work/xiaoxiaohaizei-offline-src/assets/Env/conf/full_db.sqlite")
cur = conn.cursor()
cur.execute("SELECT name FROM sqlite_master WHERE type='table' AND name LIKE '%tavern%'")
print("Tavern tables:", cur.fetchall())
