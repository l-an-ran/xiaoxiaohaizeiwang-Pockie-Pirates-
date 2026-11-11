.class public Lcom/nd/commplatform/d/c/es;
.super Lcom/nd/commplatform/widget/NdFrameInnerContent;


# static fields
.field private static final a:Ljava/lang/String; = "APP_KEY"

.field private static final h:I = 0x2


# instance fields
.field private b:I

.field private c:Lcom/nd/commplatform/d/c/er;

.field private d:Landroid/webkit/WebView;

.field private e:Landroid/widget/ProgressBar;

.field private f:Landroid/view/View;

.field private g:Landroid/view/LayoutInflater;

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/nd/commplatform/d/c/es;->i:I

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/es;)I
    .locals 2

    iget v0, p0, Lcom/nd/commplatform/d/c/es;->i:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/nd/commplatform/d/c/es;->i:I

    return v0
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/es;I)I
    .locals 0

    iput p1, p0, Lcom/nd/commplatform/d/c/es;->i:I

    return p1
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/nd/commplatform/d/c/cb;->a(Landroid/content/Context;IILcom/nd/commplatform/d/c/bx;)V

    return-void
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 3

    new-instance v0, Lcom/nd/commplatform/d/c/bx;

    const/16 v1, 0xbc2

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/bx;-><init>(I)V

    const-string v1, "APP_KEY"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    const/4 v2, 0x4

    invoke-static {p0, v1, v2, v0}, Lcom/nd/commplatform/d/c/cb;->a(Landroid/content/Context;IILcom/nd/commplatform/d/c/bx;)V

    return-void
.end method

.method public static b(I)V
    .locals 3

    new-instance v0, Lcom/nd/commplatform/d/c/bx;

    const/16 v1, 0xbc2

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/bx;-><init>(I)V

    const-string v1, "APP_KEY"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static {v1, v0}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    return-void
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/es;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/es;->h(I)V

    return-void
.end method

.method private b()Z
    .locals 2

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c()V
    .locals 3

    const/16 v2, 0xbc2

    invoke-static {v2}, Lcom/nd/commplatform/d/c/cb;->b(I)Lcom/nd/commplatform/d/c/bx;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "APP_KEY"

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/nd/commplatform/d/c/es;->b:I

    :cond_0
    invoke-static {v2}, Lcom/nd/commplatform/d/c/cb;->c(I)Lcom/nd/commplatform/d/c/bx;

    return-void
.end method

.method private c(I)V
    .locals 3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/es;->d:Landroid/webkit/WebView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    iget v0, p0, Lcom/nd/commplatform/d/c/es;->i:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/es;->f:Landroid/view/View;

    sget v1, Lcom/nd/commplatform/d/c/jo$e;->bS:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->aH:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/es;->f:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/nd/commplatform/d/c/es$1;

    invoke-direct {v0, p0, p1}, Lcom/nd/commplatform/d/c/es$1;-><init>(Lcom/nd/commplatform/d/c/es;I)V

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/es;->a(Lcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/nd/commplatform/d/c/es;->b(Z)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/es;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/nd/commplatform/d/c/a;->a(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/nd/commplatform/d/c/es;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/es;->c(I)V

    return-void
.end method

.method private h(I)V
    .locals 3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/es;->d:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/es;->d:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/es;->c:Lcom/nd/commplatform/d/c/er;

    iget v2, p0, Lcom/nd/commplatform/d/c/es;->b:I

    invoke-virtual {v1, v2, p1}, Lcom/nd/commplatform/d/c/er;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 1

    iput-object p1, p0, Lcom/nd/commplatform/d/c/es;->g:Landroid/view/LayoutInflater;

    new-instance v0, Lcom/nd/commplatform/d/c/er;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/er;-><init>(Lcom/nd/commplatform/widget/NdFrameInnerContent;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/es;->c:Lcom/nd/commplatform/d/c/er;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/es;->c:Lcom/nd/commplatform/d/c/er;

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/d/c/er;->a(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lcom/nd/commplatform/widget/NdFrameInnerContent;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/es;->c:Lcom/nd/commplatform/d/c/er;

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/d/c/er;->a(I)V

    invoke-super {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->a(I)Lcom/nd/commplatform/widget/NdFrameInnerContent;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/es;->c()V

    iput-boolean v1, p0, Lcom/nd/commplatform/d/c/es;->p:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nd/commplatform/d/c/es;->v:Z

    iput-boolean v1, p0, Lcom/nd/commplatform/d/c/es;->w:Z

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 7

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->cz:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/es;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/es;->g:Landroid/view/LayoutInflater;

    sget v2, Lcom/nd/commplatform/d/c/jo$f;->Z:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/nd/commplatform/d/c/es;->d:Landroid/webkit/WebView;

    sget v1, Lcom/nd/commplatform/d/c/jo$e;->hn:I

    invoke-virtual {p0, v1}, Lcom/nd/commplatform/d/c/es;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/nd/commplatform/d/c/es;->e:Landroid/widget/ProgressBar;

    sget v1, Lcom/nd/commplatform/d/c/jo$e;->ct:I

    invoke-virtual {p0, v1}, Lcom/nd/commplatform/d/c/es;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/nd/commplatform/d/c/es;->f:Landroid/view/View;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/es;->d:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/es;->d:Landroid/webkit/WebView;

    invoke-virtual {v1, v6}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/es;->d:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->requestFocus()Z

    iget-object v1, p0, Lcom/nd/commplatform/d/c/es;->d:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/es;->c:Lcom/nd/commplatform/d/c/er;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/es;->f:Landroid/view/View;

    iget-object v3, p0, Lcom/nd/commplatform/d/c/es;->d:Landroid/webkit/WebView;

    iget-object v4, p0, Lcom/nd/commplatform/d/c/es;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2, v3, v4, v6}, Lcom/nd/commplatform/d/c/er;->a(Landroid/view/View;Landroid/webkit/WebView;Landroid/widget/ProgressBar;Z)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/es;->d:Landroid/webkit/WebView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected a(ZI)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/es;->b()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p2}, Lcom/nd/commplatform/d/c/es;->c(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p2}, Lcom/nd/commplatform/d/c/es;->h(I)V

    goto :goto_0
.end method
