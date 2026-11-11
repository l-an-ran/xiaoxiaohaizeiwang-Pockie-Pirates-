.class public Lcom/nd/commplatform/d/c/kj;
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

.field private j:Lcom/nd/commplatform/entry/NdPagination;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/u;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/kj;->d:Ljava/util/HashMap;

    const/16 v0, 0x14d

    iput-short v0, p0, Lcom/nd/commplatform/d/c/kj;->h:S

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/kj;)I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/d/c/kj;->e:I

    return v0
.end method

.method private a()V
    .locals 2

    new-instance v0, Lcom/nd/commplatform/d/c/qe;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/qe;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/kj;->g:Lcom/nd/commplatform/d/c/qe;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/kj;->g:Lcom/nd/commplatform/d/c/qe;

    new-instance v1, Lcom/nd/commplatform/d/c/kj$1;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/kj$1;-><init>(Lcom/nd/commplatform/d/c/kj;)V

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/qe;->a(Lcom/nd/commplatform/d/c/qe$d;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/kj;->g:Lcom/nd/commplatform/d/c/qe;

    new-instance v1, Lcom/nd/commplatform/d/c/kj$2;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/kj$2;-><init>(Lcom/nd/commplatform/d/c/kj;)V

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/qe;->a(Lcom/nd/commplatform/d/c/qe$a;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/kj;->g:Lcom/nd/commplatform/d/c/qe;

    new-instance v1, Lcom/nd/commplatform/d/c/kj$3;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/kj$3;-><init>(Lcom/nd/commplatform/d/c/kj;)V

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/qe;->a(Lcom/nd/commplatform/d/c/qe$e;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/kj;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/kj;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/kj;Lcom/nd/commplatform/d/c/fr;ILjava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/nd/commplatform/d/c/kj;->a(Lcom/nd/commplatform/d/c/fr;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/kj;)Lcom/nd/commplatform/d/c/fr;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/kj;->f:Lcom/nd/commplatform/d/c/fr;

    return-object v0
.end method

.method private b()Lcom/nd/commplatform/entry/NdPageList;
    .locals 2

    new-instance v0, Lcom/nd/commplatform/entry/NdPageList;

    invoke-direct {v0}, Lcom/nd/commplatform/entry/NdPageList;-><init>()V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/kj;->j:Lcom/nd/commplatform/entry/NdPagination;

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/entry/NdPageList;->setPagination(Lcom/nd/commplatform/entry/NdPagination;)V

    return-object v0
.end method

.method private b(I)V
    .locals 4

    const/4 v3, -0x3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/kj;->d:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/pz;

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/kj;->c()V

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/pz;->b()[B

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/pz;->b()[B

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/kj;->f:Lcom/nd/commplatform/d/c/fr;

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/kj;->b()Lcom/nd/commplatform/entry/NdPageList;

    move-result-object v1

    invoke-virtual {p0, v0, v3, v1}, Lcom/nd/commplatform/d/c/kj;->a(Lcom/nd/commplatform/d/c/fr;ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/pz;->b()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/nd/commplatform/d/c/fr;-><init>([B)V

    iput-object v1, p0, Lcom/nd/commplatform/d/c/kj;->f:Lcom/nd/commplatform/d/c/fr;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/kj;->f:Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/fr;->j()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/kj;->c:Ljava/lang/String;

    const-string v1, "Invalid data!"

    iget-object v2, p0, Lcom/nd/commplatform/d/c/kj;->a:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/nd/commplatform/d/c/nv;->c(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/kj;->f:Lcom/nd/commplatform/d/c/fr;

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/kj;->b()Lcom/nd/commplatform/entry/NdPageList;

    move-result-object v1

    invoke-virtual {p0, v0, v3, v1}, Lcom/nd/commplatform/d/c/kj;->a(Lcom/nd/commplatform/d/c/fr;ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nd/commplatform/d/c/kj;->f:Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/fr;->g()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v1, p0, Lcom/nd/commplatform/d/c/kj;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "this error code is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nd/commplatform/d/c/kj;->a:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/nd/commplatform/d/c/nv;->c(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/kj;->f:Lcom/nd/commplatform/d/c/fr;

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/kj;->b()Lcom/nd/commplatform/entry/NdPageList;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/nd/commplatform/d/c/kj;->a(Lcom/nd/commplatform/d/c/fr;ILjava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/nd/commplatform/d/c/kj;->c:Ljava/lang/String;

    const-string v2, "success request data!"

    iget-object v3, p0, Lcom/nd/commplatform/d/c/kj;->a:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/nd/commplatform/d/c/nv;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/nd/commplatform/d/c/kj;->c(I)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/nd/commplatform/d/c/kj;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "this error code is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nd/commplatform/d/c/kj;->a:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/nd/commplatform/d/c/nv;->c(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/nd/commplatform/d/c/bs;->p:Z

    const/4 v1, 0x0

    sput-object v1, Lcom/nd/commplatform/d/c/bs;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/kj;->f:Lcom/nd/commplatform/d/c/fr;

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/kj;->b()Lcom/nd/commplatform/entry/NdPageList;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/nd/commplatform/d/c/kj;->a(Lcom/nd/commplatform/d/c/fr;ILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic c(Lcom/nd/commplatform/d/c/kj;)Lcom/nd/commplatform/entry/NdPageList;
    .locals 1

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/kj;->b()Lcom/nd/commplatform/entry/NdPageList;

    move-result-object v0

    return-object v0
.end method

.method private c()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/nd/commplatform/d/c/qa;->a()Lcom/nd/commplatform/d/c/qa;

    move-result-object v0

    iget v1, p0, Lcom/nd/commplatform/d/c/kj;->e:I

    iget-object v2, p0, Lcom/nd/commplatform/d/c/kj;->g:Lcom/nd/commplatform/d/c/qe;

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/qa;->a(ILcom/nd/commplatform/d/c/qe;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/kj;->d:Ljava/util/HashMap;

    iget v1, p0, Lcom/nd/commplatform/d/c/kj;->e:I

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

    const/4 v2, 0x0

    const/4 v9, 0x5

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/kj;->f:Lcom/nd/commplatform/d/c/fr;

    const-string v1, "FriendList"

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/fr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    array-length v0, v4

    if-lez v0, :cond_0

    array-length v5, v4

    move v1, v2

    :goto_0
    if-lt v1, v5, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/kj;->f:Lcom/nd/commplatform/d/c/fr;

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
    invoke-direct {p0}, Lcom/nd/commplatform/d/c/kj;->b()Lcom/nd/commplatform/entry/NdPageList;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/nd/commplatform/entry/NdPageList;->setList(Ljava/util/List;)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/entry/NdPageList;->setTotalCount(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/kj;->f:Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {p0, v0, p1, v1}, Lcom/nd/commplatform/d/c/kj;->a(Lcom/nd/commplatform/d/c/fr;ILjava/lang/Object;)V

    return-void

    :cond_3
    aget-object v0, v4, v1

    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v6, v0

    if-ge v6, v9, :cond_4

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_4
    new-instance v6, Lcom/nd/commplatform/entry/NdFriendUserInfo;

    invoke-direct {v6}, Lcom/nd/commplatform/entry/NdFriendUserInfo;-><init>()V

    new-instance v7, Lcom/nd/commplatform/entry/NdBaseUserInfo;

    invoke-direct {v7}, Lcom/nd/commplatform/entry/NdBaseUserInfo;-><init>()V

    aget-object v8, v0, v2

    invoke-virtual {v7, v8}, Lcom/nd/commplatform/entry/NdBaseUserInfo;->setUin(Ljava/lang/String;)V

    const/4 v8, 0x1

    aget-object v8, v0, v8

    invoke-virtual {v7, v8}, Lcom/nd/commplatform/entry/NdBaseUserInfo;->setNickName(Ljava/lang/String;)V

    const/4 v8, 0x4

    aget-object v8, v0, v8

    invoke-virtual {v7, v8}, Lcom/nd/commplatform/entry/NdBaseUserInfo;->setCheckSum(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/nd/commplatform/entry/NdFriendUserInfo;->setBaseUserInfo(Lcom/nd/commplatform/entry/NdBaseUserInfo;)V

    const/4 v7, 0x2

    aget-object v7, v0, v7

    invoke-virtual {v6, v7}, Lcom/nd/commplatform/entry/NdFriendUserInfo;->setPoint(Ljava/lang/String;)V

    const/4 v7, 0x3

    aget-object v7, v0, v7

    invoke-virtual {v6, v7}, Lcom/nd/commplatform/entry/NdFriendUserInfo;->setEmotion(Ljava/lang/String;)V

    array-length v7, v0

    if-le v7, v9, :cond_7

    aget-object v0, v0, v9

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_6

    :cond_5
    const-string v0, "0"

    :cond_6
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/nd/commplatform/entry/NdFriendUserInfo;->setOnlineStatus(I)V

    :cond_7
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private d()I
    .locals 7

    new-instance v3, Lcom/nd/commplatform/d/c/pz;

    invoke-direct {v3}, Lcom/nd/commplatform/d/c/pz;-><init>()V

    invoke-static {}, Lcom/nd/commplatform/d/c/qa;->a()Lcom/nd/commplatform/d/c/qa;

    move-result-object v0

    invoke-static {}, Lcom/nd/commplatform/d/c/ng;->a()Lcom/nd/commplatform/d/c/ng;

    const/16 v1, 0x14d

    sget-object v2, Lcom/nd/commplatform/d/c/bp;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/nd/commplatform/d/c/ng;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/kj;->e()[B

    move-result-object v2

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/nd/commplatform/d/c/kj;->g:Lcom/nd/commplatform/d/c/qe;

    iget-object v6, p0, Lcom/nd/commplatform/d/c/kj;->a:Landroid/content/Context;

    invoke-virtual/range {v0 .. v6}, Lcom/nd/commplatform/d/c/qa;->a(Ljava/lang/String;[BLcom/nd/commplatform/d/c/pz;Ljava/util/HashMap;Lcom/nd/commplatform/d/c/qe;Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/nd/commplatform/d/c/kj;->e:I

    iget-object v0, p0, Lcom/nd/commplatform/d/c/kj;->d:Ljava/util/HashMap;

    iget v1, p0, Lcom/nd/commplatform/d/c/kj;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/nd/commplatform/d/c/kj;->e:I

    return v0
.end method

.method private e()[B
    .locals 4

    new-instance v0, Lcom/nd/commplatform/d/c/fq;

    const/4 v1, 0x0

    const/16 v2, 0x14d

    iget-object v3, p0, Lcom/nd/commplatform/d/c/kj;->a:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v3}, Lcom/nd/commplatform/d/c/fq;-><init>(BSLandroid/content/Context;)V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/kj;->f()Ljava/util/HashMap;

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

    iget-object v2, p0, Lcom/nd/commplatform/d/c/kj;->a:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/nd/commplatform/d/c/nv;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    new-instance v0, Lcom/nd/commplatform/d/c/ns;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/ns;-><init>()V

    const-string v1, "AppId"

    iget v2, p0, Lcom/nd/commplatform/d/c/kj;->i:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/ns;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PageNo"

    iget-object v2, p0, Lcom/nd/commplatform/d/c/kj;->j:Lcom/nd/commplatform/entry/NdPagination;

    invoke-virtual {v2}, Lcom/nd/commplatform/entry/NdPagination;->getPageIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/ns;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PageSize"

    iget-object v2, p0, Lcom/nd/commplatform/d/c/kj;->j:Lcom/nd/commplatform/entry/NdPagination;

    invoke-virtual {v2}, Lcom/nd/commplatform/entry/NdPagination;->getPageSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/ns;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public a(ILcom/nd/commplatform/entry/NdPagination;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/nd/commplatform/entry/NdPagination;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<",
            "Lcom/nd/commplatform/entry/NdFriendUserInfo;",
            ">;>;)I"
        }
    .end annotation

    iput p1, p0, Lcom/nd/commplatform/d/c/kj;->i:I

    iput-object p2, p0, Lcom/nd/commplatform/d/c/kj;->j:Lcom/nd/commplatform/entry/NdPagination;

    iput-object p3, p0, Lcom/nd/commplatform/d/c/kj;->a:Landroid/content/Context;

    iput-object p4, p0, Lcom/nd/commplatform/d/c/kj;->b:Lcom/nd/commplatform/NdCallbackListener;

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/kj;->a()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/kj;->c:Ljava/lang/String;

    const-string v1, "begin request data!"

    invoke-static {v0, v1, p3}, Lcom/nd/commplatform/d/c/nv;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/kj;->d()I

    move-result v0

    return v0
.end method
