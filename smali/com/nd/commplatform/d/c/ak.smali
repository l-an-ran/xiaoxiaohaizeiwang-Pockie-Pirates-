.class public Lcom/nd/commplatform/d/c/ak;
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

.field private h:Z

.field private i:Lcom/nd/commplatform/d/c/nx;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/u;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ak;->d:Ljava/util/HashMap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nd/commplatform/d/c/ak;->h:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ak;->j:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/ak;)I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/d/c/ak;->e:I

    return v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Lcom/nd/commplatform/d/c/qh;

    invoke-static {}, Lcom/nd/commplatform/d/c/pa;->a()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/nd/commplatform/d/c/qh;-><init>([B)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/nd/commplatform/d/c/qh;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/nd/commplatform/d/c/qj;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_0

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a([B)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ak;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/pa;->c(Landroid/content/Context;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/nd/commplatform/d/c/ql;->a(Ljava/security/Key;[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/qj;->a([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a()V
    .locals 2

    new-instance v0, Lcom/nd/commplatform/d/c/qe;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/qe;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ak;->g:Lcom/nd/commplatform/d/c/qe;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ak;->g:Lcom/nd/commplatform/d/c/qe;

    new-instance v1, Lcom/nd/commplatform/d/c/ak$1;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/ak$1;-><init>(Lcom/nd/commplatform/d/c/ak;)V

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/qe;->a(Lcom/nd/commplatform/d/c/qe$d;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ak;->g:Lcom/nd/commplatform/d/c/qe;

    new-instance v1, Lcom/nd/commplatform/d/c/ak$2;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/ak$2;-><init>(Lcom/nd/commplatform/d/c/ak;)V

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/qe;->a(Lcom/nd/commplatform/d/c/qe$a;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ak;->g:Lcom/nd/commplatform/d/c/qe;

    new-instance v1, Lcom/nd/commplatform/d/c/ak$3;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/ak$3;-><init>(Lcom/nd/commplatform/d/c/ak;)V

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/qe;->a(Lcom/nd/commplatform/d/c/qe$e;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/ak;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/ak;->b(I)V

    return-void
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/ak;)Lcom/nd/commplatform/d/c/fr;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ak;->f:Lcom/nd/commplatform/d/c/fr;

    return-object v0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ak;->f:Lcom/nd/commplatform/d/c/fr;

    const-string v1, "AF8A9DB49A86"

    invoke-static {v1}, Lcom/nd/commplatform/d/c/pa;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/fr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ak;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/nd/commplatform/d/c/pa;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/ak;->e()I

    return-void
.end method

.method private b(I)V
    .locals 6

    const/4 v5, 0x0

    const/4 v3, -0x3

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ak;->d:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/pz;

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/ak;->d()V

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/pz;->b()[B

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/pz;->b()[B

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ak;->f:Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {p0, v0, v3, v4}, Lcom/nd/commplatform/d/c/ak;->a(Lcom/nd/commplatform/d/c/fr;ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/pz;->b()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/nd/commplatform/d/c/fr;-><init>([B)V

    iput-object v1, p0, Lcom/nd/commplatform/d/c/ak;->f:Lcom/nd/commplatform/d/c/fr;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ak;->f:Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/fr;->j()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ak;->c:Ljava/lang/String;

    const-string v1, "Invalid data!"

    iget-object v2, p0, Lcom/nd/commplatform/d/c/ak;->a:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/nd/commplatform/d/c/nv;->c(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ak;->f:Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {p0, v0, v3, v4}, Lcom/nd/commplatform/d/c/ak;->a(Lcom/nd/commplatform/d/c/fr;ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ak;->f:Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/fr;->g()I

    move-result v0

    const-string v1, "accountlist code is"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch v0, :sswitch_data_0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ak;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "this error code is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nd/commplatform/d/c/ak;->a:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/nd/commplatform/d/c/nv;->c(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ak;->f:Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {p0, v1, v0, v4}, Lcom/nd/commplatform/d/c/ak;->a(Lcom/nd/commplatform/d/c/fr;ILjava/lang/Object;)V

    goto :goto_0

    :sswitch_0
    invoke-direct {p0}, Lcom/nd/commplatform/d/c/ak;->c()V

    goto :goto_0

    :sswitch_1
    sput-boolean v5, Lcom/nd/commplatform/d/c/bs;->p:Z

    sput-object v4, Lcom/nd/commplatform/d/c/bs;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ak;->f:Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {p0, v1, v0, v4}, Lcom/nd/commplatform/d/c/ak;->a(Lcom/nd/commplatform/d/c/fr;ILjava/lang/Object;)V

    goto :goto_0

    :sswitch_2
    iget-boolean v1, p0, Lcom/nd/commplatform/d/c/ak;->h:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/ak;->b()V

    iput-boolean v5, p0, Lcom/nd/commplatform/d/c/ak;->h:Z

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/nd/commplatform/d/c/ak;->f:Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {p0, v1, v0, v4}, Lcom/nd/commplatform/d/c/ak;->a(Lcom/nd/commplatform/d/c/fr;ILjava/lang/Object;)V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/nd/commplatform/d/c/ak;->c()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3ea -> :sswitch_2
        0x3ed -> :sswitch_3
    .end sparse-switch
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ak;->f:Lcom/nd/commplatform/d/c/fr;

    const-string v1, "AC9A8C8C969091B69B"

    invoke-static {v1}, Lcom/nd/commplatform/d/c/pa;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/fr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nd/commplatform/d/c/bs;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ak;->f:Lcom/nd/commplatform/d/c/fr;

    const-string v1, "AC9A8D899A8DAB96929A"

    invoke-static {v1}, Lcom/nd/commplatform/d/c/pa;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/fr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nd/commplatform/d/c/bs;->C:Ljava/lang/String;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ak;->f:Lcom/nd/commplatform/d/c/fr;

    const-string v1, "AC9A8D89969C9AAF9790919A"

    invoke-static {v1}, Lcom/nd/commplatform/d/c/pa;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/fr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nd/commplatform/d/c/bs;->o:Ljava/lang/String;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ak;->f:Lcom/nd/commplatform/d/c/fr;

    const-string v1, "BE8F8FB19E929A"

    invoke-static {v1}, Lcom/nd/commplatform/d/c/pa;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/fr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nd/commplatform/d/c/bs;->u:Ljava/lang/String;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ak;->f:Lcom/nd/commplatform/d/c/fr;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/nd/commplatform/d/c/ak;->a(Lcom/nd/commplatform/d/c/fr;ILjava/lang/Object;)V

    return-void
.end method

.method private d()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/nd/commplatform/d/c/qa;->a()Lcom/nd/commplatform/d/c/qa;

    move-result-object v0

    iget v1, p0, Lcom/nd/commplatform/d/c/ak;->e:I

    iget-object v2, p0, Lcom/nd/commplatform/d/c/ak;->g:Lcom/nd/commplatform/d/c/qe;

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/qa;->a(ILcom/nd/commplatform/d/c/qe;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ak;->d:Ljava/util/HashMap;

    iget v1, p0, Lcom/nd/commplatform/d/c/ak;->e:I

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

.method private e()I
    .locals 7

    new-instance v3, Lcom/nd/commplatform/d/c/pz;

    invoke-direct {v3}, Lcom/nd/commplatform/d/c/pz;-><init>()V

    invoke-static {}, Lcom/nd/commplatform/d/c/qa;->a()Lcom/nd/commplatform/d/c/qa;

    move-result-object v0

    invoke-static {}, Lcom/nd/commplatform/d/c/ng;->a()Lcom/nd/commplatform/d/c/ng;

    const/4 v1, 0x1

    sget-object v2, Lcom/nd/commplatform/d/c/bp;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/nd/commplatform/d/c/ng;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/ak;->f()[B

    move-result-object v2

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/nd/commplatform/d/c/ak;->g:Lcom/nd/commplatform/d/c/qe;

    iget-object v6, p0, Lcom/nd/commplatform/d/c/ak;->a:Landroid/content/Context;

    invoke-virtual/range {v0 .. v6}, Lcom/nd/commplatform/d/c/qa;->a(Ljava/lang/String;[BLcom/nd/commplatform/d/c/pz;Ljava/util/HashMap;Lcom/nd/commplatform/d/c/qe;Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/nd/commplatform/d/c/ak;->e:I

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ak;->d:Ljava/util/HashMap;

    iget v1, p0, Lcom/nd/commplatform/d/c/ak;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/nd/commplatform/d/c/ak;->e:I

    return v0
.end method

.method private f()[B
    .locals 4

    new-instance v0, Lcom/nd/commplatform/d/c/fq;

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/nd/commplatform/d/c/ak;->a:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v3}, Lcom/nd/commplatform/d/c/fq;-><init>(BSLandroid/content/Context;)V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/ak;->g()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/fq;->a(Ljava/util/HashMap;)[B

    move-result-object v0

    return-object v0
.end method

.method private g()Ljava/util/HashMap;
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

    iget-object v2, p0, Lcom/nd/commplatform/d/c/ak;->a:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/nd/commplatform/d/c/nv;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    new-instance v0, Lcom/nd/commplatform/d/c/ns;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/ns;-><init>()V

    const-string v1, "AF8A9DB49A86"

    invoke-static {v1}, Lcom/nd/commplatform/d/c/pa;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/ak;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/nd/commplatform/d/c/pa;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/ns;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AC969891"

    invoke-static {v1}, Lcom/nd/commplatform/d/c/pa;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/nd/commplatform/d/c/pa;->a()[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/nd/commplatform/d/c/ak;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/ns;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "B6B2ACB6"

    invoke-static {v1}, Lcom/nd/commplatform/d/c/pa;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/ak;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/nd/commplatform/d/c/nx;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/ns;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "B6B2BAB6"

    invoke-static {v1}, Lcom/nd/commplatform/d/c/pa;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/ak;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/ns;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AF939E8B99908D92"

    invoke-static {v1}, Lcom/nd/commplatform/d/c/pa;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "8"

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/ns;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AC9C8D9A9A91A8969B8B97"

    invoke-static {v1}, Lcom/nd/commplatform/d/c/pa;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/ak;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/nd/commplatform/d/c/pa;->f(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/ns;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AC9C8D9A9A91B79A9698978B"

    invoke-static {v1}, Lcom/nd/commplatform/d/c/pa;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/ak;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/nd/commplatform/d/c/pa;->g(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/ns;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AF9790919AAB868F9A"

    invoke-static {v1}, Lcom/nd/commplatform/d/c/pa;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/nd/commplatform/d/c/pa;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/ns;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AC969891BE8F8FB49A86"

    invoke-static {v1}, Lcom/nd/commplatform/d/c/pa;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/nd/commplatform/d/c/bs;->E:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/nd/commplatform/d/c/ak;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/ns;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AF939E8B99908D92A99A8D8C969091"

    invoke-static {v1}, Lcom/nd/commplatform/d/c/pa;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.2.1.2"

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/ns;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 3

    new-instance v0, Lcom/nd/commplatform/d/c/nx;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/nx;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ak;->i:Lcom/nd/commplatform/d/c/nx;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ak;->i:Lcom/nd/commplatform/d/c/nx;

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/d/c/nx;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ak;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ak;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ak;->f:Lcom/nd/commplatform/d/c/fr;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/nd/commplatform/d/c/ak;->a(Lcom/nd/commplatform/d/c/fr;ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/nd/commplatform/d/c/ak;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/ak;->b:Lcom/nd/commplatform/NdCallbackListener;

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/ak;->a()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ak;->c:Ljava/lang/String;

    const-string v1, "begin request data!"

    invoke-static {v0, v1, p1}, Lcom/nd/commplatform/d/c/nv;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/ak;->e()I

    goto :goto_0
.end method
