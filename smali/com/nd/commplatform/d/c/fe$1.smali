.class final Lcom/nd/commplatform/d/c/fe$1;
.super Lcom/nd/commplatform/d/c/gx;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/fe;->b(Landroid/view/View;)Lcom/nd/commplatform/d/c/hh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/d/c/gx",
        "<",
        "Lcom/nd/commplatform/d/c/ff",
        "<",
        "Lcom/nd/commplatform/entry/NdFriendUserInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/fe;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/fe;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/fe$1;->a:Lcom/nd/commplatform/d/c/fe;

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/gx;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fe$1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/d/c/ff;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/ff;->a:Lcom/nd/commplatform/entry/NdFriendUserInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdFriendUserInfo;->getBaseUserInfo()Lcom/nd/commplatform/entry/NdBaseUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdBaseUserInfo;->getCheckSum()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fe$1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/d/c/ff;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/ff;->a:Lcom/nd/commplatform/entry/NdFriendUserInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdFriendUserInfo;->getBaseUserInfo()Lcom/nd/commplatform/entry/NdBaseUserInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/entry/NdBaseUserInfo;->setCheckSum(Ljava/lang/String;)V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fe$1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/d/c/ff;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/ff;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fe$1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/d/c/ff;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/ff;->a:Lcom/nd/commplatform/entry/NdFriendUserInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdFriendUserInfo;->getBaseUserInfo()Lcom/nd/commplatform/entry/NdBaseUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdBaseUserInfo;->getNickName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fe$1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/d/c/ff;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/ff;->a:Lcom/nd/commplatform/entry/NdFriendUserInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdFriendUserInfo;->getBaseUserInfo()Lcom/nd/commplatform/entry/NdBaseUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdBaseUserInfo;->getUin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic e()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/fe$1;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fe$1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/d/c/ff;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/ff;->a:Lcom/nd/commplatform/entry/NdFriendUserInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdFriendUserInfo;->getEmotion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fe$1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/d/c/ff;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/ff;->b()Z

    move-result v0

    return v0
.end method

.method public h()V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fe$1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/d/c/ff;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fe$1;->b:Ljava/lang/Object;

    check-cast v1, Lcom/nd/commplatform/d/c/ff;

    iget-boolean v1, v1, Lcom/nd/commplatform/d/c/ff;->b:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Lcom/nd/commplatform/d/c/ff;->b:Z

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
