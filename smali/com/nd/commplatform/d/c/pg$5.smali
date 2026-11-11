.class final Lcom/nd/commplatform/d/c/pg$5;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/pg;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/NdCallbackListener",
        "<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/pg;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/pg;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/pg$5;->a:Lcom/nd/commplatform/d/c/pg;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Double;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pg$5;->a:Lcom/nd/commplatform/d/c/pg;

    invoke-static {v0, v5}, Lcom/nd/commplatform/d/c/pg;->a(Lcom/nd/commplatform/d/c/pg;Z)Z

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pg$5;->a:Lcom/nd/commplatform/d/c/pg;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/pg;->b(Lcom/nd/commplatform/d/c/pg;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pg$5;->a:Lcom/nd/commplatform/d/c/pg;

    invoke-virtual {v0, v3}, Lcom/nd/commplatform/d/c/pg;->b(Z)V

    if-nez p1, :cond_2

    invoke-static {}, Lcom/nd/commplatform/d/c/of;->a()Lcom/nd/commplatform/d/c/of;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/of;->e()Lcom/nd/commplatform/entry/NdVirtualCurrencyBalance;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/entry/NdVirtualCurrencyBalance;->setBalance(D)V

    :cond_0
    new-instance v0, Lcom/nd/commplatform/entry/NdVirtualPayResult;

    invoke-direct {v0}, Lcom/nd/commplatform/entry/NdVirtualPayResult;-><init>()V

    invoke-virtual {v0, v5}, Lcom/nd/commplatform/entry/NdVirtualPayResult;->setCanBuy(Z)V

    invoke-virtual {v0, v3}, Lcom/nd/commplatform/entry/NdVirtualPayResult;->setErrorCode(I)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/pg$5;->a:Lcom/nd/commplatform/d/c/pg;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/pg;->c(Lcom/nd/commplatform/d/c/pg;)Lcom/nd/commplatform/entry/NdBuyInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdBuyInfo;->getSerial()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/entry/NdVirtualPayResult;->setOrderSerial(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ol;->a(Lcom/nd/commplatform/entry/NdVirtualPayResult;)V

    invoke-static {v4, v3}, Lcom/nd/commplatform/d/c/ol;->a(II)V

    invoke-static {}, Lcom/nd/commplatform/d/c/bz;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v3}, Lcom/nd/commplatform/d/c/bz;->a(I)V

    :cond_1
    const/16 v0, 0x517

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    :goto_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/pg$5;->a:Lcom/nd/commplatform/d/c/pg;

    invoke-virtual {v0, v4}, Lcom/nd/commplatform/d/c/pg;->e(I)Lcom/nd/commplatform/NdCallbackListener;

    return-void

    :cond_2
    const/16 v0, -0x4653

    invoke-static {v4, v0}, Lcom/nd/commplatform/d/c/ol;->a(II)V

    invoke-static {}, Lcom/nd/commplatform/d/c/bz;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, -0x2

    invoke-static {v0}, Lcom/nd/commplatform/d/c/bz;->a(I)V

    :cond_3
    const/16 v0, -0xfa3

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pg$5;->a:Lcom/nd/commplatform/d/c/pg;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/pg;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->gQ:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/pg$5;->a:Lcom/nd/commplatform/d/c/pg;

    invoke-virtual {v2}, Lcom/nd/commplatform/d/c/pg;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget v0, Lcom/nd/commplatform/d/c/jo$h;->kD:I

    new-instance v2, Lcom/nd/commplatform/d/c/pg$5$1;

    invoke-direct {v2, p0}, Lcom/nd/commplatform/d/c/pg$5$1;-><init>(Lcom/nd/commplatform/d/c/pg$5;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/nd/commplatform/d/c/pg$5;->a:Lcom/nd/commplatform/d/c/pg;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/pg;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->gr:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p2, Ljava/lang/Double;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/pg$5;->a(ILjava/lang/Double;)V

    return-void
.end method
