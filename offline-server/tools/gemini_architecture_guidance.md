针对你们《小小海贼王》单机离线版从 110035（西罗布村）一路打通至 110094（磁鼓岛） 的跨章节闭环需求，下面从 资源保真、协议状态机、战役解锁链路、自动化回归验证 四个维度给出完整的架构设计与可直接落地的 Python 代码实现。

一、战斗模型与贴图保真映射 (Safe Battle Figure Mapping)
1.1 架构思路：双层防穿透机制

libOnePiece.so 在渲染战斗单元时，一旦找不到对应的 .plist/.png 动作帧资源就会回退到 Blank.png（严重时甚至因为缺少攻击关键帧回调导致战斗播报卡死）。
仅仅靠静态映射 BOSS 还不够——各战役中还穿插了大量杂兵与精英怪（如黑猫海贼团船员、克利克舰队炮手、恶龙海贼团鱼人、海军士兵等）。因此建议采用 “人设精映 + 职业/哈希兜底 + 发包前强制断言” 的三道防线：

资源池语义化分层：

1001 ~ 1008：四大主角职业（男女剑豪、狙击手、航海士、船医），骨骼动作最全、施法/普攻/受击特效最稳定。

10004, 10009, 10012, 10014, 10019, 10021, 10042, 10061, 10070：APK 原生打包的前期（风车村/谢尔兹镇/橘子镇）伙伴与精英怪/BOSS模型。

工程建议：用常量对这 9 个原生 100xx 模型做语义别名封装。若你本地解包 soldier/monster 配置表核对出某 ID 的贴图略有差异，只需改常量一处，全章节映射自动生效。

第一层（精确人设映射）：为西罗布村至磁鼓岛的核心 BOSS/精英怪建立 SPECIAL_BATTLE_FIGURE_MAP，确保刀客配剑豪/斩击系、重装/体术配重甲/格斗系、炮手配狙击/炮击系。

第二层（职业特征 + 确定性哈希兜底）：对于未收录的杂兵 ID，按其职业/攻击类型分入对应子池，并用 raw_fig % len(pool) 稳定取模，保证同一小怪每次进场形象一致，绝不闪烁、绝不透传非法 ID。

1.2 Python 实现代码
code
Python
download
content_copy
expand_less
# ==============================================================================
# 1. 战斗模型与贴图安全映射模块 (safe_battle_figure.py)
# ==============================================================================
from typing import Dict, Any, Optional, Tuple

VALID_BATTLE_FIGURES = frozenset({
    1001, 1002, 1003, 1004, 1005, 1006, 1007, 1008,
    10004, 10009, 10012, 10014, 10019, 10021, 10042, 10061, 10070,
})

# --- 原生 17 套合法模型的语义化槽位定义 ---
# 注：1001~1008 为 4 职业男女主角（剑豪/狙击/航海士/船医，具体性别对应以本地配置为准）
#     10004~10070 为 APK 原生自带的前期海贼/海军/BOSS 战斗模型，可按本地解包图鉴微调常量绑定
FIG_SWORDSMAN_M   = 1001   # 男剑豪：凌厉单/双刀斩击，适合高速剑客与刺客
FIG_SWORDSMAN_F   = 1002   # 女剑豪：轻灵剑术，适合达斯琪等女剑士
FIG_SNIPER_M      = 1003   # 男狙击：枪炮/远程弹道，适合炮手与远程射击系
FIG_SNIPER_F      = 1004   # 女狙击：轻便远程输出
FIG_NAVIGATOR_M   = 1005   # 男航海士：元素/大范围法系，适合斯摩格等自然系/控制型
FIG_NAVIGATOR_F   = 1006   # 女航海士：法术/辅助输出
FIG_DOCTOR_M      = 1007   # 男船医：厚重身板/法杖辅助
FIG_DOCTOR_F      = 1008   # 女船医：治疗/辅助

