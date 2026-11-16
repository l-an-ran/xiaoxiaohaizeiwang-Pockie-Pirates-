with open("d:/AI/work/xiaoxiaohaizei-offline-src/client-patch/libOnePiece.so", "rb") as f:
    data = f.read()

import re

for m in re.finditer(b"[a-zA-Z0-9_]*recruit[a-zA-Z0-9_]*", data, re.IGNORECASE):
    s = m.group(0)
    if len(s) > 4:
        print(s)
