.class final Lcom/nd/commplatform/d/c/ex$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/ex;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/ex;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/ex;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ex$1;->a:Lcom/nd/commplatform/d/c/ex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ex$1;->a:Lcom/nd/commplatform/d/c/ex;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/ex;->b(Z)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ex$1;->a:Lcom/nd/commplatform/d/c/ex;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ex;->a(Lcom/nd/commplatform/d/c/ex;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ex$1;->a:Lcom/nd/commplatform/d/c/ex;

    new-instance v2, Lcom/nd/commplatform/d/c/ex$1$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/nd/commplatform/d/c/ex$1$1;-><init>(Lcom/nd/commplatform/d/c/ex$1;Landroid/view/View;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/nd/commplatform/d/c/ex;->a(Lcom/nd/commplatform/d/c/ex;Lcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ex$1;->a:Lcom/nd/commplatform/d/c/ex;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/ex$1;->a:Lcom/nd/commplatform/d/c/ex;

    invoke-static {v2}, Lcom/nd/commplatform/d/c/ex;->b(Lcom/nd/commplatform/d/c/ex;)Lcom/nd/commplatform/NdCallbackListener;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/nd/commplatform/d/c/ex;->a(ILcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/ex$1;->a:Lcom/nd/commplatform/d/c/ex;

    invoke-virtual {v2}, Lcom/nd/commplatform/d/c/ex;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/nd/commplatform/d/c/ex$1;->a:Lcom/nd/commplatform/d/c/ex;

    invoke-static {v3}, Lcom/nd/commplatform/d/c/ex;->b(Lcom/nd/commplatform/d/c/ex;)Lcom/nd/commplatform/NdCallbackListener;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/nd/commplatform/d/c/a;->b(Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method
