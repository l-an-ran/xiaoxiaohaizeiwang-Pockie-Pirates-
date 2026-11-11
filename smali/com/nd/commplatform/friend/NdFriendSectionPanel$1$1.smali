.class final Lcom/nd/commplatform/friend/NdFriendSectionPanel$1$1;
.super Lcom/nd/commplatform/d/c/hg;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/friend/NdFriendSectionPanel$1;->a(Landroid/view/View;)Lcom/nd/commplatform/d/c/gw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/d/c/hg",
        "<",
        "Lcom/nd/commplatform/d/c/ek;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/friend/NdFriendSectionPanel$1;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/friend/NdFriendSectionPanel$1;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/friend/NdFriendSectionPanel$1$1;->a:Lcom/nd/commplatform/friend/NdFriendSectionPanel$1;

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/hg;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/friend/NdFriendSectionPanel$1$1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/d/c/ek;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/ek;->getCheckSum()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/friend/NdFriendSectionPanel$1$1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/d/c/ek;

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/d/c/ek;->setCheckSum(Ljava/lang/String;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/friend/NdFriendSectionPanel$1$1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/d/c/ek;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/ek;->getEmotion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/friend/NdFriendSectionPanel$1$1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/d/c/ek;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/ek;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/friend/NdFriendSectionPanel$1$1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/d/c/ek;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/ek;->getNickName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/friend/NdFriendSectionPanel$1$1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/d/c/ek;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/ek;->getUin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic e()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Lcom/nd/commplatform/friend/NdFriendSectionPanel$1$1;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
