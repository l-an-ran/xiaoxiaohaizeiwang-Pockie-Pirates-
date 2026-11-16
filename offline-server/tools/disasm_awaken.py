with open("d:/AI/work/xiaoxiaohaizei-offline-src/client-patch/libOnePiece.so", "rb") as f:
    data = f.read()

import capstone, struct

md = capstone.Cs(capstone.CS_ARCH_ARM, capstone.CS_MODE_ARM)
code = data[0x0040b588:0x0040b760]

print("=== onSkillAwaken disassembly & resolved literals ===")
for insn in md.disasm(code, 0x0040b588):
    extra = ""
    if insn.mnemonic == "ldr" and "[pc" in insn.op_str:
        # compute target
        # match pc, #imm
        import re
        m = re.search(r"\[pc,\s*#(-?0x[0-9a-fA-F]+|-?\d+)\]", insn.op_str)
        if m:
            imm = int(m.group(1), 0)
            target = insn.address + 8 + imm
            if target < len(data):
                val = struct.unpack_from("<I", data, target)[0]
                extra = f" [pool at {hex(target)}: {hex(val)}]"
    print(f"0x{insn.address:06x}: {insn.mnemonic:8s} {insn.op_str}{extra}")
