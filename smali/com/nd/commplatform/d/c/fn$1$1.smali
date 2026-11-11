.class final Lcom/nd/commplatform/d/c/fn$1$1;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/fn$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/nd/commplatform/d/c/fn$1;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/fn$1;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/fn$1$1;->b:Lcom/nd/commplatform/d/c/fn$1;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/fn$1$1;->a:Landroid/view/View;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/Object;)V
    .locals 4
    .param p1, "responseCode"    # I
    .param p2, "t"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fn$1$1;->b:Lcom/nd/commplatform/d/c/fn$1;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/fn$1;->a:Lcom/nd/commplatform/d/c/fn;

    invoke-virtual {v0, v2}, Lcom/nd/commplatform/d/c/fn;->e(I)Lcom/nd/commplatform/NdCallbackListener;

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fn$1$1;->b:Lcom/nd/commplatform/d/c/fn$1;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/fn$1;->a:Lcom/nd/commplatform/d/c/fn;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/fn;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->cQ:I

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fn$1$1;->b:Lcom/nd/commplatform/d/c/fn$1;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/fn$1;->a:Lcom/nd/commplatform/d/c/fn;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/fn;->b(Lcom/nd/commplatform/d/c/fn;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/ff;

    invoke-virtual {v0, v3}, Lcom/nd/commplatform/d/c/ff;->a(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/cb;->a(Lcom/nd/commplatform/d/c/bx;)V

    :goto_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fn$1$1;->a:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fn$1$1;->b:Lcom/nd/commplatform/d/c/fn$1;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/fn$1;->a:Lcom/nd/commplatform/d/c/fn;

    invoke-virtual {v0, v2}, Lcom/nd/commplatform/d/c/fn;->b(Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fn$1$1;->b:Lcom/nd/commplatform/d/c/fn$1;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/fn$1;->a:Lcom/nd/commplatform/d/c/fn;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/fn;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/nd/commplatform/d/c/nt;->a(Lcom/nd/commplatform/NdCallbackListener;Landroid/content/Context;I)V

    goto :goto_1
.end method
