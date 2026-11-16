with open("d:/AI/work/xiaoxiaohaizei-offline-src/client-patch/libOnePiece.so", "rb") as f:
    data = f.read()

import struct

# In OPNetManager, there is an array or switch of message IDs to (service, operation)
# Search for consecutive references or pointers to 0xd5, 0xd6, 0xd7, 0xdb
for i in range(0, len(data)-16, 4):
    v1, v2, v3 = struct.unpack_from("<3I", data, i)
    if v1 == 0xd5 and v2 == 0xd6 and v3 == 0xd7:
        print(f"Consecutive opcodes at {hex(i)}")

# Also search for where 0xdb is compared or used in net manager
for i in range(0, len(data)-8, 4):
    v1, v2 = struct.unpack_from("<2I", data, i)
    if v1 == 0xdb:
        # print context
        pass
