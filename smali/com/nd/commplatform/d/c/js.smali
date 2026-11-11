.class public Lcom/nd/commplatform/d/c/js;
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

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/u;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/js;->d:Ljava/util/HashMap;

    const/16 v0, 0xe

    iput-short v0, p0, Lcom/nd/commplatform/d/c/js;->h:S

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/js;)I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/d/c/js;->e:I

    return v0
.end method

.method private a()V
    .locals 2

    new-instance v0, Lcom/nd/commplatform/d/c/qe;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/qe;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/js;->g:Lcom/nd/commplatform/d/c/qe;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/js;->g:Lcom/nd/commplatform/d/c/qe;

    new-instance v1, Lcom/nd/commplatform/d/c/js$1;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/js$1;-><init>(Lcom/nd/commplatform/d/c/js;)V

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/qe;->a(Lcom/nd/commplatform/d/c/qe$d;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/js;->g:Lcom/nd/commplatform/d/c/qe;

    new-instance v1, Lcom/nd/commplatform/d/c/js$2;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/js$2;-><init>(Lcom/nd/commplatform/d/c/js;)V

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/qe;->a(Lcom/nd/commplatform/d/c/qe$a;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/js;->g:Lcom/nd/commplatform/d/c/qe;

    new-instance v1, Lcom/nd/commplatform/d/c/js$3;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/js$3;-><init>(Lcom/nd/commplatform/d/c/js;)V

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/qe;->a(Lcom/nd/commplatform/d/c/qe$e;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/js;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/js;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/js;Lcom/nd/commplatform/d/c/fr;ILjava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/nd/commplatform/d/c/js;->a(Lcom/nd/commplatform/d/c/fr;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/js;)Lcom/nd/commplatform/d/c/fr;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/js;->f:Lcom/nd/commplatform/d/c/fr;

    return-object v0
.end method

.method private b()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/nd/commplatform/d/c/qa;->a()Lcom/nd/commplatform/d/c/qa;

    move-result-object v0

    iget v1, p0, Lcom/nd/commplatform/d/c/js;->e:I

    iget-object v2, p0, Lcom/nd/commplatform/d/c/js;->g:Lcom/nd/commplatform/d/c/qe;

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/qa;->a(ILcom/nd/commplatform/d/c/qe;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/js;->d:Ljava/util/HashMap;

    iget v1, p0, Lcom/nd/commplatform/d/c/js;->e:I

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

    iget-object v0, p0, Lcom/nd/commplatform/d/c/js;->d:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/pz;

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/js;->b()V

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/pz;->b()[B

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/pz;->b()[B

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/js;->f:Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {p0, v0, v3, v4}, Lcom/nd/commplatform/d/c/js;->a(Lcom/nd/commplatform/d/c/fr;ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/pz;->b()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/nd/commplatform/d/c/fr;-><init>([B)V

    iput-object v1, p0, Lcom/nd/commplatform/d/c/js;->f:Lcom/nd/commplatform/d/c/fr;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/js;->f:Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/fr;->j()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/js;->c:Ljava/lang/String;

    const-string v1, "Invalid data!"

    iget-object v2, p0, Lcom/nd/commplatform/d/c/js;->a:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/nd/commplatform/d/c/nv;->c(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/js;->f:Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {p0, v0, v3, v4}, Lcom/nd/commplatform/d/c/js;->a(Lcom/nd/commplatform/d/c/fr;ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nd/commplatform/d/c/js;->f:Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/fr;->g()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v1, p0, Lcom/nd/commplatform/d/c/js;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "this error code is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nd/commplatform/d/c/js;->a:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/nd/commplatform/d/c/nv;->c(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :goto_1
    invoke-direct {p0, v0}, Lcom/nd/commplatform/d/c/js;->c(I)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/nd/commplatform/d/c/js;->c:Ljava/lang/String;

    const-string v2, "success request data!"

    iget-object v3, p0, Lcom/nd/commplatform/d/c/js;->a:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/nd/commplatform/d/c/nv;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/nd/commplatform/d/c/js;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "this error code is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nd/commplatform/d/c/js;->a:Landroid/content/Context;

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

    const/16 v1, 0xe

    sget-object v2, Lcom/nd/commplatform/d/c/bp;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/nd/commplatform/d/c/ng;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/js;->d()[B

    move-result-object v2

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/nd/commplatform/d/c/js;->g:Lcom/nd/commplatform/d/c/qe;

    iget-object v6, p0, Lcom/nd/commplatform/d/c/js;->a:Landroid/content/Context;

    invoke-virtual/range {v0 .. v6}, Lcom/nd/commplatform/d/c/qa;->a(Ljava/lang/String;[BLcom/nd/commplatform/d/c/pz;Ljava/util/HashMap;Lcom/nd/commplatform/d/c/qe;Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/nd/commplatform/d/c/js;->e:I

    iget-object v0, p0, Lcom/nd/commplatform/d/c/js;->d:Ljava/util/HashMap;

    iget v1, p0, Lcom/nd/commplatform/d/c/js;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/nd/commplatform/d/c/js;->e:I

    return v0
.end method

.method private c(I)V
    .locals 5

    new-instance v0, Lcom/nd/commplatform/entry/NdIcon;

    invoke-direct {v0}, Lcom/nd/commplatform/entry/NdIcon;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/entry/NdIcon;->setImg(Landroid/graphics/Bitmap;)V

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/nd/commplatform/d/c/js;->f:Lcom/nd/commplatform/d/c/fr;

    const-string v2, "IconData"

    invoke-virtual {v1, v2}, Lcom/nd/commplatform/d/c/fr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/js;->f:Lcom/nd/commplatform/d/c/fr;

    const-string v3, "CheckSum"

    invoke-virtual {v2, v3}, Lcom/nd/commplatform/d/c/fr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "ffffffffffffffffffffffffffffffff"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Lcom/nd/commplatform/d/c/qg;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/nd/commplatform/d/c/pa;->c([B)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/entry/NdIcon;->setImg(Landroid/graphics/Bitmap;)V

    :cond_0
    invoke-virtual {v0, v2}, Lcom/nd/commplatform/entry/NdIcon;->setCheckSum(Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/entry/NdIcon;->setDimension(I)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/js;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/entry/NdIcon;->setId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/js;->f:Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {p0, v1, p1, v0}, Lcom/nd/commplatform/d/c/js;->a(Lcom/nd/commplatform/d/c/fr;ILjava/lang/Object;)V

    return-void
.end method

.method private d()[B
    .locals 4

    new-instance v0, Lcom/nd/commplatform/d/c/fq;

    const/4 v1, 0x0

    const/16 v2, 0xe

    iget-object v3, p0, Lcom/nd/commplatform/d/c/js;->a:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v3}, Lcom/nd/commplatform/d/c/fq;-><init>(BSLandroid/content/Context;)V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/js;->e()Ljava/util/HashMap;

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

    iget-object v2, p0, Lcom/nd/commplatform/d/c/js;->a:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/nd/commplatform/d/c/nv;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    new-instance v0, Lcom/nd/commplatform/d/c/ns;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/ns;-><init>()V

    const-string v1, "CheckSum"

    iget-object v2, p0, Lcom/nd/commplatform/d/c/js;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/ns;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AppId"

    iget-object v2, p0, Lcom/nd/commplatform/d/c/js;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/ns;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I
    .locals 2

    iput-object p1, p0, Lcom/nd/commplatform/d/c/js;->j:Ljava/lang/String;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/js;->i:Ljava/lang/String;

    iput-object p3, p0, Lcom/nd/commplatform/d/c/js;->a:Landroid/content/Context;

    iput-object p4, p0, Lcom/nd/commplatform/d/c/js;->b:Lcom/nd/commplatform/NdCallbackListener;

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/js;->a()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/js;->c:Ljava/lang/String;

    const-string v1, "begin request data!"

    invoke-static {v0, v1, p3}, Lcom/nd/commplatform/d/c/nv;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/js;->c()I

    move-result v0

    return v0
.end method
