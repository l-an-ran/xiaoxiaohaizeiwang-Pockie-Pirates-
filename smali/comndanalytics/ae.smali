.class Lcomndanalytics/ae;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcomndanalytics/ac;


# direct methods
.method constructor <init>(Lcomndanalytics/ac;)V
    .locals 0

    iput-object p1, p0, Lcomndanalytics/ae;->a:Lcomndanalytics/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcomndanalytics/ae;->a:Lcomndanalytics/ac;

    invoke-static {v0}, Lcomndanalytics/ac;->a(Lcomndanalytics/ac;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcomndanalytics/ae;->a:Lcomndanalytics/ac;

    invoke-virtual {v0}, Lcomndanalytics/ac;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    const-wide/16 v1, 0x1388

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/http/conn/ClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    iget-object v0, p0, Lcomndanalytics/ae;->a:Lcomndanalytics/ac;

    invoke-virtual {v0}, Lcomndanalytics/ac;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->closeExpiredConnections()V

    :cond_0
    return-void
.end method
