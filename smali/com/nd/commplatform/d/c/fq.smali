.class public Lcom/nd/commplatform/d/c/fq;
.super Ljava/lang/Object;


# instance fields
.field private a:[B

.field private b:B

.field private c:S

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(BSLandroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fq;->a:[B

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/nd/commplatform/d/c/fq;->b:B

    iput-byte p1, p0, Lcom/nd/commplatform/d/c/fq;->b:B

    iput-short p2, p0, Lcom/nd/commplatform/d/c/fq;->c:S

    iput-object p3, p0, Lcom/nd/commplatform/d/c/fq;->d:Landroid/content/Context;

    return-void
.end method

.method private a(B)V
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fq;->a:[B

    const/16 v1, 0x22

    aput-byte p1, v0, v1

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 5

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, p2, 0x4

    if-lt v0, v1, :cond_0

    add-int/lit8 v0, p2, 0x4

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nd/commplatform/d/c/fq;->a:[B

    const/16 v3, 0x26

    const/4 v4, 0x4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private a(S)V
    .locals 4

    invoke-static {p1}, Lcom/nd/commplatform/d/c/qi;->a(S)[B

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fq;->a:[B

    const/16 v2, 0x20

    const/4 v3, 0x0

    aget-byte v3, v0, v3

    aput-byte v3, v1, v2

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fq;->a:[B

    const/16 v2, 0x21

    const/4 v3, 0x1

    aget-byte v0, v0, v3

    aput-byte v0, v1, v2

    return-void
.end method

.method private b()I
    .locals 4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x403d000000000000L    # 29.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fq;->a:[B

    const/16 v2, 0x25

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    return v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fq;->a:[B

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method private b(S)V
    .locals 4

    invoke-static {p1}, Lcom/nd/commplatform/d/c/qi;->a(S)[B

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fq;->a:[B

    const/16 v2, 0x23

    const/4 v3, 0x0

    aget-byte v3, v0, v3

    aput-byte v3, v1, v2

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fq;->a:[B

    const/16 v2, 0x24

    const/4 v3, 0x1

    aget-byte v0, v0, v3

    aput-byte v0, v1, v2

    return-void
.end method

.method private b(Ljava/util/HashMap;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2
.end method

.method private c()V
    .locals 4

    sget v0, Lcom/nd/commplatform/d/c/bs;->y:I

    invoke-static {v0}, Lcom/nd/commplatform/d/c/qi;->a(I)[B

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fq;->a:[B

    const/16 v2, 0x2a

    const/4 v3, 0x0

    aget-byte v3, v0, v3

    aput-byte v3, v1, v2

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fq;->a:[B

    const/16 v2, 0x2b

    const/4 v3, 0x1

    aget-byte v3, v0, v3

    aput-byte v3, v1, v2

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fq;->a:[B

    const/16 v2, 0x2c

    const/4 v3, 0x2

    aget-byte v3, v0, v3

    aput-byte v3, v1, v2

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fq;->a:[B

    const/16 v2, 0x2d

    const/4 v3, 0x3

    aget-byte v0, v0, v3

    aput-byte v0, v1, v2

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/fq;->a(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)[B
    .locals 1

    sget-object v0, Lcom/nd/commplatform/d/c/bs;->d:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nd/commplatform/d/c/fq;->b(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nd/commplatform/d/c/fq;->a(S)V

    iget-byte v0, p0, Lcom/nd/commplatform/d/c/fq;->b:B

    invoke-direct {p0, v0}, Lcom/nd/commplatform/d/c/fq;->a(B)V

    iget-short v0, p0, Lcom/nd/commplatform/d/c/fq;->c:S

    invoke-direct {p0, v0}, Lcom/nd/commplatform/d/c/fq;->b(S)V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/fq;->b()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/nd/commplatform/d/c/fq;->a(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/fq;->c()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fq;->a:[B

    return-object v0
.end method

.method public a(Ljava/util/HashMap;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/fq;->b(Ljava/util/HashMap;)[B

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/fq;->b([B)[B

    move-result-object v0

    move-object v1, v0

    :goto_0
    const/4 v0, 0x0

    check-cast v0, [B

    if-eqz v1, :cond_0

    array-length v0, v1

    if-lez v0, :cond_0

    invoke-static {v1}, Lcom/nd/commplatform/d/c/qk;->b([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/fq;->a(Ljava/lang/String;)[B

    move-result-object v0

    :goto_1
    if-nez v1, :cond_1

    :goto_2
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/fq;->a()[B

    move-result-object v0

    goto :goto_1

    :cond_1
    array-length v2, v0

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v2, v2, [B

    array-length v3, v0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    array-length v3, v1

    invoke-static {v1, v4, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v2

    goto :goto_2

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method public a([B)[B
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Lcom/nd/commplatform/d/c/fq;->b([B)[B

    move-result-object v2

    invoke-static {v2}, Lcom/nd/commplatform/d/c/qk;->b([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/fq;->a(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    array-length v1, v0

    array-length v3, v2

    add-int/2addr v1, v3

    new-array v1, v1, [B

    array-length v3, v0

    invoke-static {v0, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    array-length v3, v2

    invoke-static {v2, v4, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    goto :goto_0
.end method

.method public b([B)[B
    .locals 3

    iget-byte v0, p0, Lcom/nd/commplatform/d/c/fq;->b:B

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    :try_start_0
    new-instance v0, Lcom/nd/commplatform/d/c/qh;

    invoke-static {}, Lcom/nd/commplatform/d/c/pa;->a()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/qh;-><init>([B)V

    iget-byte v1, p0, Lcom/nd/commplatform/d/c/fq;->b:B

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-static {p1}, Lcom/nd/commplatform/d/c/pa;->a([B)[B

    move-result-object p1

    goto :goto_0

    :cond_2
    iget-byte v1, p0, Lcom/nd/commplatform/d/c/fq;->b:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/d/c/qh;->a([B)[B

    move-result-object p1

    goto :goto_0

    :cond_3
    iget-byte v1, p0, Lcom/nd/commplatform/d/c/fq;->b:B

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    invoke-static {p1}, Lcom/nd/commplatform/d/c/pa;->a([B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/qh;->a([B)[B

    move-result-object p1

    goto :goto_0

    :cond_4
    iget-byte v0, p0, Lcom/nd/commplatform/d/c/fq;->b:B

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fq;->d:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/nd/commplatform/d/c/pa;->a([BLandroid/content/Context;)[B
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_0

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
