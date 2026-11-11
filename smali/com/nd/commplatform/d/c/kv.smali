.class public Lcom/nd/commplatform/d/c/kv;
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


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/u;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/kv;->d:Ljava/util/HashMap;

    const/16 v0, 0x19c

    iput-short v0, p0, Lcom/nd/commplatform/d/c/kv;->h:S

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/kv;)I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/d/c/kv;->e:I

    return v0
.end method

.method private a()V
    .locals 2

    new-instance v0, Lcom/nd/commplatform/d/c/qe;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/qe;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/kv;->g:Lcom/nd/commplatform/d/c/qe;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/kv;->g:Lcom/nd/commplatform/d/c/qe;

    new-instance v1, Lcom/nd/commplatform/d/c/kv$1;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/kv$1;-><init>(Lcom/nd/commplatform/d/c/kv;)V

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/qe;->a(Lcom/nd/commplatform/d/c/qe$d;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/kv;->g:Lcom/nd/commplatform/d/c/qe;

    new-instance v1, Lcom/nd/commplatform/d/c/kv$2;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/kv$2;-><init>(Lcom/nd/commplatform/d/c/kv;)V

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/qe;->a(Lcom/nd/commplatform/d/c/qe$a;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/kv;->g:Lcom/nd/commplatform/d/c/qe;

    new-instance v1, Lcom/nd/commplatform/d/c/kv$3;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/kv$3;-><init>(Lcom/nd/commplatform/d/c/kv;)V

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/qe;->a(Lcom/nd/commplatform/d/c/qe$e;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/kv;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/kv;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/kv;Lcom/nd/commplatform/d/c/fr;ILjava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/nd/commplatform/d/c/kv;->a(Lcom/nd/commplatform/d/c/fr;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/kv;)Lcom/nd/commplatform/d/c/fr;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/kv;->f:Lcom/nd/commplatform/d/c/fr;

    return-object v0
.end method

.method private b()Lcom/nd/commplatform/entry/NdPageList;
    .locals 2

    new-instance v0, Lcom/nd/commplatform/entry/NdPageList;

    invoke-direct {v0}, Lcom/nd/commplatform/entry/NdPageList;-><init>()V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/kv;->i:Lcom/nd/commplatform/entry/NdPagination;

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/entry/NdPageList;->setPagination(Lcom/nd/commplatform/entry/NdPagination;)V

    return-object v0
.end method

.method private b(I)V
    .locals 4

    const/4 v3, -0x3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/kv;->d:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/pz;

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/kv;->c()V

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/pz;->b()[B

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/pz;->b()[B

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/kv;->f:Lcom/nd/commplatform/d/c/fr;

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/kv;->b()Lcom/nd/commplatform/entry/NdPageList;

    move-result-object v1

    invoke-virtual {p0, v0, v3, v1}, Lcom/nd/commplatform/d/c/kv;->a(Lcom/nd/commplatform/d/c/fr;ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/pz;->b()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/nd/commplatform/d/c/fr;-><init>([B)V

    iput-object v1, p0, Lcom/nd/commplatform/d/c/kv;->f:Lcom/nd/commplatform/d/c/fr;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/kv;->f:Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/fr;->j()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/kv;->c:Ljava/lang/String;

    const-string v1, "Invalid data!"

    iget-object v2, p0, Lcom/nd/commplatform/d/c/kv;->a:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/nd/commplatform/d/c/nv;->c(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/kv;->f:Lcom/nd/commplatform/d/c/fr;

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/kv;->b()Lcom/nd/commplatform/entry/NdPageList;

    move-result-object v1

    invoke-virtual {p0, v0, v3, v1}, Lcom/nd/commplatform/d/c/kv;->a(Lcom/nd/commplatform/d/c/fr;ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nd/commplatform/d/c/kv;->f:Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/fr;->g()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v1, p0, Lcom/nd/commplatform/d/c/kv;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "this error code is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nd/commplatform/d/c/kv;->a:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/nd/commplatform/d/c/nv;->c(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/kv;->f:Lcom/nd/commplatform/d/c/fr;

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/kv;->b()Lcom/nd/commplatform/entry/NdPageList;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/nd/commplatform/d/c/kv;->a(Lcom/nd/commplatform/d/c/fr;ILjava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/nd/commplatform/d/c/kv;->c:Ljava/lang/String;

    const-string v2, "success request data!"

    iget-object v3, p0, Lcom/nd/commplatform/d/c/kv;->a:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/nd/commplatform/d/c/nv;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/nd/commplatform/d/c/kv;->c(I)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/nd/commplatform/d/c/kv;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "this error code is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nd/commplatform/d/c/kv;->a:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/nd/commplatform/d/c/nv;->c(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/nd/commplatform/d/c/bs;->p:Z

    const/4 v1, 0x0

    sput-object v1, Lcom/nd/commplatform/d/c/bs;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/kv;->f:Lcom/nd/commplatform/d/c/fr;

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/kv;->b()Lcom/nd/commplatform/entry/NdPageList;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/nd/commplatform/d/c/kv;->a(Lcom/nd/commplatform/d/c/fr;ILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic c(Lcom/nd/commplatform/d/c/kv;)Lcom/nd/commplatform/entry/NdPageList;
    .locals 1

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/kv;->b()Lcom/nd/commplatform/entry/NdPageList;

    move-result-object v0

    return-object v0
.end method

.method private c()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/nd/commplatform/d/c/qa;->a()Lcom/nd/commplatform/d/c/qa;

    move-result-object v0

    iget v1, p0, Lcom/nd/commplatform/d/c/kv;->e:I

    iget-object v2, p0, Lcom/nd/commplatform/d/c/kv;->g:Lcom/nd/commplatform/d/c/qe;

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/qa;->a(ILcom/nd/commplatform/d/c/qe;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/kv;->d:Ljava/util/HashMap;

    iget v1, p0, Lcom/nd/commplatform/d/c/kv;->e:I

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
    .locals 10

    const/4 v1, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/kv;->f:Lcom/nd/commplatform/d/c/fr;

    const-string v2, "MsgList"

    invoke-virtual {v0, v2}, Lcom/nd/commplatform/d/c/fr;->b(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    move v2, v1

    :goto_0
    if-lt v2, v5, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/kv;->f:Lcom/nd/commplatform/d/c/fr;

    const-string v1, "TotalCount"

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/fr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v0, "0"

    :cond_2
    invoke-direct {p0}, Lcom/nd/commplatform/d/c/kv;->b()Lcom/nd/commplatform/entry/NdPageList;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/nd/commplatform/entry/NdPageList;->setList(Ljava/util/List;)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/entry/NdPageList;->setTotalCount(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/kv;->f:Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {p0, v0, p1, v1}, Lcom/nd/commplatform/d/c/kv;->a(Lcom/nd/commplatform/d/c/fr;ILjava/lang/Object;)V

    return-void

    :cond_3
    :try_start_0
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    new-instance v7, Lcom/nd/commplatform/entry/NdUserMsgInfo;

    invoke-direct {v7}, Lcom/nd/commplatform/entry/NdUserMsgInfo;-><init>()V

    const-string v0, "MsgId"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/nd/commplatform/entry/NdUserMsgInfo;->setMsgId(Ljava/lang/String;)V

    new-instance v0, Lcom/nd/commplatform/entry/NdBaseUserInfo;

    invoke-direct {v0}, Lcom/nd/commplatform/entry/NdBaseUserInfo;-><init>()V

    const-string v8, "Uin"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/nd/commplatform/entry/NdBaseUserInfo;->setUin(Ljava/lang/String;)V

    const-string v8, "NickName"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/nd/commplatform/entry/NdBaseUserInfo;->setNickName(Ljava/lang/String;)V

    const-string v8, "CheckSum"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/nd/commplatform/entry/NdBaseUserInfo;->setCheckSum(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/nd/commplatform/entry/NdUserMsgInfo;->setUserInfo(Lcom/nd/commplatform/entry/NdBaseUserInfo;)V

    new-instance v0, Lcom/nd/commplatform/entry/NdMsgContent;

    invoke-direct {v0}, Lcom/nd/commplatform/entry/NdMsgContent;-><init>()V

    const-string v8, "Content"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/nd/commplatform/entry/NdMsgContent;->setContent(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/nd/commplatform/entry/NdUserMsgInfo;->setMsgContent(Lcom/nd/commplatform/entry/NdMsgContent;)V

    const-string v0, "SendTime"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/nd/commplatform/entry/NdUserMsgInfo;->setSendTime(Ljava/lang/String;)V

    const-string v0, "NewCount"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_4
    const-string v0, "0"

    :cond_5
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/nd/commplatform/entry/NdUserMsgInfo;->setNewCount(I)V

    const-string v0, "State"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v8, ""

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_6
    const-string v0, "0"

    :cond_7
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    :goto_1
    invoke-virtual {v7, v0}, Lcom/nd/commplatform/entry/NdUserMsgInfo;->setStatus(Z)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    :cond_8
    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method private d()I
    .locals 7

    new-instance v3, Lcom/nd/commplatform/d/c/pz;

    invoke-direct {v3}, Lcom/nd/commplatform/d/c/pz;-><init>()V

    invoke-static {}, Lcom/nd/commplatform/d/c/qa;->a()Lcom/nd/commplatform/d/c/qa;

    move-result-object v0

    invoke-static {}, Lcom/nd/commplatform/d/c/ng;->a()Lcom/nd/commplatform/d/c/ng;

    const/16 v1, 0x19c

    sget-object v2, Lcom/nd/commplatform/d/c/bp;->h:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/nd/commplatform/d/c/ng;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/kv;->e()[B

    move-result-object v2

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/nd/commplatform/d/c/kv;->g:Lcom/nd/commplatform/d/c/qe;

    iget-object v6, p0, Lcom/nd/commplatform/d/c/kv;->a:Landroid/content/Context;

    invoke-virtual/range {v0 .. v6}, Lcom/nd/commplatform/d/c/qa;->a(Ljava/lang/String;[BLcom/nd/commplatform/d/c/pz;Ljava/util/HashMap;Lcom/nd/commplatform/d/c/qe;Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/nd/commplatform/d/c/kv;->e:I

    iget-object v0, p0, Lcom/nd/commplatform/d/c/kv;->d:Ljava/util/HashMap;

    iget v1, p0, Lcom/nd/commplatform/d/c/kv;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/nd/commplatform/d/c/kv;->e:I

    return v0
.end method

.method private e()[B
    .locals 4

    new-instance v0, Lcom/nd/commplatform/d/c/fq;

    const/4 v1, 0x0

    const/16 v2, 0x19c

    iget-object v3, p0, Lcom/nd/commplatform/d/c/kv;->a:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v3}, Lcom/nd/commplatform/d/c/fq;-><init>(BSLandroid/content/Context;)V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/kv;->f()Ljava/util/HashMap;

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

    iget-object v2, p0, Lcom/nd/commplatform/d/c/kv;->a:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/nd/commplatform/d/c/nv;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    new-instance v0, Lcom/nd/commplatform/d/c/ns;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/ns;-><init>()V

    const-string v1, "PageNo"

    iget-object v2, p0, Lcom/nd/commplatform/d/c/kv;->i:Lcom/nd/commplatform/entry/NdPagination;

    invoke-virtual {v2}, Lcom/nd/commplatform/entry/NdPagination;->getPageIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/ns;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PageSize"

    iget-object v2, p0, Lcom/nd/commplatform/d/c/kv;->i:Lcom/nd/commplatform/entry/NdPagination;

    invoke-virtual {v2}, Lcom/nd/commplatform/entry/NdPagination;->getPageSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/ns;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/nd/commplatform/entry/NdPagination;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I
    .locals 2

    iput-object p1, p0, Lcom/nd/commplatform/d/c/kv;->i:Lcom/nd/commplatform/entry/NdPagination;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/kv;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/nd/commplatform/d/c/kv;->b:Lcom/nd/commplatform/NdCallbackListener;

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/kv;->a()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/kv;->c:Ljava/lang/String;

    const-string v1, "begin request data!"

    invoke-static {v0, v1, p2}, Lcom/nd/commplatform/d/c/nv;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/kv;->d()I

    move-result v0

    return v0
.end method
