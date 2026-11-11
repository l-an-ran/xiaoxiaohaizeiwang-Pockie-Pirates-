.class public Lcomndanalytics/ac;
.super Lorg/apache/http/impl/client/DefaultHttpClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcomndanalytics/ac$a;,
        Lcomndanalytics/ac$b;
    }
.end annotation


# static fields
.field private static final a:I = 0x1

.field private static final b:I = 0x2

.field private static final c:I = 0x1e

.field private static final d:Ljava/lang/String;


# instance fields
.field private e:Landroid/os/Handler;

.field private f:Ljava/util/concurrent/ExecutorService;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcomndanalytics/ac;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcomndanalytics/ac;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcomndanalytics/ac;->a()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcomndanalytics/ac;->g:Z

    new-instance v0, Lcomndanalytics/ad;

    invoke-direct {v0, p0}, Lcomndanalytics/ad;-><init>(Lcomndanalytics/ac;)V

    invoke-virtual {p0, v0}, Lcomndanalytics/ac;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    invoke-direct {p0, p1}, Lcomndanalytics/ac;->a(Landroid/content/Context;)V

    return-void
.end method

.method static final a()Lorg/apache/http/conn/ClientConnectionManager;
    .locals 5

    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v3

    const/16 v4, 0x50

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v1, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    return-object v1
.end method

.method private final a(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcomndanalytics/ac$a;

    invoke-direct {v0, p0}, Lcomndanalytics/ac$a;-><init>(Lcomndanalytics/ac;)V

    iput-object v0, p0, Lcomndanalytics/ac;->f:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcomndanalytics/ac;->e:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcomndanalytics/ac;)Z
    .locals 1

    iget-boolean v0, p0, Lcomndanalytics/ac;->g:Z

    return v0
.end method

.method static synthetic b(Lcomndanalytics/ac;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcomndanalytics/ac;->e:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcomndanalytics/ac;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Lcomndanalytics/aa;)V
    .locals 2

    invoke-virtual {p1}, Lcomndanalytics/aa;->d()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcomndanalytics/ac;->a(Lcomndanalytics/aa;J)V

    return-void
.end method

.method public final a(Lcomndanalytics/aa;J)V
    .locals 7

    iget-object v0, p0, Lcomndanalytics/ac;->f:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcomndanalytics/ae;

    invoke-direct {v0, p0}, Lcomndanalytics/ae;-><init>(Lcomndanalytics/ac;)V

    new-instance v6, Lcomndanalytics/af;

    invoke-direct {v6, p0, p1, v0}, Lcomndanalytics/af;-><init>(Lcomndanalytics/ac;Lcomndanalytics/aa;Ljava/lang/Runnable;)V

    new-instance v2, Lcomndanalytics/ag;

    invoke-direct {v2, p0, p1, v6}, Lcomndanalytics/ag;-><init>(Lcomndanalytics/ac;Lcomndanalytics/aa;Ljava/lang/Runnable;)V

    new-instance v0, Lcomndanalytics/ah;

    move-object v1, p0

    move-wide v3, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcomndanalytics/ah;-><init>(Lcomndanalytics/ac;Ljava/lang/Runnable;JLcomndanalytics/aa;Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcomndanalytics/ac;->f:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcomndanalytics/aa;->a(Ljava/util/concurrent/Future;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcomndanalytics/ac;->g:Z

    iget-object v0, p0, Lcomndanalytics/ac;->f:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcomndanalytics/ac;->f:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    invoke-virtual {p0}, Lcomndanalytics/ac;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcomndanalytics/ac;->f:Ljava/util/concurrent/ExecutorService;

    :cond_0
    return-void
.end method
