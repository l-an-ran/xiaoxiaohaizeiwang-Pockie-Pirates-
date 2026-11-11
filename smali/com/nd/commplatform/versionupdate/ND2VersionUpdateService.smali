.class public Lcom/nd/commplatform/versionupdate/ND2VersionUpdateService;
.super Landroid/app/Service;


# static fields
.field static final a:Ljava/lang/Object;

.field public static b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/nd/commplatform/versionupdate/ND2VersionUpdateService;->a:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nd/commplatform/versionupdate/ND2VersionUpdateService;->b:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Service;I)V
    .locals 2

    sget-object v1, Lcom/nd/commplatform/versionupdate/ND2VersionUpdateService;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/Service;->stopSelfResult(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Landroid/content/Context;I)V
    .locals 3

    const-string v0, "cancelPreDown"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/nd/commplatform/versionupdate/ND2VersionUpdateService;->b:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nd/commplatform/versionupdate/ND2VersionUpdateService;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/nd/commplatform/versionupdate/ND2VersionUpdateService;->b:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nd/commplatform/versionupdate/ND2VersionUpdateService;->b:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nd/commplatform/d/c/qa;->a()Lcom/nd/commplatform/d/c/qa;

    move-result-object v1

    sget-object v0, Lcom/nd/commplatform/versionupdate/ND2VersionUpdateService;->b:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/nd/commplatform/d/c/qa;->a(ILcom/nd/commplatform/d/c/qe;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/content/Context;)V
    .locals 2

    invoke-direct/range {p0 .. p7}, Lcom/nd/commplatform/versionupdate/ND2VersionUpdateService;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/content/Context;)V

    iget-object v0, p0, Lcom/nd/commplatform/versionupdate/ND2VersionUpdateService;->c:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/versionupdate/ND2VersionUpdateService;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/content/Context;)V
    .locals 9

    new-instance v0, Lcom/nd/commplatform/versionupdate/ND2VersionUpdateService$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/nd/commplatform/versionupdate/ND2VersionUpdateService$1;-><init>(Lcom/nd/commplatform/versionupdate/ND2VersionUpdateService;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    iput-object v0, p0, Lcom/nd/commplatform/versionupdate/ND2VersionUpdateService;->c:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    :try_start_0
    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "sdCardPath"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "size"

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v0, "notifyId"

    const/4 v5, -0x1

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    new-instance v0, Lcom/nd/commplatform/entry/NdAppInfo;

    invoke-direct {v0}, Lcom/nd/commplatform/entry/NdAppInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/nd/commplatform/entry/NdAppInfo;->setCtx(Landroid/content/Context;)V

    const v6, 0x186aa

    invoke-virtual {v0, v6}, Lcom/nd/commplatform/entry/NdAppInfo;->setAppId(I)V

    const-string v6, "C28454605B9312157C2F76F27A9BCA2349434E546A6E9C75"

    invoke-virtual {v0, v6}, Lcom/nd/commplatform/entry/NdAppInfo;->setAppKey(Ljava/lang/String;)V

    invoke-static {}, Lcom/nd/commplatform/NdCommplatform;->getInstance()Lcom/nd/commplatform/NdCommplatform;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v0}, Lcom/nd/commplatform/NdCommplatform;->initial(ILcom/nd/commplatform/entry/NdAppInfo;)I

    invoke-direct {p0, p0, v5}, Lcom/nd/commplatform/versionupdate/ND2VersionUpdateService;->a(Landroid/content/Context;I)V

    move-object v0, p0

    move v6, p2

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/nd/commplatform/versionupdate/ND2VersionUpdateService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/nd/commplatform/versionupdate/ND2VersionUpdateService;->stopSelf()V

    goto :goto_0
.end method
