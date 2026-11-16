with open("d:/AI/work/xiaoxiaohaizei-offline-src/client-patch/libOnePiece.so", "rb") as f:
    data = f.read()

import capstone

# find symbol in symtab/dynsym
# or search for the function that references "fire"
idx = data.find(b"fire\x00")
print("string fire at:", hex(idx))

# find references to 0xb73f7a (which is 'fire')
fire_str_addr = idx
# search in code
for i in range(0, len(data)-4, 4):
    v = int.from_bytes(data[i:i+4], "little")
    if v == fire_str_addr:
        print("Literal reference to fire at:", hex(i))

# Also search for "CDlgBoatmanList::FireGeneral" in symbols
import subprocess
out = subprocess.check_output(["arm-none-eabi-nm", "-D", "d:/AI/work/xiaoxiaohaizei-offline-src/client-patch/libOnePiece.so"], stderr=subprocess.STDOUT) if False else None
