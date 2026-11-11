.class public Lcom/nd/commplatform/d/c/jk;
.super Lcom/nd/commplatform/d/c/v;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/d/c/v",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/nd/commplatform/entry/NdAppPromotion;",
        ">;>;"
    }
.end annotation


# instance fields
.field private i:I

.field private j:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/v;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/nd/commplatform/d/c/jk;->i:I

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/nd/commplatform/d/c/jk;->j:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected synthetic a(Lcom/nd/commplatform/d/c/fr;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/nd/commplatform/d/c/jk;->b(Lcom/nd/commplatform/d/c/fr;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected a(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/nd/commplatform/d/c/v;->a(I)V

    return-void
.end method

.method public a(Landroid/content/Context;ILcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/entry/NdAppPromotion;",
            ">;>;)V"
        }
    .end annotation

    iput p2, p0, Lcom/nd/commplatform/d/c/jk;->i:I

    iput-object p1, p0, Lcom/nd/commplatform/d/c/jk;->j:Landroid/content/Context;

    const/16 v0, 0x3e9

    iput-short v0, p0, Lcom/nd/commplatform/d/c/jk;->g:S

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/nd/commplatform/d/c/jk;->h:B

    sget-object v0, Lcom/nd/commplatform/d/c/bp;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/jk;->f:Ljava/lang/String;

    invoke-virtual {p0, p1, p3}, Lcom/nd/commplatform/d/c/jk;->a(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method protected a(Ljava/util/HashMap;)V
    .locals 2
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

    const-string v1, "MaxDisplay"

    iget v0, p0, Lcom/nd/commplatform/d/c/jk;->i:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    iget v0, p0, Lcom/nd/commplatform/d/c/jk;->i:I

    goto :goto_0
.end method

.method protected b(Lcom/nd/commplatform/d/c/fr;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nd/commplatform/d/c/fr;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/entry/NdAppPromotion;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "AppList"

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
    if-lt v1, v4, :cond_1

    :cond_0
    return-object v2

    :cond_1
    :try_start_0
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v5, "SoftIdentify"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "SoftIdentify"

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-direct {p0, v5}, Lcom/nd/commplatform/d/c/jk;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    new-instance v5, Lcom/nd/commplatform/entry/NdAppPromotion;

    invoke-direct {v5}, Lcom/nd/commplatform/entry/NdAppPromotion;-><init>()V

    const-string v6, "AppId"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/nd/commplatform/entry/NdAppPromotion;->setAppId(I)V

    const-string v6, "AppName"

    const-string v7, ""

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/nd/commplatform/entry/NdAppPromotion;->setAppName(Ljava/lang/String;)V

    const-string v6, "CheckSum"

    const-string v7, ""

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/nd/commplatform/entry/NdAppPromotion;->setIconChecksum(Ljava/lang/String;)V

    const-string v6, "GoodsName"

    const-string v7, ""

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/nd/commplatform/entry/NdAppPromotion;->setAwardName(Ljava/lang/String;)V

    const-string v6, "AwardCount"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/nd/commplatform/entry/NdAppPromotion;->setAwardCount(I)V

    const-string v6, "Note"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "Note"

    const-string v7, ""

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/nd/commplatform/entry/NdAppPromotion;->setDesc(Ljava/lang/String;)V

    :goto_2
    const-string v6, "Ext"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "Ext"

    const-string v7, ""

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/nd/commplatform/entry/NdAppPromotion;->setExt(Ljava/lang/String;)V

    :goto_3
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :cond_3
    :try_start_1
    const-string v6, ""

    invoke-virtual {v5, v6}, Lcom/nd/commplatform/entry/NdAppPromotion;->setExt(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string v0, ""

    invoke-virtual {v5, v0}, Lcom/nd/commplatform/entry/NdAppPromotion;->setExt(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method
