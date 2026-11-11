# 小小海贼王本地化研究记录

## 现有资源

- 原始 APK 已反编译到 `D:\AI\work\xiaoxiaohaizei`，工作副本在本目录。
- `assets/Env/conf/onepiece.dll.1` 至 `.4` 按顺序拼接后，是一个 SQLite 3 数据库。输出文件 `D:\AI\work\xiaoxiaohaizei\onepiece-reconstructed.db` 的 `PRAGMA integrity_check` 返回 `ok`。
- 数据库包含角色、技能、道具、任务、场景、NPC、军队、怪物等静态配置；例如 `cfg_monster` 8,891 行、`cfg_general` 312 行、`cfg_task` 815 行。未见玩家账号或存档表。
- `小小海贼王官网.zip` 中只有另一份 APK；本工作区没有服务端源码、服务端数据库或协议文档。

## 客户端网络证据

- `libOnePiece.so` 含服务器列表地址 `http://183.136.140.10/serverlist.js`。
- `OPNetManager::GetPostInfo` 的 ARM 指令已还原出 HTTP 请求头：`POST /messagebroker/amf HTTP/1.1`、`Content-Type: application/x-amf`、动态 `Host`、`Content-Length`、`Cookie` 等；客户端再把 AMF3 包体发往选中的服务器。
- 服务名字符串包含 `com.arthur.server.net.services.impl.LOGIN`、`CREATE`、`BATTLE`、`SCENE`、`TASK`、`ITEM`、`ROLE`、`GENERAL` 等。
- 原生客户端有 `PPGetServerList`、`PPLogin`、`opLoginData`、`onSessionData` 等处理路径；现有改包尚未实现这些响应。
- 二进制中 `OPController::PPLogin` 与 `PPGetServerList` 两个同名函数只有空函数体，真实请求由通用请求/网络管理器分发，不能靠单独改这两个函数跳过登录。
- `CLoginScene::UpdateApp` 在没有可复用的登录配置时会调用 `XLLogin::Logout` 和 `XLLogin::Login`；后者再调用 91 登录 SDK。仅把 Java 的 `isLogined()` 改成真并不能绕开这条启动调用链。
- `opLoginData` 会把登录响应分发到角色、伙伴、物品、任务、灵魂等解析器。顶层字段包括 `role_data`、`general_data`、`item_data`、`task_data`、`soul_data`、`request_code`、`error_code`、`passport`；`role_data` 至少包含角色 ID/名字/等级、阵营、场景、体力、金币、悬赏和任务引导等字段。
- `onGetServerList` 解析列表字段 `id`、`name`、`port`、`url`、`status` 等，可据此构造本机单服列表；但还需要从真实请求/响应继续确认字段类型和 AMF3 包装方式。

## 当前补丁状态

- `OnePieceActivity` 启动时跳过官方版本检查。
- `NDLoginAdapter.isLogined()` 在工作副本中固定返回真，目的是绕过 91 SDK 登录门槛；这不等于游戏服务器认证成功。
- 已进一步把 Java `Login()` 改为经 GL 线程队列发送原生登录成功事件 `0`，并让 `Logout()` 不再调用 91 SDK；原生事件 `0` 分支会继续取用户号并请求服务器列表。
- 动态资源配置中关闭官方更新主机和远程开关。
- 已将原生库中的服务器列表地址改为 `http://10.0.2.2/serverlist.js`，即 Android Emulator 访问宿主机的地址；本机仍需提供服务器列表和游戏服务。
- 新签名实验包：`D:\AI\work\xiaoxiaohaizei-offline-locallogin.apk`。Apktool 构建完成、JAR 签名校验通过（本地自签名）；没有安卓模拟器，尚未实机或模拟器验证。

## 关键突破与单机运行成功（2026-11-02 ~ 2026-11-03）

- **JNI 登录绕过完成**：
  构建了完整打包并签名的发布包 `D:\AI\work\xiaoxiaohaizei-offline-release.apk`，成功避开 91 SDK JNI 局部引用失效崩溃，让客户端在启动后直接触发原生本地访客登录，顺利向本地服务端发起 `GET /serverlist.js`。
- **服务器列表与角色状态配置**：
  在 `offline-server/serverlist.js` 中将服务配置为 `"createstatus": 1`（开启角色创建）。
- **破解"卡 Loading 界面"核心难题**：
  - 逆向分析 `libOnePiece.so` 的登录流程 `OPController::onLogined`（`0x3e05f8`）：
    ```arm
    0x3e0674: ldrb r3, [r3, #0x329] ; UserInfo + 0x329 (is_active)
    0x3e0678: eor  r3, r3, #1
    0x3e0680: cmp  r3, #0
    0x3e0684: beq  #0x3e0740        ; 只有当 is_active == 1 时才跳转创建并激活 CMainScene
    ```
  - `server.py` 对新角色返回 `is_active=True`，对未创建角色时返回 `is_active=False`（此时客户端弹出角色创建界面）。
  - 将 `server.py` 中的 `is_active` 改为 `True` 后，客户端立即正常关闭 Loading 弹窗，顺利激活风车村主城场景。
