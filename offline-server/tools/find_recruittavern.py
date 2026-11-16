with open("d:/AI/work/xiaoxiaohaizei-offline-src/client-patch/libOnePiece.so", "rb") as f:
    data = f.read()

import re
for m in re.finditer(b"recruitTavern", data):
    idx = m.start()
    print("recruitTavern at:", hex(idx))
    # print surrounding bytes
    print("context:", data[idx-20:idx+40])
