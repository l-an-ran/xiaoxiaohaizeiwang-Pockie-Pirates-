.class final Lcom/nd/commplatform/d/c/gh$4;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/gh;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/NdCallbackListener",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/gh;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/gh;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/gh$4;->a:Lcom/nd/commplatform/d/c/gh;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gh$4;->a:Lcom/nd/commplatform/d/c/gh;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/gh;->b(Z)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gh$4;->a:Lcom/nd/commplatform/d/c/gh;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/gh;->d(Lcom/nd/commplatform/d/c/gh;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-static {}, Lcom/nd/commplatform/d/c/cb;->f()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gh$4;->a:Lcom/nd/commplatform/d/c/gh;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/gh;->e(Lcom/nd/commplatform/d/c/gh;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/nd/commplatform/d/c/nt;->a(Lcom/nd/commplatform/NdCallbackListener;Landroid/content/Context;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/gh$4;->a:Lcom/nd/commplatform/d/c/gh;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/gh;->f(Lcom/nd/commplatform/d/c/gh;)Lcom/nd/commplatform/d/c/hf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/hf;->a()V

    goto :goto_0
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p2, Ljava/lang/String;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/gh$4;->a(ILjava/lang/String;)V

    return-void
.end method
