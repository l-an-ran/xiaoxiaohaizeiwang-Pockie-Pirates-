import capstone

with open("d:/AI/work/xiaoxiaohaizei-offline-src/client-patch/libOnePiece.so", "rb") as f:
    data = f.read()

md = capstone.Cs(capstone.CS_ARCH_ARM, capstone.CS_MODE_ARM)

def analyze_func(name, start, length):
    print(f"\n==================== {name} (0x{start:06x}) ====================")
    code = data[start:start+length]
    pool = {}
    for insn in md.disasm(code, start):
        # check ldr rX, [pc, #imm]
        print(f"0x{insn.address:06x}: {insn.mnemonic:8s} {insn.op_str}")

analyze_func("onFire", 0x0040b8d4, 188)
analyze_func("onSkillAwaken", 0x0040b588, 250)
analyze_func("onUsing", 0x00407ea0, 250)
