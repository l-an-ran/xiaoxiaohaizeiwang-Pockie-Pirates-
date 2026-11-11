.class public Lcom/nd/commplatform/d/c/lm;
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

.field private i:Lcom/nd/commplatform/entry/NdPagination;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:I

.field private m:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/u;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/lm;->d:Ljava/util/HashMap;

    const/16 v0, 0x1f7

    iput-short v0, p0, Lcom/nd/commplatform/d/c/lm;->h:S

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/lm;)I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/d/c/lm;->e:I

    return v0
.end method

.method private a()V
    .locals 2

    new-instance v0, Lcom/nd/commplatform/d/c/qe;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/qe;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/lm;->g:Lcom/nd/commplatform/d/c/qe;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/lm;->g:Lcom/nd/commplatform/d/c/qe;

    new-instance v1, Lcom/nd/commplatform/d/c/lm$1;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/lm$1;-><init>(Lcom/nd/commplatform/d/c/lm;)V

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/qe;->a(Lcom/nd/commplatform/d/c/qe$d;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/lm;->g:Lcom/nd/commplatform/d/c/qe;

    new-instance v1, Lcom/nd/commplatform/d/c/lm$2;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/lm$2;-><init>(Lcom/nd/commplatform/d/c/lm;)V

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/qe;->a(Lcom/nd/commplatform/d/c/qe$a;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/lm;->g:Lcom/nd/commplatform/d/c/qe;

    new-instance v1, Lcom/nd/commplatform/d/c/lm$3;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/lm$3;-><init>(Lcom/nd/commplatform/d/c/lm;)V

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/qe;->a(Lcom/nd/commplatform/d/c/qe$e;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/lm;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/lm;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/lm;Lcom/nd/commplatform/d/c/fr;ILjava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/nd/commplatform/d/c/lm;->a(Lcom/nd/commplatform/d/c/fr;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/lm;)Lcom/nd/commplatform/d/c/fr;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/lm;->f:Lcom/nd/commplatform/d/c/fr;

    return-object v0
.end method

.method private b()Lcom/nd/commplatform/entry/NdRankPageList;
    .locals 2

    new-instance v0, Lcom/nd/commplatform/entry/NdRankPageList;

    invoke-direct {v0}, Lcom/nd/commplatform/entry/NdRankPageList;-><init>()V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/lm;->i:Lcom/nd/commplatform/entry/NdPagination;

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/entry/NdRankPageList;->setPagination(Lcom/nd/commplatform/entry/NdPagination;)V

    return-object v0
.end method

.method private b(I)V
    .locals 5

    const/4 v3, -0x3

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/lm;->d:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/pz;

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/lm;->c()V

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/pz;->b()[B

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/pz;->b()[B

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/lm;->f:Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {p0, v0, v3, v4}, Lcom/nd/commplatform/d/c/lm;->a(Lcom/nd/commplatform/d/c/fr;ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/pz;->b()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/nd/commplatform/d/c/fr;-><init>([B)V

    iput-object v1, p0, Lcom/nd/commplatform/d/c/lm;->f:Lcom/nd/commplatform/d/c/fr;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/lm;->f:Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/fr;->j()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/lm;->c:Ljava/lang/String;

    const-string v1, "Invalid data!"

    iget-object v2, p0, Lcom/nd/commplatform/d/c/lm;->a:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/nd/commplatform/d/c/nv;->c(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/lm;->f:Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {p0, v0, v3, v4}, Lcom/nd/commplatform/d/c/lm;->a(Lcom/nd/commplatform/d/c/fr;ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nd/commplatform/d/c/lm;->f:Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/fr;->g()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v1, p0, Lcom/nd/commplatform/d/c/lm;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "this error code is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nd/commplatform/d/c/lm;->a:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/nd/commplatform/d/c/nv;->c(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/lm;->f:Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {p0, v1, v0, v4}, Lcom/nd/commplatform/d/c/lm;->a(Lcom/nd/commplatform/d/c/fr;ILjava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/nd/commplatform/d/c/lm;->c:Ljava/lang/String;

    const-string v2, "success request data!"

    iget-object v3, p0, Lcom/nd/commplatform/d/c/lm;->a:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/nd/commplatform/d/c/nv;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/nd/commplatform/d/c/lm;->c(I)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/nd/commplatform/d/c/lm;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "this error code is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nd/commplatform/d/c/lm;->a:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/nd/commplatform/d/c/nv;->c(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/nd/commplatform/d/c/bs;->p:Z

    sput-object v4, Lcom/nd/commplatform/d/c/bs;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/lm;->f:Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {p0, v1, v0, v4}, Lcom/nd/commplatform/d/c/lm;->a(Lcom/nd/commplatform/d/c/fr;ILjava/lang/Object;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private c()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/nd/commplatform/d/c/qa;->a()Lcom/nd/commplatform/d/c/qa;

    move-result-object v0

    iget v1, p0, Lcom/nd/commplatform/d/c/lm;->e:I

    iget-object v2, p0, Lcom/nd/commplatform/d/c/lm;->g:Lcom/nd/commplatform/d/c/qe;

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/qa;->a(ILcom/nd/commplatform/d/c/qe;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/lm;->d:Ljava/util/HashMap;

    iget v1, p0, Lcom/nd/commplatform/d/c/lm;->e:I

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

.method private c(I)V
    .locals 9

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/lm;->f:Lcom/nd/commplatform/d/c/fr;

    const-string v2, "UserLeaderBoardList"

    invoke-virtual {v0, v2}, Lcom/nd/commplatform/d/c/fr;->b(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v5, :cond_5

    :goto_1
    iget-object v2, p0, Lcom/nd/commplatform/d/c/lm;->f:Lcom/nd/commplatform/d/c/fr;

    const-string v3, "TotalCount"

    invoke-virtual {v2, v3}, Lcom/nd/commplatform/d/c/fr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const-string v2, "0"

    :cond_1
    sget-boolean v3, Lcom/nd/commplatform/d/c/bs;->p:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/nd/commplatform/d/c/lm;->f:Lcom/nd/commplatform/d/c/fr;

    const-string v4, "MyLeaderBoard"

    invoke-virtual {v3, v4}, Lcom/nd/commplatform/d/c/fr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/nd/commplatform/entry/NdUserRankInfo;

    invoke-direct {v3}, Lcom/nd/commplatform/entry/NdUserRankInfo;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v1, "Uin"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/nd/commplatform/entry/NdUserRankInfo;->setUin(Ljava/lang/String;)V

    const-string v1, "NickName"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/nd/commplatform/entry/NdUserRankInfo;->setNickName(Ljava/lang/String;)V

    const-string v1, "CheckSum"

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/nd/commplatform/entry/NdUserRankInfo;->setCheckSum(Ljava/lang/String;)V

    const-string v1, "Score"

    const-string v5, ""

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/nd/commplatform/entry/NdUserRankInfo;->setScore(Ljava/lang/String;)V

    const-string v1, "UserRank"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/nd/commplatform/entry/NdUserRankInfo;->setUserRank(Ljava/lang/String;)V

    const-string v1, "UpdateTime"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "UpdateTime"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/nd/commplatform/entry/NdUserRankInfo;->setUpdateTime(Ljava/lang/String;)V

    :cond_2
    const-string v1, "DisplayText"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "DisplayText"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/nd/commplatform/entry/NdUserRankInfo;->setDisplayText(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v1, v3

    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/nd/commplatform/d/c/lm;->b()Lcom/nd/commplatform/entry/NdRankPageList;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/nd/commplatform/entry/NdRankPageList;->setTotalCount(I)V

    invoke-virtual {v3, v0}, Lcom/nd/commplatform/entry/NdRankPageList;->setList(Ljava/util/List;)V

    invoke-virtual {v3, v1}, Lcom/nd/commplatform/entry/NdRankPageList;->setT(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/lm;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nd/commplatform/d/c/lm;->f:Lcom/nd/commplatform/d/c/fr;

    const-string v1, "ShareText"

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/fr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, ""

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v3, v0}, Lcom/nd/commplatform/entry/NdRankPageList;->setExtras(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/nd/commplatform/d/c/lm;->f:Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {p0, v0, p1, v3}, Lcom/nd/commplatform/d/c/lm;->a(Lcom/nd/commplatform/d/c/fr;ILjava/lang/Object;)V

    return-void

    :cond_5
    :try_start_2
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v6, Lcom/nd/commplatform/entry/NdUserRankInfo;

    invoke-direct {v6}, Lcom/nd/commplatform/entry/NdUserRankInfo;-><init>()V

    const-string v7, "Uin"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/nd/commplatform/entry/NdUserRankInfo;->setUin(Ljava/lang/String;)V

    const-string v7, "NickName"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/nd/commplatform/entry/NdUserRankInfo;->setNickName(Ljava/lang/String;)V

    const-string v7, "CheckSum"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "CheckSum"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/nd/commplatform/entry/NdUserRankInfo;->setCheckSum(Ljava/lang/String;)V

    :cond_6
    const-string v7, "Score"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/nd/commplatform/entry/NdUserRankInfo;->setScore(Ljava/lang/String;)V

    const-string v7, "UserRank"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/nd/commplatform/entry/NdUserRankInfo;->setUserRank(Ljava/lang/String;)V

    const-string v7, "UpdateTime"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/nd/commplatform/entry/NdUserRankInfo;->setUpdateTime(Ljava/lang/String;)V

    const-string v7, "DisplayText"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "DisplayText"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/nd/commplatform/entry/NdUserRankInfo;->setDisplayText(Ljava/lang/String;)V

    :cond_7
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    :catch_1
    move-exception v3

    :goto_4
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_2

    :catch_2
    move-exception v1

    move-object v8, v1

    move-object v1, v3

    move-object v3, v8

    goto :goto_4

    :cond_8
    move-object v1, v3

    goto/16 :goto_2

    :cond_9
    move-object v0, v1

    goto/16 :goto_1
.end method

.method private d()I
    .locals 7

    new-instance v3, Lcom/nd/commplatform/d/c/pz;

    invoke-direct {v3}, Lcom/nd/commplatform/d/c/pz;-><init>()V

    invoke-static {}, Lcom/nd/commplatform/d/c/qa;->a()Lcom/nd/commplatform/d/c/qa;

    move-result-object v0

    invoke-static {}, Lcom/nd/commplatform/d/c/ng;->a()Lcom/nd/commplatform/d/c/ng;

    const/16 v1, 0x1f7

    sget-object v2, Lcom/nd/commplatform/d/c/bp;->i:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/nd/commplatform/d/c/ng;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/lm;->e()[B

    move-result-object v2

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/nd/commplatform/d/c/lm;->g:Lcom/nd/commplatform/d/c/qe;

    iget-object v6, p0, Lcom/nd/commplatform/d/c/lm;->a:Landroid/content/Context;

    invoke-virtual/range {v0 .. v6}, Lcom/nd/commplatform/d/c/qa;->a(Ljava/lang/String;[BLcom/nd/commplatform/d/c/pz;Ljava/util/HashMap;Lcom/nd/commplatform/d/c/qe;Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/nd/commplatform/d/c/lm;->e:I

    iget-object v0, p0, Lcom/nd/commplatform/d/c/lm;->d:Ljava/util/HashMap;

    iget v1, p0, Lcom/nd/commplatform/d/c/lm;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/nd/commplatform/d/c/lm;->e:I

    return v0
.end method

.method private e()[B
    .locals 4

    new-instance v0, Lcom/nd/commplatform/d/c/fq;

    const/4 v1, 0x0

    const/16 v2, 0x1f7

    iget-object v3, p0, Lcom/nd/commplatform/d/c/lm;->a:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v3}, Lcom/nd/commplatform/d/c/fq;-><init>(BSLandroid/content/Context;)V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/lm;->f()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/fq;->a(Ljava/util/HashMap;)[B

    move-result-object v0

    return-object v0
.end method

.method private f()Ljava/util/HashMap;
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

    iget-object v2, p0, Lcom/nd/commplatform/d/c/lm;->a:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/nd/commplatform/d/c/nv;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    new-instance v0, Lcom/nd/commplatform/d/c/ns;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/ns;-><init>()V

    const-string v1, "LeaderBoardId"

    iget-object v2, p0, Lcom/nd/commplatform/d/c/lm;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/ns;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Uin"

    iget-object v2, p0, Lcom/nd/commplatform/d/c/lm;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/ns;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SubType"

    iget v2, p0, Lcom/nd/commplatform/d/c/lm;->l:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/ns;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Type"

    iget v2, p0, Lcom/nd/commplatform/d/c/lm;->m:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/ns;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PageNo"

    iget-object v2, p0, Lcom/nd/commplatform/d/c/lm;->i:Lcom/nd/commplatform/entry/NdPagination;

    invoke-virtual {v2}, Lcom/nd/commplatform/entry/NdPagination;->getPageIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/ns;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PageSize"

    iget-object v2, p0, Lcom/nd/commplatform/d/c/lm;->i:Lcom/nd/commplatform/entry/NdPagination;

    invoke-virtual {v2}, Lcom/nd/commplatform/entry/NdPagination;->getPageSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/ns;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/lm;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Platform"

    const-string v2, "8"

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/ns;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "OsVersion"

    invoke-static {}, Lcom/nd/commplatform/d/c/pa;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/ns;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AppIdentifier"

    iget-object v2, p0, Lcom/nd/commplatform/d/c/lm;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/ns;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AppVersion"

    iget-object v2, p0, Lcom/nd/commplatform/d/c/lm;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/nd/commplatform/d/c/pa;->j(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/ns;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private g()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/nd/commplatform/d/c/lm;->i:Lcom/nd/commplatform/entry/NdPagination;

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdPagination;->getPageIndex()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/nd/commplatform/d/c/lm;->k:Ljava/lang/String;

    if-nez v1, :cond_1

    sget-boolean v2, Lcom/nd/commplatform/d/c/bs;->p:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v2, Lcom/nd/commplatform/d/c/bs;->f:Ljava/lang/String;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/nd/commplatform/d/c/bs;->f:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/nd/commplatform/entry/NdPagination;Ljava/lang/String;Ljava/lang/String;IILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nd/commplatform/entry/NdPagination;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdRankPageList",
            "<",
            "Lcom/nd/commplatform/entry/NdUserRankInfo;",
            ">;>;)I"
        }
    .end annotation

    iput-object p1, p0, Lcom/nd/commplatform/d/c/lm;->i:Lcom/nd/commplatform/entry/NdPagination;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/lm;->j:Ljava/lang/String;

    iput-object p3, p0, Lcom/nd/commplatform/d/c/lm;->k:Ljava/lang/String;

    iput p4, p0, Lcom/nd/commplatform/d/c/lm;->l:I

    iput p5, p0, Lcom/nd/commplatform/d/c/lm;->m:I

    iput-object p6, p0, Lcom/nd/commplatform/d/c/lm;->a:Landroid/content/Context;

    iput-object p7, p0, Lcom/nd/commplatform/d/c/lm;->b:Lcom/nd/commplatform/NdCallbackListener;

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/lm;->a()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/lm;->c:Ljava/lang/String;

    const-string v1, "begin request data!"

    invoke-static {v0, v1, p6}, Lcom/nd/commplatform/d/c/nv;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/lm;->d()I

    move-result v0

    return v0
.end method
