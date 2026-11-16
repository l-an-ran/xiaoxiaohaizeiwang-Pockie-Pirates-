with open("d:/AI/work/xiaoxiaohaizei-offline-src/client-patch/libOnePiece.so", "rb") as f:
    data = f.read()

import capstone, struct

md = capstone.Cs(capstone.CS_ARCH_ARM, capstone.CS_MODE_ARM)
code = data[0x00407f40:0x00408b50]

for insn in md.disasm(code, 0x00407f40):
    if insn.mnemonic == "ldr" and "[pc" in insn.op_str:
        import re
        m = re.search(r"\[pc,\s*#(-?0x[0-9a-fA-F]+|-?\d+)\]", insn.op_str)
        if m:
            imm = int(m.group(1), 0)
            pool_addr = insn.address + 8 + imm
            if pool_addr < len(data) - 4:
                val = struct.unpack_from("<I", data, pool_addr)[0]
                # check if val is offset or address
                # try pc + val
                target = insn.address + 12 + val # for add rx, pc, rx usually next instruction
                if target < len(data):
                    s = data[target:target+40]
                    end = s.find(b"\x00")
                    if end > 0 and 32 <= s[0] <= 126:
                        print(f"0x{insn.address:06x}: literal {hex(val)} -> '{s[:end].decode('ascii', 'ignore')}'")