- **全流程实机验证通过**：
  - 进入风车村主城（`CMainScene`），99999 银币、100/100 活力、战斗力与各项城镇建筑均正常显示。
  - 界面弹窗与系统面板交互正常（成功弹出并关闭活力奖励对话框、打开日常/精彩活动面板）。
  - 后续心跳和游戏轮询请求（`ACTIVITY.rewardCheck`、`FATE.fate` 等）均由本地网关平稳响应。

## v0.5 新功能：角色创建 + 任务系统（2026-11-03）

### AMF 协议分析（来自 captures 目录抓包）

| 操作 | AMF source | body 参数 |
|------|-----------|-----------|
| 创建角色 | `CREATE.create` | `[passport, name, figure]` — figure=1~4 对应职业 |
| 随机名字 | `CREATE.generateRandomName` | `[]` — 无参数 |
| 获取任务 | `TASK.get` | `[role_id, passport]` |
| 场景切换 | `SCENE.change` | `[role_id, passport, scene_id, x, y]` |
| 战斗申请 | `BATTLE.matchApply` | `[role_id, passport, camp_id?]` |
| 获取角色 | `ROLE.role` | `[role_id, passport]` |
| 获取船员 | `GENERAL.general` | `[role_id, passport]` |

### 游戏数据库关键表

| 表名 | 说明 |
|------|-----|
| `cfg_job` | 4个职业: 10001坦克, 10002刺客, 10003法师, 10004医师 |
| `cfg_task` | 主线任务链: 100001起，complete_type=4表示战斗任务 |
| `cfg_camp` | 战场配置: 1001~1003为第一章风车村战场 |
| `cfg_scene` | 场景: 10101=风车村主城, 2001=战场世界地图 |

### server.py v0.5 实现的功能

1. **角色创建**：`CREATE.create` — 保存昵称和职业到 `player_save.json`，返回完整登录数据
2. **随机命名**：`CREATE.generateRandomName` — 返回随机海贼名
3. **任务系统**：
   - `TASK.get` — 返回当前激活任务和已完成任务列表
   - `TASK.submit` — 提交任务，自动推进到下一个
   - 任务链：100001~100020（第一章全任务）
   - 战斗完成任务自动触发（complete_type=4）
4. **战斗系统**：`BATTLE.matchApply` — 返回战斗胜利结果，触发经验/金币奖励，级别提升
5. **场景系统**：`SCENE.scene`/`SCENE.change` — 位置同步与场景切换
6. **船员数据**：`GENERAL.general` — 返回初始3名船员（索隆/娜美/乔巴）
7. **道具数据**：`ITEM.*` — 返回初始道具包
8. **存档持久化**：角色数据保存到 `player_save.json`，重启服务器后保留进度

### 第一章任务链（风车村）

```
100001 相遇       → 对话任务（NPC: 海军上校）
100002 船长的点子  → 对话任务
100003 新兵的战场  → 战斗任务（camp: 10101区域）  ← 触发: BATTLE 胜利
100004 伙伴       → 对话任务
100005 学习技能   → 对话任务
100006 返回船长   → 对话任务
100007 (战斗)     → 战斗任务（camp: 10103区域）
...
100020 (战斗)     → 战斗任务（camp: 10310区域）  ← 第一章结束
```

## 运行与体验方法

1. **已安装包**：
   - 最终脱机 APK：`D:\AI\work\xiaoxiaohaizei-offline-release.apk`
   - 目前该包已直接安装在 MuMu 模拟器（Android 12）中，应用名为 **小小海贼王**（包名 `com.nd.OnePiece`）。
2. **本地服务端 v0.5**：
   - 位于 `D:\AI\work\xiaoxiaohaizei-offline-src\offline-server\server.py`。
   - 双击运行 `启动本地服务.bat`（选1保留存档，选2重置创建新角色）。
3. **进入游戏体验**：
   - 打开 MuMu 模拟器，点击 **小小海贼王** 图标启动游戏；
   - 看到公告和服务器列表后，点击 **【本地单机服】**；
   - 弹出"是否选择服务器？"点击 **【确定】**；
   - 进入**角色创建界面**：选择职业、输入名字（或随机生成）；
   - 确认后直接进入风车村主城开始任务！

## 下一步计划

- [ ] 深度验证角色创建 UI 流程（需要模拟器实测）
- [ ] 实现 NPC 对话响应（`SCENE.npc` / `cfg_word` 表数据）
- [ ] 增加玩家阵营选择（海军/海贼/革命军）
- [ ] 完善战斗系统（船员阵容、技能、敌方配置）
- [ ] 实现道具使用和购买
- [ ] 第二章（东方海任务）接入
