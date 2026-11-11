.class public Lcom/nd/commplatform/d/c/lz;
.super Lcom/nd/commplatform/d/c/u;


# instance fields
.field private d:S

.field private e:Ljava/util/HashMap;
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

.field private f:I

.field private g:Lcom/nd/commplatform/d/c/fr;

.field private h:Lcom/nd/commplatform/d/c/qe;

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Z

.field private n:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/u;-><init>()V

    const/16 v0, 0x15

    iput-short v0, p0, Lcom/nd/commplatform/d/c/lz;->d:S

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/lz;->e:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nd/commplatform/d/c/lz;->m:Z

    new-instance v0, Lcom/nd/commplatform/d/c/ma;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/ma;-><init>(Lcom/nd/commplatform/d/c/lz;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/lz;->n:Landroid/os/Handler;

    return-void
.end method

.method private a()V
    .locals 2

    new-instance v0, Lcom/nd/commplatform/d/c/qe;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/qe;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/lz;->h:Lcom/nd/commplatform/d/c/qe;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/lz;->h:Lcom/nd/commplatform/d/c/qe;

    new-instance v1, Lcom/nd/commplatform/d/c/lz$1;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/lz$1;-><init>(Lcom/nd/commplatform/d/c/lz;)V

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/qe;->a(Lcom/nd/commplatform/d/c/qe$d;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/lz;->h:Lcom/nd/commplatform/d/c/qe;

    new-instance v1, Lcom/nd/commplatform/d/c/lz$2;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/lz$2;-><init>(Lcom/nd/commplatform/d/c/lz;)V

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/qe;->a(Lcom/nd/commplatform/d/c/qe$a;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/lz;->h:Lcom/nd/commplatform/d/c/qe;

    new-instance v1, Lcom/nd/commplatform/d/c/lz$3;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/lz$3;-><init>(Lcom/nd/commplatform/d/c/lz;)V

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/qe;->a(Lcom/nd/commplatform/d/c/qe$e;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/lz;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/lz;->d()V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/lz;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/lz;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/lz;Lcom/nd/commplatform/d/c/fr;ILjava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/nd/commplatform/d/c/lz;->a(Lcom/nd/commplatform/d/c/fr;ILjava/lang/Object;)V

    return-void
.end method

.method private b()I
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/lz;->g:Lcom/nd/commplatform/d/c/fr;

    const-string v3, "ResultCode"

    invoke-virtual {v0, v3}, Lcom/nd/commplatform/d/c/fr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    if-eqz v0, :cond_0

    :goto_1
    return v0

    :catch_0
    move-exception v0

    const/16 v0, 0x7d1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/nd/commplatform/d/c/bs;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object v3, p0, Lcom/nd/commplatform/d/c/lz;->g:Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {v3}, Lcom/nd/commplatform/d/c/fr;->c()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "Uin"

    sget-object v5, Lcom/nd/commplatform/d/c/bs;->f:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/nd/commplatform/d/c/bs;->f:Ljava/lang/String;

    const-string v4, "UserName"

    sget-object v5, Lcom/nd/commplatform/d/c/bs;->g:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/nd/commplatform/d/c/bs;->g:Ljava/lang/String;

    const-string v4, "NickName"

    sget-object v5, Lcom/nd/commplatform/d/c/bs;->h:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/nd/commplatform/d/c/bs;->h:Ljava/lang/String;

    const-string v4, "PayUserName"

    sget-object v5, Lcom/nd/commplatform/d/c/bs;->i:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/nd/commplatform/d/c/bs;->i:Ljava/lang/String;

    const-string v4, "PhoneNum"

    sget-object v5, Lcom/nd/commplatform/d/c/bs;->k:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/nd/commplatform/d/c/bs;->k:Ljava/lang/String;

    const-string v4, "LastUploadContactTime"

    sget-object v5, Lcom/nd/commplatform/d/c/bs;->m:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/nd/commplatform/d/c/bs;->m:Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string v0, ""

    :goto_2
    sput-object v0, Lcom/nd/commplatform/d/c/bs;->n:Ljava/lang/String;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/lz;->g:Lcom/nd/commplatform/d/c/fr;

    const-string v3, "MaxUserCount"

    invoke-virtual {v0, v3}, Lcom/nd/commplatform/d/c/fr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/nd/commplatform/d/c/bs;->q:I

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/lz;->g:Lcom/nd/commplatform/d/c/fr;

    const-string v3, "CheckSum"

    invoke-virtual {v0, v3}, Lcom/nd/commplatform/d/c/fr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nd/commplatform/d/c/bs;->F:Ljava/lang/String;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/lz;->g:Lcom/nd/commplatform/d/c/fr;

    const-string v3, "HasSetPassword"

    invoke-virtual {v0, v3}, Lcom/nd/commplatform/d/c/fr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    move v0, v1

    :goto_3
    sput-boolean v0, Lcom/nd/commplatform/d/c/bs;->H:Z

    iget-object v0, p0, Lcom/nd/commplatform/d/c/lz;->g:Lcom/nd/commplatform/d/c/fr;

    const-string v3, "HasBind91"

    invoke-virtual {v0, v3}, Lcom/nd/commplatform/d/c/fr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_2
    sput-boolean v2, Lcom/nd/commplatform/d/c/bs;->G:Z

    :cond_3
    :goto_4
    sget-boolean v0, Lcom/nd/commplatform/d/c/bs;->G:Z

    sput-boolean v0, Lcom/nd/commplatform/d/c/bs;->p:Z

    iget-object v0, p0, Lcom/nd/commplatform/d/c/lz;->a:Landroid/content/Context;

    sget-object v3, Lcom/nd/commplatform/d/c/bs;->g:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v0, v3, v4}, Lcom/nd/commplatform/d/c/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    sget-boolean v0, Lcom/nd/commplatform/d/c/bs;->p:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/lz;->c()V

    :cond_4
    iget-object v0, p0, Lcom/nd/commplatform/d/c/lz;->g:Lcom/nd/commplatform/d/c/fr;

    const-string v3, "IsOwner"

    invoke-virtual {v0, v3}, Lcom/nd/commplatform/d/c/fr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v1, p0, Lcom/nd/commplatform/d/c/lz;->m:Z

    :cond_5
    move v0, v2

    goto/16 :goto_1

    :cond_6
    sget-object v0, Lcom/nd/commplatform/d/c/bs;->n:Ljava/lang/String;

    goto/16 :goto_2

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    :cond_8
    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    sput-boolean v1, Lcom/nd/commplatform/d/c/bs;->G:Z

    goto :goto_4

    :cond_9
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sput-boolean v2, Lcom/nd/commplatform/d/c/bs;->G:Z

    goto :goto_4

    :cond_a
    move v0, v2

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/lz;)I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/d/c/lz;->f:I

    return v0
.end method

.method private b(I)V
    .locals 6

    const/4 v5, 0x0

    const/4 v3, -0x3

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/lz;->e:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/pz;

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/lz;->f()V

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/pz;->b()[B

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/pz;->b()[B

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/lz;->g:Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {p0, v0, v3, v4}, Lcom/nd/commplatform/d/c/lz;->a(Lcom/nd/commplatform/d/c/fr;ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/pz;->b()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/nd/commplatform/d/c/fr;-><init>([B)V

    iput-object v1, p0, Lcom/nd/commplatform/d/c/lz;->g:Lcom/nd/commplatform/d/c/fr;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/lz;->g:Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/fr;->j()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/lz;->c:Ljava/lang/String;

    const-string v1, "Invalid data!"

    iget-object v2, p0, Lcom/nd/commplatform/d/c/lz;->a:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/nd/commplatform/d/c/nv;->c(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/lz;->g:Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {p0, v0, v3, v4}, Lcom/nd/commplatform/d/c/lz;->a(Lcom/nd/commplatform/d/c/fr;ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nd/commplatform/d/c/lz;->g:Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/fr;->g()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/lz;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "this error code is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nd/commplatform/d/c/lz;->a:Landroid/content/Context;

    invoke-static {v0, v2, v3}, Lcom/nd/commplatform/d/c/nv;->c(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iget-boolean v0, p0, Lcom/nd/commplatform/d/c/lz;->l:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/lz;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/nw;->h(Landroid/content/Context;)Z

    :cond_3
    move v0, v1

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/nd/commplatform/d/c/lz;->g:Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {p0, v1, v0, v4}, Lcom/nd/commplatform/d/c/lz;->a(Lcom/nd/commplatform/d/c/fr;ILjava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/lz;->c:Ljava/lang/String;

    const-string v2, "success request data!"

    iget-object v3, p0, Lcom/nd/commplatform/d/c/lz;->a:Landroid/content/Context;

    invoke-static {v0, v2, v3}, Lcom/nd/commplatform/d/c/nv;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/lz;->b()I

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v1, p0, Lcom/nd/commplatform/d/c/lz;->l:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/nd/commplatform/d/c/lz;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/nw;->h(Landroid/content/Context;)Z

    goto :goto_1

    :cond_5
    iget-boolean v0, p0, Lcom/nd/commplatform/d/c/lz;->m:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/nd/commplatform/d/c/lz;->n:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v0, v1

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/nd/commplatform/d/c/lz;->e()V

    move v0, v1

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/nd/commplatform/d/c/lz;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "this error code is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nd/commplatform/d/c/lz;->a:Landroid/content/Context;

    invoke-static {v0, v2, v3}, Lcom/nd/commplatform/d/c/nv;->c(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    sput-boolean v5, Lcom/nd/commplatform/d/c/bs;->p:Z

    sput-object v4, Lcom/nd/commplatform/d/c/bs;->d:Ljava/lang/String;

    move v0, v1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic c(Lcom/nd/commplatform/d/c/lz;)Lcom/nd/commplatform/d/c/fr;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/lz;->g:Lcom/nd/commplatform/d/c/fr;

    return-object v0
.end method

.method private c()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/lz;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nw;->b(Landroid/content/Context;Z)Z

    iget-object v0, p0, Lcom/nd/commplatform/d/c/lz;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nw;->a(Landroid/content/Context;Z)Z

    iget-object v0, p0, Lcom/nd/commplatform/d/c/lz;->a:Landroid/content/Context;

    sget-object v1, Lcom/nd/commplatform/d/c/bs;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nw;->a(Landroid/content/Context;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/nd/commplatform/d/c/lz;->a:Landroid/content/Context;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nw;->b(Landroid/content/Context;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/nd/commplatform/d/c/lz;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/lz;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/pa;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nw;->c(Landroid/content/Context;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/nd/commplatform/d/c/lz;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/nw;->a(Landroid/content/Context;)Z

    return-void
.end method

.method private d()V
    .locals 4

    new-instance v0, Lcom/nd/commplatform/d/c/lz$4;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/lz$4;-><init>(Lcom/nd/commplatform/d/c/lz;)V

    new-instance v1, Lcom/nd/commplatform/d/c/kq;

    invoke-direct {v1}, Lcom/nd/commplatform/d/c/kq;-><init>()V

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/nd/commplatform/d/c/lz;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, v3, v0}, Lcom/nd/commplatform/d/c/kq;->a(ZLandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method static synthetic d(Lcom/nd/commplatform/d/c/lz;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/lz;->e()V

    return-void
.end method

.method private e()V
    .locals 3

    sget-object v0, Lcom/nd/commplatform/d/c/bs;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/nd/commplatform/d/c/ef;->a()Lcom/nd/commplatform/d/c/ef;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/lz;->a:Landroid/content/Context;

    sget-object v2, Lcom/nd/commplatform/d/c/bs;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/ef;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private f()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/nd/commplatform/d/c/qa;->a()Lcom/nd/commplatform/d/c/qa;

    move-result-object v0

    iget v1, p0, Lcom/nd/commplatform/d/c/lz;->f:I

    iget-object v2, p0, Lcom/nd/commplatform/d/c/lz;->h:Lcom/nd/commplatform/d/c/qe;

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/qa;->a(ILcom/nd/commplatform/d/c/qe;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/lz;->e:Ljava/util/HashMap;

    iget v1, p0, Lcom/nd/commplatform/d/c/lz;->f:I

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

.method private g()I
    .locals 7

    new-instance v3, Lcom/nd/commplatform/d/c/pz;

    invoke-direct {v3}, Lcom/nd/commplatform/d/c/pz;-><init>()V

    invoke-static {}, Lcom/nd/commplatform/d/c/qa;->a()Lcom/nd/commplatform/d/c/qa;

    move-result-object v0

    invoke-static {}, Lcom/nd/commplatform/d/c/ng;->a()Lcom/nd/commplatform/d/c/ng;

    iget-short v1, p0, Lcom/nd/commplatform/d/c/lz;->d:S

    sget-object v2, Lcom/nd/commplatform/d/c/bp;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/nd/commplatform/d/c/ng;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/lz;->h()[B

    move-result-object v2

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/nd/commplatform/d/c/lz;->h:Lcom/nd/commplatform/d/c/qe;

    iget-object v6, p0, Lcom/nd/commplatform/d/c/lz;->a:Landroid/content/Context;

    invoke-virtual/range {v0 .. v6}, Lcom/nd/commplatform/d/c/qa;->a(Ljava/lang/String;[BLcom/nd/commplatform/d/c/pz;Ljava/util/HashMap;Lcom/nd/commplatform/d/c/qe;Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/nd/commplatform/d/c/lz;->f:I

    iget-object v0, p0, Lcom/nd/commplatform/d/c/lz;->e:Ljava/util/HashMap;

    iget v1, p0, Lcom/nd/commplatform/d/c/lz;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/nd/commplatform/d/c/lz;->f:I

    return v0
.end method

.method private h()[B
    .locals 4

    new-instance v0, Lcom/nd/commplatform/d/c/fq;

    const/4 v1, 0x2

    iget-short v2, p0, Lcom/nd/commplatform/d/c/lz;->d:S

    iget-object v3, p0, Lcom/nd/commplatform/d/c/lz;->a:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v3}, Lcom/nd/commplatform/d/c/fq;-><init>(BSLandroid/content/Context;)V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/lz;->i()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/fq;->a(Ljava/util/HashMap;)[B

    move-result-object v0

    return-object v0
.end method

.method private i()Ljava/util/HashMap;
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

    iget-object v2, p0, Lcom/nd/commplatform/d/c/lz;->a:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/nd/commplatform/d/c/nv;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "AccountType"

    iget v2, p0, Lcom/nd/commplatform/d/c/lz;->i:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AccountName"

    iget-object v2, p0, Lcom/nd/commplatform/d/c/lz;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ChannelId"

    iget-object v2, p0, Lcom/nd/commplatform/d/c/lz;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/nd/commplatform/d/c/pb;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/lz;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/nw;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/nd/commplatform/d/c/lz;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "AccountPass"

    iget-object v2, p0, Lcom/nd/commplatform/d/c/lz;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AutoLogin"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "AccountPass"

    iget-object v2, p0, Lcom/nd/commplatform/d/c/lz;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AutoLogin"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;ZLandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I
    .locals 2

    iput p1, p0, Lcom/nd/commplatform/d/c/lz;->i:I

    iput-object p2, p0, Lcom/nd/commplatform/d/c/lz;->j:Ljava/lang/String;

    iput-object p3, p0, Lcom/nd/commplatform/d/c/lz;->k:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/nd/commplatform/d/c/lz;->l:Z

    iput-object p5, p0, Lcom/nd/commplatform/d/c/lz;->a:Landroid/content/Context;

    iput-object p6, p0, Lcom/nd/commplatform/d/c/lz;->b:Lcom/nd/commplatform/NdCallbackListener;

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/lz;->a()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/lz;->c:Ljava/lang/String;

    const-string v1, "begin request data!"

    invoke-static {v0, v1, p5}, Lcom/nd/commplatform/d/c/nv;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/lz;->g()I

    move-result v0

    return v0
.end method
