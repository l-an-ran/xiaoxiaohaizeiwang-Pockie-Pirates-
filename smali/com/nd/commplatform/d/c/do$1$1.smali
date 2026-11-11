.class final Lcom/nd/commplatform/d/c/do$1$1;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/do$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/NdCallbackListener",
        "<",
        "Lcom/nd/commplatform/entry/NdRequestAddFriendResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/nd/commplatform/d/c/do$1;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/do$1;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/do$1$1;->b:Lcom/nd/commplatform/d/c/do$1;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/do$1$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/nd/commplatform/entry/NdRequestAddFriendResult;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/do$1$1;->b:Lcom/nd/commplatform/d/c/do$1;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/do$1;->a:Lcom/nd/commplatform/d/c/do;

    invoke-virtual {v0, v3}, Lcom/nd/commplatform/d/c/do;->b(Z)V

    if-nez p1, :cond_0

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdRequestAddFriendResult;->getResultCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/do$1$1;->b:Lcom/nd/commplatform/d/c/do$1;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/do$1;->a:Lcom/nd/commplatform/d/c/do;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/do;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/nd/commplatform/d/c/nt;->a(Lcom/nd/commplatform/NdCallbackListener;Landroid/content/Context;I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/do$1$1;->b:Lcom/nd/commplatform/d/c/do$1;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/do$1;->a:Lcom/nd/commplatform/d/c/do;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/do;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->aR:I

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/do$1$1;->b:Lcom/nd/commplatform/d/c/do$1;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/do$1;->a:Lcom/nd/commplatform/d/c/do;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/do;->b(Lcom/nd/commplatform/d/c/do;)I

    move-result v0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/cb;->a(I)V

    new-instance v0, Lcom/nd/commplatform/d/c/bx;

    const/16 v1, 0x69

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/bx;-><init>(I)V

    const-string v1, "uin"

    iget-object v2, p0, Lcom/nd/commplatform/d/c/do$1$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xca

    invoke-static {v1, v3, v0}, Lcom/nd/commplatform/d/c/cb;->a(IZLcom/nd/commplatform/d/c/bx;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/do$1$1;->b:Lcom/nd/commplatform/d/c/do$1;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/do$1;->a:Lcom/nd/commplatform/d/c/do;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/do;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->kA:I

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/nd/commplatform/d/c/do$1$1;->b:Lcom/nd/commplatform/d/c/do$1;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/do$1;->a:Lcom/nd/commplatform/d/c/do;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/do;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->hr:I

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p2, Lcom/nd/commplatform/entry/NdRequestAddFriendResult;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/do$1$1;->a(ILcom/nd/commplatform/entry/NdRequestAddFriendResult;)V

    return-void
.end method
