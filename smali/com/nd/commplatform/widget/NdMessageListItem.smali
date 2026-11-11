.class public Lcom/nd/commplatform/widget/NdMessageListItem;
.super Landroid/widget/RelativeLayout;


# instance fields
.field public a:Landroid/widget/ImageView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/ImageView;

.field public e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a()V
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->hl:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/widget/NdMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/widget/NdMessageListItem;->b:Landroid/widget/TextView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->du:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/widget/NdMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/widget/NdMessageListItem;->c:Landroid/widget/TextView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->hh:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/widget/NdMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nd/commplatform/widget/NdMessageListItem;->d:Landroid/widget/ImageView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->dg:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/widget/NdMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/widget/NdMessageListItem;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdMessageListItem;->e:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->fa:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/widget/NdMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nd/commplatform/widget/NdMessageListItem;->a:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    invoke-direct {p0}, Lcom/nd/commplatform/widget/NdMessageListItem;->a()V

    return-void
.end method
