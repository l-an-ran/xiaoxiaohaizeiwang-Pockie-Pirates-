.class public Lcom/nd/commplatform/NdCommplatform;
.super Ljava/lang/Object;


# static fields
.field public static final DEFAULT_ICON_TYPE_APP:I = 0x2

.field public static final DEFAULT_ICON_TYPE_HEAD:I = 0x1

.field public static final GET_USER_BASE_INFO:I = 0x1

.field public static final GET_USER_EMOTION:I = 0x4

.field public static final GET_USER_POINT:I = 0x2

.field public static final LEADERBOARD_NOT_EXIST:I = 0x2

.field public static final LOGOUT_TO_NON_RESET_AUTO_LOGIN_CONFIG:I = 0x0

.field public static final LOGOUT_TO_RESET_AUTO_LOGIN_CONFIG:I = 0x1

.field public static final SCORE_SAVE_LOCAL:I = 0x1

.field public static final SCORE_SUBMIT_SUCCESS:I = 0x0

.field public static final SCREEN_ORIENTATION_AUTO:I = 0x2

.field public static final SCREEN_ORIENTATION_LANDSCAPE:I = 0x1

.field public static final SCREEN_ORIENTATION_PORTRAIT:I = 0x0

.field public static final UPDATESTATUS_CANCEL_ENFORCE_UPDATE:I = 0x2

.field public static final UPDATESTATUS_CANCEL_UPDATE:I = 0x3

.field public static final UPDATESTATUS_CHECK_FAILURE:I = 0x4

.field public static final UPDATESTATUS_FORCES_LOADING:I = 0x5

.field public static final UPDATESTATUS_NONE:I = 0x0

.field public static final UPDATESTATUS_RECOMMEND_LOADING:I = 0x6

.field public static final UPDATESTATUS_UNMOUNTED_SDCARD:I = 0x1

.field private static commplatform:Lcom/nd/commplatform/NdCommplatform;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/nd/commplatform/NdCommplatform;->commplatform:Lcom/nd/commplatform/NdCommplatform;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/nd/commplatform/NdCommplatform;
    .locals 1

    sget-object v0, Lcom/nd/commplatform/NdCommplatform;->commplatform:Lcom/nd/commplatform/NdCommplatform;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nd/commplatform/NdCommplatform;

    invoke-direct {v0}, Lcom/nd/commplatform/NdCommplatform;-><init>()V

    sput-object v0, Lcom/nd/commplatform/NdCommplatform;->commplatform:Lcom/nd/commplatform/NdCommplatform;

    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    :cond_0
    sget-object v0, Lcom/nd/commplatform/NdCommplatform;->commplatform:Lcom/nd/commplatform/NdCommplatform;

    return-object v0
.end method


# virtual methods
.method public destory()V
    .locals 1

    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/b;->i()V

    return-void
.end method

.method public getAppId()I
    .locals 1

    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/b;->b()I

    move-result v0

    return v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/b;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoginNickName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u8239\u957f"

    return-object v0
.end method

.method public getLoginUin()Ljava/lang/String;
    .locals 1

    const-string v0, "10000001"

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    const-string v0, "LOCAL_OFFLINE_SESSION_ID"

    return-object v0
.end method

.method public initial(ILcom/nd/commplatform/entry/NdAppInfo;)I
    .locals 1
    .param p1, "nFlag"    # I
    .param p2, "ndAppInfo"    # Lcom/nd/commplatform/entry/NdAppInfo;

    .prologue
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nd/commplatform/d/c/b;->a(ILcom/nd/commplatform/entry/NdAppInfo;)I

    move-result v0

    return v0
.end method

