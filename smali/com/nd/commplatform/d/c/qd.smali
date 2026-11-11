.class Lcom/nd/commplatform/d/c/qd;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/net/HttpURLConnection;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static g:J

.field private static h:Z

.field private static i:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nd/commplatform/d/c/qd;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nd/commplatform/d/c/qd;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nd/commplatform/d/c/qd;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nd/commplatform/d/c/qd;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nd/commplatform/d/c/qd;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nd/commplatform/d/c/qd;->f:Ljava/util/Map;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/nd/commplatform/d/c/qd;->g:J

    const/4 v0, 0x0

    sput-boolean v0, Lcom/nd/commplatform/d/c/qd;->h:Z

    const/16 v0, 0x64

    sput v0, Lcom/nd/commplatform/d/c/qd;->i:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(ILjava/net/HttpURLConnection;Ljava/lang/String;Lcom/nd/commplatform/d/c/qe;)I
    .locals 8

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/4 v0, -0x1

    if-eq v3, v0, :cond_0

    const/4 v1, 0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move v2, p1

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/nd/commplatform/d/c/qd;->a(IIILjava/lang/Object;JLcom/nd/commplatform/d/c/qe;)V

    :cond_0
    return v3
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/qd;ILjava/net/HttpURLConnection;Ljava/lang/String;Lcom/nd/commplatform/d/c/qe;)I
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nd/commplatform/d/c/qd;->a(ILjava/net/HttpURLConnection;Ljava/lang/String;Lcom/nd/commplatform/d/c/qe;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/qd;Ljava/lang/String;ZILjava/lang/String;Lcom/nd/commplatform/d/c/qe;)J
    .locals 2

    invoke-direct/range {p0 .. p5}, Lcom/nd/commplatform/d/c/qd;->a(Ljava/lang/String;ZILjava/lang/String;Lcom/nd/commplatform/d/c/qe;)J

    move-result-wide v0

    return-wide v0
.end method

