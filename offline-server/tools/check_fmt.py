with open("d:/AI/work/xiaoxiaohaizei-offline-src/client-patch/libOnePiece.so", "rb") as f:
    data = f.read()
import struct

for addr in range(0x5ec1e8, 0x5ec210, 4):
    val = struct.unpack_from("<I", data, addr)[0]
    target = 0x5ec18c + 8 + val
    if target < len(data):
        s = data[target:target+80]
        end = s.find(b"\x00")
        if end > 0:
            print(hex(addr), hex(val), "->", s[:end])
