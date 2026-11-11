.class final Lcom/nd/commplatform/d/c/jh$3;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/jh;->b()V
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

    iput-object p1, p0, Lcom/nd/commplatform/d/c/jh$3;->a:Lcom/nd/commplatform/d/c/jh;

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

    iget-object v0, p0, Lcom/nd/commplatform/d/c/jh$3;->a:Lcom/nd/commplatform/d/c/jh;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/jh;->c(Lcom/nd/commplatform/d/c/jh;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/jh$3;->a:Lcom/nd/commplatform/d/c/jh;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/jh;->b(Z)V

    sparse-switch p1, :sswitch_data_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/jh$3;->a:Lcom/nd/commplatform/d/c/jh;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/jh;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/nd/commplatform/d/c/nt;->a(Lcom/nd/commplatform/NdCallbackListener;Landroid/content/Context;I)V

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/jh$3;->a:Lcom/nd/commplatform/d/c/jh;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/jh;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->nv:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/jh$3;->a:Lcom/nd/commplatform/d/c/jh;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/jh;->d(Lcom/nd/commplatform/d/c/jh;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/jh$3;->a:Lcom/nd/commplatform/d/c/jh;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/jh;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->lI:I

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;I)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x61ac -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method