# APK 原生前期 NPC/BOSS 模型槽位（全部位于 VALID_BATTLE_FIGURES 内）
FIG_BRAWLER_HERO  = 10004  # 近战格斗/体术系（拳脚爆发）
FIG_PIRATE_SWORD  = 10009  # 狂野海贼刀客/双持近战
FIG_HEAVY_ARMOR   = 10012  # 重甲/盾卫/巨型肉盾
FIG_MARINE_ELITE  = 10014  # 海军/制服精英近战
FIG_AGILE_ASSASSIN = 10019 # 敏捷刺客/轻装快攻
FIG_HEAVY_GUNNER  = 10021  # 重装火炮/多武器霸主
FIG_BEAST_TANK    = 10042  # 兽型/壮硕体术重击手
FIG_OVERLORD_WAR  = 10061  # 霸主型重武器战士（大刀/重斧感）
FIG_BOSS_MAGE_CTL = 10070  # 特殊压迫感/异能控制型 BOSS

# --- 章节核心 BOSS 与精英怪精映表 ---
SPECIAL_BATTLE_FIGURE_MAP: Dict[int, int] = {
    # [Scene 2004 西罗布村 - Camp 1013]
    10084: FIG_AGILE_ASSASSIN,  # 克洛船长（高速猫爪刺客/勺子突袭，若偏好刀光感可换 1001）

    # [Scene 2005 海上餐厅巴拉迪 - Camp 1014 / 1015 / 1016]
    10087: FIG_MARINE_ELITE,    # 铁拳芬布迪（海军本部长官 + 铁指虎体术）
    10088: FIG_PIRATE_SWORD,    # 鬼人阿金（双拐近战狂战士，爆发力强）
    10091: FIG_HEAVY_ARMOR,     # 铁壁巴拉（重型盾牌肉盾）
    10092: FIG_HEAVY_GUNNER,    # 东海霸主克利克（黄金重甲 + 全身火炮弹幕）

    # [Scene 2006 可可亚西村 - Camp 1017 / 1018 / 1019]
    10097: FIG_BRAWLER_HERO,    # 黑带克罗欧比（鱼人空手道重拳体术）
    10098: FIG_SWORDSMAN_M,     # 六刀流小八（纯正多刀斩击剑客动作）
    10099: FIG_SNIPER_M,        # 啾（水炮远程狙击弹道）
    10105: FIG_OVERLORD_WAR,    # 恶龙阿龙（锯齿大刀霸主重装战士）

    # [Scene 2007 罗格镇 - Camp 1020 / 1022]
    # 注：请将下方 key 替换为你们配置表中达斯琪、斯摩格的实际 raw figure_id
    # 例如假设配置中 10106=达斯琪, 10107=斯摩格（也可在加载 monster.json 时按名称动态补全）
    10106: FIG_SWORDSMAN_F,     # 达斯琪（海军女剑士）
    10107: FIG_BOSS_MAGE_CTL,   # 斯摩格（冒烟果实自然系控制/十手重击，备选 FIG_NAVIGATOR_M）

    # [Scene 2008 磁鼓岛 - Camp 1023 / 1025]
    10101: FIG_BEAST_TANK,      # 多鲁顿（牛牛果实野牛形态，厚重体术冲锋）
    10103: FIG_HEAVY_GUNNER,    # 瓦尔波（吞吞果实大嘴/大炮变形重装）
}

# 按职业/定位划分的杂兵与未知精英兜底池（全员 100% 在 VALID_BATTLE_FIGURES 中）
ARCHETYPE_FALLBACK_POOLS: Dict[str, Tuple[int, ...]] = {
    "swordsman": (1001, 1002, 10009, 10019),          # 剑豪/刀客/刺客
    "sniper":    (1003, 1004, 10021),                 # 狙击/炮手/远程
    "navigator": (1005, 1006, 10070),                 # 航海士/法系/元素
    "doctor":    (1007, 1008),                        # 船医/治疗/辅助
    "tank":      (10012, 10042, 10061, 10014, 10004), # 肉盾/海军/体术格斗
    "default":   (10004, 10009, 10012, 10014, 10019, 10021, 10042, 10061, 10070),
}

# 名称关键词自动识别兜底（当某些 BOSS 的 figure_id 尚未录入表时自动匹配）
NAME_KEYWORD_MAP: Tuple[Tuple[str, int], ...] = (
    ("达斯琪", FIG_SWORDSMAN_F),
    ("斯摩格", FIG_BOSS_MAGE_CTL),
    ("克洛",   FIG_AGILE_ASSASSIN),
    ("芬布迪", FIG_MARINE_ELITE),
    ("阿金",   FIG_PIRATE_SWORD),
    ("巴拉",   FIG_HEAVY_ARMOR),
    ("克利克", FIG_HEAVY_GUNNER),
    ("克罗欧比", FIG_BRAWLER_HERO),
    ("黑带",   FIG_BRAWLER_HERO),
    ("小八",   FIG_SWORDSMAN_M),
    ("啾",     FIG_SNIPER_M),
    ("阿龙",   FIG_OVERLORD_WAR),
    ("多鲁顿", FIG_BEAST_TANK),
    ("瓦尔波", FIG_HEAVY_GUNNER),
    ("炮手",   FIG_SNIPER_M),
    ("狙击",   FIG_SNIPER_M),
    ("航海士", FIG_NAVIGATOR_M),
    ("海军",   FIG_MARINE_ELITE),
)


