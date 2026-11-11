.class public Lcom/nd/commplatform/widget/NdPlatformPanelHelper;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/nd/commplatform/d/c/os$a;
.implements Lcom/nd/commplatform/widget/NdBottomBar$OnNewAppVisibility;
.implements Lcom/nd/commplatform/widget/NdFrameInnerContent$OnUpdateContentOuterFrameListener;


# static fields
.field private static final j:Ljava/lang/String; = "NdPlatformPanelHelper"


# instance fields
.field private a:Lcom/nd/commplatform/widget/NdTitleBar;

.field private b:Landroid/widget/RelativeLayout;

.field private c:Lcom/nd/commplatform/widget/NdBottomBar;

.field private d:Landroid/view/View;

.field private e:Landroid/content/Context;

.field private f:Lcom/nd/commplatform/d/c/os;

.field private g:Landroid/view/WindowManager;

.field private h:Landroid/widget/ProgressBar;

.field private i:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/nd/commplatform/widget/NdFrameInnerContent;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-boolean v0, p1, Lcom/nd/commplatform/widget/NdFrameInnerContent;->p:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->a:Lcom/nd/commplatform/widget/NdTitleBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/widget/NdTitleBar;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->a:Lcom/nd/commplatform/widget/NdTitleBar;

    invoke-virtual {v0, v4}, Lcom/nd/commplatform/widget/NdTitleBar;->setVisibility(I)V

    iget-boolean v0, p1, Lcom/nd/commplatform/widget/NdFrameInnerContent;->q:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->a:Lcom/nd/commplatform/widget/NdTitleBar;

    invoke-virtual {v0, v4, v3, v3}, Lcom/nd/commplatform/widget/NdTitleBar;->a(ZLjava/lang/String;Landroid/view/View$OnClickListener;)V

    :goto_1
    iget-object v0, p0, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->a:Lcom/nd/commplatform/widget/NdTitleBar;

    iget-object v1, p1, Lcom/nd/commplatform/widget/NdFrameInnerContent;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/widget/NdTitleBar;->a(Ljava/lang/String;)V

    iget-boolean v0, p1, Lcom/nd/commplatform/widget/NdFrameInnerContent;->s:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->a:Lcom/nd/commplatform/widget/NdTitleBar;

    invoke-virtual {v0, v4, v3, v3}, Lcom/nd/commplatform/widget/NdTitleBar;->b(ZLjava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->a:Lcom/nd/commplatform/widget/NdTitleBar;

    iget-object v1, p0, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->e:Landroid/content/Context;

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->kf:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1, p0}, Lcom/nd/commplatform/widget/NdTitleBar;->a(ZLjava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->a:Lcom/nd/commplatform/widget/NdTitleBar;

    iget-object v1, p1, Lcom/nd/commplatform/widget/NdFrameInnerContent;->t:Ljava/lang/String;

    iget-object v2, p1, Lcom/nd/commplatform/widget/NdFrameInnerContent;->u:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5, v1, v2}, Lcom/nd/commplatform/widget/NdTitleBar;->b(ZLjava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private b(Lcom/nd/commplatform/widget/NdFrameInnerContent;)V
    .locals 2

    iget-boolean v0, p1, Lcom/nd/commplatform/widget/NdFrameInnerContent;->v:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->c:Lcom/nd/commplatform/widget/NdBottomBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/widget/NdBottomBar;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->c:Lcom/nd/commplatform/widget/NdBottomBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/widget/NdBottomBar;->setVisibility(I)V

    goto :goto_0
.end method

.method private j()Lcom/nd/commplatform/widget/NdFrameInnerContent;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->b:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/widget/NdFrameInnerContent;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-direct {p0}, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->j()Lcom/nd/commplatform/widget/NdFrameInnerContent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->a(Lcom/nd/commplatform/widget/NdFrameInnerContent;)V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->c:Lcom/nd/commplatform/widget/NdBottomBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->c:Lcom/nd/commplatform/widget/NdBottomBar;

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/widget/NdBottomBar;->b(I)V

    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->b(II)V

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v1, -0x2

    iput-object p1, p0, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->e:Landroid/content/Context;

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->d:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/nd/commplatform/d/c/jo$f;->T:I

    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->d:Landroid/view/View;

    sget v2, Lcom/nd/commplatform/d/c/jo$e;->gX:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/widget/NdTitleBar;

    iput-object v0, p0, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->a:Lcom/nd/commplatform/widget/NdTitleBar;

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->d:Landroid/view/View;

    sget v2, Lcom/nd/commplatform/d/c/jo$e;->bK:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->b:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->d:Landroid/view/View;

    sget v2, Lcom/nd/commplatform/d/c/jo$e;->bA:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/widget/NdBottomBar;

    iput-object v0, p0, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->c:Lcom/nd/commplatform/widget/NdBottomBar;

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->c:Lcom/nd/commplatform/widget/NdBottomBar;

    new-instance v2, Lcom/nd/commplatform/widget/NdPlatformPanelHelper$1;

    invoke-direct {v2, p0}, Lcom/nd/commplatform/widget/NdPlatformPanelHelper$1;-><init>(Lcom/nd/commplatform/widget/NdPlatformPanelHelper;)V

    invoke-virtual {v0, v2}, Lcom/nd/commplatform/widget/NdBottomBar;->a(Lcom/nd/commplatform/widget/NdBottomBar$OnSwitchInnerContentListener;)V

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->c:Lcom/nd/commplatform/widget/NdBottomBar;

    invoke-virtual {v0, p0}, Lcom/nd/commplatform/widget/NdBottomBar;->a(Lcom/nd/commplatform/widget/NdBottomBar$OnNewAppVisibility;)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x2

    const/16 v4, 0x18

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->i:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->e:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->g:Landroid/view/WindowManager;

    new-instance v1, Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->e:Landroid/content/Context;

    const v3, 0x101007a

    invoke-direct {v1, v2, v6, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->h:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->h:Landroid/widget/ProgressBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v1, p0, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->h:Landroid/widget/ProgressBar;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v1, p0, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->h:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nd/commplatform/d/c/jo$d;->bc:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->g:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->h:Landroid/widget/ProgressBar;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    new-instance v0, Lcom/nd/commplatform/d/c/os;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/os;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->f:Lcom/nd/commplatform/d/c/os;

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->f:Lcom/nd/commplatform/d/c/os;

    iget-object v1, p0, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->e:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/nd/commplatform/d/c/os;->a(Landroid/content/Context;Lcom/nd/commplatform/d/c/os$a;)V

    return-void
.end method

.method public a(Lcom/nd/commplatform/widget/NdFrameInnerContent;ZI)V
    .locals 4

    const/4 v3, -0x1

    invoke-direct {p0}, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->j()Lcom/nd/commplatform/widget/NdFrameInnerContent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->f()V

    invoke-virtual {p1, p0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->b(Lcom/nd/commplatform/widget/NdPlatformPanelHelper;)V

    invoke-virtual {p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->j()V

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->l()Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, p0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->a(Lcom/nd/commplatform/widget/NdFrameInnerContent$OnUpdateContentOuterFrameListener;)V

    invoke-virtual {p1, p2, p3}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->b(ZI)V

    invoke-virtual {p0}, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->c()V

    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->f:Lcom/nd/commplatform/d/c/os;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/os;->a()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    invoke-direct {p0}, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->j()Lcom/nd/commplatform/widget/NdFrameInnerContent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->b(Lcom/nd/commplatform/widget/NdFrameInnerContent;)V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->c:Lcom/nd/commplatform/widget/NdBottomBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->c:Lcom/nd/commplatform/widget/NdBottomBar;

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/widget/NdBottomBar;->a(I)V

    :cond_0
    return-void
.end method

.method public b(II)V
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->c:Lcom/nd/commplatform/widget/NdBottomBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->c:Lcom/nd/commplatform/widget/NdBottomBar;

    invoke-virtual {v0, p1, p2}, Lcom/nd/commplatform/widget/NdBottomBar;->a(II)V

    :cond_0
    invoke-direct {p0}, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->j()Lcom/nd/commplatform/widget/NdFrameInnerContent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->d()V

    :cond_1
    return-void
.end method

.method public b(Z)V
    .locals 3

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->h:Landroid/widget/ProgressBar;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->h:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->g:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->h:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->i:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    goto :goto_1
.end method

.method protected c()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->a:Lcom/nd/commplatform/widget/NdTitleBar;

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/widget/NdTitleBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->c:Lcom/nd/commplatform/widget/NdBottomBar;

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/widget/NdBottomBar;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->j()Lcom/nd/commplatform/widget/NdFrameInnerContent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->a(Lcom/nd/commplatform/widget/NdFrameInnerContent;)V

    invoke-direct {p0, v0}, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->b(Lcom/nd/commplatform/widget/NdFrameInnerContent;)V

    goto :goto_0
.end method

.method public d()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->d:Landroid/view/View;

    return-object v0
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->g:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->h:Landroid/widget/ProgressBar;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->h:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->f:Lcom/nd/commplatform/d/c/os;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/os;->b()V

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->c:Lcom/nd/commplatform/widget/NdBottomBar;

    invoke-virtual {v0}, Lcom/nd/commplatform/widget/NdBottomBar;->e()V

    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->c:Lcom/nd/commplatform/widget/NdBottomBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->c:Lcom/nd/commplatform/widget/NdBottomBar;

    invoke-virtual {v0}, Lcom/nd/commplatform/widget/NdBottomBar;->b()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->c:Lcom/nd/commplatform/widget/NdBottomBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->c:Lcom/nd/commplatform/widget/NdBottomBar;

    invoke-virtual {v0}, Lcom/nd/commplatform/widget/NdBottomBar;->c()V

    :cond_0
    return-void
.end method

.method public h()[I
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->c:Lcom/nd/commplatform/widget/NdBottomBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->c:Lcom/nd/commplatform/widget/NdBottomBar;

    invoke-virtual {v0}, Lcom/nd/commplatform/widget/NdBottomBar;->a()[I

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Lcom/nd/commplatform/widget/NdBottomBar;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->c:Lcom/nd/commplatform/widget/NdBottomBar;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/cb;->a(Lcom/nd/commplatform/d/c/bx;)V

    return-void
.end method
