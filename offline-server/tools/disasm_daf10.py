with open("d:/AI/work/xiaoxiaohaizei-offline-src/client-patch/libOnePiece.so", "rb") as f:
    data = f.read()

import capstone

md = capstone.Cs(capstone.CS_ARCH_ARM, capstone.CS_MODE_ARM)
code = data[0x003daf10:0x003daf10+260]
for insn in md.disasm(code, 0x003daf10):
    print(f"0x{insn.address:06x}: {insn.mnemonic:8s} {insn.op_str}")
