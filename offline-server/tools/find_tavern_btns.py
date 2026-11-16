with open("d:/AI/work/xiaoxiaohaizei-offline-src/client-patch/libOnePiece.so", "rb") as f:
    data = f.read()

import struct

e_shoff = struct.unpack_from("<I", data, 32)[0]
e_shentsize = struct.unpack_from("<H", data, 46)[0]
e_shnum = struct.unpack_from("<H", data, 48)[0]
e_shstrndx = struct.unpack_from("<H", data, 50)[0]

sections = []
for i in range(e_shnum):
    off = e_shoff + i * e_shentsize
    sh_name, sh_type, sh_flags, sh_addr, sh_offset, sh_size, sh_link, sh_info, sh_addralign, sh_entsize = struct.unpack_from("<10I", data, off)
    sections.append({
        "sh_name": sh_name, "sh_type": sh_type, "sh_offset": sh_offset, "sh_size": sh_size,
        "sh_link": sh_link, "sh_entsize": sh_entsize, "sh_addr": sh_addr
    })

shstrtab = data[sections[e_shstrndx]["sh_offset"] : sections[e_shstrndx]["sh_offset"] + sections[e_shstrndx]["sh_size"]]
for s in sections:
    name_end = shstrtab.find(b"\x00", s["sh_name"])
    s["name"] = shstrtab[s["sh_name"]:name_end].decode("ascii", "ignore")

symtabs = [s for s in sections if s["sh_type"] in (2, 11)]
for s in symtabs:
    strtab_sec = sections[s["sh_link"]]
    strtab = data[strtab_sec["sh_offset"]:strtab_sec["sh_offset"]+strtab_sec["sh_size"]]
    sym_count = s["sh_size"] // s["sh_entsize"]
    for i in range(sym_count):
        sym_off = s["sh_offset"] + i * s["sh_entsize"]
        st_name, st_value, st_size, st_info, st_other, st_shndx = struct.unpack_from("<3IBBH", data, sym_off)
        if st_name < len(strtab):
            sym_name = strtab[st_name:strtab.find(b"\x00", st_name)].decode("ascii", "ignore")
            if "Tavern" in sym_name and ("Click" in sym_name or "Btn" in sym_name):
                print(f"0x{st_value:08x}: {sym_name}")
