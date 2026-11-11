.class public Lcom/nd/commplatform/d/c/jl;
.super Lcom/nd/commplatform/d/c/v;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/d/c/v",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/nd/commplatform/entry/NdAppPromotionAward;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/v;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic a(Lcom/nd/commplatform/d/c/fr;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/nd/commplatform/d/c/jl;->b(Lcom/nd/commplatform/d/c/fr;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected a(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/nd/commplatform/d/c/v;->a(I)V

    return-void
.end method

.method protected a(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/nd/commplatform/d/c/v;->a(Ljava/util/HashMap;)V

    return-void
.end method

.method protected b(Lcom/nd/commplatform/d/c/fr;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nd/commplatform/d/c/fr;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/entry/NdAppPromotionAward;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "Notices"

    invoke-virtual {p1, v1}, Lcom/nd/commplatform/d/c/fr;->b(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    move v1, v0

    :goto_0
    if-lt v1, v4, :cond_2

    :cond_0
    const-string v1, "AppGoodsList"

    invoke-virtual {p1, v1}, Lcom/nd/commplatform/d/c/fr;->b(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    move v1, v0

    :goto_1
    if-lt v1, v4, :cond_3

    :cond_1
    return-object v2

    :cond_2
    const-string v5, ""

    invoke-virtual {v3, v1, v5}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/nd/commplatform/entry/NdAppPromotionAward;

    invoke-direct {v6}, Lcom/nd/commplatform/entry/NdAppPromotionAward;-><init>()V

    invoke-virtual {v6, v5}, Lcom/nd/commplatform/entry/NdAppPromotionAward;->setAwardMessage(Ljava/lang/String;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :try_start_0
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v5, "AppId"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "AppName"

    const-string v7, ""

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "GoodsName"

    const-string v8, ""

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "AwardCount"

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_4

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/entry/NdAppPromotionAward;

    invoke-virtual {v0, v5}, Lcom/nd/commplatform/entry/NdAppPromotionAward;->setAppId(I)V

    invoke-virtual {v0, v6}, Lcom/nd/commplatform/entry/NdAppPromotionAward;->setAppName(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lcom/nd/commplatform/entry/NdAppPromotionAward;->setAwardCount(I)V

    invoke-virtual {v0, v7}, Lcom/nd/commplatform/entry/NdAppPromotionAward;->setAwardName(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method public b(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/entry/NdAppPromotionAward;",
            ">;>;)V"
        }
    .end annotation

    const/16 v0, 0x3eb

    iput-short v0, p0, Lcom/nd/commplatform/d/c/jl;->g:S

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/nd/commplatform/d/c/jl;->h:B

    sget-object v0, Lcom/nd/commplatform/d/c/bp;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/jl;->f:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/jl;->a(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method
