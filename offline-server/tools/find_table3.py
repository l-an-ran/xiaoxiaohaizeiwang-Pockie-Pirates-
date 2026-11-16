with open("d:/AI/work/xiaoxiaohaizei-offline-src/client-patch/libOnePiece.so", "rb") as f:
    data = f.read()

import struct

for name in [b"treat\x00", b"openCard\x00", b"recruitTavern\x00", b"fire\x00"]:
    pos = data.find(name)
    print(f"String {name.decode('ascii')} at {hex(pos)}")
    for i in range(0, len(data)-4, 4):
        v = struct.unpack_from("<I", data, i)[0]
        if v == pos:
            print(f"  Pointer at {hex(i)}")
