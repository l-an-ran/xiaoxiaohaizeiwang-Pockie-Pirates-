.class final Lcom/nd/commplatform/d/c/n$2;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/n;->b()V
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
.field final synthetic a:Lcom/nd/commplatform/d/c/n;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/n;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/n$2;->a:Lcom/nd/commplatform/d/c/n;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/Object;)V
    .locals 4
    .param p1, "responseCode"    # I
    .param p2, "t"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    const/16 v2, -0x1f

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/n$2;->a:Lcom/nd/commplatform/d/c/n;

    invoke-virtual {v0, v3}, Lcom/nd/commplatform/d/c/n;->b(Z)V

    invoke-static {v3}, Lcom/nd/commplatform/d/c/jb;->b(Z)V

    if-nez p1, :cond_1

    invoke-static {v1, v2}, Lcom/nd/commplatform/d/c/ol;->a(II)V

    const/4 v0, 0x3

    invoke-static {v0, v2}, Lcom/nd/commplatform/d/c/ol;->a(II)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/n$2;->a:Lcom/nd/commplatform/d/c/n;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/n;->a(Lcom/nd/commplatform/d/c/n;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/nd/commplatform/d/c/cb;->b(Z)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/cb;->a(Lcom/nd/commplatform/d/c/bx;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/n$2;->a:Lcom/nd/commplatform/d/c/n;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/n;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/nd/commplatform/d/c/nt;->a(Lcom/nd/commplatform/NdCallbackListener;Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/n$2;->a:Lcom/nd/commplatform/d/c/n;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/n;->b(Lcom/nd/commplatform/d/c/n;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
