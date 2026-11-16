with open("d:/AI/work/xiaoxiaohaizei-offline-src/client-patch/libOnePiece.so", "rb") as f:
    data = f.read()

import struct

for addr in range(0x5ec70c, 0x5ec730, 4):
    val = struct.unpack_from("<I", data, addr)[0]
    # In ARM: add r3, pc, r3 at instruction addr:
    # at 0x5ec47c: add r3, pc, r3 -> pc is 0x5ec47c + 8 = 0x5ec484
    # at 0x5ec534: add r3, pc, r3 -> pc is 0x5ec534 + 8 = 0x5ec53c
    for pc_val in [0x5ec484, 0x5ec53c]:
        t = pc_val + val
        if 0 <= t < len(data):
            s = data[t:t+60]
            end = s.find(b"\x00")
            if end > 0:
                print(f"addr {hex(addr)} val={hex(val)} pc={hex(pc_val)}: {s[:end]}")
