with open("d:/AI/work/xiaoxiaohaizei-offline-src/client-patch/libOnePiece.so", "rb") as f:
    data = f.read()

# Let's inspect the array of service method names
p = 0xb73f60
print(data[p:p+200])
