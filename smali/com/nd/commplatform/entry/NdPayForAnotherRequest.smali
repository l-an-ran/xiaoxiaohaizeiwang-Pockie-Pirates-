.class public Lcom/nd/commplatform/entry/NdPayForAnotherRequest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nd/commplatform/entry/NdPayForAnotherRequest$a;
    }
.end annotation


# instance fields
.field private mGoodsCount:I

.field private mGoodsId:Ljava/lang/String;

.field private mGoodsName:Ljava/lang/String;

.field private mGoodsOrginalPrice:D

.field private mGoodsPrice:D

.field private mPayDescription:Ljava/lang/String;

.field private mRequestInfo:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/nd/commplatform/entry/NdPayForAnotherRequest$a;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;DDILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "aGoodsId"    # Ljava/lang/String;
    .param p2, "aGoodsName"    # Ljava/lang/String;
    .param p3, "aGoodsPrice"    # D
    .param p5, "aGoodsOrginalPrice"    # D
    .param p7, "aGoodsCount"    # I
    .param p8, "aPayDescription"    # Ljava/lang/String;
    .param p9, "aRequestText"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdPayForAnotherRequest;->mGoodsId:Ljava/lang/String;

    iput-object p2, p0, Lcom/nd/commplatform/entry/NdPayForAnotherRequest;->mGoodsName:Ljava/lang/String;

    iput-wide p3, p0, Lcom/nd/commplatform/entry/NdPayForAnotherRequest;->mGoodsPrice:D

    iput-wide p5, p0, Lcom/nd/commplatform/entry/NdPayForAnotherRequest;->mGoodsOrginalPrice:D

    iput p7, p0, Lcom/nd/commplatform/entry/NdPayForAnotherRequest;->mGoodsCount:I

    iput-object p8, p0, Lcom/nd/commplatform/entry/NdPayForAnotherRequest;->mPayDescription:Ljava/lang/String;

    iput-object p9, p0, Lcom/nd/commplatform/entry/NdPayForAnotherRequest;->mRequestText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addRequest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "aSerial"    # Ljava/lang/String;
    .param p2, "aRequestUin"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/entry/NdPayForAnotherRequest;->mRequestInfo:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/entry/NdPayForAnotherRequest;->mRequestInfo:Ljava/util/Vector;

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/entry/NdPayForAnotherRequest;->mRequestInfo:Ljava/util/Vector;

    new-instance v1, Lcom/nd/commplatform/entry/NdPayForAnotherRequest$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/nd/commplatform/entry/NdPayForAnotherRequest$a;-><init>(Lcom/nd/commplatform/entry/NdPayForAnotherRequest;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 8

    const/4 v0, 0x0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    iget-object v1, p0, Lcom/nd/commplatform/entry/NdPayForAnotherRequest;->mRequestInfo:Ljava/util/Vector;

    if-nez v1, :cond_0

    move v1, v0

    :goto_0
    move v2, v0

    :goto_1
    if-lt v2, v1, :cond_1

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const-string v1, "RequestInfo"

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "GoodsId"

    iget-object v2, p0, Lcom/nd/commplatform/entry/NdPayForAnotherRequest;->mGoodsId:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "GoodsName"

    iget-object v2, p0, Lcom/nd/commplatform/entry/NdPayForAnotherRequest;->mGoodsName:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "GoodsPrice"

    iget-wide v4, p0, Lcom/nd/commplatform/entry/NdPayForAnotherRequest;->mGoodsPrice:D

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "GoodsOrginalPrice"

    iget-wide v4, p0, Lcom/nd/commplatform/entry/NdPayForAnotherRequest;->mGoodsOrginalPrice:D

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "GoodsCount"

    iget v1, p0, Lcom/nd/commplatform/entry/NdPayForAnotherRequest;->mGoodsCount:I

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "PayDescription"

    iget-object v1, p0, Lcom/nd/commplatform/entry/NdPayForAnotherRequest;->mPayDescription:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "RequestText"

    iget-object v1, p0, Lcom/nd/commplatform/entry/NdPayForAnotherRequest;->mRequestText:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v3

    :cond_0
    iget-object v1, p0, Lcom/nd/commplatform/entry/NdPayForAnotherRequest;->mRequestInfo:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/entry/NdPayForAnotherRequest;->mRequestInfo:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/entry/NdPayForAnotherRequest$a;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "CooOrderSerial"

    iget-object v7, v0, Lcom/nd/commplatform/entry/NdPayForAnotherRequest$a;->a:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "RequestUin"

    iget-object v0, v0, Lcom/nd/commplatform/entry/NdPayForAnotherRequest$a;->b:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1
.end method