def resolve_safe_battle_figure(
    raw_figure: Any,
    job_type: Optional[str] = None,
    unit_name: str = "",
) -> int:
    """
    将任意单位的 figure_id 转换为 100% 合法的客户端战斗模型 ID。
    """
    try:
        fig_id = int(raw_figure)
    except (TypeError, ValueError):
        fig_id = 0

    # 1. 原生合法直接放行
    if fig_id in VALID_BATTLE_FIGURES:
        return fig_id

    # 2. 精确 BOSS/精英映射表命中
    if fig_id in SPECIAL_BATTLE_FIGURE_MAP:
        mapped = SPECIAL_BATTLE_FIGURE_MAP[fig_id]
        if mapped in VALID_BATTLE_FIGURES:
            return mapped

    # 3. 名称关键词兜底（防止罗格镇/磁鼓岛部分变体 ID 遗漏）
    if unit_name:
        for kw, mapped in NAME_KEYWORD_MAP:
            if kw in unit_name and mapped in VALID_BATTLE_FIGURES:
                return mapped

    # 4. 职业池 + 确定性取模兜底
    pool = ARCHETYPE_FALLBACK_POOLS.get(job_type or "default", ARCHETYPE_FALLBACK_POOLS["default"])
    chosen = pool[abs(fig_id) % len(pool)]

    # 5. 最终强不变量守卫
    return chosen if chosen in VALID_BATTLE_FIGURES else 1001


def sanitize_battle_payload(payload: Any) -> Any:
    """
    在 AMF3 战报下发前的统一递归清洗钩子，彻底杜绝任何 Blank.png 漏网。
    """
    if isinstance(payload, dict):
        unit_name = str(payload.get("name") or payload.get("role_name") or "")
        job_type = payload.get("job_type")
        for key in ("figure", "figure_id", "model", "model_id", "res_id"):
            if key in payload and payload[key] not in (None, "", 0):
                payload[key] = resolve_safe_battle_figure(payload[key], job_type, unit_name)
        for v in payload.values():
            sanitize_battle_payload(v)
    elif isinstance(payload, list):
        for item in payload:
            sanitize_battle_payload(item)
    return payload
二、跨城镇大场景流转机制 (Scene Transitions & NPC Tracking)
2.1 核心结论：绝不要在 _complete_current_task 中静默偷改 role["scene_id"]

在 Cocos2d-x + AMF3 页转手架构中，地图加载权在客户端，权威状态同步点在 SCENE.enter / SCENE.changeScene。

如果在 TASK.complete（例如在 2004 西罗布村向 NPC 21 可雅提交 110040，随即自动接取 110041“前往巴拉迪”指向 2005 的 NPC 27 香吉士）时，服务端静默把 role["scene_id"] 改成了 2005：

后果（前后端场景失步）：客户端屏幕还停留在 2004 的地图里，一旦玩家继续操作（移动、点西罗布村其他 NPC、或点任务面板触发寻路），客户端本地查表发现当前图 2004 没有 NPC 27，或把 2004 的坐标发给了处于 2005 的服务端，极易触发寻路空指针、界面卡死或黑屏。

2.2 正确的全链路闭环方案（解锁先行 + 切图落位 + 寻路宽容 + 登录自愈）

应当按以下 4 步解耦处理：

在 _complete_current_task / _accept_task 中只做「权限解锁」与「目标导航数据下发」：

保持 role["scene_id"] 仍为当前所在城镇（2004）。

解析新任务（110041）的目标 NPC（27 香吉士）或目标战役所属场景 target_scene_id = 2005，立即把 2005 加入 role["unlocked_scenes"]（并将世界地图可传送标记打开）。

