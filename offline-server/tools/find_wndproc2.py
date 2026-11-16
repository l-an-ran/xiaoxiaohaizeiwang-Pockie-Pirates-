with open("d:/AI/work/xiaoxiaohaizei-offline-src/client-patch/libOnePiece.so", "rb") as f:
    data = f.read()

import re

pos = data.find(b"_ZN10CDlgTavern7WndProc")
print("found at:", hex(pos))
if pos > 0:
    print(data[pos:pos+40])
