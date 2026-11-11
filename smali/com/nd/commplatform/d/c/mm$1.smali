.class final Lcom/nd/commplatform/d/c/mm$1;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/mm;->a()V
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
.field final synthetic a:Lcom/nd/commplatform/d/c/mm;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/mm;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/mm$1;->a:Lcom/nd/commplatform/d/c/mm;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/nd/commplatform/entry/NdIcon;)V
    .locals 2

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdIcon;->getImg()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mm$1;->a:Lcom/nd/commplatform/d/c/mm;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/mm;->a:Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;

    check-cast v0, Lcom/nd/commplatform/uap/widget/NdActivityDescriptionPlusImageView;

    iget-object v0, v0, Lcom/nd/commplatform/uap/widget/NdActivityDescriptionPlusImageView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mm$1;->a:Lcom/nd/commplatform/d/c/mm;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/mm;->b:Lcom/nd/commplatform/d/c/mr;

    check-cast v0, Lcom/nd/commplatform/d/c/mo;

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdIcon;->getCheckSum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/mo;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p2, Lcom/nd/commplatform/entry/NdIcon;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/mm$1;->a(ILcom/nd/commplatform/entry/NdIcon;)V

    return-void
.end method
