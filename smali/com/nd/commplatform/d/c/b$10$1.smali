.class final Lcom/nd/commplatform/d/c/b$10$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/b$10;->a(ILcom/nd/commplatform/entry/NdVirtualPayResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/b$10;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/b$10;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/b$10$1;->a:Lcom/nd/commplatform/d/c/b$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/16 v3, 0x461

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/b$10$1;->a:Lcom/nd/commplatform/d/c/b$10;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/b$10;->b:Lcom/nd/commplatform/NdCallbackListener;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ol;->a(Lcom/nd/commplatform/NdCallbackListener;)V

    const/4 v0, 0x2

    const/16 v1, -0x5dc3

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/ol;->a(II)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/b$10$1;->a:Lcom/nd/commplatform/d/c/b$10;

    iget v0, v0, Lcom/nd/commplatform/d/c/b$10;->c:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/b$10$1;->a:Lcom/nd/commplatform/d/c/b$10;

    iget v0, v0, Lcom/nd/commplatform/d/c/b$10;->c:I

    invoke-static {v0, v2}, Lcom/nd/commplatform/d/c/bz;->a(ILcom/nd/commplatform/entry/NdBuyInfo;)V

    invoke-static {}, Lcom/nd/commplatform/d/c/cb;->a()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nd/commplatform/d/c/cb;->a()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "SNSBalanceNoEnoughView_payAfterRecharge"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_0
    invoke-static {v3, v2}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/b$10$1;->a:Lcom/nd/commplatform/d/c/b$10;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/b$10;->a:Landroid/content/Context;

    const/4 v1, -0x1

    invoke-static {v0, v1, v3, v2}, Lcom/nd/commplatform/d/c/cb;->a(Landroid/content/Context;IILcom/nd/commplatform/d/c/bx;)V

    goto :goto_0
.end method
