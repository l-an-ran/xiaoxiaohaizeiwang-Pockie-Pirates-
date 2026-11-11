.class Lcomndanalytics/af;
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

    iput-object p1, p0, Lcomndanalytics/af;->c:Lcomndanalytics/ac;

    iput-object p2, p0, Lcomndanalytics/af;->a:Lcomndanalytics/aa;

    iput-object p3, p0, Lcomndanalytics/af;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcomndanalytics/af;->c:Lcomndanalytics/ac;

    invoke-static {v0}, Lcomndanalytics/ac;->a(Lcomndanalytics/ac;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcomndanalytics/af;->a:Lcomndanalytics/aa;

    invoke-virtual {v0}, Lcomndanalytics/aa;->k()V

    iget-object v0, p0, Lcomndanalytics/af;->c:Lcomndanalytics/ac;

    invoke-static {v0}, Lcomndanalytics/ac;->b(Lcomndanalytics/ac;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcomndanalytics/af;->b:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
