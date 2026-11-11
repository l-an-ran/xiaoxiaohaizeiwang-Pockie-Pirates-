.class public Lcom/nd/commplatform/d/c/fr;
.super Ljava/lang/Object;


# instance fields
.field private a:[B

.field private b:[B

.field private c:B

.field private d:S

.field private e:I

.field private f:Ljava/lang/String;

.field private g:B

.field private h:Z

.field private i:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>([B)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fr;->a:[B

    iput-object v1, p0, Lcom/nd/commplatform/d/c/fr;->b:[B

    iput-object v1, p0, Lcom/nd/commplatform/d/c/fr;->i:Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/fr;->a([B)V

    return-void
.end method

.method private a([B)V
    .locals 4

    const/16 v3, 0x20

    const/4 v2, 0x0

    array-length v0, p1

    add-int/lit8 v0, v0, -0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fr;->b:[B

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fr;->a:[B

    invoke-static {p1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fr;->b:[B

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fr;->b:[B

    array-length v1, v1

    invoke-static {p1, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/fr;->k()V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/fr;->l()V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/fr;->m()V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/fr;->n()V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/fr;->o()V

    return-void
.end method

.method private k()V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fr;->a:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lcom/nd/commplatform/d/c/fr;->c:B

    return-void
.end method

.method private l()V
    .locals 5

    const/4 v4, 0x2

    new-array v0, v4, [B

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fr;->a:[B

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Lcom/nd/commplatform/d/c/qi;->e([B)S

    move-result v0

    iput-short v0, p0, Lcom/nd/commplatform/d/c/fr;->d:S

    return-void
.end method

.method private m()V
    .locals 5

    const/4 v4, 0x4

    new-array v0, v4, [B

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fr;->a:[B

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Lcom/nd/commplatform/d/c/qi;->c([B)I

    move-result v0

    iput v0, p0, Lcom/nd/commplatform/d/c/fr;->e:I

    return-void
.end method

.method private n()V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fr;->a:[B

    const/4 v1, 0x7

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lcom/nd/commplatform/d/c/fr;->g:B

    return-void
.end method

.method private o()V
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fr;->b:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fr;->b:[B

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    iput-boolean v5, p0, Lcom/nd/commplatform/d/c/fr;->h:Z

    :cond_1
    invoke-direct {p0}, Lcom/nd/commplatform/d/c/fr;->p()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nd/commplatform/d/c/fr;->a:[B

    const/16 v4, 0x8

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    iget-object v2, p0, Lcom/nd/commplatform/d/c/fr;->a:[B

    const/16 v3, 0x9

    aget-byte v2, v2, v3

    aput-byte v2, v1, v5

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/nd/commplatform/d/c/fr;->a:[B

    const/16 v4, 0xa

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/nd/commplatform/d/c/fr;->a:[B

    const/16 v4, 0xb

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v5, p0, Lcom/nd/commplatform/d/c/fr;->h:Z

    :cond_2
    return-void
.end method

.method private p()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fr;->b:[B

    invoke-static {v0}, Lcom/nd/commplatform/d/c/qk;->a([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/qj;->a([B)Ljava/lang/String;

    move-result-object v0

    iget-byte v1, p0, Lcom/nd/commplatform/d/c/fr;->g:B

    iget-byte v2, p0, Lcom/nd/commplatform/d/c/fr;->g:B

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fr;->i:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/fr;->c()Lorg/json/JSONObject;

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fr;->i:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fr;->i:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fr;->i:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()[B
    .locals 3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fr;->b:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fr;->b:[B

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fr;->b:[B

    :goto_0
    return-object v0

    :cond_1
    iget-byte v0, p0, Lcom/nd/commplatform/d/c/fr;->c:B

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fr;->b:[B

    goto :goto_0

    :cond_2
    :try_start_0
    new-instance v0, Lcom/nd/commplatform/d/c/qh;

    invoke-static {}, Lcom/nd/commplatform/d/c/pa;->a()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/qh;-><init>([B)V

    iget-byte v1, p0, Lcom/nd/commplatform/d/c/fr;->c:B

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fr;->b:[B

    invoke-static {v0}, Lcom/nd/commplatform/d/c/pa;->b([B)[B

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-byte v1, p0, Lcom/nd/commplatform/d/c/fr;->c:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fr;->b:[B

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/qh;->b([B)[B

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-byte v1, p0, Lcom/nd/commplatform/d/c/fr;->c:B

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fr;->b:[B

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/qh;->b([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/pa;->b([B)[B
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
    move-exception v0

    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fr;->b:[B

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_1

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_1

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public b()Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/fr;->a()[B

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v0, v2

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fr;->i:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/fr;->c()Lorg/json/JSONObject;

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fr;->i:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fr;->i:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fr;->i:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Lorg/json/JSONObject;
    .locals 2

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/fr;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/nd/commplatform/d/c/fr;->i:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fr;->i:Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public d()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/fr;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public e()B
    .locals 1

    iget-byte v0, p0, Lcom/nd/commplatform/d/c/fr;->c:B

    return v0
.end method

.method public f()I
    .locals 1

    iget-short v0, p0, Lcom/nd/commplatform/d/c/fr;->d:S

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/d/c/fr;->e:I

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fr;->f:Ljava/lang/String;

    return-object v0
.end method

.method public i()B
    .locals 1

    iget-byte v0, p0, Lcom/nd/commplatform/d/c/fr;->g:B

    return v0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nd/commplatform/d/c/fr;->h:Z

    return v0
.end method