在返回给客户端的新任务对象（Task VO）中，确保带齐目标 scene_id、npc_id、camp_id、army_id、status。

当玩家不点传送门、直接点击「任务追踪面板自动寻路」时，客户端的真实行为与服务端配合：

客户端本地逻辑判断：task.target_scene_id (2005) != client.current_scene_id (2004)。

绝大多数移动端魔改/原版客户端会走两种路径之一：

路径 A（直接瞬移切图）：客户端直接发 SCENE.changeScene(2005) 或 SCENE.enter(2005) -> 服务端校验 2005 in unlocked_scenes（单机版可直接按主线进度放行）-> 此时才更新 role["scene_id"] = 2005，并重置玩家坐标为 SCENE_SAFE_SPAWN[2005] -> 下发 2005 完整 NPC 列表（含 NPC 24、25、27 及其头顶任务状态图标）。

路径 B（客户端直接跨图发 NPC.talk(27) / TASK.complete(110041)）：部分任务面板在对话型任务中不触发切图，直接发起交任务 RPC。此时服务端对 TASK.complete / TASK.accept 采取宽容校验（不因 role["scene_id"] != npc.scene_id 拒绝对话/交任务），同时在响应体中如有 push_scene 协议字段可顺带通知，或等玩家下次进副本/点地图时自然同步。

安全出生点表 (SCENE_SAFE_SPAWN) 防止黑屏卡墙：

每次切换场景，必须重置 (x, y) 到目标地图可行走区域内的安全坐标，绝不能沿用旧场景坐标（如果 2004 宽度为 2400 而 2005 宽度为 1600，沿用旧坐标会直接掉出视口导致黑屏）。

重登自愈机制（Login Self-Healing）：

只有在玩家重新登录（USER.login / ROLE.enterGame）时，客户端才完全听从服务端下发的 role["scene_id"] 初始化首屏地图。此时如果发现当前活跃主线任务已在更新的场景，且玩家坐标异常，可直接将 role["scene_id"] 校准到当前主线场景的安全坐标，100% 避免失步。

2.3 Python 实现代码
code
Python
download
content_copy
expand_less
# ==============================================================================
# 2. 跨城镇场景流转与安全坐标表 (scene_manager.py)
# ==============================================================================
from typing import Dict, List, Any, Tuple

# 各城镇安全出生点与主线 NPC 布局（坐标需在对应地编可行走区内）
SCENE_CONFIG: Dict[int, Dict[str, Any]] = {
    2004: {
        "name": "西罗布村",
        "spawn": (420, 360),
        "npcs": [
            {"npc_id": 20, "name": "梅利",   "x": 520, "y": 350},
            {"npc_id": 21, "name": "可雅",   "x": 760, "y": 340},
            {"npc_id": 23, "name": "乌索普", "x": 980, "y": 360},
        ],
    },
    2005: {
        "name": "海上餐厅巴拉迪",
        "spawn": (380, 360),
        "npcs": [
            {"npc_id": 24, "name": "派迪",   "x": 560, "y": 350},
            {"npc_id": 25, "name": "卓夫",   "x": 780, "y": 340},
            {"npc_id": 27, "name": "香吉士", "x": 1020, "y": 360},
        ],
    },
    2006: {
        "name": "可可亚西村",
        "spawn": (400, 360),
        "npcs": [
            {"npc_id": 29, "name": "健先生", "x": 620, "y": 350},
            {"npc_id": 31, "name": "诺琪高", "x": 900, "y": 350},
        ],
    },
    2007: {
        "name": "罗格镇",
        "spawn": (420, 360),
        "npcs": [
            {"npc_id": 33, "name": "斯摩格/市民", "x": 640, "y": 350},
            {"npc_id": 35, "name": "一本松",      "x": 940, "y": 350},
        ],
    },
    2008: {
        "name": "磁鼓岛",
        "spawn": (400, 360),
        "npcs": [
            {"npc_id": 39, "name": "多鲁顿", "x": 720, "y": 350},
        ],
    },
}

# NPC -> 所属场景反查表
NPC_TO_SCENE: Dict[int, int] = {
    npc["npc_id"]: sid
    for sid, cfg in SCENE_CONFIG.items()
    for npc in cfg["npcs"]
}


