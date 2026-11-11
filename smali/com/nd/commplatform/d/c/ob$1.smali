.class Lcom/nd/commplatform/d/c/ob$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/ob;->c()Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/ob;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/ob;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ob$1;->a:Lcom/nd/commplatform/d/c/ob;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    if-ne v0, v2, :cond_1

    :cond_0
    if-ne v2, v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ob$1;->a:Lcom/nd/commplatform/d/c/ob;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ob;->a(Lcom/nd/commplatform/d/c/ob;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ob$1;->a:Lcom/nd/commplatform/d/c/ob;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ob;->b(Lcom/nd/commplatform/d/c/ob;)Lcom/nd/commplatform/NdCallbackListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/NdCallbackListener;->isDestroy()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ob$1;->a:Lcom/nd/commplatform/d/c/ob;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ob;->b(Lcom/nd/commplatform/d/c/ob;)Lcom/nd/commplatform/NdCallbackListener;

    move-result-object v0

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/NdCallbackListener;->callback(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method
