.class Lcomndanalytics/ai;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# instance fields
.field final synthetic a:Lcomndanalytics/ac;


# direct methods
.method constructor <init>(Lcomndanalytics/ac;)V
    .locals 0

    iput-object p1, p0, Lcomndanalytics/ai;->a:Lcomndanalytics/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 3
    .param p1, "arg0"    # Ljava/lang/Runnable;
    .param p2, "arg1"    # Ljava/util/concurrent/ThreadPoolExecutor;

    .prologue
    invoke-static {}, Lcomndanalytics/ac;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t submit runnable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcomndanalytics/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
