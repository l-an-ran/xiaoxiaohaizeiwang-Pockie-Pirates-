.class public Lcom/nd/commplatform/d/c/pj;
.super Lcom/nd/commplatform/d/c/u;


# instance fields
.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/nd/commplatform/d/c/pz;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Lcom/nd/commplatform/d/c/fr;

.field private g:Lcom/nd/commplatform/d/c/qe;

.field private final h:S

.field private i:I

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/u;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/pj;->d:Ljava/util/HashMap;

    const/16 v0, 0x25f

    iput-short v0, p0, Lcom/nd/commplatform/d/c/pj;->h:S

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/pj;)I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/d/c/pj;->e:I

    return v0
.end method

.method private a()V
    .locals 2

    new-instance v0, Lcom/nd/commplatform/d/c/qe;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/qe;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/pj;->g:Lcom/nd/commplatform/d/c/qe;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pj;->g:Lcom/nd/commplatform/d/c/qe;

    new-instance v1, Lcom/nd/commplatform/d/c/pj$1;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/pj$1;-><init>(Lcom/nd/commplatform/d/c/pj;)V

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/qe;->a(Lcom/nd/commplatform/d/c/qe$d;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pj;->g:Lcom/nd/commplatform/d/c/qe;

    new-instance v1, Lcom/nd/commplatform/d/c/pj$2;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/pj$2;-><init>(Lcom/nd/commplatform/d/c/pj;)V

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/qe;->a(Lcom/nd/commplatform/d/c/qe$a;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pj;->g:Lcom/nd/commplatform/d/c/qe;

    new-instance v1, Lcom/nd/commplatform/d/c/pj$3;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/pj$3;-><init>(Lcom/nd/commplatform/d/c/pj;)V

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/qe;->a(Lcom/nd/commplatform/d/c/qe$e;)V

    return-void
.end method

.method private a(ILcom/nd/commplatform/entry/NdProductOwnershipInfo;)V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p2, p1}, Lcom/nd/commplatform/entry/NdProductOwnershipInfo;->setFeeType(I)V

    invoke-virtual {p2, v0}, Lcom/nd/commplatform/entry/NdProductOwnershipInfo;->setAuthInfo(Lcom/nd/commplatform/entry/NdProductAuthInfo;)V

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdProductOwnershipInfo;->hasOwnership()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_5

    :try_start_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/pj;->f:Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/fr;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "AuthInfo"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lcom/nd/commplatform/entry/NdProductAuthInfo;

    invoke-direct {v1}, Lcom/nd/commplatform/entry/NdProductAuthInfo;-><init>()V

    const-string v2, "RemainCnt"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nd/commplatform/entry/NdProductAuthInfo;->setRemainCnt(I)V

    :cond_2
    const-string v2, "StartTime"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v3, "null"

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1, v2}, Lcom/nd/commplatform/entry/NdProductAuthInfo;->setStartTime(Ljava/lang/String;)V

    :cond_3
    const-string v2, "EndTime"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v3, "null"

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v1, v2}, Lcom/nd/commplatform/entry/NdProductAuthInfo;->setEndTime(Ljava/lang/String;)V

    :cond_4
    invoke-direct {p0, v1, v0}, Lcom/nd/commplatform/d/c/pj;->a(Lcom/nd/commplatform/entry/NdProductAuthInfo;Lorg/json/JSONObject;)V

    invoke-virtual {p2, v1}, Lcom/nd/commplatform/entry/NdProductOwnershipInfo;->setAuthInfo(Lcom/nd/commplatform/entry/NdProductAuthInfo;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_5
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_7

    :try_start_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/pj;->f:Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/fr;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "AuthInfo"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lcom/nd/commplatform/entry/NdProductAuthInfo;

    invoke-direct {v1}, Lcom/nd/commplatform/entry/NdProductAuthInfo;-><init>()V

    const-string v2, "RemainCnt"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nd/commplatform/entry/NdProductAuthInfo;->setRemainCnt(I)V

    :cond_6
    invoke-direct {p0, v1, v0}, Lcom/nd/commplatform/d/c/pj;->a(Lcom/nd/commplatform/entry/NdProductAuthInfo;Lorg/json/JSONObject;)V

    invoke-virtual {p2, v1}, Lcom/nd/commplatform/entry/NdProductOwnershipInfo;->setAuthInfo(Lcom/nd/commplatform/entry/NdProductAuthInfo;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    :cond_7
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    :try_start_2
    iget-object v0, p0, Lcom/nd/commplatform/d/c/pj;->f:Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/fr;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "AuthInfo"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lcom/nd/commplatform/entry/NdProductAuthInfo;

    invoke-direct {v1}, Lcom/nd/commplatform/entry/NdProductAuthInfo;-><init>()V

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/nd/commplatform/entry/NdProductAuthInfo;->setRemainCnt(I)V

    invoke-direct {p0, v1, v0}, Lcom/nd/commplatform/d/c/pj;->a(Lcom/nd/commplatform/entry/NdProductAuthInfo;Lorg/json/JSONObject;)V

    invoke-virtual {p2, v1}, Lcom/nd/commplatform/entry/NdProductOwnershipInfo;->setAuthInfo(Lcom/nd/commplatform/entry/NdProductAuthInfo;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/pj;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/pj;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/pj;Lcom/nd/commplatform/d/c/fr;ILjava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/nd/commplatform/d/c/pj;->a(Lcom/nd/commplatform/d/c/fr;ILjava/lang/Object;)V

    return-void
.end method

.method private a(Lcom/nd/commplatform/entry/NdProductAuthInfo;Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "Limited"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/nd/commplatform/entry/NdProductAuthInfo;->setUsableOnCurrentDevice(Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/pj;)Lcom/nd/commplatform/d/c/fr;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pj;->f:Lcom/nd/commplatform/d/c/fr;

    return-object v0
.end method

.method private b()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/nd/commplatform/d/c/qa;->a()Lcom/nd/commplatform/d/c/qa;

    move-result-object v0

    iget v1, p0, Lcom/nd/commplatform/d/c/pj;->e:I

    iget-object v2, p0, Lcom/nd/commplatform/d/c/pj;->g:Lcom/nd/commplatform/d/c/qe;

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/qa;->a(ILcom/nd/commplatform/d/c/qe;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pj;->d:Ljava/util/HashMap;

    iget v1, p0, Lcom/nd/commplatform/d/c/pj;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private b(I)V
    .locals 5

    const/4 v3, -0x3

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pj;->d:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/pz;

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/pj;->b()V

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/pz;->b()[B

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/pz;->b()[B

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/pj;->f:Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {p0, v0, v3, v4}, Lcom/nd/commplatform/d/c/pj;->a(Lcom/nd/commplatform/d/c/fr;ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/pz;->b()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/nd/commplatform/d/c/fr;-><init>([B)V

    iput-object v1, p0, Lcom/nd/commplatform/d/c/pj;->f:Lcom/nd/commplatform/d/c/fr;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pj;->f:Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/fr;->j()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pj;->c:Ljava/lang/String;

    const-string v1, "Invalid data!"

    iget-object v2, p0, Lcom/nd/commplatform/d/c/pj;->a:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/nd/commplatform/d/c/nv;->c(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pj;->f:Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {p0, v0, v3, v4}, Lcom/nd/commplatform/d/c/pj;->a(Lcom/nd/commplatform/d/c/fr;ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nd/commplatform/d/c/pj;->f:Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/fr;->g()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v1, p0, Lcom/nd/commplatform/d/c/pj;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "this error code is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nd/commplatform/d/c/pj;->a:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/nd/commplatform/d/c/nv;->c(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/pj;->f:Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {p0, v1, v0, v4}, Lcom/nd/commplatform/d/c/pj;->a(Lcom/nd/commplatform/d/c/fr;ILjava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/nd/commplatform/d/c/pj;->c:Ljava/lang/String;

    const-string v2, "success request data!"

    iget-object v3, p0, Lcom/nd/commplatform/d/c/pj;->a:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/nd/commplatform/d/c/nv;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/nd/commplatform/d/c/pj;->c(I)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/nd/commplatform/d/c/pj;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "this error code is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nd/commplatform/d/c/pj;->a:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/nd/commplatform/d/c/nv;->c(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/nd/commplatform/d/c/bs;->p:Z

    sput-object v4, Lcom/nd/commplatform/d/c/bs;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/pj;->f:Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {p0, v1, v0, v4}, Lcom/nd/commplatform/d/c/pj;->a(Lcom/nd/commplatform/d/c/fr;ILjava/lang/Object;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private c()I
    .locals 7

    new-instance v3, Lcom/nd/commplatform/d/c/pz;

    invoke-direct {v3}, Lcom/nd/commplatform/d/c/pz;-><init>()V

    invoke-static {}, Lcom/nd/commplatform/d/c/qa;->a()Lcom/nd/commplatform/d/c/qa;

    move-result-object v0

    invoke-static {}, Lcom/nd/commplatform/d/c/ng;->a()Lcom/nd/commplatform/d/c/ng;

    const/16 v1, 0x25f

    sget-object v2, Lcom/nd/commplatform/d/c/bp;->l:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/nd/commplatform/d/c/ng;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/pj;->d()[B

    move-result-object v2

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/nd/commplatform/d/c/pj;->g:Lcom/nd/commplatform/d/c/qe;

    iget-object v6, p0, Lcom/nd/commplatform/d/c/pj;->a:Landroid/content/Context;

    invoke-virtual/range {v0 .. v6}, Lcom/nd/commplatform/d/c/qa;->a(Ljava/lang/String;[BLcom/nd/commplatform/d/c/pz;Ljava/util/HashMap;Lcom/nd/commplatform/d/c/qe;Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/nd/commplatform/d/c/pj;->e:I

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pj;->d:Ljava/util/HashMap;

    iget v1, p0, Lcom/nd/commplatform/d/c/pj;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/nd/commplatform/d/c/pj;->e:I

    return v0
.end method

.method private c(I)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    new-instance v4, Lcom/nd/commplatform/entry/NdProductOwnershipInfo;

    invoke-direct {v4}, Lcom/nd/commplatform/entry/NdProductOwnershipInfo;-><init>()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pj;->j:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/nd/commplatform/entry/NdProductOwnershipInfo;->setProductId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pj;->f:Lcom/nd/commplatform/d/c/fr;

    const-string v5, "CanUse"

    invoke-virtual {v0, v5}, Lcom/nd/commplatform/d/c/fr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v5, "1"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Lcom/nd/commplatform/entry/NdProductOwnershipInfo;->setOwnership(Z)V

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pj;->f:Lcom/nd/commplatform/d/c/fr;

    const-string v2, "ErrCode"

    invoke-virtual {v0, v2}, Lcom/nd/commplatform/d/c/fr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    if-le v0, v3, :cond_0

    move v0, v3

    :cond_0
    if-gez v0, :cond_1

    move v0, v3

    :cond_1
    invoke-virtual {v4, v0}, Lcom/nd/commplatform/entry/NdProductOwnershipInfo;->setErrorCode(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pj;->f:Lcom/nd/commplatform/d/c/fr;

    const-string v2, "ErrDesc"

    invoke-virtual {v0, v2}, Lcom/nd/commplatform/d/c/fr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/nd/commplatform/entry/NdProductOwnershipInfo;->setErrorDesc(Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/nd/commplatform/d/c/pj;->f:Lcom/nd/commplatform/d/c/fr;

    const-string v2, "FeeType"

    invoke-virtual {v0, v2}, Lcom/nd/commplatform/d/c/fr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, v1, v4}, Lcom/nd/commplatform/d/c/pj;->a(ILcom/nd/commplatform/entry/NdProductOwnershipInfo;)V

    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/nd/commplatform/d/c/pj;->f:Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {p0, v0, p1, v4}, Lcom/nd/commplatform/d/c/pj;->a(Lcom/nd/commplatform/d/c/fr;ILjava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    move v0, v3

    goto :goto_1

    :cond_3
    invoke-virtual {v4, v2}, Lcom/nd/commplatform/entry/NdProductOwnershipInfo;->setErrorCode(I)V

    const-string v0, ""

    invoke-virtual {v4, v0}, Lcom/nd/commplatform/entry/NdProductOwnershipInfo;->setErrorDesc(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x2

    invoke-direct {p0, v0, v4}, Lcom/nd/commplatform/d/c/pj;->a(ILcom/nd/commplatform/entry/NdProductOwnershipInfo;)V

    goto :goto_3

    :cond_5
    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    invoke-direct {p0, v0, v4}, Lcom/nd/commplatform/d/c/pj;->a(ILcom/nd/commplatform/entry/NdProductOwnershipInfo;)V

    goto :goto_3

    :cond_6
    move v0, v2

    goto :goto_0
.end method

.method private d()[B
    .locals 4

    new-instance v0, Lcom/nd/commplatform/d/c/fq;

    const/4 v1, 0x0

    const/16 v2, 0x25f

    iget-object v3, p0, Lcom/nd/commplatform/d/c/pj;->a:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v3}, Lcom/nd/commplatform/d/c/fq;-><init>(BSLandroid/content/Context;)V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/pj;->e()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/fq;->a(Ljava/util/HashMap;)[B

    move-result-object v0

    return-object v0
.end method

.method private e()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "TAG"

    const-string v1, "Set request parameters!"

    iget-object v2, p0, Lcom/nd/commplatform/d/c/pj;->a:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/nd/commplatform/d/c/nv;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ProductId"

    iget-object v2, p0, Lcom/nd/commplatform/d/c/pj;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public a(ILjava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdProductOwnershipInfo;",
            ">;)I"
        }
    .end annotation

    iput-object p3, p0, Lcom/nd/commplatform/d/c/pj;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/pj;->j:Ljava/lang/String;

    iput-object p4, p0, Lcom/nd/commplatform/d/c/pj;->b:Lcom/nd/commplatform/NdCallbackListener;

    iput p1, p0, Lcom/nd/commplatform/d/c/pj;->i:I

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/pj;->a()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pj;->c:Ljava/lang/String;

    const-string v1, "begin request data!"

    invoke-static {v0, v1, p3}, Lcom/nd/commplatform/d/c/nv;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/pj;->c()I

    move-result v0

    return v0
.end method