.method public isAutoLogin(Landroid/content/Context;)Z
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/d/c/b;->c(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isLogined()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isRestartWhenSwitchAccount()Z
    .locals 1

    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/b;->o()Z

    move-result v0

    return v0
.end method

.method public ndAppVersionUpdate(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "callback":Lcom/nd/commplatform/NdCallbackListener;, "Lcom/nd/commplatform/NdCallbackListener<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nd/commplatform/d/c/b;->a(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method public ndBindPhoneNumber(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .param p1, "verifyCode"    # Ljava/lang/String;
    .param p2, "phoneNo"    # Ljava/lang/String;
    .param p3, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "callback":Lcom/nd/commplatform/NdCallbackListener;, "Lcom/nd/commplatform/NdCallbackListener<Ljava/lang/String;>;"
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nd/commplatform/d/c/b;->c(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method public ndBuyCommodity(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I
    .locals 6
    .param p1, "productId"    # Ljava/lang/String;
    .param p2, "payDesc"    # Ljava/lang/String;
    .param p3, "count"    # I
    .param p4, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdVirtualPayResult;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p5, "callback":Lcom/nd/commplatform/NdCallbackListener;, "Lcom/nd/commplatform/NdCallbackListener<Lcom/nd/commplatform/entry/NdVirtualPayResult;>;"
    const/4 v0, -0x5

    new-instance v2, Lcom/nd/commplatform/entry/NdBaseProductInfo;

    invoke-direct {v2}, Lcom/nd/commplatform/entry/NdBaseProductInfo;-><init>()V

    invoke-virtual {v2, p1}, Lcom/nd/commplatform/entry/NdBaseProductInfo;->setProductId(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Lcom/nd/commplatform/entry/NdBaseProductInfo;->setDesc(Ljava/lang/String;)V

    if-eqz v2, :cond_0

    if-lez p3, :cond_0

    if-eqz p4, :cond_0

    if-nez p5, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x1

    if-lt p3, v1, :cond_0

    const/16 v1, 0x2710

    if-gt p3, v1, :cond_0

    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    const/4 v1, -0x1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/b;->a(ILcom/nd/commplatform/entry/NdBaseProductInfo;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ndCheckPaySuccess(Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .param p1, "orderSerial"    # Ljava/lang/String;
    .param p2, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "callback":Lcom/nd/commplatform/NdCallbackListener;, "Lcom/nd/commplatform/NdCallbackListener<Ljava/lang/Boolean;>;"
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/nd/commplatform/d/c/b;->a(Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method public ndCheckVersionUpdate(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdNewAppVersionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "callback":Lcom/nd/commplatform/NdCallbackListener;, "Lcom/nd/commplatform/NdCallbackListener<Lcom/nd/commplatform/entry/NdNewAppVersionInfo;>;"
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nd/commplatform/d/c/b;->c(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method public ndEnterAccountManage(Landroid/content/Context;Lcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;)I
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "onLoginProcessListener"    # Lcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;

    .prologue
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nd/commplatform/d/c/b;->a(Landroid/content/Context;Lcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/nd/commplatform/NdCommplatform;->getInstance()Lcom/nd/commplatform/NdCommplatform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/NdCommplatform;->ndGetLoginStatus()Lcom/nd/commplatform/entry/NdLoginStatus;

    move-result-object v0

    sget-object v1, Lcom/nd/commplatform/entry/NdLoginStatus;->GuestLogin:Lcom/nd/commplatform/entry/NdLoginStatus;

    if-ne v0, v1, :cond_1

    const/16 v0, -0xb

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/NdCommplatform;->ndLogin(Landroid/content/Context;Lcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ndEnterAppBBS(Landroid/content/Context;I)I
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "nFlag"    # I

    .prologue
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nd/commplatform/d/c/b;->b(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public ndEnterAppCenter(ILandroid/content/Context;)I
    .locals 1
    .param p1, "nFlag"    # I
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nd/commplatform/d/c/b;->d(ILandroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public ndEnterAppCenter(ILandroid/content/Context;I)I
    .locals 1
    .param p1, "nFlag"    # I
    .param p2, "ctx"    # Landroid/content/Context;
    .param p3, "appId"    # I

    .prologue
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/nd/commplatform/d/c/b;->a(ILandroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public ndEnterAppUserCenter(Landroid/content/Context;I)I
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "flag"    # I

    .prologue
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nd/commplatform/d/c/b;->d(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public ndEnterBindPhoneNumber(ILjava/lang/String;Landroid/content/Context;)I
    .locals 1
    .param p1, "flag"    # I
    .param p2, "phoneNumber"    # Ljava/lang/String;
    .param p3, "ctx"    # Landroid/content/Context;

    .prologue
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/nd/commplatform/d/c/b;->b(ILjava/lang/String;Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public ndEnterFriendCenter(ILandroid/content/Context;)I
    .locals 1
    .param p1, "nFlag"    # I
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nd/commplatform/d/c/b;->c(ILandroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public ndEnterPlatform(ILandroid/content/Context;)I
    .locals 1
    .param p1, "nFlag"    # I
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->i()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nd/commplatform/d/c/b;->d(ILandroid/content/Context;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nd/commplatform/d/c/b;->b(ILandroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method

.method public ndEnterRecharge(ILjava/lang/String;Landroid/content/Context;)I
    .locals 1
    .param p1, "flag"    # I
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "ctx"    # Landroid/content/Context;

    .prologue
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/nd/commplatform/d/c/b;->a(ILjava/lang/String;Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public ndEnterSetting(Lcom/nd/commplatform/entry/NdSetEnum;Landroid/content/Context;)I
    .locals 1
    .param p1, "ndSetEnum"    # Lcom/nd/commplatform/entry/NdSetEnum;
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nd/commplatform/d/c/b;->a(Lcom/nd/commplatform/entry/NdSetEnum;Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public ndEnterUserSetting(ILandroid/content/Context;)I
    .locals 1
    .param p1, "nFlag"    # I
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nd/commplatform/d/c/b;->e(ILandroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public ndEnterUserSpace(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "uin"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nd/commplatform/d/c/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public ndEnterVirtualShop(Ljava/lang/String;IILandroid/content/Context;)V
    .locals 6
    .param p1, "cateId"    # Ljava/lang/String;
    .param p2, "feeType"    # I
    .param p3, "packageId"    # I
    .param p4, "ctx"    # Landroid/content/Context;

    .prologue
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/b;->b()I

    move-result v1

    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/b;->a(ILjava/lang/String;IILandroid/content/Context;)V

    return-void
.end method

.method public ndGetAchievementIcon(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z
    .locals 6
    .param p1, "achievementId"    # Ljava/lang/String;
    .param p2, "checksum"    # Ljava/lang/String;
    .param p3, "dimension"    # I
    .param p4, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdIcon;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p5, "callback":Lcom/nd/commplatform/NdCallbackListener;, "Lcom/nd/commplatform/NdCallbackListener<Lcom/nd/commplatform/entry/NdIcon;>;"
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/b;->b(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z

    move-result v0

    return v0
.end method

.method public ndGetAchievementInfoList(Landroid/content/Context;Ljava/lang/String;Lcom/nd/commplatform/entry/NdPagination;Lcom/nd/commplatform/NdCallbackListener;)I
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "uin"    # Ljava/lang/String;
    .param p3, "pagination"    # Lcom/nd/commplatform/entry/NdPagination;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/nd/commplatform/entry/NdPagination;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<",
            "Lcom/nd/commplatform/entry/NdAppAchieveInfo;",
            ">;>;)I"
        }
    .end annotation

    .prologue
    .local p4, "callback":Lcom/nd/commplatform/NdCallbackListener;, "Lcom/nd/commplatform/NdCallbackListener<Lcom/nd/commplatform/entry/NdPageList<Lcom/nd/commplatform/entry/NdAppAchieveInfo;>;>;"
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nd/commplatform/d/c/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/nd/commplatform/entry/NdPagination;Lcom/nd/commplatform/NdCallbackListener;)I

    move-result v0

    return v0
.end method

.method public ndGetAppIcon(ILjava/lang/String;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z
    .locals 6
    .param p1, "appId"    # I
    .param p2, "checksum"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdIcon;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p5, "callback":Lcom/nd/commplatform/NdCallbackListener;, "Lcom/nd/commplatform/NdCallbackListener<Lcom/nd/commplatform/entry/NdIcon;>;"
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/b;->e(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z

    move-result v0

    return v0
.end method

.method public ndGetAppMyFriendList(Lcom/nd/commplatform/entry/NdPagination;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .param p1, "pagination"    # Lcom/nd/commplatform/entry/NdPagination;
    .param p2, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nd/commplatform/entry/NdPagination;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<",
            "Lcom/nd/commplatform/entry/NdFriendUserInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p3, "callback":Lcom/nd/commplatform/NdCallbackListener;, "Lcom/nd/commplatform/NdCallbackListener<Lcom/nd/commplatform/entry/NdPageList<Lcom/nd/commplatform/entry/NdFriendUserInfo;>;>;"
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/nd/commplatform/d/c/b;->b(Lcom/nd/commplatform/entry/NdPagination;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method public ndGetAppPromotion(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "callback":Lcom/nd/commplatform/NdCallbackListener;, "Lcom/nd/commplatform/NdCallbackListener<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/nd/commplatform/NdCommplatform;->getAppId()I

    move-result v0

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {v1, v0, p1, p2}, Lcom/nd/commplatform/d/c/a;->e(ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method public ndGetAppPromotionList(Landroid/content/Context;ILcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "maxCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/entry/NdAppPromotion;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p3, "callback":Lcom/nd/commplatform/NdCallbackListener;, "Lcom/nd/commplatform/NdCallbackListener<Ljava/util/List<Lcom/nd/commplatform/entry/NdAppPromotion;>;>;"
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/nd/commplatform/d/c/b;->a(Landroid/content/Context;ILcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method public ndGetAppUserList(Lcom/nd/commplatform/entry/NdPagination;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .param p1, "pagination"    # Lcom/nd/commplatform/entry/NdPagination;
    .param p2, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nd/commplatform/entry/NdPagination;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<",
            "Lcom/nd/commplatform/entry/NdStrangerUserInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p3, "callback":Lcom/nd/commplatform/NdCallbackListener;, "Lcom/nd/commplatform/NdCallbackListener<Lcom/nd/commplatform/entry/NdPageList<Lcom/nd/commplatform/entry/NdStrangerUserInfo;>;>;"
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/nd/commplatform/d/c/b;->a(Lcom/nd/commplatform/entry/NdPagination;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method public ndGetCategoryList(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/entry/NdCateInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p2, "callback":Lcom/nd/commplatform/NdCallbackListener;, "Lcom/nd/commplatform/NdCallbackListener<Ljava/util/List<Lcom/nd/commplatform/entry/NdCateInfo;>;>;"
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/b;->b()I

    move-result v0

    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v1

    invoke-virtual {v1, v0, p1, p2}, Lcom/nd/commplatform/d/c/b;->a(ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method public ndGetCommodityList(Ljava/lang/String;IILcom/nd/commplatform/entry/NdPagination;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 8
    .param p1, "cateId"    # Ljava/lang/String;
    .param p2, "feeType"    # I
    .param p3, "packageId"    # I
    .param p4, "pagination"    # Lcom/nd/commplatform/entry/NdPagination;
    .param p5, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcom/nd/commplatform/entry/NdPagination;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<",
            "Lcom/nd/commplatform/entry/NdProductInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p6, "callback":Lcom/nd/commplatform/NdCallbackListener;, "Lcom/nd/commplatform/NdCallbackListener<Lcom/nd/commplatform/entry/NdPageList<Lcom/nd/commplatform/entry/NdProductInfo;>;>;"
    invoke-virtual {p0}, Lcom/nd/commplatform/NdCommplatform;->getAppId()I

    move-result v1

    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/nd/commplatform/d/c/b;->a(ILjava/lang/String;IILcom/nd/commplatform/entry/NdPagination;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method public ndGetDefaultPhoto(ILandroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "type"    # I
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nd/commplatform/d/c/b;->f(ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public ndGetLeaderBoard(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<",
            "Lcom/nd/commplatform/entry/NdRankInfo;",
            ">;>;)I"
        }
    .end annotation

    .prologue
    .local p2, "callback":Lcom/nd/commplatform/NdCallbackListener;, "Lcom/nd/commplatform/NdCallbackListener<Lcom/nd/commplatform/entry/NdPageList<Lcom/nd/commplatform/entry/NdRankInfo;>;>;"
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nd/commplatform/d/c/b;->f(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    move-result v0

    return v0
.end method

.method public ndGetLeaderboardIcon(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z
    .locals 6
    .param p1, "leaderboardId"    # Ljava/lang/String;
    .param p2, "checksum"    # Ljava/lang/String;
    .param p3, "dimension"    # I
    .param p4, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdIcon;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p5, "callback":Lcom/nd/commplatform/NdCallbackListener;, "Lcom/nd/commplatform/NdCallbackListener<Lcom/nd/commplatform/entry/NdIcon;>;"
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/b;->c(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z

    move-result v0

    return v0
.end method

.method public ndGetLoginStatus()Lcom/nd/commplatform/entry/NdLoginStatus;
    .locals 1

    sget-object v0, Lcom/nd/commplatform/entry/NdLoginStatus;->AccountLogin:Lcom/nd/commplatform/entry/NdLoginStatus;

    return-object v0
.end method

.method public ndGetMyFriendList(Lcom/nd/commplatform/entry/NdPagination;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .param p1, "pagination"    # Lcom/nd/commplatform/entry/NdPagination;
    .param p2, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nd/commplatform/entry/NdPagination;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<",
            "Lcom/nd/commplatform/entry/NdFriendUserInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p3, "callback":Lcom/nd/commplatform/NdCallbackListener;, "Lcom/nd/commplatform/NdCallbackListener<Lcom/nd/commplatform/entry/NdPageList<Lcom/nd/commplatform/entry/NdFriendUserInfo;>;>;"
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/nd/commplatform/d/c/b;->c(Lcom/nd/commplatform/entry/NdPagination;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method public ndGetMyInfo()Lcom/nd/commplatform/entry/NdMyUserInfo;
    .locals 1

    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/b;->l()Lcom/nd/commplatform/entry/NdMyUserInfo;

    move-result-object v0

    return-object v0
.end method

.method public ndGetMyInfoDetail(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdMyUserInfoDetail;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p2, "callback":Lcom/nd/commplatform/NdCallbackListener;, "Lcom/nd/commplatform/NdCallbackListener<Lcom/nd/commplatform/entry/NdMyUserInfoDetail;>;"
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nd/commplatform/d/c/b;->e(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    move-result v0

    return v0
.end method

.method public ndGetNewMsgAndNewSysMsgCount(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<[I>;)I"
        }
    .end annotation

    .prologue
    .local p2, "callback":Lcom/nd/commplatform/NdCallbackListener;, "Lcom/nd/commplatform/NdCallbackListener<[I>;"
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nd/commplatform/d/c/b;->d(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    move-result v0

    return v0
.end method

.method public ndGetPortrait(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z
    .locals 6
    .param p1, "uin"    # Ljava/lang/String;
    .param p2, "checksum"    # Ljava/lang/String;
    .param p3, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdIcon;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p4, "callback":Lcom/nd/commplatform/NdCallbackListener;, "Lcom/nd/commplatform/NdCallbackListener<Lcom/nd/commplatform/entry/NdIcon;>;"
    invoke-static {p3}, Lcom/nd/commplatform/d/c/oh;->g(Landroid/content/Context;)I

    move-result v3

    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/b;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z

    move-result v0

    return v0
.end method

.method public ndGetPortraitEx(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z
    .locals 6
    .param p1, "uin"    # Ljava/lang/String;
    .param p2, "imgType"    # I
    .param p3, "checksum"    # Ljava/lang/String;
    .param p4, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdIcon;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p5, "callback":Lcom/nd/commplatform/NdCallbackListener;, "Lcom/nd/commplatform/NdCallbackListener<Lcom/nd/commplatform/entry/NdIcon;>;"
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    move-object v1, p1

    move-object v2, p3

    move v3, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/b;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z

    move-result v0

    return v0
.end method

.method public ndGetPortraitPath(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z
    .locals 6
    .param p1, "uin"    # Ljava/lang/String;
    .param p2, "imgType"    # I
    .param p3, "checksum"    # Ljava/lang/String;
    .param p4, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p5, "callback":Lcom/nd/commplatform/NdCallbackListener;, "Lcom/nd/commplatform/NdCallbackListener<Ljava/lang/String;>;"
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/b;->a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z

    move-result v0

    return v0
.end method

.method public ndGetProductIcon(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z
    .locals 6
    .param p1, "productId"    # Ljava/lang/String;
    .param p2, "checksum"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdIcon;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p5, "callback":Lcom/nd/commplatform/NdCallbackListener;, "Lcom/nd/commplatform/NdCallbackListener<Lcom/nd/commplatform/entry/NdIcon;>;"
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/b;->d(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z

    move-result v0

    return v0
.end method

.method public ndGetUserInfoDetail(Ljava/lang/String;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .param p1, "uin"    # Ljava/lang/String;
    .param p2, "flag"    # I
    .param p3, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdUserInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "callback":Lcom/nd/commplatform/NdCallbackListener;, "Lcom/nd/commplatform/NdCallbackListener<Lcom/nd/commplatform/entry/NdUserInfo;>;"
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nd/commplatform/d/c/b;->a(Ljava/lang/String;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method public ndGetUserLeaderBoardInfoList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILcom/nd/commplatform/entry/NdPagination;Lcom/nd/commplatform/NdCallbackListener;)I
    .locals 8
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "uin"    # Ljava/lang/String;
    .param p3, "leaderBoardId"    # Ljava/lang/String;
    .param p4, "userType"    # I
    .param p5, "subType"    # I
    .param p6, "pagination"    # Lcom/nd/commplatform/entry/NdPagination;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcom/nd/commplatform/entry/NdPagination;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdRankPageList",
            "<",
            "Lcom/nd/commplatform/entry/NdUserRankInfo;",
            ">;>;)I"
        }
    .end annotation

    .prologue
    .local p7, "callback":Lcom/nd/commplatform/NdCallbackListener;, "Lcom/nd/commplatform/NdCallbackListener<Lcom/nd/commplatform/entry/NdRankPageList<Lcom/nd/commplatform/entry/NdUserRankInfo;>;>;"
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/nd/commplatform/d/c/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILcom/nd/commplatform/entry/NdPagination;Lcom/nd/commplatform/NdCallbackListener;)I

    move-result v0

    return v0
.end method

.method public ndGetUserProduct(Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 2
    .param p1, "productId"    # Ljava/lang/String;
    .param p2, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdProductOwnershipInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "callback":Lcom/nd/commplatform/NdCallbackListener;, "Lcom/nd/commplatform/NdCallbackListener<Lcom/nd/commplatform/entry/NdProductOwnershipInfo;>;"
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nd/commplatform/NdCommplatform;->getAppId()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/nd/commplatform/d/c/b;->a(ILjava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method public ndGetUserProductList(Lcom/nd/commplatform/entry/NdPagination;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 2
    .param p1, "pagination"    # Lcom/nd/commplatform/entry/NdPagination;
    .param p2, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nd/commplatform/entry/NdPagination;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<",
            "Lcom/nd/commplatform/entry/NdPurchasedProductInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p3, "callback":Lcom/nd/commplatform/NdCallbackListener;, "Lcom/nd/commplatform/NdCallbackListener<Lcom/nd/commplatform/entry/NdPageList<Lcom/nd/commplatform/entry/NdPurchasedProductInfo;>;>;"
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/b;->b()I

    move-result v0

    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v1

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/nd/commplatform/d/c/b;->a(ILcom/nd/commplatform/entry/NdPagination;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method public ndGetVirtualBalance(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "callback":Lcom/nd/commplatform/NdCallbackListener;, "Lcom/nd/commplatform/NdCallbackListener<Ljava/lang/Double;>;"
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nd/commplatform/d/c/b;->g(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method public ndGuestRegist(Landroid/content/Context;Ljava/lang/String;Lcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;)I
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "tips"    # Ljava/lang/String;
    .param p3, "onLoginProcessListener"    # Lcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;

    .prologue
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/nd/commplatform/d/c/b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;)I

    move-result v0

    return v0
.end method

.method public ndHasBindPhoneNumber(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "callback":Lcom/nd/commplatform/NdCallbackListener;, "Lcom/nd/commplatform/NdCallbackListener<Ljava/lang/Boolean;>;"
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nd/commplatform/d/c/b;->i(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method public ndInviteFriend(Ljava/lang/String;Landroid/content/Context;)I
    .locals 1
    .param p1, "inviteContent"    # Ljava/lang/String;
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nd/commplatform/d/c/b;->a(Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public ndLogin(Landroid/content/Context;Lcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "onLoginProcessListener"    # Lcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;

    .prologue
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, ""

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/nd/commplatform/d/c/b;->a(Landroid/content/Context;ZLjava/lang/String;Lcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;)V

    return-void
.end method

.method public ndLoginEx(Landroid/content/Context;Lcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "onLoginProcessListener"    # Lcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;

    .prologue
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/nd/commplatform/d/c/b;->a(Landroid/content/Context;ZLcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;)V

    return-void
.end method

.method public ndLogout(ILandroid/content/Context;)V
    .locals 1
    .param p1, "nFlag"    # I
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nd/commplatform/d/c/b;->a(ILandroid/content/Context;)V

    return-void
.end method

.method public ndOpenAchievement(Landroid/content/Context;I)I
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "nFlag"    # I

    .prologue
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nd/commplatform/d/c/b;->a(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public ndOpenLeaderBoard(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "nLeaderBoardId"    # Ljava/lang/String;
    .param p3, "nFlag"    # I

    .prologue
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/nd/commplatform/d/c/b;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public ndProductIsExpired(Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 2
    .param p1, "productId"    # Ljava/lang/String;
    .param p2, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdProductOwnershipInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "callback":Lcom/nd/commplatform/NdCallbackListener;, "Lcom/nd/commplatform/NdCallbackListener<Lcom/nd/commplatform/entry/NdProductOwnershipInfo;>;"
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nd/commplatform/NdCommplatform;->getAppId()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/nd/commplatform/d/c/b;->a(ILjava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method public ndProductIsPayed(Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 2
    .param p1, "productId"    # Ljava/lang/String;
    .param p2, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdProductOwnershipInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "callback":Lcom/nd/commplatform/NdCallbackListener;, "Lcom/nd/commplatform/NdCallbackListener<Lcom/nd/commplatform/entry/NdProductOwnershipInfo;>;"
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nd/commplatform/NdCommplatform;->getAppId()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/nd/commplatform/d/c/b;->a(ILjava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method public ndQueryAppPromotionAwardList(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/entry/NdAppPromotionAward;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p2, "callback":Lcom/nd/commplatform/NdCallbackListener;, "Lcom/nd/commplatform/NdCallbackListener<Ljava/util/List<Lcom/nd/commplatform/entry/NdAppPromotionAward;>;>;"
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/nd/commplatform/d/c/b;->c(Landroid/content/Context;ILcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method public ndReachAppPromotionAwardCondition(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "callback":Lcom/nd/commplatform/NdCallbackListener;, "Lcom/nd/commplatform/NdCallbackListener<Ljava/lang/Boolean;>;"
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/nd/commplatform/d/c/b;->d(Landroid/content/Context;ILcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method public ndSearchPayResultInfo(Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .param p1, "orderSerial"    # Ljava/lang/String;
    .param p2, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdPayResultInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "callback":Lcom/nd/commplatform/NdCallbackListener;, "Lcom/nd/commplatform/NdCallbackListener<Lcom/nd/commplatform/entry/NdPayResultInfo;>;"
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/nd/commplatform/d/c/b;->b(Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method public ndSendBindSMSCode(Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .param p1, "phoneNo"    # Ljava/lang/String;
    .param p2, "ctx"    # Landroid/content/Context;
    .param p3, "callback"    # Lcom/nd/commplatform/NdCallbackListener;

    .prologue
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/nd/commplatform/d/c/b;->c(Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method public ndSendChannel(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/nd/commplatform/NdCallbackListener;

    .prologue
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nd/commplatform/d/c/b;->h(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method public ndSendFriendMsg(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .param p1, "uin"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "callback":Lcom/nd/commplatform/NdCallbackListener;, "Lcom/nd/commplatform/NdCallbackListener<Ljava/lang/String;>;"
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nd/commplatform/d/c/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method public ndSendTemplateActivity(ILjava/util/HashMap;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I
    .locals 1
    .param p1, "nTemplateId"    # I
    .param p3, "ctx"    # Landroid/content/Context;
    .param p4, "callback"    # Lcom/nd/commplatform/NdCallbackListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener;",
            ")I"
        }
    .end annotation

    .prologue
    .local p2, "mapParamList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nd/commplatform/d/c/b;->a(ILjava/util/HashMap;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    move-result v0

    return v0
.end method

.method public ndSetDebugMode(I)V
    .locals 1
    .param p1, "nFlag"    # I

    .prologue
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/d/c/b;->c(I)V

    return-void
.end method

.method public ndSetScreenOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/d/c/b;->b(I)V

    return-void
.end method

.method public ndSetShowPhoneBind(Z)V
    .locals 1
    .param p1, "isShow"    # Z

    .prologue
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/d/c/b;->b(Z)V

    return-void
.end method

.method public ndShareToThirdPlatform(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "mPhoto"    # Landroid/graphics/Bitmap;

    .prologue
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/nd/commplatform/d/c/b;->a(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public ndStartAppPromotion(Landroid/content/Context;ILcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "callback":Lcom/nd/commplatform/NdCallbackListener;, "Lcom/nd/commplatform/NdCallbackListener<Ljava/lang/Boolean;>;"
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/nd/commplatform/d/c/b;->b(Landroid/content/Context;ILcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method public ndSubmitScore(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 6
    .param p1, "leaderBoardId"    # Ljava/lang/String;
    .param p2, "currentScore"    # I
    .param p3, "displayText"    # Ljava/lang/String;
    .param p4, "ctx"    # Landroid/content/Context;
    .param p5, "callback"    # Lcom/nd/commplatform/NdCallbackListener;

    .prologue
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/b;->b(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method public ndSwitchAccount(Landroid/content/Context;Lcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "onLoginProcessListener"    # Lcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;

    .prologue
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nd/commplatform/d/c/b;->b(Landroid/content/Context;Lcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;)V

    return-void
.end method

.method public ndUniPay(Lcom/nd/commplatform/entry/NdBuyInfo;Landroid/content/Context;Lcom/nd/commplatform/NdMiscCallbackListener$OnPayProcessListener;)I
    .locals 2
    .param p1, "order"    # Lcom/nd/commplatform/entry/NdBuyInfo;
    .param p2, "ctx"    # Landroid/content/Context;
    .param p3, "onPayProcessListener"    # Lcom/nd/commplatform/NdMiscCallbackListener$OnPayProcessListener;

    .prologue
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/nd/commplatform/d/c/b;->a(Lcom/nd/commplatform/entry/NdBuyInfo;Landroid/content/Context;Lcom/nd/commplatform/NdMiscCallbackListener$OnPayProcessListener;Z)I

    move-result v0

    return v0
.end method

.method public ndUniPayAsyn(Lcom/nd/commplatform/entry/NdBuyInfo;Landroid/content/Context;Lcom/nd/commplatform/NdMiscCallbackListener$OnPayProcessListener;)I
    .locals 2
    .param p1, "order"    # Lcom/nd/commplatform/entry/NdBuyInfo;
    .param p2, "ctx"    # Landroid/content/Context;
    .param p3, "onPayProcessListener"    # Lcom/nd/commplatform/NdMiscCallbackListener$OnPayProcessListener;

    .prologue
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/nd/commplatform/d/c/b;->a(Lcom/nd/commplatform/entry/NdBuyInfo;Landroid/content/Context;Lcom/nd/commplatform/NdMiscCallbackListener$OnPayProcessListener;Z)I

    move-result v0

    return v0
.end method

.method public ndUniPayForCoin(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)I
    .locals 1
    .param p1, "cooOrderSerial"    # Ljava/lang/String;
    .param p2, "needPayCoins"    # I
    .param p3, "note"    # Ljava/lang/String;
    .param p4, "ctx"    # Landroid/content/Context;

    .prologue
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nd/commplatform/d/c/b;->a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public ndUnlockAchievement(Lcom/nd/commplatform/entry/NdAchieveUnlockInfo;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .param p1, "achieveUnlockInfo"    # Lcom/nd/commplatform/entry/NdAchieveUnlockInfo;
    .param p2, "ctx"    # Landroid/content/Context;
    .param p3, "callback"    # Lcom/nd/commplatform/NdCallbackListener;

    .prologue
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/nd/commplatform/d/c/b;->a(Lcom/nd/commplatform/entry/NdAchieveUnlockInfo;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method public ndUseHolding(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 7
    .param p1, "productId"    # Ljava/lang/String;
    .param p2, "useCnt"    # I
    .param p3, "extParam"    # Ljava/lang/String;
    .param p4, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdProductUseResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, "callback":Lcom/nd/commplatform/NdCallbackListener;, "Lcom/nd/commplatform/NdCallbackListener<Lcom/nd/commplatform/entry/NdProductUseResult;>;"
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/b;->b()I

    move-result v1

    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/nd/commplatform/d/c/b;->a(ILjava/lang/String;ILjava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method public ndUserFeedback(Landroid/content/Context;)I
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/d/c/b;->b(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public setAppId(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/d/c/b;->a(I)V

    return-void
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/d/c/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public setOnPlatformBackground(Lcom/nd/commplatform/NdMiscCallbackListener$OnPlatformBackground;)V
    .locals 1
    .param p1, "onPlatformBackground"    # Lcom/nd/commplatform/NdMiscCallbackListener$OnPlatformBackground;

    .prologue
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/d/c/b;->a(Lcom/nd/commplatform/NdMiscCallbackListener$OnPlatformBackground;)V

    return-void
.end method

.method public setOnSessionInvalidListener(Lcom/nd/commplatform/NdMiscCallbackListener$OnSessionInvalidListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/nd/commplatform/NdMiscCallbackListener$OnSessionInvalidListener;

    .prologue
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/d/c/b;->a(Lcom/nd/commplatform/NdMiscCallbackListener$OnSessionInvalidListener;)V

    return-void
.end method

.method public setOnSwitchAccountListener(Lcom/nd/commplatform/NdMiscCallbackListener$OnSwitchAccountListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/nd/commplatform/NdMiscCallbackListener$OnSwitchAccountListener;

    .prologue
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/d/c/b;->a(Lcom/nd/commplatform/NdMiscCallbackListener$OnSwitchAccountListener;)V

    return-void
.end method

.method public setRestartWhenSwitchAccount(Z)V
    .locals 1
    .param p1, "restart"    # Z

    .prologue
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/d/c/b;->a(Z)V

    return-void
.end method