.method private a(Ljava/lang/String;ZILjava/lang/String;Lcom/nd/commplatform/d/c/qe;)J
    .locals 10

    const-wide/16 v8, -0x1

    const/4 v1, -0x1

    const/4 v3, -0x4

    const-wide/16 v5, 0x0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-wide v5

    :catch_0
    move-exception v4

    move-object v0, p0

    move v2, p3

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/nd/commplatform/d/c/qd;->a(IIILjava/lang/Object;JLcom/nd/commplatform/d/c/qe;)V

    move-wide v5, v8

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v4

    move-object v0, p0

    move v2, p3

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/nd/commplatform/d/c/qd;->a(IIILjava/lang/Object;JLcom/nd/commplatform/d/c/qe;)V

    move-wide v5, v8

    goto :goto_0
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/qd;Ljava/lang/String;ILjava/lang/String;Lcom/nd/commplatform/d/c/qe;)Ljava/io/RandomAccessFile;
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nd/commplatform/d/c/qd;->a(Ljava/lang/String;ILjava/lang/String;Lcom/nd/commplatform/d/c/qe;)Ljava/io/RandomAccessFile;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;ILjava/lang/String;Lcom/nd/commplatform/d/c/qe;)Ljava/io/RandomAccessFile;
    .locals 8

    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v4

    const/4 v1, -0x1

    const/4 v3, -0x4

    const-wide/16 v5, 0x0

    move-object v0, p0

    move v2, p2

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/nd/commplatform/d/c/qd;->a(IIILjava/lang/Object;JLcom/nd/commplatform/d/c/qe;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/qd;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/nd/commplatform/d/c/qd;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    move v0, v1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ltz v3, :cond_1

    const/16 v2, 0x7f

    if-gt v3, v2, :cond_1

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-array v2, v1, [B

    :try_start_0
    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_2
    move v3, v1

    :goto_3
    array-length v4, v2

    if-lt v3, v4, :cond_2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    aget-byte v4, v2, v3

    if-gez v4, :cond_3

    add-int/lit16 v4, v4, 0x100

    :cond_3
    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v3, -0x1

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_1

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_1

    const/4 v1, 0x0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_2
    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_3

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_3
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_4

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/untitle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/net/HttpURLConnection;IILcom/nd/commplatform/d/c/qe;Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/net/HttpURLConnection;",
            "II",
            "Lcom/nd/commplatform/d/c/qe;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    const/16 v0, 0x12d

    if-eq p4, v0, :cond_0

    const/16 v0, 0x12e

    if-ne p4, v0, :cond_1

    :cond_0
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->disconnect()V

    const-string v0, "location"

    invoke-virtual {p3, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/nd/commplatform/d/c/qd;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, "%20"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/nd/commplatform/d/c/qd;->e:Ljava/util/Map;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    move-object v0, p0

    move-object v1, p1

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/nd/commplatform/d/c/qd;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;ILcom/nd/commplatform/d/c/qe;)Ljava/net/HttpURLConnection;

    move-result-object p3

    invoke-interface/range {p8 .. p8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v1, 0x5

    const/4 v3, 0x0

    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    move-object v0, p0

    move v2, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/nd/commplatform/d/c/qd;->a(IIILjava/lang/Object;JLcom/nd/commplatform/d/c/qe;)V

    invoke-virtual {p3, p7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/4 v1, 0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move v2, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/nd/commplatform/d/c/qd;->a(IIILjava/lang/Object;JLcom/nd/commplatform/d/c/qe;)V

    :cond_1
    sget-object v0, Lcom/nd/commplatform/d/c/qd;->a:Ljava/util/Map;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p3

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p3, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;ILcom/nd/commplatform/d/c/qe;)Ljava/net/HttpURLConnection;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I",
            "Lcom/nd/commplatform/d/c/qe;",
            ")",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const-string v0, " "

    const-string v2, "%20"

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nd/commplatform/d/c/qd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v7, -0x1

    if-eq v3, v7, :cond_7

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v7

    aget-object v8, v3, v1

    const/4 v9, 0x1

    aget-object v3, v3, v9

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v7, v8, v3, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    invoke-static {p1, v0}, Lcom/nd/commplatform/d/c/qf;->a(Landroid/content/Context;Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v8

    if-nez v8, :cond_0

    const/4 v3, -0x5

    move-object v0, p0

    move v2, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/nd/commplatform/d/c/qd;->a(IIILjava/lang/Object;JLcom/nd/commplatform/d/c/qe;)V

    :goto_1
    return-object v4

    :cond_0
    move-object v0, p0

    move v2, p4

    move v3, v1

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/nd/commplatform/d/c/qd;->a(IIILjava/lang/Object;JLcom/nd/commplatform/d/c/qe;)V

    sget v0, Lcom/nd/commplatform/d/c/qc;->a:I

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    sget v0, Lcom/nd/commplatform/d/c/qc;->b:I

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-direct {p0, p3}, Lcom/nd/commplatform/d/c/qd;->a(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/nd/commplatform/d/c/qd;->e:Ljava/util/Map;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v8

    goto :goto_1

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    instance-of v0, v1, Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    const-string v0, "DOINPUT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    goto :goto_2

    :cond_3
    const-string v0, "DOOUTPUT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    goto :goto_2

    :cond_4
    const-string v0, "USECACHES"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    goto :goto_2

    :cond_5
    const-string v0, "ALLOWUSERINTERACTION"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    goto/16 :goto_2

    :cond_6
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v8, v4, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    move-object v0, v2

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/qd;Landroid/content/Context;Ljava/lang/String;Ljava/net/HttpURLConnection;IILcom/nd/commplatform/d/c/qe;Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;
    .locals 1

    invoke-direct/range {p0 .. p8}, Lcom/nd/commplatform/d/c/qd;->a(Landroid/content/Context;Ljava/lang/String;Ljava/net/HttpURLConnection;IILcom/nd/commplatform/d/c/qe;Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/qd;Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;ILcom/nd/commplatform/d/c/qe;)Ljava/net/HttpURLConnection;
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/nd/commplatform/d/c/qd;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;ILcom/nd/commplatform/d/c/qe;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "ACCEPT"

    const-string v1, "*/*"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "CONNECTION"

    const-string v1, "Keep-Alive"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "CONTENT-TYPE"

    const-string v1, "application/octet-stream"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ACCEPT-LANGUAGE"

    const-string v1, "zh-cn"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ACCEPT-CHARSET"

    const-string v1, "UTF-8"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-object v2

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private a(IIILjava/lang/Object;JLcom/nd/commplatform/d/c/qe;)V
    .locals 3

    if-eqz p7, :cond_1

    invoke-virtual {p7, p1, p2, p3, p4}, Lcom/nd/commplatform/d/c/qe;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x0

    cmp-long v1, p5, v1

    if-nez v1, :cond_0

    const-wide/16 p5, 0xa

    :cond_0
    invoke-virtual {p7, v0, p5, p6}, Lcom/nd/commplatform/d/c/qe;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method

.method private a(ILjava/lang/Exception;ILcom/nd/commplatform/d/c/qe;)V
    .locals 8

    sget-object v0, Lcom/nd/commplatform/d/c/qd;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, -0x1

    const-wide/16 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p3

    move-object v4, p2

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/nd/commplatform/d/c/qd;->a(IIILjava/lang/Object;JLcom/nd/commplatform/d/c/qe;)V

    :cond_0
    return-void
.end method

.method private a(ILjava/net/HttpURLConnection;ILcom/nd/commplatform/d/c/pz;JLjava/lang/String;Lcom/nd/commplatform/d/c/qe;)V
    .locals 21

    sget-object v2, Lcom/nd/commplatform/d/c/qd;->e:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xc8

    move/from16 v0, p1

    if-eq v0, v2, :cond_0

    const/16 v2, 0xce

    move/from16 v0, p1

    if-eq v0, v2, :cond_0

    const/16 v2, 0x12d

    move/from16 v0, p1

    if-eq v0, v2, :cond_0

    const/16 v2, 0x12e

    move/from16 v0, p1

    if-ne v0, v2, :cond_7

    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x1

    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v5

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v6, "gzip"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_9

    if-lez v5, :cond_9

    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v3, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v2, 0x0

    move-object/from16 v16, v3

    :goto_0
    const-wide/16 v3, 0x1

    cmp-long v3, p5, v3

    if-gez v3, :cond_3

    const/4 v2, 0x0

    move v13, v2

    :goto_1
    new-instance v17, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    const/16 v4, 0x400

    new-array v0, v4, [B

    move-object/from16 v18, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-wide/from16 v19, v2

    move-wide/from16 v3, v19

    move v2, v5

    :cond_1
    :goto_2
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-gtz v5, :cond_4

    invoke-virtual/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Lcom/nd/commplatform/d/c/pz;->a([B)V

    :cond_2
    invoke-virtual/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    const/4 v3, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object/from16 v2, p0

    move/from16 v4, p3

    move-object/from16 v9, p8

    invoke-direct/range {v2 .. v9}, Lcom/nd/commplatform/d/c/qd;->a(IIILjava/lang/Object;JLcom/nd/commplatform/d/c/qe;)V

    :goto_3
    return-void

    :cond_3
    sget-object v3, Lcom/nd/commplatform/d/c/qd;->c:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v13, v2

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    if-eqz v13, :cond_1

    move-object/from16 v0, p8

    iget-object v6, v0, Lcom/nd/commplatform/d/c/qe;->i:Lcom/nd/commplatform/d/c/qe$f;

    if-nez v6, :cond_5

    move-object/from16 v0, p8

    iget-object v6, v0, Lcom/nd/commplatform/d/c/qe;->j:Lcom/nd/commplatform/d/c/qe$h;

    if-eqz v6, :cond_1

    :cond_5
    int-to-long v5, v5

    add-long v14, v3, v5

    sget v3, Lcom/nd/commplatform/d/c/qd;->i:I

    int-to-long v3, v3

    mul-long/2addr v3, v14

    long-to-double v3, v3

    move-wide/from16 v0, p5

    long-to-double v5, v0

    div-double/2addr v3, v5

    double-to-int v5, v3

    if-le v5, v2, :cond_8

    const/4 v3, 0x2

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object/from16 v2, p0

    move/from16 v4, p3

    move-object/from16 v9, p8

    invoke-direct/range {v2 .. v9}, Lcom/nd/commplatform/d/c/qd;->a(IIILjava/lang/Object;JLcom/nd/commplatform/d/c/qe;)V

    move-object/from16 v0, p8

    iget-object v2, v0, Lcom/nd/commplatform/d/c/qe;->j:Lcom/nd/commplatform/d/c/qe$h;

    if-eqz v2, :cond_6

    move-object/from16 v6, p0

    move-wide v7, v14

    move-wide/from16 v9, p5

    move/from16 v11, p3

    move-object/from16 v12, p8

    invoke-direct/range {v6 .. v12}, Lcom/nd/commplatform/d/c/qd;->a(JJILcom/nd/commplatform/d/c/qe;)V

    :cond_6
    move v2, v5

    move-wide v3, v14

    goto/16 :goto_2

    :cond_7
    const/4 v3, 0x1

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object/from16 v2, p0

    move/from16 v4, p3

    move/from16 v5, p1

    move-object/from16 v9, p8

    invoke-direct/range {v2 .. v9}, Lcom/nd/commplatform/d/c/qd;->a(IIILjava/lang/Object;JLcom/nd/commplatform/d/c/qe;)V

    goto :goto_3

    :cond_8
    move-wide v3, v14

    goto/16 :goto_2

    :cond_9
    move-object/from16 v16, v4

    goto/16 :goto_0
.end method

.method private a(ILjava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/nd/commplatform/d/c/qd;->h:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nd/commplatform/d/c/qd;->f:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private a(JJILcom/nd/commplatform/d/c/qe;)V
    .locals 8

    const/4 v3, 0x0

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Long;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v3

    const/4 v0, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v1, 0x4

    const-wide/16 v5, 0x0

    move-object v0, p0

    move v2, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/nd/commplatform/d/c/qd;->a(IIILjava/lang/Object;JLcom/nd/commplatform/d/c/qe;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/qd;IIILjava/lang/Object;JLcom/nd/commplatform/d/c/qe;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/nd/commplatform/d/c/qd;->a(IIILjava/lang/Object;JLcom/nd/commplatform/d/c/qe;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/qd;ILjava/lang/Exception;ILcom/nd/commplatform/d/c/qe;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nd/commplatform/d/c/qd;->a(ILjava/lang/Exception;ILcom/nd/commplatform/d/c/qe;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/qd;ILjava/net/HttpURLConnection;ILcom/nd/commplatform/d/c/pz;JLjava/lang/String;Lcom/nd/commplatform/d/c/qe;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/nd/commplatform/d/c/qd;->a(ILjava/net/HttpURLConnection;ILcom/nd/commplatform/d/c/pz;JLjava/lang/String;Lcom/nd/commplatform/d/c/qe;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/qd;ILjava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nd/commplatform/d/c/qd;->a(ILjava/util/Map;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/qd;Ljava/io/OutputStream;Ljava/io/InputStream;IJLjava/lang/String;ZLcom/nd/commplatform/d/c/qe;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/nd/commplatform/d/c/qd;->b(Ljava/io/OutputStream;Ljava/io/InputStream;IJLjava/lang/String;ZLcom/nd/commplatform/d/c/qe;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/qd;Ljava/lang/String;Ljava/io/RandomAccessFile;Ljava/net/HttpURLConnection;JILjava/lang/String;Lcom/nd/commplatform/d/c/qe;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/nd/commplatform/d/c/qd;->a(Ljava/lang/String;Ljava/io/RandomAccessFile;Ljava/net/HttpURLConnection;JILjava/lang/String;Lcom/nd/commplatform/d/c/qe;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/qd;Ljava/net/HttpURLConnection;ILcom/nd/commplatform/d/c/qe;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/nd/commplatform/d/c/qd;->a(Ljava/net/HttpURLConnection;ILcom/nd/commplatform/d/c/qe;)V

    return-void
.end method

.method private a(Ljava/io/OutputStream;Ljava/io/InputStream;IJLjava/lang/String;ZLcom/nd/commplatform/d/c/qe;)V
    .locals 17

    sget-object v1, Lcom/nd/commplatform/d/c/qd;->e:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_1

    const/16 v1, 0x400

    new-array v14, v1, [B

    const/4 v4, 0x0

    const-wide/16 v12, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    const-wide/16 v1, 0x0

    move-wide v9, v1

    move v1, v4

    :cond_0
    :goto_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual/range {p1 .. p1}, Ljava/io/OutputStream;->close()V

    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V

    if-eqz p7, :cond_1

    const/4 v2, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p3

    move-object/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Lcom/nd/commplatform/d/c/qd;->a(IIILjava/lang/Object;JLcom/nd/commplatform/d/c/qe;)V

    :cond_1
    return-void

    :cond_2
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    move-object/from16 v0, p8

    iget-object v3, v0, Lcom/nd/commplatform/d/c/qe;->i:Lcom/nd/commplatform/d/c/qe$f;

    if-nez v3, :cond_3

    move-object/from16 v0, p8

    iget-object v3, v0, Lcom/nd/commplatform/d/c/qe;->j:Lcom/nd/commplatform/d/c/qe$h;

    if-eqz v3, :cond_0

    :cond_3
    int-to-long v2, v2

    add-long/2addr v12, v2

    sget v2, Lcom/nd/commplatform/d/c/qd;->i:I

    int-to-long v2, v2

    mul-long/2addr v2, v12

    div-long v2, v2, p4

    long-to-int v4, v2

    if-le v4, v1, :cond_0

    if-eqz p7, :cond_4

    const/4 v2, 0x2

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p3

    move-object/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Lcom/nd/commplatform/d/c/qd;->a(IIILjava/lang/Object;JLcom/nd/commplatform/d/c/qe;)V

    :cond_4
    move-object/from16 v0, p8

    iget-object v1, v0, Lcom/nd/commplatform/d/c/qe;->j:Lcom/nd/commplatform/d/c/qe$h;

    if-eqz v1, :cond_5

    sub-long v8, v12, v9

    move-object/from16 v5, p0

    move-wide v6, v15

    move/from16 v10, p3

    move-object/from16 v11, p8

    invoke-direct/range {v5 .. v11}, Lcom/nd/commplatform/d/c/qd;->a(JJILcom/nd/commplatform/d/c/qe;)V

    move-wide v9, v12

    move v1, v4

    goto :goto_0

    :cond_5
    move v1, v4

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/io/RandomAccessFile;Ljava/net/HttpURLConnection;JILjava/lang/String;Lcom/nd/commplatform/d/c/qe;)V
    .locals 20

    sget-object v3, Lcom/nd/commplatform/d/c/qd;->e:Ljava/util/Map;

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p3 .. p3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const-string v4, "netengine"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "the connect code is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_0

    const/16 v4, 0xce

    if-ne v3, v4, :cond_b

    :cond_0
    invoke-virtual/range {p3 .. p3}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    int-to-long v5, v3

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v7, p8

    move/from16 v8, p6

    invoke-direct/range {v3 .. v8}, Lcom/nd/commplatform/d/c/qd;->a(Ljava/lang/String;JLcom/nd/commplatform/d/c/qe;I)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    return-void

    :cond_1
    const-string v3, "writeFile"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "fileSize is"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "writeFile"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "fileSeek is"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-long v17, v5, p4

    invoke-virtual/range {p3 .. p3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    const/4 v3, 0x0

    instance-of v4, v5, Ljava/util/zip/GZIPInputStream;

    if-eqz v4, :cond_d

    const/4 v3, 0x1

    move v14, v3

    :goto_1
    invoke-virtual/range {p3 .. p3}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x1

    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    move-result v6

    if-eqz v4, :cond_c

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v7, "gzip"

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v7, -0x1

    if-eq v4, v7, :cond_c

    if-lez v6, :cond_c

    new-instance v4, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v4, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v3, 0x0

    move-object/from16 v16, v4

    :goto_2
    const-wide/16 v4, 0x1

    cmp-long v4, v17, v4

    if-gez v4, :cond_5

    const/4 v3, 0x0

    move v15, v3

    :goto_3
    const-wide/16 v3, 0x0

    cmp-long v3, p4, v3

    if-ltz v3, :cond_3

    invoke-virtual/range {p2 .. p2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    cmp-long v3, v3, p4

    if-lez v3, :cond_2

    move-object/from16 v0, p2

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    :cond_2
    move-object/from16 v0, p2

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    :cond_3
    const/16 v3, 0x400

    new-array v0, v3, [B

    move-object/from16 v19, v0

    const/4 v6, 0x0

    move v3, v6

    :cond_4
    :goto_4
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-gtz v4, :cond_6

    sget-object v3, Lcom/nd/commplatform/d/c/qd;->b:Ljava/util/Map;

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p2 .. p2}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    const-string v3, "writeFile"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "readCount is"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, p4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and fileSize is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v17

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v3, p4, v17

    if-eqz v3, :cond_a

    const-wide/16 v3, 0x0

    cmp-long v3, v17, v3

    if-lez v3, :cond_a

    if-nez v14, :cond_a

    const-string v3, "writeFile"

    const-string v4, "file error!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x1

    const/4 v6, -0x4

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object/from16 v3, p0

    move/from16 v5, p6

    move-object/from16 v10, p8

    invoke-direct/range {v3 .. v10}, Lcom/nd/commplatform/d/c/qd;->a(IIILjava/lang/Object;JLcom/nd/commplatform/d/c/qe;)V

    goto/16 :goto_0

    :cond_5
    sget-object v4, Lcom/nd/commplatform/d/c/qd;->c:Ljava/util/Map;

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v15, v3

    goto/16 :goto_3

    :cond_6
    const/4 v5, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v5, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    int-to-long v4, v4

    add-long p4, p4, v4

    if-eqz v15, :cond_4

    move-object/from16 v0, p8

    iget-object v4, v0, Lcom/nd/commplatform/d/c/qe;->i:Lcom/nd/commplatform/d/c/qe$f;

    if-nez v4, :cond_7

    move-object/from16 v0, p8

    iget-object v4, v0, Lcom/nd/commplatform/d/c/qe;->j:Lcom/nd/commplatform/d/c/qe$h;

    if-eqz v4, :cond_4

    :cond_7
    sget v4, Lcom/nd/commplatform/d/c/qd;->i:I

    int-to-long v4, v4

    mul-long v4, v4, p4

    div-long v4, v4, v17

    long-to-int v6, v4

    if-le v6, v3, :cond_4

    sget-wide v3, Lcom/nd/commplatform/d/c/qd;->g:J

    const-wide/16 v7, 0x0

    cmp-long v3, v3, v7

    if-lez v3, :cond_8

    sget-wide v3, Lcom/nd/commplatform/d/c/qd;->g:J

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    :cond_8
    const/4 v4, 0x2

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object/from16 v3, p0

    move/from16 v5, p6

    move-object/from16 v10, p8

    invoke-direct/range {v3 .. v10}, Lcom/nd/commplatform/d/c/qd;->a(IIILjava/lang/Object;JLcom/nd/commplatform/d/c/qe;)V

    move-object/from16 v0, p8

    iget-object v3, v0, Lcom/nd/commplatform/d/c/qe;->j:Lcom/nd/commplatform/d/c/qe$h;

    if-eqz v3, :cond_9

    move-object/from16 v7, p0

    move-wide/from16 v8, p4

    move-wide/from16 v10, v17

    move/from16 v12, p6

    move-object/from16 v13, p8

    invoke-direct/range {v7 .. v13}, Lcom/nd/commplatform/d/c/qd;->a(JJILcom/nd/commplatform/d/c/qe;)V

    :cond_9
    move v3, v6

    goto/16 :goto_4

    :cond_a
    const-string v3, "writeFile"

    const-string v4, "success!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object/from16 v3, p0

    move/from16 v5, p6

    move-object/from16 v10, p8

    invoke-direct/range {v3 .. v10}, Lcom/nd/commplatform/d/c/qd;->a(IIILjava/lang/Object;JLcom/nd/commplatform/d/c/qe;)V

    goto/16 :goto_0

    :cond_b
    const/4 v4, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object/from16 v3, p0

    move/from16 v5, p6

    move-object/from16 v10, p8

    invoke-direct/range {v3 .. v10}, Lcom/nd/commplatform/d/c/qd;->a(IIILjava/lang/Object;JLcom/nd/commplatform/d/c/qe;)V

    goto/16 :goto_0

    :cond_c
    move-object/from16 v16, v5

    goto/16 :goto_2

    :cond_d
    move v14, v3

    goto/16 :goto_1
.end method

.method private a(Ljava/net/HttpURLConnection;ILcom/nd/commplatform/d/c/qe;)V
    .locals 8

    :try_start_0
    sget-object v0, Lcom/nd/commplatform/d/c/qd;->d:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    sget-object v0, Lcom/nd/commplatform/d/c/qd;->d:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    sget-object v0, Lcom/nd/commplatform/d/c/qd;->a:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_2

    const/4 v1, -0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x32

    move-object v0, p0

    move v2, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/nd/commplatform/d/c/qd;->a(IIILjava/lang/Object;JLcom/nd/commplatform/d/c/qe;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;JLcom/nd/commplatform/d/c/qe;I)Z
    .locals 8

    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v1, v3

    const-string v3, "netengine"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Memory Available: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "B"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    if-lez v0, :cond_0

    cmp-long v0, v1, p2

    if-gez v0, :cond_0

    const/4 v1, -0x1

    const/4 v3, -0x7

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move v2, p5

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/nd/commplatform/d/c/qd;->a(IIILjava/lang/Object;JLcom/nd/commplatform/d/c/qe;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "https://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    const-string v0, "//"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v1, v0, v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "//"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method static synthetic b()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/nd/commplatform/d/c/qd;->a:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/qd;Ljava/io/OutputStream;Ljava/io/InputStream;IJLjava/lang/String;ZLcom/nd/commplatform/d/c/qe;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/nd/commplatform/d/c/qd;->a(Ljava/io/OutputStream;Ljava/io/InputStream;IJLjava/lang/String;ZLcom/nd/commplatform/d/c/qe;)V

    return-void
.end method

.method private b(Ljava/io/OutputStream;Ljava/io/InputStream;IJLjava/lang/String;ZLcom/nd/commplatform/d/c/qe;)V
    .locals 17

    sget-object v1, Lcom/nd/commplatform/d/c/qd;->e:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_1

    const/16 v1, 0x400

    new-array v14, v1, [B

    const/4 v4, 0x0

    const-wide/16 v12, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    const-wide/16 v1, 0x0

    move-wide v9, v1

    move v1, v4

    :cond_0
    :goto_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual/range {p1 .. p1}, Ljava/io/OutputStream;->close()V

    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V

    :cond_1
    return-void

    :cond_2
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    move-object/from16 v0, p8

    iget-object v3, v0, Lcom/nd/commplatform/d/c/qe;->i:Lcom/nd/commplatform/d/c/qe$f;

    if-nez v3, :cond_3

    move-object/from16 v0, p8

    iget-object v3, v0, Lcom/nd/commplatform/d/c/qe;->j:Lcom/nd/commplatform/d/c/qe$h;

    if-eqz v3, :cond_0

    :cond_3
    int-to-long v2, v2

    add-long/2addr v12, v2

    sget v2, Lcom/nd/commplatform/d/c/qd;->i:I

    int-to-long v2, v2

    mul-long/2addr v2, v12

    div-long v2, v2, p4

    long-to-int v4, v2

    if-le v4, v1, :cond_0

    if-eqz p7, :cond_4

    const/4 v2, 0x2

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p3

    move-object/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Lcom/nd/commplatform/d/c/qd;->a(IIILjava/lang/Object;JLcom/nd/commplatform/d/c/qe;)V

    :cond_4
    move-object/from16 v0, p8

    iget-object v1, v0, Lcom/nd/commplatform/d/c/qe;->j:Lcom/nd/commplatform/d/c/qe$h;

    if-eqz v1, :cond_5

    sub-long v8, v12, v9

    move-object/from16 v5, p0

    move-wide v6, v15

    move/from16 v10, p3

    move-object/from16 v11, p8

    invoke-direct/range {v5 .. v11}, Lcom/nd/commplatform/d/c/qd;->a(JJILcom/nd/commplatform/d/c/qe;)V

    move-wide v9, v12

    move v1, v4

    goto :goto_0

    :cond_5
    move v1, v4

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()I
    .locals 4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    :goto_0
    sget-object v1, Lcom/nd/commplatform/d/c/qd;->a:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected a(Ljava/lang/String;Lcom/nd/commplatform/d/c/pz;Ljava/util/HashMap;Lcom/nd/commplatform/d/c/qe;Landroid/content/Context;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/nd/commplatform/d/c/pz;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/nd/commplatform/d/c/qe;",
            "Landroid/content/Context;",
            ")I"
        }
    .end annotation

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/qd;->c()I

    move-result v2

    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcom/nd/commplatform/d/c/qd$2;

    move-object v1, p0

    move-object v3, p5

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/nd/commplatform/d/c/qd$2;-><init>(Lcom/nd/commplatform/d/c/qd;ILandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Lcom/nd/commplatform/d/c/qe;Lcom/nd/commplatform/d/c/pz;)V

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    sget-object v0, Lcom/nd/commplatform/d/c/qd;->d:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Lcom/nd/commplatform/d/c/pz;Ljava/util/HashMap;Lcom/nd/commplatform/d/c/qe;Landroid/content/Context;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/nd/commplatform/d/c/pz;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/nd/commplatform/d/c/qe;",
            "Landroid/content/Context;",
            ")I"
        }
    .end annotation

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/qd;->c()I

    move-result v3

    new-instance v9, Ljava/lang/Thread;

    new-instance v0, Lcom/nd/commplatform/d/c/qd$3;

    move-object v1, p0

    move-object v2, p2

    move-object v4, p5

    move-object/from16 v5, p6

    move-object v6, p1

    move-object v7, p4

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/nd/commplatform/d/c/qd$3;-><init>(Lcom/nd/commplatform/d/c/qd;Ljava/lang/String;ILcom/nd/commplatform/d/c/qe;Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Lcom/nd/commplatform/d/c/pz;)V

    invoke-direct {v9, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    sget-object v0, Lcom/nd/commplatform/d/c/qd;->d:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v3
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/nd/commplatform/d/c/qe;Landroid/content/Context;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/nd/commplatform/d/c/qe;",
            "Landroid/content/Context;",
            ")I"
        }
    .end annotation

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/qd;->c()I

    move-result v3

    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcom/nd/commplatform/d/c/qd$4;

    move-object v1, p0

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p1

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/nd/commplatform/d/c/qd$4;-><init>(Lcom/nd/commplatform/d/c/qd;Ljava/lang/String;ILcom/nd/commplatform/d/c/qe;Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    sget-object v0, Lcom/nd/commplatform/d/c/qd;->d:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v3
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;Lcom/nd/commplatform/d/c/qe;Landroid/content/Context;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/nd/commplatform/d/c/qe;",
            "Landroid/content/Context;",
            ")I"
        }
    .end annotation

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/qd;->c()I

    move-result v2

    new-instance v9, Ljava/lang/Thread;

    new-instance v0, Lcom/nd/commplatform/d/c/qd$1;

    move-object v1, p0

    move-object/from16 v3, p6

    move-object v4, p1

    move-object v5, p4

    move-object v6, p5

    move-object v7, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/nd/commplatform/d/c/qd$1;-><init>(Lcom/nd/commplatform/d/c/qd;ILandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Lcom/nd/commplatform/d/c/qe;Ljava/lang/String;Z)V

    invoke-direct {v9, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    sget-object v0, Lcom/nd/commplatform/d/c/qd;->d:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2
.end method

.method protected a(Ljava/lang/String;[BLcom/nd/commplatform/d/c/pz;Ljava/util/HashMap;Lcom/nd/commplatform/d/c/qe;Landroid/content/Context;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Lcom/nd/commplatform/d/c/pz;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/nd/commplatform/d/c/qe;",
            "Landroid/content/Context;",
            ")I"
        }
    .end annotation

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/qd;->c()I

    move-result v2

    new-instance v9, Ljava/lang/Thread;

    new-instance v0, Lcom/nd/commplatform/d/c/qd$7;

    move-object v1, p0

    move-object/from16 v3, p6

    move-object v4, p1

    move-object v5, p4

    move-object v6, p5

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/nd/commplatform/d/c/qd$7;-><init>(Lcom/nd/commplatform/d/c/qd;ILandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Lcom/nd/commplatform/d/c/qe;[BLcom/nd/commplatform/d/c/pz;)V

    invoke-direct {v9, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    sget-object v0, Lcom/nd/commplatform/d/c/qd;->d:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2
.end method

.method protected a(Ljava/lang/String;[BLjava/lang/String;Ljava/util/HashMap;Lcom/nd/commplatform/d/c/qe;Landroid/content/Context;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/nd/commplatform/d/c/qe;",
            "Landroid/content/Context;",
            ")I"
        }
    .end annotation

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/qd;->c()I

    move-result v2

    new-instance v9, Ljava/lang/Thread;

    new-instance v0, Lcom/nd/commplatform/d/c/qd$6;

    move-object v1, p0

    move-object/from16 v3, p6

    move-object v4, p1

    move-object v5, p4

    move-object v6, p5

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/nd/commplatform/d/c/qd$6;-><init>(Lcom/nd/commplatform/d/c/qd;ILandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Lcom/nd/commplatform/d/c/qe;[BLjava/lang/String;)V

    invoke-direct {v9, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    sget-object v0, Lcom/nd/commplatform/d/c/qd;->d:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2
.end method

.method protected a(Ljava/lang/String;[BLjava/util/HashMap;Lcom/nd/commplatform/d/c/qe;Landroid/content/Context;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/nd/commplatform/d/c/qe;",
            "Landroid/content/Context;",
            ")I"
        }
    .end annotation

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/qd;->c()I

    move-result v3

    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcom/nd/commplatform/d/c/qd$5;

    move-object v1, p0

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p1

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/nd/commplatform/d/c/qd$5;-><init>(Lcom/nd/commplatform/d/c/qd;[BILcom/nd/commplatform/d/c/qe;Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    sget-object v0, Lcom/nd/commplatform/d/c/qd;->d:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v3
.end method

.method public a()V
    .locals 1

    sget-object v0, Lcom/nd/commplatform/d/c/qd;->f:Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nd/commplatform/d/c/qd;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 0

    sput p1, Lcom/nd/commplatform/d/c/qd;->i:I

    return-void
.end method

.method protected a(ILcom/nd/commplatform/d/c/qe;)V
    .locals 2

    sget-object v0, Lcom/nd/commplatform/d/c/qd;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0, v0, p1, p2}, Lcom/nd/commplatform/d/c/qd;->a(Ljava/net/HttpURLConnection;ILcom/nd/commplatform/d/c/qe;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected a(J)V
    .locals 0

    sput-wide p1, Lcom/nd/commplatform/d/c/qd;->g:J

    return-void
.end method

.method public a(Z)V
    .locals 0

    sput-boolean p1, Lcom/nd/commplatform/d/c/qd;->h:Z

    return-void
.end method

.method protected b(Ljava/lang/String;[BLcom/nd/commplatform/d/c/pz;Ljava/util/HashMap;Lcom/nd/commplatform/d/c/qe;Landroid/content/Context;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Lcom/nd/commplatform/d/c/pz;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/nd/commplatform/d/c/qe;",
            "Landroid/content/Context;",
            ")I"
        }
    .end annotation

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/qd;->c()I

    move-result v2

    new-instance v9, Ljava/lang/Thread;

    new-instance v0, Lcom/nd/commplatform/d/c/qd$8;

    move-object v1, p0

    move-object/from16 v3, p6

    move-object v4, p1

    move-object v5, p4

    move-object v6, p5

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/nd/commplatform/d/c/qd$8;-><init>(Lcom/nd/commplatform/d/c/qd;ILandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Lcom/nd/commplatform/d/c/qe;[BLcom/nd/commplatform/d/c/pz;)V

    invoke-direct {v9, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    sget-object v0, Lcom/nd/commplatform/d/c/qd;->d:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2
.end method

.method public b(I)Ljava/net/HttpURLConnection;
    .locals 2

    sget-object v0, Lcom/nd/commplatform/d/c/qd;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method protected c(Ljava/lang/String;[BLcom/nd/commplatform/d/c/pz;Ljava/util/HashMap;Lcom/nd/commplatform/d/c/qe;Landroid/content/Context;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Lcom/nd/commplatform/d/c/pz;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/nd/commplatform/d/c/qe;",
            "Landroid/content/Context;",
            ")I"
        }
    .end annotation

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/qd;->c()I

    move-result v2

    new-instance v9, Ljava/lang/Thread;

    new-instance v0, Lcom/nd/commplatform/d/c/qd$9;

    move-object v1, p0

    move-object/from16 v3, p6

    move-object v4, p1

    move-object v5, p4

    move-object v6, p5

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/nd/commplatform/d/c/qd$9;-><init>(Lcom/nd/commplatform/d/c/qd;ILandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Lcom/nd/commplatform/d/c/qe;[BLcom/nd/commplatform/d/c/pz;)V

    invoke-direct {v9, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    sget-object v0, Lcom/nd/commplatform/d/c/qd;->d:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2
.end method

.method public c(I)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lcom/nd/commplatform/d/c/qd;->f:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public d(I)V
    .locals 2

    sget-object v0, Lcom/nd/commplatform/d/c/qd;->f:Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nd/commplatform/d/c/qd;->f:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected e(I)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/nd/commplatform/d/c/qd;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected f(I)J
    .locals 2

    sget-object v0, Lcom/nd/commplatform/d/c/qd;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
