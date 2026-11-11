.class final Lcom/nd/commplatform/d/c/b$8;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/b;->g(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
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

.field final synthetic b:Lcom/nd/commplatform/d/c/b;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/b;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/b$8;->b:Lcom/nd/commplatform/d/c/b;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/b$8;->a:Lcom/nd/commplatform/NdCallbackListener;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/nd/commplatform/entry/NdVirtualCurrencyBalance;)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdVirtualCurrencyBalance;->getCurrency()Lcom/nd/commplatform/entry/NdVirtualCurrency;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdVirtualCurrency;->getType()Lcom/nd/commplatform/entry/NdVirtualCurrency$NdVirtualCurrencyType;

    move-result-object v0

    sget-object v1, Lcom/nd/commplatform/entry/NdVirtualCurrency$NdVirtualCurrencyType;->CUSTOM:Lcom/nd/commplatform/entry/NdVirtualCurrency$NdVirtualCurrencyType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/b$8;->a:Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdVirtualCurrencyBalance;->getBalance()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/nd/commplatform/NdCallbackListener;->callback(ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/b$8;->a:Lcom/nd/commplatform/NdCallbackListener;

    const/16 v1, -0x5dc1

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/NdCallbackListener;->callback(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/b$8;->a:Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {v0, p1, v2}, Lcom/nd/commplatform/NdCallbackListener;->callback(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p2, Lcom/nd/commplatform/entry/NdVirtualCurrencyBalance;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/b$8;->a(ILcom/nd/commplatform/entry/NdVirtualCurrencyBalance;)V

    return-void
.end method
