with open("d:/AI/work/xiaoxiaohaizei-offline-src/client-patch/libOnePiece.so", "rb") as f:
    data = f.read()

import re

# Look for SendNetMsg or formatAMF
for m in re.finditer(b"com.arthur.server.net.services.impl.GENERAL", data):
    print("GENERAL service string at:", hex(m.start()))

# Find references to this string
gen_str_off = data.find(b"com.arthur.server.net.services.impl.GENERAL")
print("gen_str_off:", hex(gen_str_off))
