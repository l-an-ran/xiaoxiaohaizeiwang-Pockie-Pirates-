.class final Lcom/nd/commplatform/d/c/fp$1$1;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/fp$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/nd/commplatform/d/c/fp$1;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/fp$1;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/fp$1$1;->b:Lcom/nd/commplatform/d/c/fp$1;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/fp$1$1;->a:Landroid/view/View;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/Object;)V
    .locals 3
    .param p1, "responseCode"    # I
    .param p2, "t"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp$1$1;->b:Lcom/nd/commplatform/d/c/fp$1;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/fp$1;->a:Lcom/nd/commplatform/d/c/fp;

    invoke-virtual {v0, v2}, Lcom/nd/commplatform/d/c/fp;->b(Z)V

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp$1$1;->b:Lcom/nd/commplatform/d/c/fp$1;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/fp$1;->a:Lcom/nd/commplatform/d/c/fp;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/fp;->h(Lcom/nd/commplatform/d/c/fp;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp$1$1;->b:Lcom/nd/commplatform/d/c/fp$1;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/fp$1;->a:Lcom/nd/commplatform/d/c/fp;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/fp;->a(Lcom/nd/commplatform/d/c/fp;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp$1$1;->b:Lcom/nd/commplatform/d/c/fp$1;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/fp$1;->a:Lcom/nd/commplatform/d/c/fp;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/fp;->i(Lcom/nd/commplatform/d/c/fp;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp$1$1;->b:Lcom/nd/commplatform/d/c/fp$1;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/fp$1;->a:Lcom/nd/commplatform/d/c/fp;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/fp;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp$1$1;->b:Lcom/nd/commplatform/d/c/fp$1;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/fp$1;->a:Lcom/nd/commplatform/d/c/fp;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/fp;->j(Lcom/nd/commplatform/d/c/fp;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp$1$1;->b:Lcom/nd/commplatform/d/c/fp$1;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/fp$1;->a:Lcom/nd/commplatform/d/c/fp;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/fp;->k(Lcom/nd/commplatform/d/c/fp;)V

    :goto_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp$1$1;->a:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp$1$1;->b:Lcom/nd/commplatform/d/c/fp$1;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/fp$1;->a:Lcom/nd/commplatform/d/c/fp;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/fp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/nd/commplatform/d/c/nt;->a(Lcom/nd/commplatform/NdCallbackListener;Landroid/content/Context;I)V

    goto :goto_0
.end method
