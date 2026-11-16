with open("d:/AI/work/xiaoxiaohaizei-offline-src/client-patch/libOnePiece.so", "rb") as f:
    data = f.read()

import re
for m in re.finditer(b'\{"1_roleId":%d,"2_code":"%s",', data):
    idx = m.start()
    s = data[idx:idx+80]
    end = s.find(b"\x00")
    print(f"0x{idx:08x}: {s[:end]}")
