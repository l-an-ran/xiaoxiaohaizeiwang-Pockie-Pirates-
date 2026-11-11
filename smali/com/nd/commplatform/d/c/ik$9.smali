.class final Lcom/nd/commplatform/d/c/ik$9;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/ik;->o()V
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
.field final synthetic a:Lcom/nd/commplatform/d/c/ik;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/ik;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ik$9;->a:Lcom/nd/commplatform/d/c/ik;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/nd/commplatform/entry/NdIcon;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ik$9;->a:Lcom/nd/commplatform/d/c/ik;

    invoke-virtual {v0, v2}, Lcom/nd/commplatform/d/c/ik;->b(Z)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdIcon;->getImg()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ik$9;->a:Lcom/nd/commplatform/d/c/ik;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/ik;->b:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdIcon;->getImg()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ik$9;->a:Lcom/nd/commplatform/d/c/ik;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ik;->a(Lcom/nd/commplatform/d/c/ik;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ik$9;->a:Lcom/nd/commplatform/d/c/ik;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ik;->b(Lcom/nd/commplatform/d/c/ik;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ik$9;->a:Lcom/nd/commplatform/d/c/ik;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/ik;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ik$9;->a:Lcom/nd/commplatform/d/c/ik;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ik;->c(Lcom/nd/commplatform/d/c/ik;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p2, Lcom/nd/commplatform/entry/NdIcon;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/ik$9;->a(ILcom/nd/commplatform/entry/NdIcon;)V

    return-void
.end method
