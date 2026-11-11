.class public Lcom/TQFramework/NDLoginAdapter;
.super Ljava/lang/Object;
.source "NDLoginAdapter.java"


# static fields
.field private static ctx:Landroid/content/Context;

.field private static instance:Lcom/TQFramework/NDLoginAdapter;


# instance fields
.field protected mGLView:Lcom/TQFramework/C3GLSurfaceView;

.field private mainActivity:Landroid/app/Activity;

.field private mlParam:I

.field private mnEventID:I

.field private mwParam:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/TQFramework/NDLoginAdapter;

    invoke-direct {v0}, Lcom/TQFramework/NDLoginAdapter;-><init>()V

    sput-object v0, Lcom/TQFramework/NDLoginAdapter;->instance:Lcom/TQFramework/NDLoginAdapter;

    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/TQFramework/NDLoginAdapter;->ctx:Landroid/content/Context;

    .line 26
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/TQFramework/NDLoginAdapter;->mainActivity:Landroid/app/Activity;

    .line 27
    return-void
.end method

.method public static native NDLoginEvent(III)I
.end method

.method static synthetic access$0(Lcom/TQFramework/NDLoginAdapter;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/TQFramework/NDLoginAdapter;->mainActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1()Landroid/content/Context;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/TQFramework/NDLoginAdapter;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2(Lcom/TQFramework/NDLoginAdapter;)I
    .locals 1

    .prologue
    .line 290
    iget v0, p0, Lcom/TQFramework/NDLoginAdapter;->mnEventID:I

    return v0
.end method

.method static synthetic access$3(Lcom/TQFramework/NDLoginAdapter;)I
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lcom/TQFramework/NDLoginAdapter;->mwParam:I

    return v0
.end method

.method static synthetic access$4(Lcom/TQFramework/NDLoginAdapter;)I
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Lcom/TQFramework/NDLoginAdapter;->mlParam:I

    return v0
.end method

.method public static sharedInstance()Lcom/TQFramework/NDLoginAdapter;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/TQFramework/NDLoginAdapter;->instance:Lcom/TQFramework/NDLoginAdapter;

    return-object v0
.end method


# virtual methods
.method public EnterAccountManage()Z
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/TQFramework/NDLoginAdapter;->mainActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 108
    const/4 v0, 0x0

    .line 137
    :goto_0
    return v0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/TQFramework/NDLoginAdapter;->mainActivity:Landroid/app/Activity;

    new-instance v1, Lcom/TQFramework/NDLoginAdapter$3;

    invoke-direct {v1, p0}, Lcom/TQFramework/NDLoginAdapter$3;-><init>(Lcom/TQFramework/NDLoginAdapter;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 137
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public EnterAppBBS()V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/TQFramework/NDLoginAdapter;->mainActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 227
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/TQFramework/NDLoginAdapter;->mainActivity:Landroid/app/Activity;

    new-instance v1, Lcom/TQFramework/NDLoginAdapter$7;

    invoke-direct {v1, p0}, Lcom/TQFramework/NDLoginAdapter$7;-><init>(Lcom/TQFramework/NDLoginAdapter;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public EnterPlatform()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/TQFramework/NDLoginAdapter;->mainActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 250
    :goto_0
    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/TQFramework/NDLoginAdapter;->mainActivity:Landroid/app/Activity;

    new-instance v1, Lcom/TQFramework/NDLoginAdapter$9;

    invoke-direct {v1, p0}, Lcom/TQFramework/NDLoginAdapter$9;-><init>(Lcom/TQFramework/NDLoginAdapter;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public GetActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/TQFramework/NDLoginAdapter;->mainActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public GetContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/TQFramework/NDLoginAdapter;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method public GetCurrentNet()I
    .locals 9

    .prologue
    .line 317
    const/4 v4, 0x1

    .line 318
    .local v4, "ret":I
    iget-object v5, p0, Lcom/TQFramework/NDLoginAdapter;->mainActivity:Landroid/app/Activity;

    if-eqz v5, :cond_0

    .line 320
    iget-object v5, p0, Lcom/TQFramework/NDLoginAdapter;->mainActivity:Landroid/app/Activity;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 322
    .local v3, "networkManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 323
    .local v2, "networkInfos":[Landroid/net/NetworkInfo;
    array-length v6, v2

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v6, :cond_1

    .line 337
    .end local v2    # "networkInfos":[Landroid/net/NetworkInfo;
    .end local v3    # "networkManager":Landroid/net/ConnectivityManager;
    :cond_0
    :goto_1
    return v4

    .line 323
    .restart local v2    # "networkInfos":[Landroid/net/NetworkInfo;
    .restart local v3    # "networkManager":Landroid/net/ConnectivityManager;
    :cond_1
    aget-object v1, v2, v5

    .line 324
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v7

    sget-object v8, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v7, v8, :cond_3

    .line 325
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 326
    .local v0, "nNetType":I
    if-nez v0, :cond_2

    .line 327
    const/4 v4, 0x2

    .line 328
    goto :goto_1

    .line 330
    :cond_2
    const/4 v7, 0x1

    if-ne v0, v7, :cond_3

    .line 331
    const/4 v4, 0x1

    .line 332
    goto :goto_1

    .line 323
    .end local v0    # "nNetType":I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public Login()Z
    .locals 1

    # Send the native SDK success callback for the local guest identity.
    # This uses the GL queue because the native login state is owned by that thread.
    const/4 v0, 0x0
    invoke-virtual {p0, v0, v0, v0}, Lcom/TQFramework/NDLoginAdapter;->NDLoginEvent2JniCall(III)I

    const/4 v0, 0x1
    return v0
.end method

.method public Logout()Z
    .locals 1

    # A local guest has no 91 account session to log out.
    const/4 v0, 0x1
    return v0
.end method

.method public NDLoginEvent2JniCall(III)I
    .locals 2
    .param p1, "nEventID"    # I
    .param p2, "wParam"    # I
    .param p3, "lParam"    # I

    .prologue
    .line 296
    iput p1, p0, Lcom/TQFramework/NDLoginAdapter;->mnEventID:I

    .line 297
    iput p2, p0, Lcom/TQFramework/NDLoginAdapter;->mwParam:I

    .line 298
    iput p3, p0, Lcom/TQFramework/NDLoginAdapter;->mlParam:I

    .line 299
    iget-object v0, p0, Lcom/TQFramework/NDLoginAdapter;->mGLView:Lcom/TQFramework/C3GLSurfaceView;

    new-instance v1, Lcom/TQFramework/NDLoginAdapter$11;

    invoke-direct {v1, p0}, Lcom/TQFramework/NDLoginAdapter$11;-><init>(Lcom/TQFramework/NDLoginAdapter;)V

    invoke-virtual {v0, v1}, Lcom/TQFramework/C3GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 304
    const/4 v0, 0x0

    return v0
.end method

.method public Pay(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;F)Z
    .locals 3
    .param p1, "nCount"    # I
    .param p2, "pszGoodID"    # Ljava/lang/String;
    .param p3, "sServerID"    # Ljava/lang/String;
    .param p4, "sGoodName"    # Ljava/lang/String;
    .param p5, "fPrice"    # F

    .prologue
    .line 174
    iget-object v1, p0, Lcom/TQFramework/NDLoginAdapter;->mainActivity:Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 175
    const/4 v1, 0x0

    .line 214
    :goto_0
    return v1

    .line 177
    :cond_0
    new-instance v0, Lcom/nd/commplatform/entry/NdBuyInfo;

    invoke-direct {v0}, Lcom/nd/commplatform/entry/NdBuyInfo;-><init>()V

    .line 178
    .local v0, "buyInfo":Lcom/nd/commplatform/entry/NdBuyInfo;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/entry/NdBuyInfo;->setSerial(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0, p2}, Lcom/nd/commplatform/entry/NdBuyInfo;->setProductId(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v0, p4}, Lcom/nd/commplatform/entry/NdBuyInfo;->setProductName(Ljava/lang/String;)V

    .line 181
    float-to-double v1, p5

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/entry/NdBuyInfo;->setProductPrice(D)V

    .line 182
    float-to-double v1, p5

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/entry/NdBuyInfo;->setProductOrginalPrice(D)V

    .line 183
    invoke-virtual {v0, p1}, Lcom/nd/commplatform/entry/NdBuyInfo;->setCount(I)V

    .line 184
    invoke-virtual {v0, p3}, Lcom/nd/commplatform/entry/NdBuyInfo;->setPayDescription(Ljava/lang/String;)V

    .line 187
    iget-object v1, p0, Lcom/TQFramework/NDLoginAdapter;->mainActivity:Landroid/app/Activity;

    new-instance v2, Lcom/TQFramework/NDLoginAdapter$6;

    invoke-direct {v2, p0, v0}, Lcom/TQFramework/NDLoginAdapter$6;-><init>(Lcom/TQFramework/NDLoginAdapter;Lcom/nd/commplatform/entry/NdBuyInfo;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 214
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public SetAppInfo(ILjava/lang/String;)Z
    .locals 4
    .param p1, "nAppID"    # I
    .param p2, "sAppKey"    # Ljava/lang/String;

    .prologue
    .line 50
    iget-object v2, p0, Lcom/TQFramework/NDLoginAdapter;->mainActivity:Landroid/app/Activity;

    if-nez v2, :cond_0

    .line 51
    const/4 v2, 0x0

    .line 68
    :goto_0
    return v2

    .line 53
    :cond_0
    move v0, p1

    .line 54
    .local v0, "nAppIDTemp":I
    move-object v1, p2

    .line 55
    .local v1, "sAppKeyTemp":Ljava/lang/String;
    iget-object v2, p0, Lcom/TQFramework/NDLoginAdapter;->mainActivity:Landroid/app/Activity;

    new-instance v3, Lcom/TQFramework/NDLoginAdapter$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/TQFramework/NDLoginAdapter$1;-><init>(Lcom/TQFramework/NDLoginAdapter;ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 68
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public SetGLSurfaceView(Lcom/TQFramework/C3GLSurfaceView;)V
    .locals 0
    .param p1, "view"    # Lcom/TQFramework/C3GLSurfaceView;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/TQFramework/NDLoginAdapter;->mGLView:Lcom/TQFramework/C3GLSurfaceView;

    .line 46
    return-void
.end method

.method public UpdateVer()Z
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/TQFramework/NDLoginAdapter;->mainActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 255
    const/4 v0, 0x0

    .line 288
    :goto_0
    return v0

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/TQFramework/NDLoginAdapter;->mainActivity:Landroid/app/Activity;

    new-instance v1, Lcom/TQFramework/NDLoginAdapter$10;

    invoke-direct {v1, p0}, Lcom/TQFramework/NDLoginAdapter$10;-><init>(Lcom/TQFramework/NDLoginAdapter;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 288
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public Use91Sdk(Landroid/app/Activity;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 36
    sput-object p1, Lcom/TQFramework/NDLoginAdapter;->ctx:Landroid/content/Context;

    iput-object p1, p0, Lcom/TQFramework/NDLoginAdapter;->mainActivity:Landroid/app/Activity;

    return-void
.end method

.method public UserFeedback()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/TQFramework/NDLoginAdapter;->mainActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 239
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/TQFramework/NDLoginAdapter;->mainActivity:Landroid/app/Activity;

    new-instance v1, Lcom/TQFramework/NDLoginAdapter$8;

    invoke-direct {v1, p0}, Lcom/TQFramework/NDLoginAdapter$8;-><init>(Lcom/TQFramework/NDLoginAdapter;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public isAutoLogin()Z
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/TQFramework/NDLoginAdapter;->mainActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 163
    const/4 v0, 0x0

    .line 170
    :goto_0
    return v0

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/TQFramework/NDLoginAdapter;->mainActivity:Landroid/app/Activity;

    new-instance v1, Lcom/TQFramework/NDLoginAdapter$5;

    invoke-direct {v1, p0}, Lcom/TQFramework/NDLoginAdapter$5;-><init>(Lcom/TQFramework/NDLoginAdapter;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 170
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isLogined()Z
    .locals 1

    const/4 v0, 0x1
    return v0
.end method
