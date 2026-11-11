.class final Lcom/nd/commplatform/d/c/jj$6;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/jj;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/jj;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/jj;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/jj$6;->a:Lcom/nd/commplatform/d/c/jj;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/Object;)V
    .locals 3
    .param p1, "responseCode"    # I
    .param p2, "t"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/jj$6;->a:Lcom/nd/commplatform/d/c/jj;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/jj;->j(Lcom/nd/commplatform/d/c/jj;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/jj$6;->a:Lcom/nd/commplatform/d/c/jj;

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/jj;->b(Z)V

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/jj$6;->a:Lcom/nd/commplatform/d/c/jj;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/jj;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/nd/commplatform/d/c/nt;->a(Lcom/nd/commplatform/NdCallbackListener;Landroid/content/Context;I)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/jj$6;->a:Lcom/nd/commplatform/d/c/jj;

    invoke-virtual {v0, v2}, Lcom/nd/commplatform/d/c/jj;->b(Z)V

    invoke-static {v1}, Lcom/nd/commplatform/d/c/jb;->b(Z)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/jj$6;->a:Lcom/nd/commplatform/d/c/jj;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/jj;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/nd/commplatform/d/c/jj$6$1;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/jj$6$1;-><init>(Lcom/nd/commplatform/d/c/jj$6;)V

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/jb;->a(Landroid/content/Context;Lcom/nd/commplatform/d/c/jb$b;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
