import os, time

captures_dir = "d:/AI/work/xiaoxiaohaizei-offline-src/offline-server/captures"
files = [os.path.join(captures_dir, f) for f in os.listdir(captures_dir) if f.endswith(".json")]
files.sort(key=os.path.getmtime)

print("Recent 30 captures:")
for f in files[-30:]:
    mtime = time.strftime("%Y-%m-%d %H:%M:%S", time.localtime(os.path.getmtime(f)))
    print(f"{os.path.basename(f)}  ({mtime})")
