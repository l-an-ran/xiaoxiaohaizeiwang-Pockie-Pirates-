.class Lcomndanalytics/ag;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcomndanalytics/aa;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lcomndanalytics/ac;


# direct methods
.method constructor <init>(Lcomndanalytics/ac;Lcomndanalytics/aa;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcomndanalytics/ag;->c:Lcomndanalytics/ac;

    iput-object p2, p0, Lcomndanalytics/ag;->a:Lcomndanalytics/aa;

    iput-object p3, p0, Lcomndanalytics/ag;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcomndanalytics/ag;->a:Lcomndanalytics/aa;

    invoke-virtual {v0}, Lcomndanalytics/aa;->e()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcomndanalytics/ag;->a:Lcomndanalytics/aa;

    invoke-virtual {v0}, Lcomndanalytics/aa;->e()Ljava/util/concurrent/Future;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcomndanalytics/ag;->a:Lcomndanalytics/aa;

    invoke-virtual {v0}, Lcomndanalytics/aa;->l()V

    iget-object v0, p0, Lcomndanalytics/ag;->c:Lcomndanalytics/ac;

    invoke-static {v0}, Lcomndanalytics/ac;->b(Lcomndanalytics/ac;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcomndanalytics/ag;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
