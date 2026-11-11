.class public Lcom/nd/commplatform/entry/NdPayByAnotherRequestResultInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nd/commplatform/entry/NdPayByAnotherRequestResultInfo$NdRequestResultInfo;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x12da243c033c2b2dL


# instance fields
.field private mVector:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/nd/commplatform/entry/NdPayByAnotherRequestResultInfo$NdRequestResultInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 11
    .param p1, "aObject"    # Lorg/json/JSONObject;

    .prologue
    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/entry/NdPayByAnotherRequestResultInfo;->mVector:Ljava/util/Vector;

    const-string v0, "RequestResultInfo"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    move v7, v6

    :goto_0
    if-lt v7, v9, :cond_0

    return-void

    :cond_0
    invoke-virtual {v8, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "CooOrderSerial"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "RequestUin"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "OrderSerial"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "Succeed"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v5, 0x1

    :goto_1
    iget-object v10, p0, Lcom/nd/commplatform/entry/NdPayByAnotherRequestResultInfo;->mVector:Ljava/util/Vector;

    new-instance v0, Lcom/nd/commplatform/entry/NdPayByAnotherRequestResultInfo$NdRequestResultInfo;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/nd/commplatform/entry/NdPayByAnotherRequestResultInfo$NdRequestResultInfo;-><init>(Lcom/nd/commplatform/entry/NdPayByAnotherRequestResultInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v10, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_1
    move v5, v6

    goto :goto_1
.end method


# virtual methods
.method public get(I)Lcom/nd/commplatform/entry/NdPayByAnotherRequestResultInfo$NdRequestResultInfo;
    .locals 1
    .param p1, "index"    # I

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/entry/NdPayByAnotherRequestResultInfo;->mVector:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/entry/NdPayByAnotherRequestResultInfo$NdRequestResultInfo;

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdPayByAnotherRequestResultInfo;->mVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method
