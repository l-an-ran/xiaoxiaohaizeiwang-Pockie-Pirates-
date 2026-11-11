.class public Lcom/nd/commplatform/d/c/hw;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/nd/commplatform/entry/ThirdPlatformUserInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/nd/commplatform/entry/ThirdPlatformUserInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/hw;->a:Lcom/nd/commplatform/entry/ThirdPlatformUserInfo;

    return-void
.end method

.method public b()Lcom/nd/commplatform/entry/ThirdPlatformUserInfo;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hw;->a:Lcom/nd/commplatform/entry/ThirdPlatformUserInfo;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/hw;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/hw;->a:Lcom/nd/commplatform/entry/ThirdPlatformUserInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/ThirdPlatformUserInfo;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/hw;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/hw;->a:Lcom/nd/commplatform/entry/ThirdPlatformUserInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/ThirdPlatformUserInfo;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/hw;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/hw;->a:Lcom/nd/commplatform/entry/ThirdPlatformUserInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/ThirdPlatformUserInfo;->getNickName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected f()Z
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hw;->a:Lcom/nd/commplatform/entry/ThirdPlatformUserInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
