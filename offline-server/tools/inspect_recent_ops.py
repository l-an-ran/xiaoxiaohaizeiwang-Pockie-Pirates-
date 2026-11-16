import os, json, time

captures_dir = "d:/AI/work/xiaoxiaohaizei-offline-src/offline-server/captures"
files = [os.path.join(captures_dir, f) for f in os.listdir(captures_dir) if f.endswith(".json")]
files.sort(key=os.path.getmtime)

print("Operations since 01:45:")
for f in files:
    mtime_num = os.path.getmtime(f)
    mtime = time.strftime("%H:%M:%S", time.localtime(mtime_num))
    if mtime > "01:45:00":
        try:
            with open(f, "r", encoding="utf-8") as fp:
                d = json.load(fp)
            val = d["bodies"][0]["value"][0]
            op = val.get("operation")
            src = val.get("source")
            body = val.get("body")
            print(f"[{mtime}] {src}.{op} -> body={body}")
        except Exception as e:
            pass
