.class public Lcom/nd/commplatform/widget/NdBottomBar;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nd/commplatform/widget/NdBottomBar$OnNewAppVisibility;,
        Lcom/nd/commplatform/widget/NdBottomBar$OnSwitchInnerContentListener;
    }
.end annotation


# static fields
.field private static final e:I = 0x64

.field private static final f:I = 0xbb8

.field private static k:[[I


# instance fields
.field private a:I

.field private b:Lcom/nd/commplatform/widget/NdBottomBar$OnSwitchInnerContentListener;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private g:Lcom/nd/commplatform/widget/NdBottomBar$OnNewAppVisibility;

.field private h:Landroid/os/Handler;

.field private i:I

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x5

    filled-new-array {v0, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Lcom/nd/commplatform/widget/NdBottomBar;->k:[[I

    sget-object v0, Lcom/nd/commplatform/widget/NdBottomBar;->k:[[I

    aget-object v0, v0, v2

    sget v1, Lcom/nd/commplatform/d/c/jo$d;->aQ:I

    aput v1, v0, v2

    sget-object v0, Lcom/nd/commplatform/widget/NdBottomBar;->k:[[I

    aget-object v0, v0, v2

    sget v1, Lcom/nd/commplatform/d/c/jo$d;->aR:I

    aput v1, v0, v3

    sget-object v0, Lcom/nd/commplatform/widget/NdBottomBar;->k:[[I

    aget-object v0, v0, v3

    sget v1, Lcom/nd/commplatform/d/c/jo$d;->aI:I

    aput v1, v0, v2

    sget-object v0, Lcom/nd/commplatform/widget/NdBottomBar;->k:[[I

    aget-object v0, v0, v3

    sget v1, Lcom/nd/commplatform/d/c/jo$d;->aJ:I

    aput v1, v0, v3

    sget-object v0, Lcom/nd/commplatform/widget/NdBottomBar;->k:[[I

    aget-object v0, v0, v4

    sget v1, Lcom/nd/commplatform/d/c/jo$d;->aM:I

    aput v1, v0, v2

    sget-object v0, Lcom/nd/commplatform/widget/NdBottomBar;->k:[[I

    aget-object v0, v0, v4

    sget v1, Lcom/nd/commplatform/d/c/jo$d;->aN:I

    aput v1, v0, v3

    sget-object v0, Lcom/nd/commplatform/widget/NdBottomBar;->k:[[I

    aget-object v0, v0, v5

    sget v1, Lcom/nd/commplatform/d/c/jo$d;->aK:I

    aput v1, v0, v2

    sget-object v0, Lcom/nd/commplatform/widget/NdBottomBar;->k:[[I

    aget-object v0, v0, v5

    sget v1, Lcom/nd/commplatform/d/c/jo$d;->aL:I

    aput v1, v0, v3

    sget-object v0, Lcom/nd/commplatform/widget/NdBottomBar;->k:[[I

    aget-object v0, v0, v6

    sget v1, Lcom/nd/commplatform/d/c/jo$d;->aO:I

    aput v1, v0, v2

    sget-object v0, Lcom/nd/commplatform/widget/NdBottomBar;->k:[[I

    aget-object v0, v0, v6

    sget v1, Lcom/nd/commplatform/d/c/jo$d;->aP:I

    aput v1, v0, v3

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/nd/commplatform/widget/NdBottomBar;->a:I

    new-instance v0, Lcom/nd/commplatform/d/c/pu;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/pu;-><init>(Lcom/nd/commplatform/widget/NdBottomBar;)V

    iput-object v0, p0, Lcom/nd/commplatform/widget/NdBottomBar;->h:Landroid/os/Handler;

    iput v1, p0, Lcom/nd/commplatform/widget/NdBottomBar;->i:I

    iput v1, p0, Lcom/nd/commplatform/widget/NdBottomBar;->j:I

    invoke-direct {p0}, Lcom/nd/commplatform/widget/NdBottomBar;->f()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/nd/commplatform/widget/NdBottomBar;->a:I

    new-instance v0, Lcom/nd/commplatform/d/c/pu;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/pu;-><init>(Lcom/nd/commplatform/widget/NdBottomBar;)V

    iput-object v0, p0, Lcom/nd/commplatform/widget/NdBottomBar;->h:Landroid/os/Handler;

    iput v1, p0, Lcom/nd/commplatform/widget/NdBottomBar;->i:I

    iput v1, p0, Lcom/nd/commplatform/widget/NdBottomBar;->j:I

    invoke-direct {p0}, Lcom/nd/commplatform/widget/NdBottomBar;->f()V

    return-void
.end method

.method public static synthetic a(Lcom/nd/commplatform/widget/NdBottomBar;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdBottomBar;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method private a(III)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/nd/commplatform/widget/NdBottomBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private a(IZ)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    iget v0, p0, Lcom/nd/commplatform/widget/NdBottomBar;->a:I

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Lcom/nd/commplatform/d/c/jo$e;->bz:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/widget/NdBottomBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    iget v1, p0, Lcom/nd/commplatform/widget/NdBottomBar;->a:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    iget v1, p0, Lcom/nd/commplatform/widget/NdBottomBar;->a:I

    if-ge v1, v2, :cond_2

    iget v1, p0, Lcom/nd/commplatform/widget/NdBottomBar;->a:I

    if-ne v5, v1, :cond_5

    iget v1, p0, Lcom/nd/commplatform/widget/NdBottomBar;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    sget v3, Lcom/nd/commplatform/d/c/jo$e;->di:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    :goto_1
    iget v3, p0, Lcom/nd/commplatform/widget/NdBottomBar;->a:I

    invoke-direct {p0, v3, v4}, Lcom/nd/commplatform/widget/NdBottomBar;->b(IZ)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    if-ltz p1, :cond_0

    const/4 v1, 0x5

    if-ge p1, v1, :cond_0

    if-ge p1, v2, :cond_3

    if-ne v5, p1, :cond_7

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$e;->di:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    :goto_2
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/nd/commplatform/widget/NdBottomBar;->b(IZ)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    iget-object v0, p0, Lcom/nd/commplatform/widget/NdBottomBar;->b:Lcom/nd/commplatform/widget/NdBottomBar$OnSwitchInnerContentListener;

    if-eqz v0, :cond_4

    if-eqz p2, :cond_4

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdBottomBar;->b:Lcom/nd/commplatform/widget/NdBottomBar$OnSwitchInnerContentListener;

    iget v1, p0, Lcom/nd/commplatform/widget/NdBottomBar;->a:I

    invoke-interface {v0, v1, p1}, Lcom/nd/commplatform/widget/NdBottomBar$OnSwitchInnerContentListener;->a(II)V

    :cond_4
    iput p1, p0, Lcom/nd/commplatform/widget/NdBottomBar;->a:I

    invoke-direct {p0}, Lcom/nd/commplatform/widget/NdBottomBar;->g()V

    goto :goto_0

    :cond_5
    iget v1, p0, Lcom/nd/commplatform/widget/NdBottomBar;->a:I

    if-ne v6, v1, :cond_6

    iget v1, p0, Lcom/nd/commplatform/widget/NdBottomBar;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    sget v3, Lcom/nd/commplatform/d/c/jo$e;->cu:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    goto :goto_1

    :cond_6
    iget v1, p0, Lcom/nd/commplatform/widget/NdBottomBar;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    goto :goto_1

    :cond_7
    if-ne v6, p1, :cond_8

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$e;->cu:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_2

    :cond_8
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_2
.end method

.method private b(IZ)I
    .locals 2

    sget-object v0, Lcom/nd/commplatform/widget/NdBottomBar;->k:[[I

    aget-object v1, v0, p1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    aget v0, v1, v0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static synthetic b(Lcom/nd/commplatform/widget/NdBottomBar;)Lcom/nd/commplatform/widget/NdBottomBar$OnNewAppVisibility;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdBottomBar;->g:Lcom/nd/commplatform/widget/NdBottomBar$OnNewAppVisibility;

    return-object v0
.end method

.method private b(III)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/nd/commplatform/widget/NdBottomBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/nd/commplatform/d/c/jo$e;->dh:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/widget/NdBottomBar;->c:Landroid/widget/TextView;

    return-void
.end method

.method private c(III)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/nd/commplatform/widget/NdBottomBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/nd/commplatform/d/c/jo$e;->cr:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/widget/NdBottomBar;->d:Landroid/widget/TextView;

    return-void
.end method

.method private f()V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/nd/commplatform/widget/NdBottomBar;->setOrientation(I)V

    invoke-virtual {p0}, Lcom/nd/commplatform/widget/NdBottomBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/nd/commplatform/d/c/jo$f;->N:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/nd/commplatform/widget/NdBottomBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->cG:I

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->bL:I

    invoke-direct {p0, v0, v4, v1}, Lcom/nd/commplatform/widget/NdBottomBar;->a(III)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->cd:I

    const/4 v1, 0x1

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->bJ:I

    invoke-direct {p0, v0, v1, v2}, Lcom/nd/commplatform/widget/NdBottomBar;->a(III)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->dl:I

    const/4 v1, 0x2

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->bM:I

    invoke-direct {p0, v0, v1, v2}, Lcom/nd/commplatform/widget/NdBottomBar;->b(III)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->cy:I

    const/4 v1, 0x3

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->bK:I

    invoke-direct {p0, v0, v1, v2}, Lcom/nd/commplatform/widget/NdBottomBar;->c(III)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->dZ:I

    const/4 v1, 0x4

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->bN:I

    invoke-direct {p0, v0, v1, v2}, Lcom/nd/commplatform/widget/NdBottomBar;->a(III)V

    return-void
.end method

.method private g()V
    .locals 4

    iget v0, p0, Lcom/nd/commplatform/widget/NdBottomBar;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdBottomBar;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdBottomBar;->h:Landroid/os/Handler;

    const/16 v1, 0x64

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nd/commplatform/widget/NdBottomBar;->a(IZ)V

    return-void
.end method

.method public a(II)V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdBottomBar;->c:Landroid/widget/TextView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/nd/commplatform/widget/NdBottomBar;->i:I

    iput p2, p0, Lcom/nd/commplatform/widget/NdBottomBar;->j:I

    iget v0, p0, Lcom/nd/commplatform/widget/NdBottomBar;->i:I

    iget v1, p0, Lcom/nd/commplatform/widget/NdBottomBar;->j:I

    add-int/2addr v0, v1

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdBottomBar;->c:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/nd/commplatform/widget/NdBottomBar;->c:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdBottomBar;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Lcom/nd/commplatform/widget/NdBottomBar$OnNewAppVisibility;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/widget/NdBottomBar;->g:Lcom/nd/commplatform/widget/NdBottomBar$OnNewAppVisibility;

    return-void
.end method

.method public a(Lcom/nd/commplatform/widget/NdBottomBar$OnSwitchInnerContentListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/widget/NdBottomBar;->b:Lcom/nd/commplatform/widget/NdBottomBar$OnSwitchInnerContentListener;

    return-void
.end method

.method public a()[I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/nd/commplatform/widget/NdBottomBar;->i:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/nd/commplatform/widget/NdBottomBar;->j:I

    aput v2, v0, v1

    return-object v0
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/nd/commplatform/widget/NdBottomBar;->j:I

    invoke-virtual {p0, v0, v1}, Lcom/nd/commplatform/widget/NdBottomBar;->a(II)V

    return-void
.end method

.method public b(I)V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdBottomBar;->d:Landroid/widget/TextView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-gtz p1, :cond_2

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdBottomBar;->d:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/nd/commplatform/widget/NdBottomBar;->g()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nd/commplatform/widget/NdBottomBar;->d:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdBottomBar;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdBottomBar;->g:Lcom/nd/commplatform/widget/NdBottomBar$OnNewAppVisibility;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdBottomBar;->g:Lcom/nd/commplatform/widget/NdBottomBar$OnNewAppVisibility;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/nd/commplatform/widget/NdBottomBar$OnNewAppVisibility;->a(Z)V

    goto :goto_1
.end method

.method public c()V
    .locals 2

    iget v0, p0, Lcom/nd/commplatform/widget/NdBottomBar;->i:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nd/commplatform/widget/NdBottomBar;->a(II)V

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/widget/NdBottomBar;->b(I)V

    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdBottomBar;->h:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/nd/commplatform/widget/NdBottomBar;->a(IZ)V

    goto :goto_0
.end method
