with open("d:/AI/work/xiaoxiaohaizei-offline-src/client-patch/libOnePiece.so", "rb") as f:
    data = f.read()

import struct

# The method table is at 0xb73f60
# Let's find pointers to 0xb73f7a ('treat'), 0xb73f80 ('openCard'), 0xb73f90 ('recruitTavern')
for name, off in [("treat", 0xb73f7e), ("openCard", 0xb73f84), ("recruitTavern", 0xb73f90), ("fire", 0xb73f74)]:
    # find where off is referenced
    for i in range(0, len(data)-4, 4):
        v = struct.unpack_from("<I", data, i)[0]
        if v == off:
            print(f"Pointer to {name} at {hex(i)}")
