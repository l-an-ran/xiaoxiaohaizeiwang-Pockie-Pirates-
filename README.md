# 《小小海贼王》(Pockie Pirates) 移动端单机离线版

[![Python Version](https://img.shields.io/badge/Python-3.8%2B-blue.svg)](https://www.python.org/)
[![Platform](https://img.shields.io/badge/Platform-Android%20%7C%20Windows-green.svg)](#)
[![Protocol](https://img.shields.io/badge/Protocol-AMF3%20%2F%20HTTP-orange.svg)](#)
[![Status](https://img.shields.io/badge/Status-Playable%20Prototype-brightgreen.svg)](#)

本项目是经典页游/手游**《小小海贼王》（Pockie Pirates）**的单机离线复活研究工程。

官方服务器停运多年，本项目通过逆向解构 Android 原生客户端（`libOnePiece.so` 与 Smali 逻辑），剥离旧时代 91 SDK 的强鉴权与在线升级限制；同时使用 Python 轻量化复现了底层 **AMF3 (Action Message Format 3)** 通信协议的单机网关服务端，实现了无需外网连接、无复杂数据库依赖的单机流畅运行与主线玩法闭环。

---

## 🌟 核心特性与攻关进展

- [x] **完全脱机与鉴权绕过**：彻底剥离 91 SDK 强登录与 JNI 鉴权调用，重定向服务器列表至本地宿主机（`10.0.2.2:8080`），即开即玩。
- [x] **角色创建与自定义**：支持剑豪、狙击、航海、船医四大初始职业，支持中文/英文自定义角色命名与海贼随机命名。
- [x] **主城与地图系统**：破解了客户端逆向中著名的“Loading 100% 卡死”难题（`is_active` 状态机判定），顺利激活风车村主城场景（`CMainScene`），支持城镇漫步、建筑交互与场景切换。
- [x] **第一章主线任务链闭环**：完整跑通风车村主线任务（`100001 ~ 100006`），支持 NPC 寻路、对白推进、技能领悟与状态交付。
- [x] **战役海面与战斗引擎跑通**：
  - 深度反汇编 `libOnePiece.so`，破译战役海面 45 度等距轴测投影算法（`stageToRect`），精确还原敌军海面坐标投影与动态战役评分计算；
  - 跑通 `BATTLE.battle` 对战请求、战报回放渲染、战斗结算、星级评定及经验/银币升级发放。
- [x] **伙伴与背包系统**：支持索隆、娜美、乔巴等初始船员数据解析，支持技能预览与领悟。
- [x] **数据自动持久化**：玩家的所有等级、金币、背包道具与任务流转数据均实时保存于本地 `offline-server/player_save.json`，支持断点续玩与存档重置。

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
├── smali/                      # 反编译后的 Java/Smali 源代码（已打补丁）
├── AndroidManifest.xml         # Android 应用清单文件
├── apktool.yml                 # Apktool 逆向工程构建配置
│
├── offline-server/             # 本地离线网关服务端（Python 纯原生实现）
│   ├── server.py               # 核心服务端主程序（AMF3 请求分发与数据逻辑）
│   ├── amf3.py                 # 原生 Python 实现的 AMF3 编解码解析库
│   ├── serverlist.js           # 本地单服列表接口响应
│   ├── player_save.json        # 玩家角色存档数据（JSON 持久化）
│   ├── 启动本地服务.bat         # Windows 一键启动脚本
│   ├── start.bat / stop.bat    # 服务启停控制脚本
│   └── README.md               # 服务端技术细节说明
│
├── DAILY_LOG.md                # 逆向攻关与功能跑通开发日志
├── OFFLINE_RESEARCH.md         # 协议破译与反汇编研究记录
└── .gitignore                  # Git 忽略配置（已过滤海量抓包、APK 与构建临时文件）
```

---

## 🚀 快速上手与运行指南

### 1. 运行环境准备
- **操作系统**：Windows 10 / 11、Linux 或 macOS
- **运行依赖**：Python 3.8 及以上（无需额外安装复杂的第三方数据库或重量级 Web 服务）
- **客户端环境**：支持 ARM 架构的 Android 模拟器（推荐使用 **MuMu 模拟器** 或雷电模拟器），或安卓真机

### 2. 启动本地离线服务端

进入 `offline-server` 目录，在 Windows 上直接双击运行：
```cmd
启动本地服务.bat
```
*(或者在终端中运行 `python server.py --host 0.0.0.0 --port 8080`)*

服务默认在本地 `0.0.0.0:8080` 启动监听。Android 模拟器可通过宿主机虚拟网关地址 `10.0.2.2:8080`（或 `127.0.0.1:8080`）直连。

### 3. 安装与体验客户端

1. **直接安装 Release 安装包**：
   下载项目发布的最新版本 APK（可前往 GitHub [Releases](../../releases) 页面下载），将其拖拽安装至 Android 模拟器。
2. **启动游戏**：
   确保离线服务端窗口正在运行，打开游戏，无需输入账号密码，直接点击进入游戏即可进入风车村开始冒险！

---

## 🛠️ 二次开发与客户端重新打包

若您修改了 `smali/` 源码或 `assets/` 资源文件，可以使用 [Apktool](https://apktool.org/) 重新编译并签名打包：

```bash
# 1. 重新打包 APK
apktool b . -o dist/xiaoxiaohaizei-modified.apk

# 2. 对 APK 进行对齐与签名
zipalign -v 4 dist/xiaoxiaohaizei-modified.apk dist/xiaoxiaohaizei-aligned.apk
apksigner sign --ks your-release-key.jks --out dist/xiaoxiaohaizei-signed.apk dist/xiaoxiaohaizei-aligned.apk
```

---

## 🔬 技术研究与协议细节

本项目的离线化攻关涵盖了大量原生客户端逆向工程与协议破译：

1. **AMF3 / Flex RPC 协议**：
   游戏使用 Flash 时代的 AMF3 协议在 HTTP `POST /messagebroker/amf` 隧道上传输二进制 RPC 消息。服务端通过纯 Python 模块 `amf3.py` 完整还原了对象、数组、整型、双精度浮点型及类引用的序列化与反序列化。
2. **静态配置数据库抽取**：
   客户端 `assets/Env/conf/onepiece.dll.1 ~ .4` 本质是分卷切片的 SQLite 3 数据库文件。经拼合还原后，可提取包含 `cfg_general`（角色武将）、`cfg_monster`（怪物）、`cfg_task`（任务链）等全套 8000+ 条官方原始数值表。
3. **等距轴测海面映射**：
   战役海面地图不采用普通笛卡尔坐标，而是经过 `0x4f5238`（`stageToRect`）的 45 度矩阵变换投影到屏幕，敌军坐标必须经过算法反向推导才能精确呈现在海面并响应触控。

详细的逆向反汇编分析与函数偏移表可参阅 [OFFLINE_RESEARCH.md](OFFLINE_RESEARCH.md) 与 [DAILY_LOG.md](DAILY_LOG.md)。

---

## ⚖️ 免责声明 (Disclaimer)

1. 本项目所涉及的逆向工程、协议还原及代码仅用于**计算机软件技术研究、个人学习与怀旧交流**。
2. 本项目**严禁用于任何商业营利活动**。
3. 游戏的所有美术素材、音频、音乐、剧情文本及衍生商标版权归原游戏开发商及版权所有方所有。如果您是版权方且认为本项目侵犯了您的合法权益，请提交 Issue 或联系我们，我们将第一时间下架或删除相关内容。
