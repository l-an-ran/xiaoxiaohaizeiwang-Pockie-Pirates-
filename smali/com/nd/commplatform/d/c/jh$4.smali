.class final Lcom/nd/commplatform/d/c/jh$4;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/jh;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/jh;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/jh;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/jh$4;->a:Lcom/nd/commplatform/d/c/jh;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/jh$4;->a:Lcom/nd/commplatform/d/c/jh;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/jh;->e(Lcom/nd/commplatform/d/c/jh;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/jh$4;->a:Lcom/nd/commplatform/d/c/jh;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/jh;->f(Lcom/nd/commplatform/d/c/jh;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/jh$4;->a:Lcom/nd/commplatform/d/c/jh;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/jh;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->lM:I

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/nd/commplatform/d/c/jh$4;->a:Lcom/nd/commplatform/d/c/jh;

    invoke-static {v5}, Lcom/nd/commplatform/d/c/jh;->e(Lcom/nd/commplatform/d/c/jh;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/jh$4;->a:Lcom/nd/commplatform/d/c/jh;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/jh;->g(Lcom/nd/commplatform/d/c/jh;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/nd/commplatform/d/c/jh$4;->a:Lcom/nd/commplatform/d/c/jh;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/jh;->h(Lcom/nd/commplatform/d/c/jh;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/jh$4;->a:Lcom/nd/commplatform/d/c/jh;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/jh;->c(Lcom/nd/commplatform/d/c/jh;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/jh$4;->a:Lcom/nd/commplatform/d/c/jh;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/jh;->f(Lcom/nd/commplatform/d/c/jh;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/jh$4;->a:Lcom/nd/commplatform/d/c/jh;

    const/16 v1, 0x28

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/jh;->a(Lcom/nd/commplatform/d/c/jh;I)I

    goto :goto_0
.end method
