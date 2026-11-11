.class public Lcom/nd/commplatform/d/c/hb;
.super Lcom/nd/commplatform/d/c/hw;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/hw;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/hb;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/hb;->a:Lcom/nd/commplatform/entry/ThirdPlatformUserInfo;

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/entry/ThirdPlatformUserInfo;->setInvite(Z)V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/hb;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/hb;->a:Lcom/nd/commplatform/entry/ThirdPlatformUserInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/ThirdPlatformUserInfo;->isInvite()Z

    move-result v0

    goto :goto_0
.end method
