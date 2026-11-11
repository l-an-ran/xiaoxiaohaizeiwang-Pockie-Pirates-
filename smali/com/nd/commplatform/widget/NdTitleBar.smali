.class public Lcom/nd/commplatform/widget/NdTitleBar;
.super Landroid/widget/RelativeLayout;


# static fields
.field private static final d:I = 0xa


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/nd/commplatform/widget/NdTitleBar;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/nd/commplatform/widget/NdTitleBar;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/nd/commplatform/widget/NdTitleBar;->a()V

    return-void
.end method

.method private a()V
    .locals 1

    sget v0, Lcom/nd/commplatform/d/c/jo$d;->bE:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/widget/NdTitleBar;->setBackgroundResource(I)V

    invoke-direct {p0}, Lcom/nd/commplatform/widget/NdTitleBar;->b()V

    invoke-direct {p0}, Lcom/nd/commplatform/widget/NdTitleBar;->c()V

    invoke-direct {p0}, Lcom/nd/commplatform/widget/NdTitleBar;->d()V

    return-void
.end method

.method private static a(Landroid/widget/Button;ZLjava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {p0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private b()V
    .locals 4

    const/4 v3, -0x2

    const/4 v2, 0x0

    new-instance v0, Landroid/widget/Button;

    invoke-super {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nd/commplatform/widget/NdTitleBar;->a:Landroid/widget/Button;

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdTitleBar;->a:Landroid/widget/Button;

    sget v1, Lcom/nd/commplatform/d/c/jo$e;->cY:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/nd/commplatform/widget/NdTitleBar;->a:Landroid/widget/Button;

    invoke-virtual {p0, v1, v0}, Lcom/nd/commplatform/widget/NdTitleBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdTitleBar;->a:Landroid/widget/Button;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdTitleBar;->a:Landroid/widget/Button;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdTitleBar;->a:Landroid/widget/Button;

    sget v1, Lcom/nd/commplatform/d/c/jo$d;->bH:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdTitleBar;->a:Landroid/widget/Button;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    return-void
.end method

.method private c()V
    .locals 4

    const/4 v3, -0x2

    const/4 v2, 0x0

    new-instance v0, Landroid/widget/Button;

    invoke-super {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nd/commplatform/widget/NdTitleBar;->b:Landroid/widget/Button;

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdTitleBar;->b:Landroid/widget/Button;

    sget v1, Lcom/nd/commplatform/d/c/jo$e;->gb:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xa

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/nd/commplatform/widget/NdTitleBar;->b:Landroid/widget/Button;

    invoke-virtual {p0, v1, v0}, Lcom/nd/commplatform/widget/NdTitleBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdTitleBar;->b:Landroid/widget/Button;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdTitleBar;->b:Landroid/widget/Button;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdTitleBar;->b:Landroid/widget/Button;

    sget v1, Lcom/nd/commplatform/d/c/jo$d;->bD:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    return-void
.end method

.method private d()V
    .locals 6

    const/4 v5, -0x2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x1

    sget v4, Lcom/nd/commplatform/d/c/jo$e;->cY:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v3, 0x0

    sget v4, Lcom/nd/commplatform/d/c/jo$e;->gb:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0, v1, v2}, Lcom/nd/commplatform/widget/NdTitleBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/nd/commplatform/widget/NdTitleBar;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/nd/commplatform/widget/NdTitleBar;->c:Landroid/widget/TextView;

    sget v3, Lcom/nd/commplatform/d/c/jo$e;->gW:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setId(I)V

    iget-object v2, p0, Lcom/nd/commplatform/widget/NdTitleBar;->c:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v2, p0, Lcom/nd/commplatform/widget/NdTitleBar;->c:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/SingleLineTransformationMethod;->getInstance()Landroid/text/method/SingleLineTransformationMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v2, p0, Lcom/nd/commplatform/widget/NdTitleBar;->c:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v2, p0, Lcom/nd/commplatform/widget/NdTitleBar;->c:Landroid/widget/TextView;

    sget v3, Lcom/nd/commplatform/d/c/jo$i;->k:I

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/nd/commplatform/widget/NdTitleBar;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdTitleBar;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(ZLjava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdTitleBar;->a:Landroid/widget/Button;

    invoke-static {v0, p1, p2, p3}, Lcom/nd/commplatform/widget/NdTitleBar;->a(Landroid/widget/Button;ZLjava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public b(ZLjava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdTitleBar;->b:Landroid/widget/Button;

    invoke-static {v0, p1, p2, p3}, Lcom/nd/commplatform/widget/NdTitleBar;->a(Landroid/widget/Button;ZLjava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method