def unlock_scene_for_task(role: Dict[str, Any], task_cfg: Dict[str, Any]) -> int:
    """
    在接取新任务时调用：仅解锁目标场景权限，绝不在此处静默覆盖 role['scene_id']！
    返回该任务关联的目标场景 ID（用于下发导航字段）。
    """
    unlocked = set(role.get("unlocked_scenes") or [2001, 2002, 2003, 2004])

    target_scene = task_cfg.get("scene_id")
    if not target_scene:
        npc_id = task_cfg.get("submit_npc_id") or task_cfg.get("accept_npc_id")
        target_scene = NPC_TO_SCENE.get(npc_id, role.get("scene_id", 2004))

    # 顺序解锁直到目标城镇（避免跨图跳章后世界地图中间断档）
    for sid in sorted(SCENE_CONFIG.keys()):
        if sid <= target_scene:
            unlocked.add(sid)

    role["unlocked_scenes"] = sorted(unlocked)
    return target_scene


def handle_scene_change(role: Dict[str, Any], target_scene_id: int, active_task_cfg: Dict[str, Any]) -> Dict[str, Any]:
    """
    处理客户端发来的 SCENE.enter / SCENE.changeScene 请求。
    这是唯一合法修改 role['scene_id'] 与坐标的权威入口。
    """
    target_scene_id = int(target_scene_id)
    if target_scene_id not in SCENE_CONFIG:
        # 兜底：避免客户端请求未配置地图时崩溃
        target_scene_id = role.get("scene_id", 2004)

    unlocked = set(role.get("unlocked_scenes") or [2004])
    # 单机离线版宽容放行：只要是已配置主线城镇，允许切入并记录解锁
    unlocked.add(target_scene_id)
    role["unlocked_scenes"] = sorted(unlocked)

    cfg = SCENE_CONFIG[target_scene_id]
    spawn_x, spawn_y = cfg["spawn"]

    # 更新权威场景与安全坐标
    role["scene_id"] = target_scene_id
    role["x"] = spawn_x
    role["y"] = spawn_y

    # 动态计算该场景每个 NPC 头顶的任务状态（0=无, 1=可接, 2=进行中, 3=可交）
    npcs_vo = []
    for npc in cfg["npcs"]:
        npc_state = compute_npc_quest_sign(role, npc["npc_id"], active_task_cfg)
        npcs_vo.append({
            "npc_id": npc["npc_id"],
            "name": npc["name"],
            "x": npc["x"],
            "y": npc["y"],
            "task_state": npc_state,
        })

    return {
        "code": 0,
        "scene_id": target_scene_id,
        "x": spawn_x,
        "y": spawn_y,
        "npcs": npcs_vo,
        "players": [],
        "unlocked_scenes": role["unlocked_scenes"],
    }


def compute_npc_quest_sign(role: Dict[str, Any], npc_id: int, task_cfg: Dict[str, Any]) -> int:
    if not task_cfg:
        return 0
    task_status = role.get("task_status", 1)  # 1=进行中, 2=已完成待提交
    if task_status == 2 and task_cfg.get("submit_npc_id") == npc_id:
        return 3  # 黄色问号（可交付）
    if task_status == 1 and task_cfg.get("accept_npc_id") == npc_id:
        return 2  # 灰色问号（进行中）
    return 0
三、战役据点按场景激活 (CAMP.campByScene & Camp Unlock)
3.1 两个极易踩坑的细节（你们数据中已经出现！）

仔细看你们提供的章节结构，有一个非常典型的ID 跳号陷阱：

罗格镇 (2007)：达斯琪是 Camp 1020，斯摩格是 Camp 1022（中间跳过 1021！）

磁鼓岛 (2008)：多鲁顿是 Camp 1023，瓦尔波是 Camp 1025（中间跳过 1024！）

如果服务端写死 unlock_condition = (camp_id - 1) in cleared_camps，那么 1022 和 1025 将永远黑屏锁死，无法点击！

另一个常见问题是 点亮了但点击无响应，通常由三个字段缺失引起：

remain_times / attack_num 未下发或为 0，客户端判定今日挑战次数耗尽而吞掉点击事件；

战役外层解锁了，但战役内部的第一个小关 army_id 没有设为可攻打状态；

主线任务已经推到该战役，但前置战役因为跳级/测试数据未记录通关星级，导致据点被前置条件卡住。

3.2 优雅设计：显式场景链路表 + 多源 OR 解锁判定

