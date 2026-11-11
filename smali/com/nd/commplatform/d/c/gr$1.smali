.class final Lcom/nd/commplatform/d/c/gr$1;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/gr;->a(Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic a:Lcom/nd/commplatform/d/c/gr;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/gr;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/gr$1;->a:Lcom/nd/commplatform/d/c/gr;

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

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gr$1;->a:Lcom/nd/commplatform/d/c/gr;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/gr;->a:Lcom/nd/commplatform/d/c/hg;

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdIcon;->getCheckSum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nd/commplatform/d/c/hg;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gr$1;->a:Lcom/nd/commplatform/d/c/gr;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/gr;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/entry/NdAppAchieveInfo;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdAppAchieveInfo;->isUnlock()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gr$1;->a:Lcom/nd/commplatform/d/c/gr;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/gr;->b:Lcom/nd/commplatform/widget/NdUserListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdUserListItem;->b:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/op;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/nd/commplatform/d/c/gr$1;->a:Lcom/nd/commplatform/d/c/gr;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/gr;->b:Lcom/nd/commplatform/widget/NdUserListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdUserListItem;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p2, Lcom/nd/commplatform/entry/NdIcon;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/gr$1;->a(ILcom/nd/commplatform/entry/NdIcon;)V

    return-void
.end method
