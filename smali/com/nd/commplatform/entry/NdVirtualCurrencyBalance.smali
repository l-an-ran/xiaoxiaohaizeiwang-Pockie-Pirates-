.class public Lcom/nd/commplatform/entry/NdVirtualCurrencyBalance;
.super Ljava/lang/Object;


# instance fields
.field private balance:D

.field private currency:Lcom/nd/commplatform/entry/NdVirtualCurrency;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBalance()D
    .locals 2

    iget-wide v0, p0, Lcom/nd/commplatform/entry/NdVirtualCurrencyBalance;->balance:D

    return-wide v0
.end method

.method public getCurrency()Lcom/nd/commplatform/entry/NdVirtualCurrency;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdVirtualCurrencyBalance;->currency:Lcom/nd/commplatform/entry/NdVirtualCurrency;

    return-object v0
.end method

.method public setBalance(D)V
    .locals 0
    .param p1, "balance"    # D

    .prologue
    iput-wide p1, p0, Lcom/nd/commplatform/entry/NdVirtualCurrencyBalance;->balance:D

    return-void
.end method

.method public setCurrency(Lcom/nd/commplatform/entry/NdVirtualCurrency;)V
    .locals 0
    .param p1, "currency"    # Lcom/nd/commplatform/entry/NdVirtualCurrency;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdVirtualCurrencyBalance;->currency:Lcom/nd/commplatform/entry/NdVirtualCurrency;

    return-void
.end method
