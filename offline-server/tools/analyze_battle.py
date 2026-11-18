import capstone, struct, re

so_path = 'd:/AI/work/xiaoxiaohaizei-offline-src/lib/armeabi/libOnePiece.so'
with open(so_path, 'rb') as f:
    data = f.read()

cs = capstone.Cs(capstone.CS_ARCH_ARM, capstone.CS_MODE_ARM)
code = data[0x419f3c:0x41a500]

insns = list(cs.disasm(code, 0x419f3c))
for i in range(len(insns)-2):
    ins = insns[i]
    if ins.mnemonic == 'ldr' and 'r3, [pc' in ins.op_str:
        pc = ins.address + 8
        m = re.search(r'#0x([0-9a-f]+)', ins.op_str) or re.search(r'#([0-9]+)', ins.op_str)
        if m:
            off_str = m.group(1)
            off = int(off_str, 16) if '0x' in ins.op_str else int(off_str)
            pool_addr = pc + off
            if pool_addr + 4 <= len(data):
                pool_val = struct.unpack('<I', data[pool_addr:pool_addr+4])[0]
                next_ins = insns[i+1]
                if next_ins.mnemonic == 'add' and 'r3, pc, r3' in next_ins.op_str:
                    pc2 = next_ins.address + 8
                    target_str_addr = (pc2 + pool_val) & 0xffffffff
                    if target_str_addr < len(data):
                        end = data.find(b'\x00', target_str_addr)
                        if end != -1 and end - target_str_addr < 50:
                            s = data[target_str_addr:end].decode('ascii', errors='ignore')
                            if s and s.isprintable():
                                print(f"0x{ins.address:06x}: key = \"{s}\"")
