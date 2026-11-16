with open("d:/AI/work/xiaoxiaohaizei-offline-src/client-patch/libOnePiece.so", "rb") as f:
    data = f.read()

import re

for m in re.finditer(b"_ZN.*Tavern.*Click.*", data):
    print(m.group(0))

for m in re.finditer(b"_ZN.*Boatman.*Click.*", data):
    print(m.group(0))
