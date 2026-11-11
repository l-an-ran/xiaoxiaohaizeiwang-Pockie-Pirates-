.class public Lcomndanalytics/x;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcomndanalytics/x$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field private static final h:Ljava/lang/String; = "FunstatiC"


# instance fields
.field private e:Lcomndanalytics/x$a;

.field private f:Ljava/lang/String;

.field private g:Landroid/content/Context;

.field private i:I

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcomndanalytics/x$a;

    invoke-direct {v0}, Lcomndanalytics/x$a;-><init>()V

    iput-object v0, p0, Lcomndanalytics/x;->e:Lcomndanalytics/x$a;

    const-string v0, ""

    iput-object v0, p0, Lcomndanalytics/x;->f:Ljava/lang/String;

    iput-object p1, p0, Lcomndanalytics/x;->g:Landroid/content/Context;

    iput p2, p0, Lcomndanalytics/x;->i:I

    iput-object p3, p0, Lcomndanalytics/x;->j:Ljava/lang/String;

    return-void
.end method

.method private static a([B)[B
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static a([BB)[B
    .locals 3

    const/16 v0, 0x18

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    array-length v1, v0

    rem-int v1, p1, v1

    aget-byte v2, v0, v1

    and-int/2addr v2, p1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    new-instance v2, Lcomndanalytics/n;

    invoke-direct {v2, v0}, Lcomndanalytics/n;-><init>([B)V

    :try_start_0
    invoke-virtual {v2, v1, p0}, Lcomndanalytics/n;->a([B[B)[B
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object p0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/security/InvalidAlgorithmParameterException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_0

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x2ft
        0x63t
        0x48t
        -0x6dt
        -0x2ft
        0x71t
        0xct
        -0x7et
        0x41t
        -0x6t
        0x18t
        0x32t
        0x73t
        -0x2t
        0x7ct
        0x7ft
        -0x3dt
        -0x69t
        0x58t
        -0x24t
        0x8t
        -0x30t
        0x5et
        0x2at
    .end array-data

    :array_1
    .array-data 1
        -0x6t
        0x32t
        -0x24t
        -0x69t
        -0x27t
        -0x3dt
        0x4ct
        0x6bt
    .end array-data
.end method

.method private b()B
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcomndanalytics/x;->g:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/16 v0, 0xa

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    const/16 v0, 0x1e

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x3

    :pswitch_0
    iget-object v0, p0, Lcomndanalytics/x;->e:Lcomndanalytics/x$a;

    int-to-byte v1, p1

    iput-byte v1, v0, Lcomndanalytics/x$a;->b:B

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcomndanalytics/x;->f:Ljava/lang/String;

    return-void
.end method

.method public a()[B
    .locals 12

    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    new-instance v2, Lorg/apache/http/util/ByteArrayBuffer;

    const/16 v0, 0x400

    invoke-direct {v2, v0}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    const/16 v0, 0x10

    new-array v3, v0, [B

    iget-object v0, p0, Lcomndanalytics/x;->e:Lcomndanalytics/x$a;

    iget-byte v0, v0, Lcomndanalytics/x$a;->a:B

    aput-byte v0, v3, v7

    iget-object v0, p0, Lcomndanalytics/x;->e:Lcomndanalytics/x$a;

    iget-byte v0, v0, Lcomndanalytics/x$a;->b:B

    aput-byte v0, v3, v8

    iget-object v0, p0, Lcomndanalytics/x;->e:Lcomndanalytics/x$a;

    iget-byte v0, v0, Lcomndanalytics/x$a;->c:B

    aput-byte v0, v3, v9

    iget-object v0, p0, Lcomndanalytics/x;->e:Lcomndanalytics/x$a;

    iget v1, p0, Lcomndanalytics/x;->i:I

    iput v1, v0, Lcomndanalytics/x$a;->d:I

    iget-object v0, p0, Lcomndanalytics/x;->e:Lcomndanalytics/x$a;

    iget v0, v0, Lcomndanalytics/x$a;->d:I

    invoke-static {v0}, Lcomndanalytics/o;->a(I)[B

    move-result-object v0

    invoke-static {v0, v7, v3, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x7

    iget-object v1, p0, Lcomndanalytics/x;->e:Lcomndanalytics/x$a;

    iget-byte v1, v1, Lcomndanalytics/x$a;->e:B

    aput-byte v1, v3, v0

    iget-object v0, p0, Lcomndanalytics/x;->e:Lcomndanalytics/x$a;

    invoke-direct {p0}, Lcomndanalytics/x;->b()B

    move-result v1

    iput-byte v1, v0, Lcomndanalytics/x$a;->f:B

    const/16 v0, 0x8

    iget-object v1, p0, Lcomndanalytics/x;->e:Lcomndanalytics/x$a;

    iget-byte v1, v1, Lcomndanalytics/x$a;->f:B

    aput-byte v1, v3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcomndanalytics/x;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcomndanalytics/x;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "FunstatiC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    new-instance v1, Lcomndanalytics/av;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "UTF-8"

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcomndanalytics/av;-><init>([B)V

    invoke-virtual {v1}, Lcomndanalytics/av;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iget-object v4, p0, Lcomndanalytics/x;->e:Lcomndanalytics/x$a;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x3

    invoke-virtual {v1, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, v4, Lcomndanalytics/x$a;->g:B

    iget-object v1, p0, Lcomndanalytics/x;->e:Lcomndanalytics/x$a;

    iget-byte v1, v1, Lcomndanalytics/x$a;->g:B

    iget-object v4, p0, Lcomndanalytics/x;->e:Lcomndanalytics/x$a;

    iget-byte v4, v4, Lcomndanalytics/x$a;->g:B

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "US-ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    iget-object v4, p0, Lcomndanalytics/x;->e:Lcomndanalytics/x$a;

    iget-object v4, v4, Lcomndanalytics/x$a;->h:[B

    const/4 v5, 0x0

    iget-object v6, p0, Lcomndanalytics/x;->e:Lcomndanalytics/x$a;

    iget-object v6, v6, Lcomndanalytics/x$a;->h:[B

    array-length v6, v6

    invoke-static {v0, v1, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x9

    iget-object v1, p0, Lcomndanalytics/x;->e:Lcomndanalytics/x$a;

    iget-byte v1, v1, Lcomndanalytics/x$a;->g:B

    aput-byte v1, v3, v0

    iget-object v0, p0, Lcomndanalytics/x;->e:Lcomndanalytics/x$a;

    iget-object v0, v0, Lcomndanalytics/x$a;->h:[B

    const/16 v1, 0xa

    invoke-static {v0, v7, v3, v1, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcomndanalytics/x;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcomndanalytics/x;->f:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcomndanalytics/x;->e:Lcomndanalytics/x$a;

    iget-byte v1, v1, Lcomndanalytics/x$a;->b:B

    if-nez v1, :cond_0

    :goto_1
    array-length v1, v3

    invoke-virtual {v2, v3, v7, v1}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    array-length v1, v0

    invoke-virtual {v2, v0, v7, v1}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    :goto_2
    invoke-virtual {v2}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v0

    :goto_3
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_3

    :catch_1
    move-exception v1

    new-array v4, v7, [B

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcomndanalytics/x;->e:Lcomndanalytics/x$a;

    iget-byte v1, v1, Lcomndanalytics/x$a;->b:B

    if-ne v1, v8, :cond_1

    invoke-static {v0}, Lcomndanalytics/x;->a([B)[B

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcomndanalytics/x;->e:Lcomndanalytics/x$a;

    iget-byte v1, v1, Lcomndanalytics/x$a;->b:B

    if-ne v1, v9, :cond_2

    iget-object v1, p0, Lcomndanalytics/x;->e:Lcomndanalytics/x$a;

    iget-byte v1, v1, Lcomndanalytics/x$a;->c:B

    invoke-static {v0, v1}, Lcomndanalytics/x;->a([BB)[B

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcomndanalytics/x;->e:Lcomndanalytics/x$a;

    iget-byte v1, v1, Lcomndanalytics/x$a;->b:B

    if-ne v1, v10, :cond_3

    invoke-static {v0}, Lcomndanalytics/x;->a([B)[B

    move-result-object v0

    iget-object v1, p0, Lcomndanalytics/x;->e:Lcomndanalytics/x$a;

    iget-byte v1, v1, Lcomndanalytics/x$a;->c:B

    invoke-static {v0, v1}, Lcomndanalytics/x;->a([BB)[B

    move-result-object v0

    goto :goto_1

    :cond_3
    aput-byte v7, v3, v8

    goto :goto_1

    :cond_4
    array-length v0, v3

    invoke-virtual {v2, v3, v7, v0}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    goto :goto_2
.end method

.method public b(I)V
    .locals 2

    iget-object v0, p0, Lcomndanalytics/x;->e:Lcomndanalytics/x$a;

    int-to-byte v1, p1

    iput-byte v1, v0, Lcomndanalytics/x$a;->c:B

    return-void
.end method
