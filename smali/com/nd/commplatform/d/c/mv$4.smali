.class final Lcom/nd/commplatform/d/c/mv$4;
.super Lcom/nd/commplatform/d/c/hg;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/mv;->a(Landroid/view/View;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/d/c/hg",
        "<",
        "Lcom/nd/commplatform/d/c/mv$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/mv;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/mv;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/mv$4;->a:Lcom/nd/commplatform/d/c/mv;

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/hg;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mv$4;->b:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/d/c/mv$a;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/mv$a;->d:Lcom/nd/commplatform/entry/NdUserInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdUserInfo;->getCheckSum()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mv$4;->b:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/d/c/mv$a;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/mv$a;->d:Lcom/nd/commplatform/entry/NdUserInfo;

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/entry/NdUserInfo;->setCheckSum(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mv$4;->b:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/d/c/mv$a;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/mv$a;->e:Lcom/nd/commplatform/d/c/nb;

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/d/c/nb;->b(Ljava/lang/String;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mv$4;->a:Lcom/nd/commplatform/d/c/mv;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/mv;->d(Lcom/nd/commplatform/d/c/mv;)Lcom/nd/commplatform/uap/widget/NdNonScrollListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/uap/widget/NdNonScrollListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mv$4;->b:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/d/c/mv$a;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/mv$a;->d:Lcom/nd/commplatform/entry/NdUserInfo;

    invoke-static {v1, v0}, Lcom/nd/commplatform/d/c/oh;->a(Landroid/content/Context;Lcom/nd/commplatform/entry/NdUserInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mv$4;->b:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/d/c/mv$a;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/mv$a;->e:Lcom/nd/commplatform/d/c/nb;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/nb;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/mv$4;->b:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/d/c/mv$a;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/mv$a;->d:Lcom/nd/commplatform/entry/NdUserInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdUserInfo;->getNickName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mv$4;->b:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/d/c/mv$a;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/mv$a;->d:Lcom/nd/commplatform/entry/NdUserInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdUserInfo;->getUin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic e()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/mv$4;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
