.class final Lcom/nd/commplatform/d/c/ez$13;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/ez;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/NdCallbackListener",
        "<",
        "Lcom/nd/commplatform/entry/NdIcon;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/ez;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/ez;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ez$13;->a:Lcom/nd/commplatform/d/c/ez;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/nd/commplatform/entry/NdIcon;)V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez$13;->a:Lcom/nd/commplatform/d/c/ez;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/ez;->b(Z)V

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdIcon;->getImg()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez$13;->a:Lcom/nd/commplatform/d/c/ez;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ez;->e(Lcom/nd/commplatform/d/c/ez;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdIcon;->getImg()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez$13;->a:Lcom/nd/commplatform/d/c/ez;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ez;->f(Lcom/nd/commplatform/d/c/ez;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdIcon;->getImg()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez$13;->a:Lcom/nd/commplatform/d/c/ez;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ez;->e(Lcom/nd/commplatform/d/c/ez;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$d;->aa:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez$13;->a:Lcom/nd/commplatform/d/c/ez;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ez;->f(Lcom/nd/commplatform/d/c/ez;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$d;->aa:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p2, Lcom/nd/commplatform/entry/NdIcon;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/ez$13;->a(ILcom/nd/commplatform/entry/NdIcon;)V

    return-void
.end method
