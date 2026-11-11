.class public Lcom/nd/commplatform/uap/widget/NdActivityDescriptionPlusImageView;
.super Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;


# instance fields
.field public b:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a()V
    .locals 1

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->aG:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/uap/widget/NdActivityDescriptionPlusImageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nd/commplatform/uap/widget/NdActivityDescriptionPlusImageView;->b:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;->onFinishInflate()V

    invoke-direct {p0}, Lcom/nd/commplatform/uap/widget/NdActivityDescriptionPlusImageView;->a()V

    return-void
.end method