采用 显式 SCENE_CAMP_CHAINS 有向链配置，不再依赖 camp_id - 1 推导，并对每个战役据点执行 四选一 OR 激活判定：

属于当前已解锁场景的 首个主线据点（进入城镇即默认点亮第一个据点，避免界面一片空白）；

配置中显式声明的 prev_camp_id 已通关（stars > 0）；

玩家当前活跃主线任务（或已完成主线最大 ID）达到了该据点的 unlock_task_id 或直接指向该据点/内部关卡；

玩家存档 camp_progress 中已有该据点的通关/星级记录。

3.3 Python 实现代码
code
Python
download
content_copy
expand_less
# ==============================================================================
# 3. 战役据点按场景激活与星级管理 (camp_manager.py)
# ==============================================================================
from typing import Dict, List, Any, Optional

# 显式定义每个场景的主线战役顺序链（彻底规避 1020->1022 / 1023->1025 跳号锁死）
SCENE_CAMP_CHAINS: Dict[int, List[Dict[str, Any]]] = {
    2004: [
        {
            "camp_id": 1013, "name": "克洛船长之战",
            "prev_camp_id": None, "unlock_task_id": 110035,
            "armies": [11308, 11314, 11320],
        },
    ],
    2005: [
        {
            "camp_id": 1014, "name": "铁拳芬布迪",
            "prev_camp_id": 1013, "unlock_task_id": 110041,
            "armies": [11401, 11405, 11410],  # 请替换为本地配置表中 1014 真实有序 army_id 列表
        },
        {
            "camp_id": 1015, "name": "鬼人阿金",
            "prev_camp_id": 1014, "unlock_task_id": 110047,
            "armies": [11501, 11505, 11510],
        },
        {
            "camp_id": 1016, "name": "东海霸主克利克",
            "prev_camp_id": 1015, "unlock_task_id": 110053,
            "armies": [11601, 11605, 11610],
        },
    ],
    2006: [
        {
            "camp_id": 1017, "name": "黑带克罗欧比",
            "prev_camp_id": 1016, "unlock_task_id": 110059,
            "armies": [11701, 11705, 11710],
        },
        {
            "camp_id": 1018, "name": "六刀流小八",
            "prev_camp_id": 1017, "unlock_task_id": 110065,
            "armies": [11801, 11805, 11810],
        },
        {
            "camp_id": 1019, "name": "恶龙锯齿阿龙",
            "prev_camp_id": 1018, "unlock_task_id": 110071,
            "armies": [11901, 11905, 11910],
        },
    ],
    2007: [
        {
            "camp_id": 1020, "name": "达斯琪",
            "prev_camp_id": 1019, "unlock_task_id": 110077,
            "armies": [12001, 12005, 12010],
        },
        {
            "camp_id": 1022, "name": "斯摩格",  # 注意：显式指向 prev_camp_id=1020，跳过 1021
            "prev_camp_id": 1020, "unlock_task_id": 110084,
            "armies": [12201, 12205, 12210],
        },
    ],
    2008: [
        {
            "camp_id": 1023, "name": "多鲁顿",
            "prev_camp_id": 1022, "unlock_task_id": 110091,
            "armies": [12301, 12305, 12310],
        },
        {
            "camp_id": 1025, "name": "瓦尔波",  # 注意：显式指向 prev_camp_id=1023，跳过 1024
            "prev_camp_id": 1023, "unlock_task_id": 110093,
            "armies": [12501, 12505, 12510],
        },
    ],
}

# 反查索引：camp_id -> (scene_id, camp_cfg)
CAMP_INDEX: Dict[int, Dict[str, Any]] = {
    camp["camp_id"]: {"scene_id": sid, **camp}
    for sid, camps in SCENE_CAMP_CHAINS.items()
    for camp in camps
}


