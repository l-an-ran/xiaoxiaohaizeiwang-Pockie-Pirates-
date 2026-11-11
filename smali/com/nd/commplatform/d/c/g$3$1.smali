.class final Lcom/nd/commplatform/d/c/g$3$1;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/g$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/DialogInterface;

.field final synthetic b:Lcom/nd/commplatform/d/c/g$3;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/g$3;Landroid/content/DialogInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/g$3$1;->b:Lcom/nd/commplatform/d/c/g$3;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/g$3$1;->a:Landroid/content/DialogInterface;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/Object;)V
    .locals 2
    .param p1, "responseCode"    # I
    .param p2, "t"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/d/c/g$3$1;->b:Lcom/nd/commplatform/d/c/g$3;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/g$3;->b:Lcom/nd/commplatform/d/c/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/g;->b(Z)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g$3$1;->b:Lcom/nd/commplatform/d/c/g$3;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/g$3;->a:Lcom/nd/commplatform/d/c/g$a;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/g$a;->clear()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g$3$1;->b:Lcom/nd/commplatform/d/c/g$3;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/g$3;->b:Lcom/nd/commplatform/d/c/g;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/g;->a(Lcom/nd/commplatform/d/c/g;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g$3$1;->b:Lcom/nd/commplatform/d/c/g$3;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/g$3;->b:Lcom/nd/commplatform/d/c/g;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/g;->f(Lcom/nd/commplatform/d/c/g;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g$3$1;->a:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->cancel()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/g$3$1;->b:Lcom/nd/commplatform/d/c/g$3;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/g$3;->b:Lcom/nd/commplatform/d/c/g;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/g;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/nd/commplatform/d/c/nt;->a(Lcom/nd/commplatform/NdCallbackListener;Landroid/content/Context;I)V

    goto :goto_0
.end method
