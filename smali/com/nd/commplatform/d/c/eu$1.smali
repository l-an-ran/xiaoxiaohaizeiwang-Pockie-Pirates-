.class final Lcom/nd/commplatform/d/c/eu$1;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/eu;->m()V
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
.field final synthetic a:Lcom/nd/commplatform/d/c/eu;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/eu;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/eu$1;->a:Lcom/nd/commplatform/d/c/eu;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/nd/commplatform/entry/NdIcon;)V
    .locals 3

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdIcon;->getImg()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/eu$1;->a:Lcom/nd/commplatform/d/c/eu;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/eu;->a(Lcom/nd/commplatform/d/c/eu;)Lcom/nd/commplatform/entry/NdProductInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/eu$1;->a:Lcom/nd/commplatform/d/c/eu;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/eu;->a(Lcom/nd/commplatform/d/c/eu;)Lcom/nd/commplatform/entry/NdProductInfo;

    move-result-object v1

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdIcon;->getCheckSum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nd/commplatform/entry/NdProductInfo;->setCheckSum(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/eu$1;->a:Lcom/nd/commplatform/d/c/eu;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/eu;->b(Lcom/nd/commplatform/d/c/eu;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p2, Lcom/nd/commplatform/entry/NdIcon;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/eu$1;->a(ILcom/nd/commplatform/entry/NdIcon;)V

    return-void
.end method
