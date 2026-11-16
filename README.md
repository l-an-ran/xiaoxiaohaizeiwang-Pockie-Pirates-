# 《小小海贼王》(Pockie Pirates) 移动端单机离线版
# Pockie Pirates Mobile - Single Player Offline Revival

[![Python Version](https://img.shields.io/badge/Python-3.8%2B-blue.svg)](https://www.python.org/)
[![Platform](https://img.shields.io/badge/Platform-Android%20%7C%20Windows%20%7C%20Linux-green.svg)](#)
[![Protocol](https://img.shields.io/badge/Protocol-AMF3%20%2F%20HTTP-orange.svg)](#)
[![Status](https://img.shields.io/badge/Status-Playable%20Prototype%20v0.6-brightgreen.svg)](#)
[![License](https://img.shields.io/badge/License-Non--Commercial%20Research-lightgrey.svg)](#)

[中文说明](#中文文档) | [English Documentation](#english-documentation)

---

<a name="中文文档"></a>
# 中文文档

本项目是经典怀旧网页/手机游戏**《小小海贼王》（英文国际版名：Pockie Pirates）**的单机离线复活与逆向工程研究成果。

官方服务器停运多年，本项目通过逆向解构 Android 原生客户端核心动态库（`libOnePiece.so` 与 Smali 逻辑），彻底剥离了旧时代 91 SDK 的强鉴权与在线升级限制；同时使用 Python 轻量化复现了底层 **AMF3 (Action Message Format 3)** 通信协议的单机网关服务端，实现了无需外网连接、无复杂数据库依赖、极低资源占用的本地流畅运行与主线玩法完整闭环。

---

## 🌟 核心特性与技术攻坚进展

- [x] **完全脱机与鉴权脱壳**：
  - 彻底剥离 91 SDK 强登录与 JNI 鉴权校验，重定向客户端服务器列表至本地宿主机（`10.0.2.2:8080`），即开即玩。
- [x] **数据驱动的官方配置引擎 (`config_loader.py`)**：
  - 提取并重构了官方 52 张核心数据表的完整 SQLite 数据库（`onepiece.db`），启动时全量预加载 814 个任务、27 个城镇大场景、77 个战役章节、1727 个战场阵型、8891 种怪物、312 位酒馆伙伴、1507 件装备模型与 326 个技能。
- [x] **角色创建与主城系统**：
  - 支持剑豪、狙击手、航海士、船医四大初始职业选择，自由自定义命名；
  - 破译客户端“Loading 100% 卡死”判定（`is_active` 状态机），成功点亮风车村主城场景（Scene 2001）与第二章谢尔兹镇（Scene 2002），城镇漫步、NPC 寻路、对白推进完全正常。
- [x] **第一章与第二章主线任务链**：
  - 跑通风车村主线任务（`100001 ~ 100006`）及谢尔兹镇主线（蒙卡上校战、贝鲁梅伯新船员加入引导任务 `100024`）。
- [x] **战役海面与通用回合制战斗引擎**：
  - 深度反汇编破译海面 45 度等距轴测投影算法（`stageToRect` 矩阵变换），还原海面坐标推导；
  - 跑通 `BATTLE.battle` 请求、回合制战斗指令流生成、战斗回放动画、评星与经验结算。
- [x] **酒馆系统与东海正规伙伴卡池（2026-11 攻坚）**：
  - **召集令发牌/洗牌时序**：精确模拟 Cocos2d-x `CCSequence` 动作时序，初级/高级/超级召集令触发真实预览、翻转背面与洗牌散开动画；
  - **单卡翻牌（`0xd6 openCard`）**：背面点击实时单卡翻转，展示伙伴立绘与招募按钮；
  - **东海酒馆正规卡池**：严格遵循官方原版规制，将终极大后期 All Blue 传奇伙伴（索隆）移出初级酒馆，配置正规东海 A 级池（贝鲁梅伯、亚尔丽塔、蒙卡、摩奇、卡巴吉、赞高）及 S 级史诗预览卡（小丑巴基、鬼人阿金），并保障主线 100024 贝鲁梅伯首抽保底；
  - **船员解雇即时生效（`0xd4 GENERAL.fire`）**：破译客户端“有装备不能解雇”硬拦截逻辑，补全响应标识与全量伙伴刷新，解雇船员无感即时退队。
- [x] **被动技能领悟与背包装备即时双向刷新**：
  - **技能领悟即时显示**：逆向 `OPDataManager::onSkillAwaken`（`0x0040b588`），精确下发 `general_id` 与 `cfg_skill_id`，点击领悟/洗练当场刷新被动技能图标，预设 50 技能点且支持动态补足；
  - **背包装备即时穿戴**：逆向 `OPDataManager::onUsing`（`0x00407ea0`），严格对齐 12 项装备属性与 `equiped` 状态，回包同步下发最新背包物品与船员面板，双击穿戴/卸下实时双向刷新。
- [x] **客户端防崩防御加固补丁 (`client-patch/`)**：
  - 针对 `CDlgTavern::InitRecruitList` 静态修补分支跳转指令（`0x005ee6ec` 从 `beq #0x5ee748` 改为 `beq #0x5ee964`），遇到未知武将自动安全跳过，彻底免疫任何未定义武将 ID 引发的空指针 SIGSEGV 闪退。
- [x] **数据自动持久化**：
  - 所有等级、货币、背包、已穿戴装备、阵型与任务进度实时原子化保存于 `offline-server/player_save.json`，无惧意外退出。

---

## 📁 目录结构说明

```text
xiaoxiaohaizei-offline-src/
│
├── assets/                     # 客户端静态资源（SWF 动画、音效、字体、配置表等）
│   └── Env/                    # 游戏基础环境配置文件
├── lib/
│   └── armeabi/
│       └── libOnePiece.so      # 客户端核心原生动态库（C++ 游戏逻辑引擎）
├── res/                        # Android 资源文件（图标、布局文件等）
├── smali/                      # 反编译后的 Java/Smali 源代码（已剥离 91 SDK 强鉴权）
├── AndroidManifest.xml         # Android 应用清单文件
├── apktool.yml                 # Apktool 逆向工程构建配置
│
├── client-patch/               # 客户端加固与防御补丁
│   ├── libOnePiece.so          # 已应用防空指针闪退防御补丁的客户端核心 SO 库
│   └── README.md               # 补丁原理与替换说明
│
├── offline-server/             # 本地离线网关服务端（Python 纯原生实现）
│   ├── server.py               # 核心服务端主程序（AMF3 请求分发、酒馆、战斗、装备等数据逻辑）
│   ├── config_loader.py        # SQLite 数据库只读预加载引擎
│   ├── onepiece.db             # 官方完整 52 张数据表全量 SQLite 数据库（3.7MB）
│   ├── amf3.py                 # 原生 Python 实现的 AMF3 编解码解析库
│   ├── serverlist.js           # 本地单服列表接口响应（指向 10.0.2.2:8080）
│   ├── player_save.json        # 玩家角色存档数据（JSON 原子化持久化）
│   ├── 启动本地服务.bat         # Windows 一键启动脚本
│   ├── start.bat / stop.bat    # 服务启停控制脚本
│   └── tools/                  # 协议分析、自动化单元测试与反汇编辅助工具集
│       └── test_all_features.py # 核心功能 100% 通过的集成验证测试套件
│
├── DAILY_LOG.md                # 逆向攻关与功能跑通开发日志
├── OFFLINE_RESEARCH.md         # 协议破译与反汇编研究记录
└── .gitignore                  # Git 忽略配置
```

---

## 🚀 快速上手与运行指南

### 1. 运行环境准备
- **操作系统**：Windows 10 / 11、Linux 或 macOS
- **运行依赖**：Python 3.8 及以上（推荐 Python 3.10+，纯标准库运行，无需安装 MySQL 或 Redis）
- **客户端环境**：支持 ARM 架构的 Android 模拟器（推荐 **MuMu 模拟器 12** 或雷电模拟器），或 Android 真机

### 2. 启动本地离线服务端

在终端中进入 `offline-server` 目录并运行：
```bash
cd offline-server
python server.py --host 0.0.0.0 --port 8080
```
*(Windows 用户也可以直接双击运行 `offline-server/启动本地服务.bat`)*

终端打印如下内容表示服务端启动成功：
```text
[CONFIG] Preloading configuration from onepiece.db ...
[CONFIG] Loaded 814 tasks, 27 scenes, 77 camps, 8891 monsters, 312 generals, 1507 items...
[小小海贼王本地服 v0.6] Serving on 0.0.0.0:8080
```

### 3. 安装与运行客户端

1. **获取客户端 APK**：使用 Apktool 打包本项目工程，或直接安装 Releases 发布的构建包。
2. **安装到模拟器**：将 APK 拖入 Android 模拟器安装。
3. **开始游玩**：
   - 保持离线服务端在后台运行；
   - 打开游戏，客户端会自动请求本地网关 `http://10.0.2.2:8080/serverlist.js`（模拟器宿主机地址）；
   - 点击“进入游戏”，选择职业并起名，即可进入风车村开启海贼冒险！

---

## 🛠️ 客户端防御补丁与重新打包

如果需要将客户端加固补丁打入客户端，只需执行：

```bash
# 1. 复制加固补丁覆盖原 SO（可选，服务端已完全对齐正规数据）
cp client-patch/libOnePiece.so lib/armeabi/libOnePiece.so

# 2. 使用 Apktool 重新打包
apktool b . -o dist/xiaoxiaohaizei.apk

# 3. 对齐并签名
zipalign -v 4 dist/xiaoxiaohaizei.apk dist/xiaoxiaohaizei-aligned.apk
apksigner sign --ks your-release-key.jks --out dist/xiaoxiaohaizei-signed.apk dist/xiaoxiaohaizei-aligned.apk
```

---

## 🔬 核心协议逆向技术细节

1. **AMF3 / Flex RPC 二进制封包**：
   - 通信隧道：`POST /messagebroker/amf`。
   - 外层封装：`flex.messaging.messages.RemotingMessage`。
   - 服务端使用纯 Python 自研的 `amf3.py`，完整实现了 AMF3 规范中的 `U29` 变长整数、Object、Array、Double、String 与类引用解析。
2. **关键客户端操作码 (OpCode) 映射**：
   - `0xd4` $\to$ `GENERAL.fire`（船员解雇，入参 `[roleId, code, targetId]`）；
   - `0xd6` $\to$ `GENERAL.openCard`（酒馆单卡翻牌，入参 `[roleId, code, index]`）；
   - `0xd7` $\to$ `GENERAL.recruitTavern` / `treat`（召集令发牌与洗牌，入参 `[roleId, code, type, sceneId]`）；
   - `0x19` $\to$ `ITEM.using`（背包装备穿戴与物品使用）；
   - `0x6a` $\to$ `BATTLE.battle`（副本战役触发与战报回放）。
3. **45 度等距轴测投影算法 (Isometric Map)**：
   - 战役海面地图经过 `stageToRect`（`0x004f5238`）的矩阵变换投影到屏幕，敌军坐标经过算法反向推导精确映射在海面网格中。

---

<a name="english-documentation"></a>
# English Documentation

**Pockie Pirates Mobile (《小小海贼王》)** Single-Player Offline Revival and Reverse Engineering Project.

The official game servers have been discontinued for years. This project reverses and decompiles the Android native client (`libOnePiece.so` & Smali bytecode), strips the legacy 91 SDK mandatory online authentication, and reimplements a lightweight local gateway server in pure Python based on the **AMF3 (Action Message Format 3)** protocol. It provides a smooth, standalone, zero-external-dependency offline gaming experience.

---

## 🌟 Key Features & Milestones

- [x] **Fully Offline & Authentication Bypass**:
  - Removed 91 SDK online login and JNI authentication restrictions; server list redirected to host gateway (`10.0.2.2:8080`).
- [x] **Data-Driven Configuration Engine (`config_loader.py`)**:
  - Preloads the complete official 52-table SQLite database (`onepiece.db`, 3.7MB): 814 quests, 27 city/dungeon scenes, 77 battle campaigns, 1727 army formations, 8891 monsters/NPCs, 312 crew companions, 1507 equipment items, and 326 skills.
- [x] **Character Creation & City Navigation**:
  - Swordsman, Sniper, Navigator, Doctor classes; custom name input;
  - Solved the client "Loading 100% Freeze" issue (`is_active` state machine), enabling Foosha Village (Scene 2001) and Shells Town (Scene 2002).
- [x] **Main Quest Progression**:
  - Playable Chapter 1 (Foosha Village 100001–100006) and Chapter 2 (Shells Town, Morgan battle, Helmeppo recruit tutorial 100024).
- [x] **Battle Engine & Isometric Ocean View**:
  - Reconstructed 45° isometric projection algorithm (`stageToRect`);
  - Supports `BATTLE.battle` request generation, round-based battle report playback, star ratings, and EXP/Silver rewards.
- [x] **Tavern System & East Blue Pool (November 2026 Milestone)**:
  - **Deal & Shuffle Sequence**: Mimics Cocos2d-x `CCSequence` timing; Junior/Medium/Senior tokens trigger card reveal, flip back down, gathering, and shuffling animations;
  - **Card Flip (`0xd6 openCard`)**: Flipping face-down cards reveals general portrait and recruit action;
  - **Official East Blue Tavern Pool**: Removed late-game All Blue legendary crew (Zoro) from beginner tavern; configured official East Blue pool (Helmeppo, Alvida, Morgan, Mohji, Cabaji, Jango) and epic preview cards (Buggy, Gin) with guaranteed novice recruit;
  - **Crew Dismissal (`0xd4 GENERAL.fire`)**: Reverse-engineered client-side "cannot dismiss equipped crew" constraint; implemented instant dismissal with memory and UI update.
- [x] **Instant Skill Awakening & Equipment Refresh**:
  - **Skill Awakening**: Reverse-engineered `OPDataManager::onSkillAwaken` (`0x0040b588`); sends top-level `general_id` and `cfg_skill_id` for instant passive skill icon display with 50 default skill points;
  - **Equipment Wear/Unequip**: Reverse-engineered `OPDataManager::onUsing` (`0x00407ea0`); synchronizes 12 equipment fields, `equiped` flag, and full character attributes for seamless two-way UI refresh.
- [x] **Client Defense Patch (`client-patch/`)**:
  - Patches `CDlgTavern::InitRecruitList` (`0x005ee6ec`: `beq #0x5ee748` $\to$ `beq #0x5ee964`) to safely skip undefined companion IDs, completely preventing SIGSEGV null-pointer crashes.
- [x] **Automatic Data Persistence**:
  - Player levels, currency, inventory, equipped gear, and quest states are saved atomically in `offline-server/player_save.json`.

---

## 📁 Repository Structure

```text
xiaoxiaohaizei-offline-src/
│
├── assets/                     # Client static assets (SWF animations, audio, fonts, configs)
│   └── Env/                    # Game environment configuration tables
├── lib/
│   └── armeabi/
│       └── libOnePiece.so      # Client core native library (C++ game engine)
├── res/                        # Android resources (icons, layouts)
├── smali/                      # Decompiled Smali source code (SDK authentication removed)
├── AndroidManifest.xml         # Android manifest file
├── apktool.yml                 # Apktool build configuration
│
├── client-patch/               # Defensive client binary patch
│   ├── libOnePiece.so          # Patched SO with null-pointer defense
│   └── README.md               # Patch documentation and instructions
│
├── offline-server/             # Local offline Python gateway server
│   ├── server.py               # Main gateway server (AMF3 dispatcher, tavern, battle, inventory)
│   ├── config_loader.py        # SQLite read-only preloading engine
│   ├── onepiece.db             # Complete 52-table official SQLite database (3.7MB)
│   ├── amf3.py                 # Pure Python AMF3 encoder/decoder
│   ├── serverlist.js           # Server list response (points to 10.0.2.2:8080)
│   ├── player_save.json        # Player save data (atomic JSON persistence)
│   ├── 启动本地服务.bat         # Windows one-click launcher
│   ├── start.bat / stop.bat    # Server start/stop control scripts
│   └── tools/                  # Protocol analysis, unit testing, and disasm tools
│       └── test_all_features.py # Comprehensive integration test suite (100% pass)
│
├── DAILY_LOG.md                # Development and reverse engineering log
├── OFFLINE_RESEARCH.md         # Protocol decoding research notes
└── .gitignore                  # Git ignore rules
```

---

## 🚀 Quick Start Guide

### 1. Requirements
- **OS**: Windows 10/11, Linux, or macOS
- **Runtime**: Python 3.8+ (Python 3.10+ recommended; uses standard library only, no MySQL/Redis required)
- **Emulator**: ARM-compatible Android emulator (recommended: **MuMu Player 12** or LDPlayer), or Android physical device

### 2. Start the Offline Server

Open terminal, navigate to `offline-server`, and run:
```bash
cd offline-server
python server.py --host 0.0.0.0 --port 8080
```
*(Windows users can also double-click `offline-server/启动本地服务.bat`)*

Server startup log:
```text
[CONFIG] Preloading configuration from onepiece.db ...
[CONFIG] Loaded 814 tasks, 27 scenes, 77 camps, 8891 monsters, 312 generals, 1507 items...
[小小海贼王本地服 v0.6] Serving on 0.0.0.0:8080
```

### 3. Install & Play Client

1. **Obtain APK**: Build from source using Apktool or download the prebuilt APK from GitHub Releases.
2. **Install**: Drag and drop the APK into your Android emulator.
3. **Launch**:
   - Keep the offline server running in the background;
   - Open the game; it connects automatically to `http://10.0.2.2:8080/serverlist.js`;
   - Click "Enter Game", choose your class and name, and start your pirate adventure!

---

## 🛠️ Rebuilding the Client with the Defense Patch

To apply the optional defense patch and recompile:

```bash
# 1. (Optional) Copy patched library
cp client-patch/libOnePiece.so lib/armeabi/libOnePiece.so

# 2. Rebuild APK with Apktool
apktool b . -o dist/xiaoxiaohaizei.apk

# 3. Align and sign
zipalign -v 4 dist/xiaoxiaohaizei.apk dist/xiaoxiaohaizei-aligned.apk
apksigner sign --ks your-release-key.jks --out dist/xiaoxiaohaizei-signed.apk dist/xiaoxiaohaizei-aligned.apk
```

---

## 🔬 Protocol & Reverse Engineering Details

1. **AMF3 / Flex RPC Tunnel**:
   - HTTP Endpoint: `POST /messagebroker/amf`.
   - Message Structure: Wrapped in `flex.messaging.messages.RemotingMessage`.
   - Implemented in native Python via `amf3.py`, fully supporting `U29` integer encoding, associative arrays, typed objects, and class reference tables.
2. **OpCode Mapping**:
   - `0xd4` $\to$ `GENERAL.fire` (Crew dismissal, args `[roleId, code, targetId]`);
   - `0xd6` $\to$ `GENERAL.openCard` (Tavern single card flip, args `[roleId, code, index]`);
   - `0xd7` $\to$ `GENERAL.recruitTavern` / `treat` (Token draw & shuffle, args `[roleId, code, type, sceneId]`);
   - `0x19` $\to$ `ITEM.using` (Equip gear and use consumable items);
   - `0x6a` $\to$ `BATTLE.battle` (Campaign dungeon battle trigger & report playback).
3. **45-Degree Isometric Projection Matrix**:
   - The battle sea scene transforms 2D grid coordinates to screen pixels via `stageToRect` (`0x004f5238`). Inverse matrix calculation is used to position enemy ships and handle raycasting touch events.

---

## ⚖️ 免责声明 (Disclaimer)

1. **用途限制 (Usage Restriction)**：本项目所涉及的逆向工程、协议还原、配置文件提取及代码实现仅用于**计算机软件技术研究、个人学习、协议分析与怀旧交流**。
   *The reverse engineering, protocol decoding, and server emulation in this project are strictly intended for **academic research, personal learning, software compatibility study, and nostalgia exchange**.*
2. **非商业声明 (Non-Commercial)**：本项目**严禁用于任何形式的商业营利行为、私服运营或收费牟利**。
   *This project is strictly **non-commercial**. Any commercial use, private server hosting for profit, or monetized distribution is strictly prohibited.*
3. **版权归属 (Copyright Notice)**：游戏的所有美术素材、动画、音乐、剧情文本及衍生商标版权均归原游戏开发商（杭州亚瑟网络/游戏风云）及相关版权所有方所有。如果您是版权方且认为本项目侵犯了您的合法权益，请通过 GitHub Issue 或邮箱联系我们，我们将在核实后第一时间进行修改或删除。
   *All original game assets, art, audio, character designs, storylines, and trademarks belong to their respective copyright holders. If you are a rights holder and believe that content in this repository infringes upon your copyright, please open an Issue or contact us, and we will take appropriate action promptly.*
