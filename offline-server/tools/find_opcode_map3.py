with open("d:/AI/work/xiaoxiaohaizei-offline-src/client-patch/libOnePiece.so", "rb") as f:
    data = f.read()

import struct

target = 0xb74620
for i in range(0, len(data)-4, 4):
    v = struct.unpack_from("<I", data, i)[0]
    if v == target:
        print("Literal reference at:", hex(i))
    # also check if pc relative
