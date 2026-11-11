.class final Lcom/nd/commplatform/d/c/b$11$1;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/b$11;->a(ILcom/nd/commplatform/entry/NdProductInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/NdCallbackListener",
        "<",
        "Lcom/nd/commplatform/entry/NdReqPurchaseResultInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/entry/NdProductInfo;

.field final synthetic b:Lcom/nd/commplatform/d/c/b$11;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/b$11;Lcom/nd/commplatform/entry/NdProductInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/b$11$1;->b:Lcom/nd/commplatform/d/c/b$11;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/b$11$1;->a:Lcom/nd/commplatform/entry/NdProductInfo;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/nd/commplatform/entry/NdReqPurchaseResultInfo;)V
    .locals 11

    const/4 v1, 0x1

    const/16 v2, -0x5dc2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdReqPurchaseResultInfo;->getErrCode()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdReqPurchaseResultInfo;->isCanBuy()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v2, Lcom/nd/commplatform/entry/NdBuyInfo;

    invoke-direct {v2}, Lcom/nd/commplatform/entry/NdBuyInfo;-><init>()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/b$11$1;->b:Lcom/nd/commplatform/d/c/b$11;

    iget v0, v0, Lcom/nd/commplatform/d/c/b$11;->b:I

    invoke-virtual {v2, v0}, Lcom/nd/commplatform/entry/NdBuyInfo;->setCount(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/b$11$1;->a:Lcom/nd/commplatform/entry/NdProductInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdProductInfo;->getDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/nd/commplatform/entry/NdBuyInfo;->setPayDescription(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/b$11$1;->b:Lcom/nd/commplatform/d/c/b$11;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/b$11;->c:Lcom/nd/commplatform/entry/NdBaseProductInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdBaseProductInfo;->getProductId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/nd/commplatform/entry/NdBuyInfo;->setProductId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/b$11$1;->a:Lcom/nd/commplatform/entry/NdProductInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdProductInfo;->getProductName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/nd/commplatform/entry/NdBuyInfo;->setProductName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/b$11$1;->a:Lcom/nd/commplatform/entry/NdProductInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdProductInfo;->getOrignPrice()D

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/nd/commplatform/entry/NdBuyInfo;->setProductOrginalPrice(D)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/b$11$1;->a:Lcom/nd/commplatform/entry/NdProductInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdProductInfo;->getSalePrice()D

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/nd/commplatform/entry/NdBuyInfo;->setProductPrice(D)V

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdReqPurchaseResultInfo;->getOrderSerial()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/nd/commplatform/entry/NdBuyInfo;->setSerial(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/nd/commplatform/entry/NdBuyInfo;->getProductPrice()D

    move-result-wide v5

    iget-object v0, p0, Lcom/nd/commplatform/d/c/b$11$1;->b:Lcom/nd/commplatform/d/c/b$11;

    iget v0, v0, Lcom/nd/commplatform/d/c/b$11;->b:I

    int-to-double v7, v0

    mul-double/2addr v5, v7

    invoke-static {}, Lcom/nd/commplatform/d/c/of;->a()Lcom/nd/commplatform/d/c/of;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/of;->e()Lcom/nd/commplatform/entry/NdVirtualCurrencyBalance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdVirtualCurrencyBalance;->getBalance()D

    move-result-wide v7

    cmpg-double v0, v5, v7

    if-gtz v0, :cond_0

    move v4, v1

    :cond_0
    if-eqz v4, :cond_1

    const/16 v0, 0x516

    :goto_0
    iget-object v4, p0, Lcom/nd/commplatform/d/c/b$11$1;->b:Lcom/nd/commplatform/d/c/b$11;

    iget-object v4, v4, Lcom/nd/commplatform/d/c/b$11;->a:Lcom/nd/commplatform/NdCallbackListener;

    invoke-static {v4}, Lcom/nd/commplatform/d/c/ol;->a(Lcom/nd/commplatform/NdCallbackListener;)V

    const/4 v4, 0x2

    const/16 v5, -0x4654

    invoke-static {v4, v5}, Lcom/nd/commplatform/d/c/ol;->a(II)V

    iget-object v4, p0, Lcom/nd/commplatform/d/c/b$11$1;->b:Lcom/nd/commplatform/d/c/b$11;

    iget v4, v4, Lcom/nd/commplatform/d/c/b$11;->d:I

    if-ltz v4, :cond_2

    iget-object v1, p0, Lcom/nd/commplatform/d/c/b$11$1;->b:Lcom/nd/commplatform/d/c/b$11;

    iget v1, v1, Lcom/nd/commplatform/d/c/b$11;->d:I

    invoke-static {v1, v2}, Lcom/nd/commplatform/d/c/bz;->a(ILcom/nd/commplatform/entry/NdBuyInfo;)V

    invoke-static {v0, v3}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    :goto_1
    return-void

    :cond_1
    const/4 v0, -0x3

    invoke-static {v0}, Lcom/nd/commplatform/d/c/bz;->a(I)V

    const/16 v0, 0x45a

    goto :goto_0

    :cond_2
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/nd/commplatform/d/c/b$11$1;->b:Lcom/nd/commplatform/d/c/b$11;

    iget-object v4, v4, Lcom/nd/commplatform/d/c/b$11;->e:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/nd/commplatform/activity/SNSControlCenterActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v4, "productInfo"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v4, "nd_cooOrderSerial"

    invoke-virtual {v2}, Lcom/nd/commplatform/entry/NdBuyInfo;->getSerial()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "SNSBalanceNoEnoughView_payAfterRecharge"

    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/b$11$1;->b:Lcom/nd/commplatform/d/c/b$11;

    iget-object v1, v1, Lcom/nd/commplatform/d/c/b$11;->e:Landroid/content/Context;

    const/4 v2, -0x1

    invoke-static {v1, v3, v2, v0}, Lcom/nd/commplatform/d/c/cb;->a(Landroid/content/Context;Landroid/content/Intent;II)V

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdReqPurchaseResultInfo;->getErrDesc()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/nd/commplatform/d/c/b$11$1;->b:Lcom/nd/commplatform/d/c/b$11;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/b$11;->e:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdReqPurchaseResultInfo;->getErrDesc()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/b$11$1;->b:Lcom/nd/commplatform/d/c/b$11;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/b$11;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/b$11$1;->b:Lcom/nd/commplatform/d/c/b$11;

    iget-object v1, v1, Lcom/nd/commplatform/d/c/b$11;->a:Lcom/nd/commplatform/NdCallbackListener;

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/nd/commplatform/d/c/b;->a(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;ILcom/nd/commplatform/entry/NdVirtualPayResult;IZ)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/nd/commplatform/d/c/b$11$1;->b:Lcom/nd/commplatform/d/c/b$11;

    iget-object v5, v0, Lcom/nd/commplatform/d/c/b$11;->e:Landroid/content/Context;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/b$11$1;->b:Lcom/nd/commplatform/d/c/b$11;

    iget-object v6, v0, Lcom/nd/commplatform/d/c/b$11;->a:Lcom/nd/commplatform/NdCallbackListener;

    sget v9, Lcom/nd/commplatform/d/c/jo$h;->hu:I

    move v7, v2

    move-object v8, v3

    move v10, v4

    invoke-static/range {v5 .. v10}, Lcom/nd/commplatform/d/c/b;->a(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;ILcom/nd/commplatform/entry/NdVirtualPayResult;IZ)V

    goto :goto_1
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p2, Lcom/nd/commplatform/entry/NdReqPurchaseResultInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/b$11$1;->a(ILcom/nd/commplatform/entry/NdReqPurchaseResultInfo;)V

    return-void
.end method
