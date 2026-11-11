.class final Lcom/nd/commplatform/d/c/ho$1;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/ho;->a(Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic a:Lcom/nd/commplatform/d/c/ho;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/ho;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ho$1;->a:Lcom/nd/commplatform/d/c/ho;

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

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ho$1;->a:Lcom/nd/commplatform/d/c/ho;

    iget-object v1, v1, Lcom/nd/commplatform/d/c/ho;->c:Lcom/nd/commplatform/d/c/hn;

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdIcon;->getCheckSum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nd/commplatform/d/c/hn;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ho$1;->a:Lcom/nd/commplatform/d/c/ho;

    iget-object v1, v1, Lcom/nd/commplatform/d/c/ho;->b:Lcom/nd/commplatform/widget/NdMessageListItem;

    iget-object v1, v1, Lcom/nd/commplatform/widget/NdMessageListItem;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/nd/commplatform/d/c/ho$1;, "Lcom/nd/commplatform/d/c/ho.1;"
    check-cast p2, Lcom/nd/commplatform/entry/NdIcon;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/ho$1;->a(ILcom/nd/commplatform/entry/NdIcon;)V

    return-void
.end method
