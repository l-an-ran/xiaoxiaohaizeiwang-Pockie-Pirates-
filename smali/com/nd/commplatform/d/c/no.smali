.class public Lcom/nd/commplatform/d/c/no;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "GB2Alpha"

.field private static final b:[I

.field private static c:[[C

.field private static d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1a

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/nd/commplatform/d/c/no;->b:[I

    return-void

    :array_0
    .array-data 4
        0xb0a1
        0xb0c5
        0xb2c1
        0xb4ee
        0xb6ea
        0xb7a2
        0xb8c1
        0xb9fe
        0xbbf7
        0xbbf7
        0xbfa6
        0xc0ac
        0xc2e8
        0xc4c3
        0xc5b6
        0xc5be
        0xc6da
        0xc8bb
        0xc8f6
        0xcbfa
        0xcdda
        0xcdda
        0xcdda
        0xcef4
        0xd1b9
        0xd4d1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;C)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/nd/commplatform/d/c/no;->d:[Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nd/commplatform/d/c/no;->c:[[C

    if-nez v0, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/nd/commplatform/d/c/no;->a(Landroid/content/Context;)V

    :cond_1
    sget-object v0, Lcom/nd/commplatform/d/c/no;->c:[[C

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    move v3, v1

    move v0, v1

    :goto_0
    if-gt v3, v2, :cond_3

    add-int v0, v3, v2

    div-int/lit8 v0, v0, 0x2

    sget-object v4, Lcom/nd/commplatform/d/c/no;->c:[[C

    aget-object v4, v4, v0

    aget-char v4, v4, v5

    if-le v4, p1, :cond_2

    add-int/lit8 v2, v0, -0x1

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/nd/commplatform/d/c/no;->c:[[C

    aget-object v3, v3, v0

    aget-char v3, v3, v5

    if-ge v3, p1, :cond_3

    add-int/lit8 v3, v0, 0x1

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/nd/commplatform/d/c/no;->c:[[C

    array-length v2, v2

    if-ge v0, v2, :cond_4

    sget-object v2, Lcom/nd/commplatform/d/c/no;->c:[[C

    aget-object v2, v2, v0

    aget-char v2, v2, v5

    if-eq v2, p1, :cond_5

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_5
    sget-object v2, Lcom/nd/commplatform/d/c/no;->d:[Ljava/lang/String;

    sget-object v3, Lcom/nd/commplatform/d/c/no;->c:[[C

    aget-object v0, v3, v0

    aget-char v0, v0, v1

    aget-object v0, v2, v0

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/nd/commplatform/d/c/no;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/nd/commplatform/d/c/jo$g;->a:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    new-instance v3, Ljava/util/zip/ZipInputStream;

    invoke-direct {v3, v2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    :cond_0
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v3}, Lcom/nd/commplatform/d/c/no;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    if-nez v0, :cond_1

    :goto_1
    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/nd/commplatform/d/c/no;->b(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nd/commplatform/d/c/no;->d:[Ljava/lang/String;

    sget-object v0, Lcom/nd/commplatform/d/c/no;->d:[Ljava/lang/String;

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/nd/commplatform/d/c/no;->d:[Ljava/lang/String;

    :cond_0
    invoke-static {p0}, Lcom/nd/commplatform/d/c/no;->c(Landroid/content/Context;)[[C

    move-result-object v0

    sput-object v0, Lcom/nd/commplatform/d/c/no;->c:[[C

    sget-object v0, Lcom/nd/commplatform/d/c/no;->c:[[C

    if-nez v0, :cond_1

    filled-new-array {v1, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[C

    sput-object v0, Lcom/nd/commplatform/d/c/no;->c:[[C

    :cond_1
    return-void
.end method

.method private static a(Ljava/io/InputStream;)[B
    .locals 4

    const/16 v1, 0x5000

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-array v1, v1, [B

    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-gez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object v1

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object p1

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {p0, v0}, Lcom/nd/commplatform/d/c/no;->a(Landroid/content/Context;C)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {p0, v3}, Lcom/nd/commplatform/d/c/no;->a(Landroid/content/Context;C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "py.txt"

    const-string v2, "US-ASCII"

    invoke-static {p0, v1, v2}, Lcom/nd/commplatform/d/c/no;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-nez v1, :cond_0

    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v0

    goto :goto_0

    :cond_0
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nd/commplatform/d/c/no;->d:[Ljava/lang/String;

    sget-object v0, Lcom/nd/commplatform/d/c/no;->d:[Ljava/lang/String;

    goto :goto_1
.end method

.method private static c(Landroid/content/Context;)[[C
    .locals 7

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    const-string v1, "code.txt"

    const-string v3, "UTF-8"

    invoke-static {p0, v1, v3}, Lcom/nd/commplatform/d/c/no;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-nez v1, :cond_0

    check-cast v0, [[C

    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v0

    goto :goto_0

    :cond_0
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v0, v3

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[C

    move v1, v2

    :goto_2
    array-length v4, v0

    if-ge v1, v4, :cond_1

    aget-object v4, v0, v1

    mul-int/lit8 v5, v1, 0x2

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-char v5, v5

    aput-char v5, v4, v2

    aget-object v4, v0, v1

    const/4 v5, 0x1

    mul-int/lit8 v6, v1, 0x2

    add-int/lit8 v6, v6, 0x1

    aget-object v6, v3, v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aput-char v6, v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    sput-object v0, Lcom/nd/commplatform/d/c/no;->c:[[C

    sget-object v0, Lcom/nd/commplatform/d/c/no;->c:[[C

    goto :goto_1
.end method
