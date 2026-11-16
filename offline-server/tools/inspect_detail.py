import os, json, time

captures_dir = "d:/AI/work/xiaoxiaohaizei-offline-src/offline-server/captures"
files = [os.path.join(captures_dir, f) for f in os.listdir(captures_dir) if f.endswith(".json")]
files.sort(key=os.path.getmtime)

for f in files:
    mtime = time.strftime("%H:%M:%S", time.localtime(os.path.getmtime(f)))
    if "01:49:00" <= mtime <= "01:52:30":
        try:
            with open(f, "r", encoding="utf-8") as fp:
                d = json.load(fp)
            val = d["bodies"][0]["value"][0]
            op = val.get("operation")
            src = val.get("source")
            body = val.get("body")
            print(f"[{mtime}] {src}.{op} -> body={body}")
        except:
            pass
