with open("d:/AI/work/xiaoxiaohaizei-offline-src/client-patch/libOnePiece.so", "rb") as f:
    data = f.read()

import capstone

md = capstone.Cs(capstone.CS_ARCH_ARM, capstone.CS_MODE_ARM)
# CDlgTavern::OnNetPackageEPv is at 0x005eb584 (992 bytes)
code = data[0x005eb584:0x005eb584+600]
for insn in md.disasm(code, 0x005eb584):
    print(f"0x{insn.address:06x}: {insn.mnemonic:8s} {insn.op_str}")
