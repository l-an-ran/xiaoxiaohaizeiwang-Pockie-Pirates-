.class final Lcom/nd/commplatform/d/c/gk$1;
.super Lcom/nd/commplatform/d/c/hn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/gk;->b(Landroid/view/View;)Lcom/nd/commplatform/d/c/hh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/d/c/hn",
        "<",
        "Lcom/nd/commplatform/entry/NdUserMsgInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/gk;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/gk;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/gk$1;->a:Lcom/nd/commplatform/d/c/gk;

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/hn;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gk$1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/entry/NdUserMsgInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdUserMsgInfo;->getUserInfo()Lcom/nd/commplatform/entry/NdBaseUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdBaseUserInfo;->getCheckSum()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gk$1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/entry/NdUserMsgInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdUserMsgInfo;->getUserInfo()Lcom/nd/commplatform/entry/NdBaseUserInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/entry/NdBaseUserInfo;->setCheckSum(Ljava/lang/String;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gk$1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/entry/NdUserMsgInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdUserMsgInfo;->getSendTime()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gk$1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/entry/NdUserMsgInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdUserMsgInfo;->getUserInfo()Lcom/nd/commplatform/entry/NdBaseUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdBaseUserInfo;->getNickName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gk$1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/entry/NdUserMsgInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdUserMsgInfo;->getUserInfo()Lcom/nd/commplatform/entry/NdBaseUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdBaseUserInfo;->getUin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic e()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/gk$1;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gk$1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/entry/NdUserMsgInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdUserMsgInfo;->isStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gk$1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/entry/NdUserMsgInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdUserMsgInfo;->getMsgContent()Lcom/nd/commplatform/entry/NdMsgContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdMsgContent;->getContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
