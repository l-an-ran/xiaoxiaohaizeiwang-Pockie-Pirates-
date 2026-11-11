.class Lcomndanalytics/ah;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:J

.field final synthetic c:Lcomndanalytics/aa;

.field final synthetic d:Ljava/lang/Runnable;

.field final synthetic e:Lcomndanalytics/ac;


# direct methods
.method constructor <init>(Lcomndanalytics/ac;Ljava/lang/Runnable;JLcomndanalytics/aa;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcomndanalytics/ah;->e:Lcomndanalytics/ac;

    iput-object p2, p0, Lcomndanalytics/ah;->a:Ljava/lang/Runnable;

    iput-wide p3, p0, Lcomndanalytics/ah;->b:J

    iput-object p5, p0, Lcomndanalytics/ah;->c:Lcomndanalytics/aa;

    iput-object p6, p0, Lcomndanalytics/ah;->d:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcomndanalytics/ah;->e:Lcomndanalytics/ac;

    invoke-static {v0}, Lcomndanalytics/ac;->b(Lcomndanalytics/ac;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcomndanalytics/ah;->a:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcomndanalytics/ah;->b:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcomndanalytics/ah;->c:Lcomndanalytics/aa;

    iget-object v1, p0, Lcomndanalytics/ah;->e:Lcomndanalytics/ac;

    invoke-virtual {v0, v1}, Lcomndanalytics/aa;->a(Lorg/apache/http/impl/client/AbstractHttpClient;)V

    iget-object v0, p0, Lcomndanalytics/ah;->e:Lcomndanalytics/ac;

    invoke-static {v0}, Lcomndanalytics/ac;->b(Lcomndanalytics/ac;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcomndanalytics/ah;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcomndanalytics/ah;->e:Lcomndanalytics/ac;

    invoke-static {v0}, Lcomndanalytics/ac;->b(Lcomndanalytics/ac;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcomndanalytics/ah;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
