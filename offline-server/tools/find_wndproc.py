with open("d:/AI/work/xiaoxiaohaizei-offline-src/client-patch/libOnePiece.so", "rb") as f:
    data = f.read()

import re

# find symbols with Tavern and WndProc
for m in re.finditer(b"_ZN10CDlgTavern.*WndProc.*", data):
    print(m.group(0))
