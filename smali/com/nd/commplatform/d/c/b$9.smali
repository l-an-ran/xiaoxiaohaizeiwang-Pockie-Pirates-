.class final Lcom/nd/commplatform/d/c/b$9;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/b;->a(ILcom/nd/commplatform/entry/NdBaseProductInfo;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/NdCallbackListener",
        "<",
        "Lcom/nd/commplatform/entry/NdVirtualCurrencyBalance;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/NdCallbackListener;

.field final synthetic b:I

.field final synthetic c:Lcom/nd/commplatform/entry/NdBaseProductInfo;

.field final synthetic d:I

.field final synthetic e:Landroid/content/Context;

.field final synthetic f:Lcom/nd/commplatform/d/c/b;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/b;Lcom/nd/commplatform/NdCallbackListener;ILcom/nd/commplatform/entry/NdBaseProductInfo;ILandroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/b$9;->f:Lcom/nd/commplatform/d/c/b;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/b$9;->a:Lcom/nd/commplatform/NdCallbackListener;

    iput p3, p0, Lcom/nd/commplatform/d/c/b$9;->b:I

    iput-object p4, p0, Lcom/nd/commplatform/d/c/b$9;->c:Lcom/nd/commplatform/entry/NdBaseProductInfo;

    iput p5, p0, Lcom/nd/commplatform/d/c/b$9;->d:I

    iput-object p6, p0, Lcom/nd/commplatform/d/c/b$9;->e:Landroid/content/Context;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/nd/commplatform/entry/NdVirtualCurrencyBalance;)V
    .locals 6

    iget-object v0, p0, Lcom/nd/commplatform/d/c/b$9;->a:Lcom/nd/commplatform/NdCallbackListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/b$9;->a:Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {v0}, Lcom/nd/commplatform/NdCallbackListener;->isDestroy()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/nd/commplatform/d/c/of;->a()Lcom/nd/commplatform/d/c/of;

    move-result-object v0

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/a;->t()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/of;->a(Z)V

    invoke-virtual {v0, p2}, Lcom/nd/commplatform/d/c/of;->a(Lcom/nd/commplatform/entry/NdVirtualCurrencyBalance;)V

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdVirtualCurrencyBalance;->getCurrency()Lcom/nd/commplatform/entry/NdVirtualCurrency;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdVirtualCurrency;->getType()Lcom/nd/commplatform/entry/NdVirtualCurrency$NdVirtualCurrencyType;

    move-result-object v0

    sget-object v1, Lcom/nd/commplatform/entry/NdVirtualCurrency$NdVirtualCurrencyType;->CUSTOM:Lcom/nd/commplatform/entry/NdVirtualCurrency$NdVirtualCurrencyType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/b$9;->f:Lcom/nd/commplatform/d/c/b;

    iget v1, p0, Lcom/nd/commplatform/d/c/b$9;->b:I

    iget-object v2, p0, Lcom/nd/commplatform/d/c/b$9;->c:Lcom/nd/commplatform/entry/NdBaseProductInfo;

    iget v3, p0, Lcom/nd/commplatform/d/c/b$9;->d:I

    iget-object v4, p0, Lcom/nd/commplatform/d/c/b$9;->e:Landroid/content/Context;

    iget-object v5, p0, Lcom/nd/commplatform/d/c/b$9;->a:Lcom/nd/commplatform/NdCallbackListener;

    invoke-static/range {v0 .. v5}, Lcom/nd/commplatform/d/c/b;->a(Lcom/nd/commplatform/d/c/b;ILcom/nd/commplatform/entry/NdBaseProductInfo;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/b$9;->f:Lcom/nd/commplatform/d/c/b;

    iget v1, p0, Lcom/nd/commplatform/d/c/b$9;->b:I

    iget-object v2, p0, Lcom/nd/commplatform/d/c/b$9;->c:Lcom/nd/commplatform/entry/NdBaseProductInfo;

    iget v3, p0, Lcom/nd/commplatform/d/c/b$9;->d:I

    iget-object v4, p0, Lcom/nd/commplatform/d/c/b$9;->e:Landroid/content/Context;

    iget-object v5, p0, Lcom/nd/commplatform/d/c/b$9;->a:Lcom/nd/commplatform/NdCallbackListener;

    invoke-static/range {v0 .. v5}, Lcom/nd/commplatform/d/c/b;->b(Lcom/nd/commplatform/d/c/b;ILcom/nd/commplatform/entry/NdBaseProductInfo;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nd/commplatform/d/c/b$9;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/b$9;->a:Lcom/nd/commplatform/NdCallbackListener;

    const/16 v2, -0x5dc1

    const/4 v3, 0x0

    const/4 v5, 0x1

    move v4, p1

    invoke-static/range {v0 .. v5}, Lcom/nd/commplatform/d/c/b;->a(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;ILcom/nd/commplatform/entry/NdVirtualPayResult;IZ)V

    goto :goto_0
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p2, Lcom/nd/commplatform/entry/NdVirtualCurrencyBalance;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/b$9;->a(ILcom/nd/commplatform/entry/NdVirtualCurrencyBalance;)V

    return-void
.end method
