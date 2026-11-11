.class public Lcom/nd/commplatform/widget/NdAppPropertyHolder;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected a:Ljava/lang/String;

.field private b:Lcom/nd/commplatform/widget/NdAppPropertyItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcom/nd/commplatform/widget/NdAppPropertyItem;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/widget/NdAppPropertyHolder;->b:Lcom/nd/commplatform/widget/NdAppPropertyItem;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/widget/NdAppPropertyHolder;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 3

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdAppPropertyHolder;->b:Lcom/nd/commplatform/widget/NdAppPropertyItem;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdAppPropertyHolder;->b:Lcom/nd/commplatform/widget/NdAppPropertyItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdAppPropertyItem;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/nd/commplatform/widget/NdAppPropertyHolder;->b:Lcom/nd/commplatform/widget/NdAppPropertyItem;

    invoke-virtual {v1}, Lcom/nd/commplatform/widget/NdAppPropertyItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nd/commplatform/widget/NdAppPropertyHolder;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lcom/nd/commplatform/d/c/op;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdAppPropertyHolder;->b:Lcom/nd/commplatform/widget/NdAppPropertyItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdAppPropertyItem;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nd/commplatform/widget/NdAppPropertyHolder;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdAppPropertyHolder;->b:Lcom/nd/commplatform/widget/NdAppPropertyItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdAppPropertyItem;->c:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdAppPropertyHolder;->b:Lcom/nd/commplatform/widget/NdAppPropertyItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/widget/NdAppPropertyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/widget/NdAppPropertyHolder;->b:Lcom/nd/commplatform/widget/NdAppPropertyItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdAppPropertyItem;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/nd/commplatform/widget/NdAppPropertyHolder;->b:Lcom/nd/commplatform/widget/NdAppPropertyItem;

    invoke-virtual {v1}, Lcom/nd/commplatform/widget/NdAppPropertyItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nd/commplatform/widget/NdAppPropertyHolder;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdAppPropertyHolder;->b:Lcom/nd/commplatform/widget/NdAppPropertyItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdAppPropertyItem;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nd/commplatform/widget/NdAppPropertyHolder;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdAppPropertyHolder;->b:Lcom/nd/commplatform/widget/NdAppPropertyItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdAppPropertyItem;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdAppPropertyHolder;->b:Lcom/nd/commplatform/widget/NdAppPropertyItem;

    invoke-virtual {v0, p0}, Lcom/nd/commplatform/widget/NdAppPropertyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected c()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    invoke-virtual {p0}, Lcom/nd/commplatform/widget/NdAppPropertyHolder;->c()V

    return-void
.end method
