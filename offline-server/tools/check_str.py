with open("d:/AI/work/xiaoxiaohaizei-offline-src/client-patch/libOnePiece.so", "rb") as f:
    data = f.read()

for insn_pc, off in [(0x40b640, 0x7585c0), (0x40b690, 0x750940), (0x40b6e0, 0x756e58)]:
    target = insn_pc + 8 + off
    s = data[target:target+40]
    end = s.find(b"\x00")
    print(f"{hex(insn_pc)} -> {hex(target)}: {s[:end].decode('ascii')}")
