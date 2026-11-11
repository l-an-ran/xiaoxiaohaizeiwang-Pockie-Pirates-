.class final Lcom/nd/commplatform/d/c/g$e$1;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/g$e;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/NdCallbackListener",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/g$e;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/g$e;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/g$e$1;->a:Lcom/nd/commplatform/d/c/g$e;

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

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g$e$1;->a:Lcom/nd/commplatform/d/c/g$e;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/g$e;->a:Lcom/nd/commplatform/d/c/g;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/g;->e(I)Lcom/nd/commplatform/NdCallbackListener;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g$e$1;->a:Lcom/nd/commplatform/d/c/g$e;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/g$e;->a:Lcom/nd/commplatform/d/c/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/g;->b(Z)V

    const/16 v0, -0x68

    if-eq p1, v0, :cond_0

    const/16 v0, -0x72

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/g$e$1;->a:Lcom/nd/commplatform/d/c/g$e;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/g$e;->a:Lcom/nd/commplatform/d/c/g;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/g;->f(Lcom/nd/commplatform/d/c/g;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    if-nez p1, :cond_2

    invoke-static {v2, p1}, Lcom/nd/commplatform/d/c/ol;->a(II)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g$e$1;->a:Lcom/nd/commplatform/d/c/g$e;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/g$e;->a:Lcom/nd/commplatform/d/c/g;

    new-instance v1, Lcom/nd/commplatform/d/c/g$e$1$1;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/g$e$1$1;-><init>(Lcom/nd/commplatform/d/c/g$e$1;)V

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/jb;->a(Lcom/nd/commplatform/widget/NdFrameInnerContent;Lcom/nd/commplatform/d/c/jb$a;)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/nd/commplatform/d/c/g$e$1;->a:Lcom/nd/commplatform/d/c/g$e;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/g$e;->a:Lcom/nd/commplatform/d/c/g;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/g;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/nd/commplatform/d/c/nt;->a(Lcom/nd/commplatform/NdCallbackListener;Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g$e$1;->a:Lcom/nd/commplatform/d/c/g$e;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/g$e;->a:Lcom/nd/commplatform/d/c/g;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/g;->g(Lcom/nd/commplatform/d/c/g;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method