def is_camp_unlocked(role: Dict[str, Any], camp_cfg: Dict[str, Any], is_first_in_scene: bool) -> bool:
    camp_id = camp_cfg["camp_id"]
    progress = role.get("camp_progress") or {}
    camp_rec = progress.get(str(camp_id)) or progress.get(camp_id) or {}

    # 条件 1：已有进度或已通关
    if camp_rec.get("cleared") or camp_rec.get("stars", 0) > 0:
        return True

    # 条件 2：当前主线任务进度已达到或超过该战役解锁节点
    cur_task_id = int(role.get("task_id", 110035))
    if cur_task_id >= int(camp_cfg.get("unlock_task_id", 999999)):
        return True

    # 条件 3：显式前置战役已通关
    prev_id = camp_cfg.get("prev_camp_id")
    if prev_id is not None:
        prev_rec = progress.get(str(prev_id)) or progress.get(prev_id) or {}
        if prev_rec.get("cleared") or prev_rec.get("stars", 0) > 0:
            return True

    # 条件 4：属于当前已解锁场景的首个据点，防止进入新城镇界面空白
    scene_id = CAMP_INDEX[camp_id]["scene_id"]
    if is_first_in_scene and scene_id in (role.get("unlocked_scenes") or [2004]):
        return True

    return False


def build_camp_by_scene_response(role: Dict[str, Any], scene_id: int) -> Dict[str, Any]:
    """
    响应客户端 CAMP.campByScene(scene_id) 请求。
    """
    scene_id = int(scene_id)
    camps_cfg = SCENE_CAMP_CHAINS.get(scene_id, [])
    progress = role.get("camp_progress") or {}
    camp_list = []

    for idx, cfg in enumerate(camps_cfg):
        cid = cfg["camp_id"]
        unlocked = is_camp_unlocked(role, cfg, is_first_in_scene=(idx == 0))
        if not unlocked:
            # 注意：部分客户端版本要求未解锁据点不返回，或返回 status=0；
            # 若你们的客户端 UI 显示灰色锁图标，可改为 append status=0 的条目。
            continue

        rec = progress.get(str(cid)) or progress.get(cid) or {}
        cleared_armies = set(rec.get("cleared_armies") or [])
        is_cleared = bool(rec.get("cleared", False))
        stars = int(rec.get("stars", 3 if is_cleared else 0))

        # 构造该据点内各小关的解锁态（保证下一待打关卡永远可点）
        armies_vo = []
        for a_idx, army_id in enumerate(cfg["armies"]):
            prev_army_cleared = (a_idx == 0) or (cfg["armies"][a_idx - 1] in cleared_armies)
            a_cleared = army_id in cleared_armies
            if a_cleared or prev_army_cleared:
                armies_vo.append({
                    "army_id": army_id,
                    "status": 2 if a_cleared else 1,  # 1=可攻打, 2=已通关
                    "star": 3 if a_cleared else 0,
                    "remain_times": 99,               # 单机版给足挑战次数，防止点击无响应
                })

        camp_list.append({
            "camp_id": cid,
            "scene_id": scene_id,
            "status": 2 if is_cleared else 1,         # 1=已点亮可攻打, 2=已通关
            "is_open": 1,
            "star": stars,
            "score": stars,
            "remain_times": 99,
            "armies": armies_vo,
        })

    return {
        "code": 0,
        "scene_id": scene_id,
        "camps": camp_list,
    }


def record_army_victory(role: Dict[str, Any], camp_id: int, army_id: int, stars: int = 3) -> None:
    """
    战斗胜利后记录关卡进度，若击败该战役的最后一关（BOSS 关），自动标记整个战役通关并点亮星级。
    """
    progress = role.setdefault("camp_progress", {})
    key = str(camp_id)
    rec = progress.setdefault(key, {"cleared": False, "stars": 0, "cleared_armies": []})

    if army_id not in rec["cleared_armies"]:
        rec["cleared_armies"].append(army_id)

    cfg = CAMP_INDEX.get(int(camp_id))
    if cfg and cfg["armies"]:
        boss_army_id = cfg["armies"][-1]
        if army_id == boss_army_id or set(cfg["armies"]).issubset(set(rec["cleared_armies"])):
            rec["cleared"] = True
            rec["stars"] = max(int(rec.get("stars", 0)), int(stars))
四、主线任务全流程自动化验证与推进工具 (Auto Quest Runner)
4.1 架构设计思路

为了保证后续改代码不把已跑通的 110035~110094 章节改崩，建议构建一个协议层闭环测试工具 tools/auto_quest_runner.py，具备以下核心特性：

沙盒快照隔离 (--dry-run vs --commit)：

默认运行在沙盒副本（复制当前存档或启用内存态会话），跑完全程后不影响真实存档；加 --commit 时可作为“一键推进脚本”直接把存档推进到指定任务（如 --target 110094）。

真协议走全链（AMF3 Loopback）：

