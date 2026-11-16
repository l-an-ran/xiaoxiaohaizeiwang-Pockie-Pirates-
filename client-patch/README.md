# 客户端酒馆招募防闪退加固补丁 (Client Defense Patch)

## 补丁说明
- **目标文件**: `lib/armeabi/libOnePiece.so`
- **函数**: `CDlgTavern::InitRecruitList` (酒馆招募界面列表初始化)
- **修复地址**: 偏移 `0x005ee6ec`
- **原指令**: `beq #0x5ee748` (`15 00 00 0a`) -> 当伙伴 ID 在客户端配置表中不存在 (`cfg == NULL`) 时误跳入卡牌生成逻辑，导致 `0x005ee7d4` 解引用空指针发生 SIGSEGV 闪退。
- **补丁指令**: `beq #0x5ee964` (`9c 00 00 0a`) -> 当 `cfg == NULL` 时直接跳到循环递增步 (`it++`)，自动跳过不存在的武将，彻底免疫任何未定义武将 ID 引发的闪退崩溃。

## 是否必须替换？
- **非必须**：只要服务端（`offline-server/server.py`）下发客户端已有配置的真实武将 ID（索隆 10061202、亚尔丽塔 10041220 等），原版客户端就不会发生空指针，运行完全正常。
- **推荐场景**：如果未来开发者/玩家在服务端自定义配置了不存在于 `full_db.sqlite` 的武将 ID，使用此补丁能保证客户端即使读不到配置也绝对不闪退。

## 替换方法
1. 将本目录下的 [libOnePiece.so](file:///d:/AI/work/xiaoxiaohaizei-offline-src/client-patch/libOnePiece.so) 复制替换到客户端工程 `xiaoxiaohaizei-offline-src/lib/armeabi/libOnePiece.so`。
2. 使用 apktool 或 Android 打包脚本重新打包签名 APK 即可。
