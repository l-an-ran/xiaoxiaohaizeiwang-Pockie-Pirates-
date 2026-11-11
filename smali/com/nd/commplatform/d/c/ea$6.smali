.class final Lcom/nd/commplatform/d/c/ea$6;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/ea;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/NdCallbackListener",
        "<",
        "Lcom/nd/commplatform/entry/NdUserInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/ea;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/ea;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ea$6;->a:Lcom/nd/commplatform/d/c/ea;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/nd/commplatform/entry/NdUserInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ea$6;->a:Lcom/nd/commplatform/d/c/ea;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/ea;->b(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ea$6;->a:Lcom/nd/commplatform/d/c/ea;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ea;->e(Lcom/nd/commplatform/d/c/ea;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/nd/commplatform/d/c/nt;->a(Lcom/nd/commplatform/NdCallbackListener;Landroid/content/Context;I)V

    :cond_0
    if-nez p2, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ea$6;->a:Lcom/nd/commplatform/d/c/ea;

    invoke-static {v0, p2}, Lcom/nd/commplatform/d/c/ea;->a(Lcom/nd/commplatform/d/c/ea;Lcom/nd/commplatform/entry/NdUserInfo;)Lcom/nd/commplatform/entry/NdUserInfo;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ea$6;->a:Lcom/nd/commplatform/d/c/ea;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ea$6;->a:Lcom/nd/commplatform/d/c/ea;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/ea;->c(Lcom/nd/commplatform/d/c/ea;)Lcom/nd/commplatform/entry/NdUserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdUserInfo;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/ea;->a(Lcom/nd/commplatform/d/c/ea;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ea$6;->a:Lcom/nd/commplatform/d/c/ea;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ea;->f(Lcom/nd/commplatform/d/c/ea;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ea$6;->a:Lcom/nd/commplatform/d/c/ea;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ea$6;->a:Lcom/nd/commplatform/d/c/ea;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/ea;->c(Lcom/nd/commplatform/d/c/ea;)Lcom/nd/commplatform/entry/NdUserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdUserInfo;->getUin()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/ea$6;->a:Lcom/nd/commplatform/d/c/ea;

    invoke-static {v2}, Lcom/nd/commplatform/d/c/ea;->c(Lcom/nd/commplatform/d/c/ea;)Lcom/nd/commplatform/entry/NdUserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nd/commplatform/entry/NdUserInfo;->getCheckSum()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/nd/commplatform/d/c/ea;->a(Lcom/nd/commplatform/d/c/ea;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ea$6;->a:Lcom/nd/commplatform/d/c/ea;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ea;->g(Lcom/nd/commplatform/d/c/ea;)V

    goto :goto_0
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p2, Lcom/nd/commplatform/entry/NdUserInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/ea$6;->a(ILcom/nd/commplatform/entry/NdUserInfo;)V

    return-void
.end method
