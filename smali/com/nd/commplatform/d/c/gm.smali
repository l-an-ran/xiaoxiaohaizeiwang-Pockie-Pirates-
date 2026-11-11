.class public Lcom/nd/commplatform/d/c/gm;
.super Lcom/nd/commplatform/widget/NdFrameInnerContent;


# static fields
.field private static final h:Ljava/lang/String; = "Key"


# instance fields
.field a:Z

.field private b:Lcom/nd/commplatform/message/widget/NdSysMessageAppView;

.field private c:Lcom/nd/commplatform/d/c/gq;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/LinearLayout;

.field private g:Lcom/nd/commplatform/d/c/gf;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nd/commplatform/d/c/gm;->a:Z

    return-void
.end method

.method public static a(Lcom/nd/commplatform/d/c/gf;)V
    .locals 2

    new-instance v0, Lcom/nd/commplatform/d/c/bx;

    const/16 v1, 0xbcc

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/bx;-><init>(I)V

    const-string v1, "Key"

    invoke-virtual {v0, v1, p0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x7e

    invoke-static {v1, v0}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    return-void
.end method

.method private b()V
    .locals 3

    new-instance v0, Lcom/nd/commplatform/d/c/gq;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/gm;->b:Lcom/nd/commplatform/message/widget/NdSysMessageAppView;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/gm;->g:Lcom/nd/commplatform/d/c/gf;

    invoke-direct {v0, v1, v2}, Lcom/nd/commplatform/d/c/gq;-><init>(Lcom/nd/commplatform/message/widget/NdSysMessageAppView;Lcom/nd/commplatform/d/c/gf;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/gm;->c:Lcom/nd/commplatform/d/c/gq;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gm;->c:Lcom/nd/commplatform/d/c/gq;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/gq;->a()V

    return-void
.end method

.method private c()V
    .locals 7

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gm;->g:Lcom/nd/commplatform/d/c/gf;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/gf;->j()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/fw;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/fw;->b()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :goto_1
    new-instance v4, Landroid/widget/Button;

    invoke-super {p0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setGravity(I)V

    sget v5, Lcom/nd/commplatform/d/c/jo$d;->D:I

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/fw;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-super {p0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/nd/commplatform/d/c/jo$b;->d:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    new-instance v0, Lcom/nd/commplatform/d/c/gm$1;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/gm$1;-><init>(Lcom/nd/commplatform/d/c/gm;)V

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gm;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :sswitch_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/nd/commplatform/d/c/gm;->a:Z

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/nd/commplatform/d/c/gm;->m()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x65 -> :sswitch_0
        0x66 -> :sswitch_0
        0x67 -> :sswitch_0
    .end sparse-switch
.end method

.method private m()V
    .locals 8

    const/4 v7, -0x2

    const/4 v6, 0x5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gm;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    invoke-static {}, Lcom/nd/commplatform/d/c/cb;->g()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/nd/commplatform/d/c/gm;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gm;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lcom/nd/commplatform/d/c/gm;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v1, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v4, v6, v1, v6, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/gm;->f:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lcom/nd/commplatform/d/c/gm;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v1, v1, v1, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private n()V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gm;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/gm;->g:Lcom/nd/commplatform/d/c/gf;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/gf;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gm;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/gm;->g:Lcom/nd/commplatform/d/c/gf;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/gf;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private o()V
    .locals 3

    const/16 v2, 0xbcc

    invoke-static {v2}, Lcom/nd/commplatform/d/c/cb;->b(I)Lcom/nd/commplatform/d/c/bx;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "Key"

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/gf;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/gm;->g:Lcom/nd/commplatform/d/c/gf;

    :cond_0
    invoke-static {v2}, Lcom/nd/commplatform/d/c/cb;->c(I)Lcom/nd/commplatform/d/c/bx;

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->bc:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lcom/nd/commplatform/widget/NdFrameInnerContent;
    .locals 1

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/gm;->m()V

    invoke-super {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->a(I)Lcom/nd/commplatform/widget/NdFrameInnerContent;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/gm;->p:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/gm;->q:Z

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->jX:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/gm;->r:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/nd/commplatform/d/c/gm;->s:Z

    iput-object v4, p0, Lcom/nd/commplatform/d/c/gm;->t:Ljava/lang/String;

    iput-object v4, p0, Lcom/nd/commplatform/d/c/gm;->u:Landroid/view/View$OnClickListener;

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/gm;->v:Z

    iput-boolean v3, p0, Lcom/nd/commplatform/d/c/gm;->w:Z

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->gC:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/gm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/message/widget/NdSysMessageAppView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/gm;->b:Lcom/nd/commplatform/message/widget/NdSysMessageAppView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->gH:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/gm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/gm;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gm;->d:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->gJ:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/gm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/gm;->e:Landroid/widget/TextView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->gA:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/gm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/gm;->f:Landroid/widget/LinearLayout;

    return-void
.end method

.method protected a(ZI)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/gm;->o()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gm;->g:Lcom/nd/commplatform/d/c/gf;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/nd/commplatform/d/c/gm;->b()V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/gm;->n()V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/gm;->c()V

    goto :goto_0
.end method
