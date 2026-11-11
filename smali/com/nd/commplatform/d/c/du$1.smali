.class final Lcom/nd/commplatform/d/c/du$1;
.super Lcom/nd/commplatform/d/c/hg;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/du;->b(Landroid/view/View;)Lcom/nd/commplatform/d/c/hh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/d/c/hg",
        "<",
        "Lcom/nd/commplatform/entry/NdStrangerUserInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/du;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/du;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/du$1;->a:Lcom/nd/commplatform/d/c/du;

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/hg;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/du$1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/entry/NdStrangerUserInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdStrangerUserInfo;->getBaseUserInfo()Lcom/nd/commplatform/entry/NdBaseUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdBaseUserInfo;->getCheckSum()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/du$1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/entry/NdStrangerUserInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdStrangerUserInfo;->getBaseUserInfo()Lcom/nd/commplatform/entry/NdBaseUserInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/entry/NdBaseUserInfo;->setCheckSum(Ljava/lang/String;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/du$1;->a:Lcom/nd/commplatform/d/c/du;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/du;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/du$1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/entry/NdStrangerUserInfo;

    invoke-static {v1, v0}, Lcom/nd/commplatform/d/c/oh;->a(Landroid/content/Context;Lcom/nd/commplatform/entry/NdStrangerUserInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/du$1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/entry/NdStrangerUserInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdStrangerUserInfo;->getBaseUserInfo()Lcom/nd/commplatform/entry/NdBaseUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdBaseUserInfo;->getNickName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/du$1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/entry/NdStrangerUserInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdStrangerUserInfo;->getBaseUserInfo()Lcom/nd/commplatform/entry/NdBaseUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdBaseUserInfo;->getUin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic e()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/du$1;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
