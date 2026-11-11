.class public Lcom/nd/commplatform/d/c/gr;
.super Lcom/nd/commplatform/d/c/hx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/d/c/hx",
        "<",
        "Lcom/nd/commplatform/entry/NdAppAchieveInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/nd/commplatform/widget/NdUserListItem;Lcom/nd/commplatform/d/c/hg;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nd/commplatform/widget/NdUserListItem;",
            "Lcom/nd/commplatform/d/c/hg",
            "<",
            "Lcom/nd/commplatform/entry/NdAppAchieveInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/nd/commplatform/d/c/hx;-><init>(Lcom/nd/commplatform/widget/NdUserListItem;Lcom/nd/commplatform/d/c/hg;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/gr;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/entry/NdAppAchieveInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdAppAchieveInfo;->isUnlock()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gr;->b:Lcom/nd/commplatform/widget/NdUserListItem;

    invoke-virtual {v0}, Lcom/nd/commplatform/widget/NdUserListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$d;->aE:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/gr;->b:Lcom/nd/commplatform/widget/NdUserListItem;

    iget-object v1, v1, Lcom/nd/commplatform/widget/NdUserListItem;->b:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/op;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/gr;->b:Lcom/nd/commplatform/widget/NdUserListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdUserListItem;->b:Landroid/widget/ImageView;

    sget v1, Lcom/nd/commplatform/d/c/jo$d;->aE:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/gr;->a()V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string v2, ""

    :goto_1
    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    new-instance v1, Lcom/nd/commplatform/d/c/gr$1;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/gr$1;-><init>(Lcom/nd/commplatform/d/c/gr;)V

    iput-object v1, p0, Lcom/nd/commplatform/d/c/gr;->c:Lcom/nd/commplatform/NdCallbackListener;

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/nd/commplatform/d/c/gr;->b:Lcom/nd/commplatform/widget/NdUserListItem;

    invoke-virtual {v1}, Lcom/nd/commplatform/widget/NdUserListItem;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/nd/commplatform/d/c/gr;->c:Lcom/nd/commplatform/NdCallbackListener;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/a;->c(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z

    goto :goto_0

    :cond_1
    move-object v2, p2

    goto :goto_1
.end method

.method protected a(Z)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gr;->b:Lcom/nd/commplatform/widget/NdUserListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdUserListItem;->d:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