直接调用服务端路由分发器（或通过本地 HTTP/Socket 发送真实 AMF3 二进制包），顺带验证 AMF3 编解码不会出现 None 字段崩溃或类型溢出。

每步强断言矩阵（Regression Assertions）：

场景流转断言：跨章时自动发 SCENE.changeScene，校验 npcs 包含目标 NPC 且出生点非空；

据点点亮断言：每次进图发 CAMP.campByScene，断言目标战役在返回列表中且 remain_times > 0；

零隐形模型断言（Blank.png Guard）：每次打完 BATTLE.attackArmy，递归扫描战报中所有 figure/model_id，断言 100% 属于 VALID_BATTLE_FIGURES；

奖励与防死循环断言：提交任务前后对比 exp / belly / bag_items 增量，同时校验 next_task_id > cur_task_id（防任务链闭环卡死）。

4.2 Python 实现代码 (tools/auto_quest_runner.py)
code
Python
download
content_copy
expand_less
# ==============================================================================
# 4. 主线任务全流程自动化验证与推进套件 (tools/auto_quest_runner.py)
# ==============================================================================
import argparse
import copy
import json
import sys
from dataclasses import dataclass, field
from typing import Dict, Any, List, Optional, Set, Callable

VALID_BATTLE_FIGURES = {
    1001, 1002, 1003, 1004, 1005, 1006, 1007, 1008,
    10004, 10009, 10012, 10014, 10019, 10021, 10042, 10061, 10070,
}


@dataclass
class StepAudit:
    task_id: int
    scene_id: int
    action_log: List[str] = field(default_factory=list)
    exp_delta: int = 0
    belly_delta: int = 0
    new_items: List[int] = field(default_factory=list)
    invalid_figures: List[int] = field(default_factory=list)
    passed: bool = True
    error: str = ""


def collect_invalid_figures(obj: Any, found: Optional[List[int]] = None) -> List[int]:
    """递归审计战报/场景包，抓出任何会导致 Blank.png 的非法 figure ID。"""
    if found is None:
        found = []
    if isinstance(obj, dict):
        for k in ("figure", "figure_id", "model", "model_id", "res_id"):
            if k in obj and obj[k] not in (None, "", 0):
                val = int(obj[k])
                if val not in VALID_BATTLE_FIGURES:
                    found.append(val)
        for v in obj.values():
            collect_invalid_figures(v, found)
    elif isinstance(obj, list):
        for item in obj:
            collect_invalid_figures(item, found)
    return found


class AutoQuestRunner:
    """
    对接 server.py 网关分发器的自动化主线回归套件。
    rpc_caller(service_method: str, params: dict) -> dict
    支持两种注入：
      1) 进程内直调 server.dispatch_rpc(method, params, role)
      2) HTTP/TCP 发送真实 AMF3 请求至本地 server.py
    """

    def __init__(
        self,
        rpc_caller: Callable[[str, Dict[str, Any]], Dict[str, Any]],
        task_configs: Dict[int, Dict[str, Any]],
        get_role_snapshot: Callable[[], Dict[str, Any]],
    ):
        self.call = rpc_caller
        self.task_configs = task_configs
        self.get_role = get_role_snapshot
        self.audits: List[StepAudit] = []

    def run(self, start_task: int = 110035, target_task: int = 110094, max_steps: int = 120) -> bool:
        visited: Set[int] = set()
        current_scene = int(self.get_role().get("scene_id", 2004))

        for step in range(max_steps):
            role_before = copy.deepcopy(self.get_role())
            cur_task_id = int(role_before.get("task_id", start_task))

            if cur_task_id > target_task:
                print(f"[DONE] 已顺利超越目标任务 {target_task}（当前 {cur_task_id}）")
                return True

            if cur_task_id in visited:
                raise RuntimeError(f"检测到主线任务死循环！任务 {cur_task_id} 被重复执行")
            visited.add(cur_task_id)

            cfg = self.task_configs.get(cur_task_id)
            if not cfg:
                raise KeyError(f"任务配置表缺少 task_id={cur_task_id}")

            audit = StepAudit(task_id=cur_task_id, scene_id=current_scene)
            try:
                # --------------------------------------------------------------
                # Step 1: 跨城镇场景校验与流转
                # --------------------------------------------------------------
                target_scene = int(cfg.get("scene_id") or current_scene)
                if target_scene != current_scene:
                    res_scene = self.call("SCE