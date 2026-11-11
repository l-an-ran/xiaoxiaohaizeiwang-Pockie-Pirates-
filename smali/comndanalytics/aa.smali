.class public abstract Lcomndanalytics/aa;
.super Ljava/lang/Object;


# static fields
.field protected static a:Ljava/lang/String;

.field private static b:I

.field private static c:J


# instance fields
.field private d:Lorg/apache/http/client/methods/HttpUriRequest;

.field private e:[B

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:I

.field private k:I

.field private l:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private n:Lorg/apache/http/params/HttpParams;

.field private o:Lorg/apache/http/HttpResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    sput v0, Lcomndanalytics/aa;->b:I

    const-wide/16 v0, 0x61a8

    sput-wide v0, Lcomndanalytics/aa;->c:J

    const-class v0, Lcomndanalytics/aa;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcomndanalytics/aa;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcomndanalytics/aa;->g:Z

    iput-object v0, p0, Lcomndanalytics/aa;->h:Ljava/lang/String;

    iput-object v0, p0, Lcomndanalytics/aa;->i:Ljava/lang/String;

    iput v1, p0, Lcomndanalytics/aa;->k:I

    iput-object v0, p0, Lcomndanalytics/aa;->m:Ljava/util/concurrent/Future;

    iput-object v0, p0, Lcomndanalytics/aa;->n:Lorg/apache/http/params/HttpParams;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcomndanalytics/aa;->l:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic a(Lcomndanalytics/aa;I)I
    .locals 0

    iput p1, p0, Lcomndanalytics/aa;->j:I

    return p1
.end method

.method static synthetic a(Lcomndanalytics/aa;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcomndanalytics/aa;->h:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcomndanalytics/aa;Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpResponse;
    .locals 0

    iput-object p1, p0, Lcomndanalytics/aa;->o:Lorg/apache/http/HttpResponse;

    return-object p1
.end method

.method public static a(I)Z
    .locals 1

    const/16 v0, 0xc8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x12b

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/net/ConnectivityManager;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcomndanalytics/aa;)[B
    .locals 1

    iget-object v0, p0, Lcomndanalytics/aa;->e:[B

    return-object v0
.end method

.method static synthetic a(Lcomndanalytics/aa;[B)[B
    .locals 0

    iput-object p1, p0, Lcomndanalytics/aa;->e:[B

    return-object p1
.end method

.method static synthetic b(Lcomndanalytics/aa;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcomndanalytics/aa;->i:Ljava/lang/String;

    return-object p1
.end method

.method private b(Landroid/net/ConnectivityManager;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static synthetic c(Lcomndanalytics/aa;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcomndanalytics/aa;->f:Ljava/lang/String;

    return-object p1
.end method

.method private m()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcomndanalytics/aa;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-direct {p0, v0}, Lcomndanalytics/aa;->a(Landroid/net/ConnectivityManager;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcomndanalytics/aa;->b(Landroid/net/ConnectivityManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcomndanalytics/aa;->h:Ljava/lang/String;

    return-object v0
.end method

.method public abstract a(I[BLjava/lang/String;)V
.end method

.method public a(Ljava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcomndanalytics/aa;->m:Ljava/util/concurrent/Future;

    return-void
.end method

.method protected final a(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .locals 1

    iget-object v0, p0, Lcomndanalytics/aa;->n:Lorg/apache/http/params/HttpParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcomndanalytics/aa;->n:Lorg/apache/http/params/HttpParams;

    invoke-interface {p1, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->setParams(Lorg/apache/http/params/HttpParams;)V

    :cond_0
    return-void
.end method

.method public final a(Lorg/apache/http/impl/client/AbstractHttpClient;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcomndanalytics/aa;->i()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    iput-object v0, p0, Lcomndanalytics/aa;->d:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-virtual {p0}, Lcomndanalytics/aa;->c()I

    move-result v0

    iput v0, p0, Lcomndanalytics/aa;->k:I

    iput-object v4, p0, Lcomndanalytics/aa;->e:[B

    :cond_0
    :goto_0
    iget-object v0, p0, Lcomndanalytics/aa;->d:Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/http/impl/client/AbstractHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    invoke-direct {p0}, Lcomndanalytics/aa;->m()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/apache/http/HttpHost;

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v3

    invoke-direct {v2, v1, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    const-string v1, "http.route.default-proxy"

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    :goto_1
    iget-object v0, p0, Lcomndanalytics/aa;->d:Lorg/apache/http/client/methods/HttpUriRequest;

    new-instance v1, Lcomndanalytics/ab;

    invoke-direct {v1, p0}, Lcomndanalytics/ab;-><init>(Lcomndanalytics/aa;)V

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcomndanalytics/aa;->d:Lorg/apache/http/client/methods/HttpUriRequest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcomndanalytics/aa;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error executing request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcomndanalytics/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcomndanalytics/aa;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcomndanalytics/aa;->k:I

    iget v0, p0, Lcomndanalytics/aa;->k:I

    if-gtz v0, :cond_0

    sget-object v0, Lcomndanalytics/aa;->a:Ljava/lang/String;

    const-string v1, "Error executing request: Retries Beyond."

    invoke-static {v0, v1}, Lcomndanalytics/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcomndanalytics/aa;->d:Lorg/apache/http/client/methods/HttpUriRequest;

    iput v5, p0, Lcomndanalytics/aa;->j:I

    :cond_1
    return-void

    :cond_2
    :try_start_1
    const-string v1, "http.route.default-proxy"

    invoke-interface {v0, v1}, Lorg/apache/http/params/HttpParams;->removeParameter(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcomndanalytics/aa;->i:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    sget v0, Lcomndanalytics/aa;->b:I

    return v0
.end method

.method public d()J
    .locals 2

    sget-wide v0, Lcomndanalytics/aa;->c:J

    return-wide v0
.end method

.method public e()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lcomndanalytics/aa;->m:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method protected abstract g()Ljava/lang/String;
.end method

.method protected h()[B
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method protected i()Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcomndanalytics/aa;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DELETE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    invoke-virtual {p0}, Lcomndanalytics/aa;->g()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GET"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcomndanalytics/aa;->a(Lorg/apache/http/client/methods/HttpUriRequest;)V

    return-object v0

    :cond_2
    const-string v3, "DELETE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "POST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p0}, Lcomndanalytics/aa;->g()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0}, Lcomndanalytics/aa;->h()[B

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    new-instance v2, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v2, v1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    const-string v1, "application/oct-stream"

    invoke-virtual {v2, v1}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_0

    :cond_4
    const-string v0, "PUT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-virtual {p0}, Lcomndanalytics/aa;->g()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported HTTP method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j()Lorg/apache/http/HttpResponse;
    .locals 1

    iget-object v0, p0, Lcomndanalytics/aa;->o:Lorg/apache/http/HttpResponse;

    return-object v0
.end method

.method public final k()V
    .locals 3

    iget-boolean v0, p0, Lcomndanalytics/aa;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcomndanalytics/aa;->g:Z

    iget-object v0, p0, Lcomndanalytics/aa;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcomndanalytics/aa;->f:Ljava/lang/String;

    :goto_0
    iget v1, p0, Lcomndanalytics/aa;->j:I

    iget-object v2, p0, Lcomndanalytics/aa;->e:[B

    invoke-virtual {p0, v1, v2, v0}, Lcomndanalytics/aa;->a(I[BLjava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcomndanalytics/aa;->o:Lorg/apache/http/HttpResponse;

    :cond_0
    return-void

    :cond_1
    const-string v0, "UTF-8"

    goto :goto_0
.end method

.method public l()V
    .locals 2

    sget-object v0, Lcomndanalytics/aa;->a:Ljava/lang/String;

    const-string v1, "Error executing request: Time out."

    invoke-static {v0, v1}, Lcomndanalytics/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcomndanalytics/aa;->d:Lorg/apache/http/client/methods/HttpUriRequest;

    const/4 v1, 0x0

    iput-object v1, p0, Lcomndanalytics/aa;->d:Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcomndanalytics/aa;->j:I

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcomndanalytics/aa;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcomndanalytics/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
