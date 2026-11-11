.class public Lcom/nd/commplatform/entry/NdReqPurchaseResultInfo;
.super Ljava/lang/Object;


# instance fields
.field private canBuy:Z

.field private errDesc:Ljava/lang/String;

.field private errorCode:I

.field private orderSerial:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/nd/commplatform/entry/NdReqPurchaseResultInfo;->errorCode:I

    return-void
.end method


# virtual methods
.method public getErrCode()I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/entry/NdReqPurchaseResultInfo;->errorCode:I

    return v0
.end method

.method public getErrDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdReqPurchaseResultInfo;->errDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderSerial()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdReqPurchaseResultInfo;->orderSerial:Ljava/lang/String;

    return-object v0
.end method

.method public isCanBuy()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nd/commplatform/entry/NdReqPurchaseResultInfo;->canBuy:Z

    return v0
.end method

.method public setCanBuy(Z)V
    .locals 0
    .param p1, "canBuy"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/nd/commplatform/entry/NdReqPurchaseResultInfo;->canBuy:Z

    return-void
.end method

.method public setErrCode(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    iput p1, p0, Lcom/nd/commplatform/entry/NdReqPurchaseResultInfo;->errorCode:I

    return-void
.end method

.method public setErrDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "errDesc"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdReqPurchaseResultInfo;->errDesc:Ljava/lang/String;

    return-void
.end method

.method public setOrderSerial(Ljava/lang/String;)V
    .locals 0
    .param p1, "orderSerial"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdReqPurchaseResultInfo;->orderSerial:Ljava/lang/String;

    return-void
.end method
