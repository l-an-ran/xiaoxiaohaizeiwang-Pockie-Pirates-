.class public Lcom/nd/commplatform/d/c/gg;
.super Lcom/nd/commplatform/widget/NdFrameInnerContent;


# static fields
.field private static final a:Ljava/lang/String; = "ND3MessageMainView"


# instance fields
.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/RadioGroup;

.field private e:Landroid/widget/RadioButton;

.field private f:Landroid/widget/RadioButton;

.field private g:Landroid/widget/RelativeLayout;

.field private h:Lcom/nd/commplatform/d/c/gk;

.field private i:Lcom/nd/commplatform/d/c/gl;

.field private j:[I

.field private k:Landroid/widget/RelativeLayout$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/gg;->k:Landroid/widget/RelativeLayout$LayoutParams;

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/gg;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/gg;->n()V

    return-void
.end method

.method private b()V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/nd/commplatform/service/NdNewMessageNotification;->a()[I

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/gg;->j:[I

    if-nez v1, :cond_1

    iput-object v0, p0, Lcom/nd/commplatform/d/c/gg;->j:[I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/gg;->j:[I

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/gg;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gg;->e:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/nd/commplatform/d/c/gg;->j:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/gg;->j:[I

    aget v1, v1, v3

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/gg;->j:[I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nd/commplatform/d/c/gg;->f:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/nd/commplatform/d/c/gg;->e:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/gg;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/gg;->m()V

    return-void
.end method

.method static synthetic c(Lcom/nd/commplatform/d/c/gg;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gg;->e:Landroid/widget/RadioButton;

    return-object v0
.end method

.method private c()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/gg;->j:[I

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/nd/commplatform/d/c/gg;->j:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/nd/commplatform/d/c/gg;->j:[I

    aget v3, v3, v1

    if-gtz v2, :cond_1

    if-lez v3, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method static synthetic d(Lcom/nd/commplatform/d/c/gg;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gg;->f:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic e(Lcom/nd/commplatform/d/c/gg;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/gg;->o()V

    return-void
.end method

.method static synthetic f(Lcom/nd/commplatform/d/c/gg;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/gg;->p()V

    return-void
.end method

.method private m()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gg;->e:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gg;->h:Lcom/nd/commplatform/d/c/gk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gg;->h:Lcom/nd/commplatform/d/c/gk;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/gk;->b()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gg;->x:Lcom/nd/commplatform/widget/NdPlatformPanelHelper;

    invoke-virtual {v0}, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->f()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gg;->j:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gg;->j:[I

    aput v2, v0, v2

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/gg;->f:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gg;->i:Lcom/nd/commplatform/d/c/gl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gg;->j:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gg;->i:Lcom/nd/commplatform/d/c/gl;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/gg;->j:[I

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/gl;->a(I)V

    :cond_2
    iget-object v0, p0, Lcom/nd/commplatform/d/c/gg;->i:Lcom/nd/commplatform/d/c/gl;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/gl;->b()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gg;->x:Lcom/nd/commplatform/widget/NdPlatformPanelHelper;

    invoke-virtual {v0}, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->g()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gg;->j:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gg;->j:[I

    aput v2, v0, v3

    goto :goto_0
.end method

.method private n()V
    .locals 2

    const/16 v0, 0x6e

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    return-void
.end method

.method private o()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gg;->f:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gg;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/gg;->h:Lcom/nd/commplatform/d/c/gk;

    if-nez v0, :cond_1

    new-instance v0, Lcom/nd/commplatform/d/c/gk;

    invoke-super {p0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/gk;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/gg;->h:Lcom/nd/commplatform/d/c/gk;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gg;->h:Lcom/nd/commplatform/d/c/gk;

    invoke-virtual {v0, p0}, Lcom/nd/commplatform/d/c/gk;->a(Lcom/nd/commplatform/widget/NdFrameInnerContent;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gg;->h:Lcom/nd/commplatform/d/c/gk;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/gg;->h:Lcom/nd/commplatform/d/c/gk;

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/gk;->a(Lcom/nd/commplatform/d/c/hm;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gg;->x:Lcom/nd/commplatform/widget/NdPlatformPanelHelper;

    invoke-virtual {v0}, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->f()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gg;->j:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gg;->j:[I

    aput v3, v0, v3

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/gg;->g:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/gg;->h:Lcom/nd/commplatform/d/c/gk;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/gg;->k:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gg;->b:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method private p()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gg;->h:Lcom/nd/commplatform/d/c/gk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gg;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/gg;->i:Lcom/nd/commplatform/d/c/gl;

    if-nez v0, :cond_2

    new-instance v0, Lcom/nd/commplatform/d/c/gl;

    invoke-super {p0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/gl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/gg;->i:Lcom/nd/commplatform/d/c/gl;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gg;->i:Lcom/nd/commplatform/d/c/gl;

    invoke-virtual {v0, p0}, Lcom/nd/commplatform/d/c/gl;->a(Lcom/nd/commplatform/widget/NdFrameInnerContent;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gg;->j:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gg;->i:Lcom/nd/commplatform/d/c/gl;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/gg;->j:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/gl;->a(I)V

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/gg;->i:Lcom/nd/commplatform/d/c/gl;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/gg;->i:Lcom/nd/commplatform/d/c/gl;

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/gl;->a(Lcom/nd/commplatform/d/c/hm;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gg;->x:Lcom/nd/commplatform/widget/NdPlatformPanelHelper;

    invoke-virtual {v0}, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->g()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gg;->j:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gg;->j:[I

    const/4 v1, 0x0

    aput v1, v0, v2

    :cond_2
    iget-object v0, p0, Lcom/nd/commplatform/d/c/gg;->g:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/gg;->i:Lcom/nd/commplatform/d/c/gl;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/gg;->k:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gg;->b:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->bn:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nd/commplatform/d/c/gg;->p:Z

    iput-boolean v1, p0, Lcom/nd/commplatform/d/c/gg;->q:Z

    iput-boolean v1, p0, Lcom/nd/commplatform/d/c/gg;->s:Z

    iput-object v0, p0, Lcom/nd/commplatform/d/c/gg;->t:Ljava/lang/String;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/gg;->u:Landroid/view/View$OnClickListener;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nd/commplatform/d/c/gg;->v:Z

    iput-boolean v1, p0, Lcom/nd/commplatform/d/c/gg;->w:Z

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->dg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/gg;->g:Landroid/widget/RelativeLayout;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->dp:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/gg;->b:Landroid/widget/Button;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gg;->b:Landroid/widget/Button;

    new-instance v1, Lcom/nd/commplatform/d/c/gg$1;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/gg$1;-><init>(Lcom/nd/commplatform/d/c/gg;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->do:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/gg;->c:Landroid/widget/Button;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gg;->c:Landroid/widget/Button;

    new-instance v1, Lcom/nd/commplatform/d/c/gg$2;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/gg$2;-><init>(Lcom/nd/commplatform/d/c/gg;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->dv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/gg;->d:Landroid/widget/RadioGroup;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->eV:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/gg;->e:Landroid/widget/RadioButton;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->gz:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/gg;->f:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gg;->d:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/nd/commplatform/d/c/gg$3;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/gg$3;-><init>(Lcom/nd/commplatform/d/c/gg;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method

.method protected a(Lcom/nd/commplatform/widget/NdPlatformPanelHelper;)V
    .locals 1

    invoke-virtual {p1}, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->h()[I

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/gg;->j:[I

    return-void
.end method

.method protected a(ZI)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/gg;->b()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/gg;->e:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gg;->h:Lcom/nd/commplatform/d/c/gk;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/gk;->a()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nd/commplatform/d/c/gg;->f:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gg;->i:Lcom/nd/commplatform/d/c/gl;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/gl;->a()V

    goto :goto_0
.end method
