.class public Lcom/nd/commplatform/d/c/ab;
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

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/u;-><init>()V

    const/16 v0, 0x12

    iput-short v0, p0, Lcom/nd/commplatform/d/c/ab;->d:S

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ab;->e:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/ab;)I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/d/c/ab;->f:I

    return v0
.end method

.method private a()V
    .locals 2

    new-instance v0, Lcom/nd/commplatform/d/c/qe;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/qe;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ab;->h:Lcom/nd/commplatform/d/c/qe;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ab;->h:Lcom/nd/commplatform/d/c/qe;

    new-instance v1, Lcom/nd/commplatform/d/c/ab$1;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/ab$1;-><init>(Lcom/nd/commplatform/d/c/ab;)V

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/qe;->a(Lcom/nd/commplatform/d/c/qe$d;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ab;->h:Lcom/nd/commplatform/d/c/qe;

    new-instance v1, Lcom/nd/commplatform/d/c/ab$2;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/ab$2;-><init>(Lcom/nd/commplatform/d/c/ab;)V

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/qe;->a(Lcom/nd/commplatform/d/c/qe$a;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ab;->h:Lcom/nd/commplatform/d/c/qe;

    new-instance v1, Lcom/nd/commplatform/d/c/ab$3;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/ab$3;-><init>(Lcom/nd/commplatform/d/c/ab;)V

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/qe;->a(Lcom/nd/commplatform/d/c/qe$e;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/ab;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/ab;->b(I)V

    return-void
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/ab;)Lcom/nd/commplatform/d/c/fr;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ab;->g:Lcom/nd/commplatform/d/c/fr;

    return-object v0
.end method

.method private b()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/nd/commplatform/d/c/qa;->a()Lcom/nd/commplatform/d/c/qa;

    move-result-object v0

    iget v1, p0, Lcom/nd/commplatform/d/c/ab;->f:I

    iget-object v2, p0, Lcom/nd/commplatform/d/c/ab;->h:Lcom/nd/commplatform/d/c/qe;

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/qa;->a(ILcom/nd/commplatform/d/c/qe;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ab;->e:Ljava/util/HashMap;

    iget v1, p0, Lcom/nd/commplatform/d/c/ab;->f:I

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

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ab;->e:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/pz;

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/ab;->b()V

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/pz;->b()[B

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/pz;->b()[B

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ab;->g:Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {p0, v0, v3, v4}, Lcom/nd/commplatform/d/c/ab;->a(Lcom/nd/commplatform/d/c/fr;ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/pz;->b()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/nd/commplatform/d/c/fr;-><init>([B)V

    iput-object v1, p0, Lcom/nd/commplatform/d/c/ab;->g:Lcom/nd/commplatform/d/c/fr;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ab;->g:Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/fr;->j()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ab;->c:Ljava/lang/String;

    const-string v1, "Invalid data!"

    iget-object v2, p0, Lcom/nd/commplatform/d/c/ab;->a:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/nd/commplatform/d/c/nv;->c(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ab;->g:Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {p0, v0, v3, v4}, Lcom/nd/commplatform/d/c/ab;->a(Lcom/nd/commplatform/d/c/fr;ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ab;->g:Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/fr;->g()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v1, p0, Lcom/nd/commplatform/d/c/ab;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "this error code is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nd/commplatform/d/c/ab;->a:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/nd/commplatform/d/c/nv;->c(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :goto_1
    iget-object v1, p0, Lcom/nd/commplatform/d/c/ab;->g:Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {p0, v1, v0, v4}, Lcom/nd/commplatform/d/c/ab;->a(Lcom/nd/commplatform/d/c/fr;ILjava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/nd/commplatform/d/c/ab;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ab;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/e;->b(Landroid/content/Context;)Z

    :goto_2
    iget-object v1, p0, Lcom/nd/commplatform/d/c/ab;->c:Ljava/lang/String;

    const-string v2, "success request data!"

    iget-object v3, p0, Lcom/nd/commplatform/d/c/ab;->a:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/nd/commplatform/d/c/nv;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/nd/commplatform/d/c/ab;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/ab;->i:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/nd/commplatform/d/c/e;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    goto :goto_2

    :pswitch_2
    iget-object v1, p0, Lcom/nd/commplatform/d/c/ab;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "this error code is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nd/commplatform/d/c/ab;->a:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/nd/commplatform/d/c/nv;->c(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/nd/commplatform/d/c/bs;->p:Z

    sput-object v4, Lcom/nd/commplatform/d/c/bs;->d:Ljava/lang/String;

    goto :goto_1

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

    iget-short v1, p0, Lcom/nd/commplatform/d/c/ab;->d:S

    sget-object v2, Lcom/nd/commplatform/d/c/bp;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/nd/commplatform/d/c/ng;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/ab;->d()[B

    move-result-object v2

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/nd/commplatform/d/c/ab;->h:Lcom/nd/commplatform/d/c/qe;

    iget-object v6, p0, Lcom/nd/commplatform/d/c/ab;->a:Landroid/content/Context;

    invoke-virtual/range {v0 .. v6}, Lcom/nd/commplatform/d/c/qa;->a(Ljava/lang/String;[BLcom/nd/commplatform/d/c/pz;Ljava/util/HashMap;Lcom/nd/commplatform/d/c/qe;Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/nd/commplatform/d/c/ab;->f:I

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ab;->e:Ljava/util/HashMap;

    iget v1, p0, Lcom/nd/commplatform/d/c/ab;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/nd/commplatform/d/c/ab;->f:I

    return v0
.end method

.method private d()[B
    .locals 4

    new-instance v0, Lcom/nd/commplatform/d/c/fq;

    const/4 v1, 0x0

    iget-short v2, p0, Lcom/nd/commplatform/d/c/ab;->d:S

    iget-object v3, p0, Lcom/nd/commplatform/d/c/ab;->a:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v3}, Lcom/nd/commplatform/d/c/fq;-><init>(BSLandroid/content/Context;)V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/ab;->e()Ljava/util/HashMap;

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

    iget-object v2, p0, Lcom/nd/commplatform/d/c/ab;->a:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/nd/commplatform/d/c/nv;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "UserName"

    iget-object v2, p0, Lcom/nd/commplatform/d/c/ab;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I
    .locals 2

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ab;->i:Ljava/lang/String;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/ab;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/nd/commplatform/d/c/ab;->b:Lcom/nd/commplatform/NdCallbackListener;

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/ab;->a()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ab;->c:Ljava/lang/String;

    const-string v1, "begin request data!"

    invoke-static {v0, v1, p2}, Lcom/nd/commplatform/d/c/nv;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/ab;->c()I

    move-result v0

    return v0
.end method
