.class final Lcom/nd/commplatform/d/c/jj$4;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/jj;->c()V
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

    iput-object p1, p0, Lcom/nd/commplatform/d/c/jj$4;->a:Lcom/nd/commplatform/d/c/jj;

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

    iget-object v0, p0, Lcom/nd/commplatform/d/c/jj$4;->a:Lcom/nd/commplatform/d/c/jj;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/jj;->d(Lcom/nd/commplatform/d/c/jj;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/jj$4;->a:Lcom/nd/commplatform/d/c/jj;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/jj;->b(Z)V

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/jj$4;->a:Lcom/nd/commplatform/d/c/jj;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/jj;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/nd/commplatform/d/c/nt;->a(Lcom/nd/commplatform/NdCallbackListener;Landroid/content/Context;I)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/jj$4;->a:Lcom/nd/commplatform/d/c/jj;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/jj;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->nv:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/jj$4;->a:Lcom/nd/commplatform/d/c/jj;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/jj;->e(Lcom/nd/commplatform/d/c/jj;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
