.class public Lcom/nd/commplatform/entry/NdPayForAnotherOrder;
.super Ljava/lang/Object;


# static fields
.field public static final ORDER_Cancel:I = 0x18

.field public static final ORDER_Fail:I = 0x16

.field public static final ORDER_Invalid:I = 0x17

.field public static final ORDER_Success:I = 0x15

.field public static final ORDER_UnProcess:I = 0x14


# instance fields
.field private mAppId:Ljava/lang/String;

.field private mAppName:Ljava/lang/String;

.field private mCreateTime:Ljava/lang/String;

.field private mGoodsCount:Ljava/lang/String;

.field private mGoodsId:Ljava/lang/String;

.field private mGoodsName:Ljava/lang/String;

.field private mGoodsOrginalPrice:Ljava/lang/String;

.field private mGoodsPrice:Ljava/lang/String;

.field private mNickName:Ljava/lang/String;

.field private mOrderStatus:I

.field private mUin:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "aObj"    # Lorg/json/JSONObject;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Uin"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/entry/NdPayForAnotherOrder;->mUin:Ljava/lang/String;

    const-string v0, "NickName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/entry/NdPayForAnotherOrder;->mNickName:Ljava/lang/String;

    const-string v0, "AppId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/entry/NdPayForAnotherOrder;->mAppId:Ljava/lang/String;

    const-string v0, "AppName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/entry/NdPayForAnotherOrder;->mAppName:Ljava/lang/String;

    const-string v0, "GoodsId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/entry/NdPayForAnotherOrder;->mGoodsId:Ljava/lang/String;

    const-string v0, "GoodsName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/entry/NdPayForAnotherOrder;->mGoodsName:Ljava/lang/String;

    const-string v0, "GoodsPrice"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/entry/NdPayForAnotherOrder;->mGoodsPrice:Ljava/lang/String;

    const-string v0, "GoodsOrginalPrice"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/entry/NdPayForAnotherOrder;->mGoodsOrginalPrice:Ljava/lang/String;

    const-string v0, "GoodsCount"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/entry/NdPayForAnotherOrder;->mGoodsCount:Ljava/lang/String;

    const-string v0, "CreateTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/entry/NdPayForAnotherOrder;->mCreateTime:Ljava/lang/String;

    const-string v0, "OrderStatus"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nd/commplatform/entry/NdPayForAnotherOrder;->mOrderStatus:I

    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdPayForAnotherOrder;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdPayForAnotherOrder;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdPayForAnotherOrder;->mCreateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsCount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdPayForAnotherOrder;->mGoodsCount:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdPayForAnotherOrder;->mGoodsId:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdPayForAnotherOrder;->mGoodsName:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsOrginalPrice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdPayForAnotherOrder;->mGoodsOrginalPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsPrice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdPayForAnotherOrder;->mGoodsPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdPayForAnotherOrder;->mNickName:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderStatus()I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/entry/NdPayForAnotherOrder;->mOrderStatus:I

    return v0
.end method

.method public getUin()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdPayForAnotherOrder;->mUin:Ljava/lang/String;

    return-object v0
.end method
