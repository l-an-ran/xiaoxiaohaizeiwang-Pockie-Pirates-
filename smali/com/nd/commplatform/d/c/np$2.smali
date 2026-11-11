.class final Lcom/nd/commplatform/d/c/np$2;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/np;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/np;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/np;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/np$2;->a:Lcom/nd/commplatform/d/c/np;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/np$2;->a:Lcom/nd/commplatform/d/c/np;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/np;->b:Lcom/nd/commplatform/NdCallbackListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/np$2;->a:Lcom/nd/commplatform/d/c/np;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/np;->b:Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {v0}, Lcom/nd/commplatform/NdCallbackListener;->isDestroy()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/np$2;->a:Lcom/nd/commplatform/d/c/np;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/np;->a()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/nd/commplatform/d/c/np$2;->a:Lcom/nd/commplatform/d/c/np;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/np;->g:Lcom/nd/commplatform/d/c/np$b;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/np$2;->a:Lcom/nd/commplatform/d/c/np;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/np;->g:Lcom/nd/commplatform/d/c/np$b;

    invoke-interface {v0}, Lcom/nd/commplatform/d/c/np$b;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/np$2;->a:Lcom/nd/commplatform/d/c/np;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/np;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/np$2;->a:Lcom/nd/commplatform/d/c/np;

    iget-object v1, v1, Lcom/nd/commplatform/d/c/np;->f:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/nd/commplatform/d/c/np$2;->a:Lcom/nd/commplatform/d/c/np;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/np;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/np$2;->a:Lcom/nd/commplatform/d/c/np;

    iget-object v1, v1, Lcom/nd/commplatform/d/c/np;->f:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
