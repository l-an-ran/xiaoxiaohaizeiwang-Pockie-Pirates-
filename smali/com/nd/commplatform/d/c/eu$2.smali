.class final Lcom/nd/commplatform/d/c/eu$2;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/eu;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/NdCallbackListener",
        "<",
        "Lcom/nd/commplatform/entry/NdVirtualPayResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/eu;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/eu;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/eu$2;->a:Lcom/nd/commplatform/d/c/eu;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/nd/commplatform/entry/NdVirtualPayResult;)V
    .locals 7

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eu$2;->a:Lcom/nd/commplatform/d/c/eu;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/eu;->c(Lcom/nd/commplatform/d/c/eu;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eu$2;->a:Lcom/nd/commplatform/d/c/eu;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/eu;->d(Lcom/nd/commplatform/d/c/eu;)V

    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdVirtualPayResult;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/nd/commplatform/d/c/of;->a()Lcom/nd/commplatform/d/c/of;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/of;->e()Lcom/nd/commplatform/entry/NdVirtualCurrencyBalance;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdVirtualCurrencyBalance;->getCurrency()Lcom/nd/commplatform/entry/NdVirtualCurrency;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdVirtualCurrency;->getType()Lcom/nd/commplatform/entry/NdVirtualCurrency$NdVirtualCurrencyType;

    move-result-object v1

    sget-object v2, Lcom/nd/commplatform/entry/NdVirtualCurrency$NdVirtualCurrencyType;->CUSTOM:Lcom/nd/commplatform/entry/NdVirtualCurrency$NdVirtualCurrencyType;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdVirtualCurrencyBalance;->getBalance()D

    move-result-wide v1

    iget-object v3, p0, Lcom/nd/commplatform/d/c/eu$2;->a:Lcom/nd/commplatform/d/c/eu;

    invoke-static {v3}, Lcom/nd/commplatform/d/c/eu;->a(Lcom/nd/commplatform/d/c/eu;)Lcom/nd/commplatform/entry/NdProductInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nd/commplatform/entry/NdProductInfo;->getSalePrice()D

    move-result-wide v3

    iget-object v5, p0, Lcom/nd/commplatform/d/c/eu$2;->a:Lcom/nd/commplatform/d/c/eu;

    invoke-static {v5}, Lcom/nd/commplatform/d/c/eu;->e(Lcom/nd/commplatform/d/c/eu;)I

    move-result v5

    int-to-double v5, v5

    mul-double/2addr v3, v5

    sub-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/entry/NdVirtualCurrencyBalance;->setBalance(D)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, -0x5dc3

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/nd/commplatform/d/c/of;->a()Lcom/nd/commplatform/d/c/of;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/eu$2;->a:Lcom/nd/commplatform/d/c/eu;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/eu;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/nd/commplatform/d/c/of;->a(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;Z)V

    goto :goto_0
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p2, Lcom/nd/commplatform/entry/NdVirtualPayResult;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/eu$2;->a(ILcom/nd/commplatform/entry/NdVirtualPayResult;)V

    return-void
.end method
