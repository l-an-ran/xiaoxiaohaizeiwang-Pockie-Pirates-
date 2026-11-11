.class public Lcom/nd/commplatform/d/c/q;
.super Lcom/nd/commplatform/widget/NdFrameInnerContent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nd/commplatform/d/c/q$a;,
        Lcom/nd/commplatform/d/c/q$b;
    }
.end annotation


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Landroid/widget/ProgressBar;

.field private c:Landroid/webkit/WebViewClient;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/q;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/q;->a:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/q;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/q;->b:Landroid/widget/ProgressBar;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->s:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nd/commplatform/d/c/q;->p:Z

    iput-boolean v0, p0, Lcom/nd/commplatform/d/c/q;->q:Z

    iput-object v1, p0, Lcom/nd/commplatform/d/c/q;->r:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/nd/commplatform/d/c/q;->s:Z

    iput-object v1, p0, Lcom/nd/commplatform/d/c/q;->t:Ljava/lang/String;

    iput-object v1, p0, Lcom/nd/commplatform/d/c/q;->u:Landroid/view/View$OnClickListener;

    iput-boolean v0, p0, Lcom/nd/commplatform/d/c/q;->v:Z

    iput-boolean v0, p0, Lcom/nd/commplatform/d/c/q;->w:Z

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->hn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/q;->b:Landroid/widget/ProgressBar;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->an:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/q;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/q;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nd/commplatform/d/c/q;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/q;->a:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/q;->a:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/q;->a:Landroid/webkit/WebView;

    invoke-virtual {v1, v5}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    sget-object v1, Lcom/nd/commplatform/d/c/oe;->i:Ljava/lang/String;

    iput-object v1, p0, Lcom/nd/commplatform/d/c/q;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/q;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/q;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/q;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->requestFocus()Z

    iget-object v1, p0, Lcom/nd/commplatform/d/c/q;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->clearHistory()V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/q;->a:Landroid/webkit/WebView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/q;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->buildDrawingCache()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/q;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/nd/commplatform/d/c/q$1;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/q$1;-><init>(Lcom/nd/commplatform/d/c/q;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method protected a(ZI)V
    .locals 4

    const/4 v2, 0x0

    const/16 v3, 0x1b5a

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/nd/commplatform/d/c/q$b;

    invoke-direct {v0, p0, v2}, Lcom/nd/commplatform/d/c/q$b;-><init>(Lcom/nd/commplatform/d/c/q;Lcom/nd/commplatform/d/c/q$1;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/q;->c:Landroid/webkit/WebViewClient;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/q;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/q;->c:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/q;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/nd/commplatform/d/c/q$2;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/q$2;-><init>(Lcom/nd/commplatform/d/c/q;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/q;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/nd/commplatform/d/c/q$a;

    invoke-direct {v1, p0, v2}, Lcom/nd/commplatform/d/c/q$a;-><init>(Lcom/nd/commplatform/d/c/q;Lcom/nd/commplatform/d/c/q$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-static {v3}, Lcom/nd/commplatform/d/c/cb;->b(I)Lcom/nd/commplatform/d/c/bx;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "account"

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/nd/commplatform/d/c/q;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?usr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/q;->d:Ljava/lang/String;

    :cond_1
    invoke-static {v3}, Lcom/nd/commplatform/d/c/cb;->c(I)Lcom/nd/commplatform/d/c/bx;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/q;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/q;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
