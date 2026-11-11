.class final Lcom/nd/commplatform/d/c/fa$2$1;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/fa$2;->a(ILjava/util/List;)V
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
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/nd/commplatform/d/c/fa$2;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/fa$2;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/fa$2$1;->b:Lcom/nd/commplatform/d/c/fa$2;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/fa$2$1;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/nd/commplatform/entry/NdIcon;)V
    .locals 2

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdIcon;->getImg()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fa$2$1;->a:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdIcon;->getImg()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p2, Lcom/nd/commplatform/entry/NdIcon;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/fa$2$1;->a(ILcom/nd/commplatform/entry/NdIcon;)V

    return-void
.end method
