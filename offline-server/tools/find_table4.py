with open("d:/AI/work/xiaoxiaohaizei-offline-src/client-patch/libOnePiece.so", "rb") as f:
    data = f.read()

chunk = data[0xb73f00:0xb74050]
print(chunk)
