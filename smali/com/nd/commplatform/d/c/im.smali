.class public Lcom/nd/commplatform/d/c/im;
.super Lcom/nd/commplatform/widget/NdFrameInnerContent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nd/commplatform/d/c/im$a;,
        Lcom/nd/commplatform/d/c/im$b;
    }
.end annotation


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Landroid/widget/ProgressBar;

.field private c:Landroid/webkit/WebViewClient;

.field private d:Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/nd/commplatform/entry/NdThirdPlatformConfig;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 8

    const/4 v7, 0x1

    const/4 v1, 0x0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    if-eqz p0, :cond_1

    const-string v0, "url"

    invoke-virtual {v2, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "&"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    if-le v6, v7, :cond_0

    aget-object v6, v5, v1

    aget-object v5, v5, v7

    invoke-static {v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/im;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/im;->a:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/im;Lcom/nd/commplatform/entry/NdThirdPartyPlatform;)Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;
    .locals 1

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/im;->a(Lcom/nd/commplatform/entry/NdThirdPartyPlatform;)Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/nd/commplatform/entry/NdThirdPartyPlatform;)Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;->getType()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/im;->e:Ljava/util/List;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/im;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/im;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;->getAccountType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/im;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/im;Lcom/nd/commplatform/entry/NdThirdPlatformConfig;)Lcom/nd/commplatform/entry/NdThirdPlatformConfig;
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/im;->f:Lcom/nd/commplatform/entry/NdThirdPlatformConfig;

    return-object p1
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/im;Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/im;->a(Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/im;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/im;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/im;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/cb;->a(Lcom/nd/commplatform/d/c/bx;)V

    return-void
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/im;)Lcom/nd/commplatform/entry/NdThirdPartyPlatform;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/im;->d:Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/nd/commplatform/d/c/im$4;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/im$4;-><init>(Lcom/nd/commplatform/d/c/im;)V

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/im;->a(Lcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/nd/commplatform/d/c/im;->b(Z)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/im;->d:Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    invoke-virtual {v2}, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/im;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v2, p1, v3, v0}, Lcom/nd/commplatform/d/c/a;->h(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/im;->b(Z)V

    return-void
.end method

.method static synthetic c(Lcom/nd/commplatform/d/c/im;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/im;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/nd/commplatform/d/c/im;)Lcom/nd/commplatform/entry/NdThirdPlatformConfig;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/im;->f:Lcom/nd/commplatform/entry/NdThirdPlatformConfig;

    return-object v0
.end method

.method static synthetic e(Lcom/nd/commplatform/d/c/im;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/im;->b:Landroid/widget/ProgressBar;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->ax:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/im;->p:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/im;->q:Z

    iput-object v1, p0, Lcom/nd/commplatform/d/c/im;->r:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/nd/commplatform/d/c/im;->s:Z

    iput-object v1, p0, Lcom/nd/commplatform/d/c/im;->t:Ljava/lang/String;

    iput-object v1, p0, Lcom/nd/commplatform/d/c/im;->u:Landroid/view/View$OnClickListener;

    iput-boolean v0, p0, Lcom/nd/commplatform/d/c/im;->v:Z

    iput-boolean v0, p0, Lcom/nd/commplatform/d/c/im;->w:Z

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->hn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/im;->b:Landroid/widget/ProgressBar;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->b:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/im;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/im;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nd/commplatform/d/c/im;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/im;->a:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/im;->a:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/im;->a:Landroid/webkit/WebView;

    invoke-virtual {v1, v5}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/im;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/im;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/im;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/im;->a:Landroid/webkit/WebView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/nd/commplatform/d/c/im$1;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/im$1;-><init>(Lcom/nd/commplatform/d/c/im;)V

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/im;->a(Lcom/nd/commplatform/widget/NdFrameInnerContent$OnInvisibleListener;)V

    return-void
.end method

.method protected a(ZI)V
    .locals 6

    const/4 v3, 0x0

    const/16 v2, 0xfa4

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/im;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/im;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    :cond_0
    if-nez p1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Lcom/nd/commplatform/d/c/im$b;

    invoke-direct {v0, p0, v3}, Lcom/nd/commplatform/d/c/im$b;-><init>(Lcom/nd/commplatform/d/c/im;Lcom/nd/commplatform/d/c/im$1;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/im;->c:Landroid/webkit/WebViewClient;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/im;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/im;->c:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/im;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/nd/commplatform/d/c/im$2;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/im$2;-><init>(Lcom/nd/commplatform/d/c/im;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/im;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/nd/commplatform/d/c/im$a;

    invoke-direct {v1, p0, v3}, Lcom/nd/commplatform/d/c/im$a;-><init>(Lcom/nd/commplatform/d/c/im;Lcom/nd/commplatform/d/c/im$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-static {v2}, Lcom/nd/commplatform/d/c/cb;->b(I)Lcom/nd/commplatform/d/c/bx;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v0, "platform"

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    check-cast v0, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/im;->d:Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    const-string v0, "binded"

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/im;->e:Ljava/util/List;

    invoke-static {v2}, Lcom/nd/commplatform/d/c/cb;->c(I)Lcom/nd/commplatform/d/c/bx;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/im;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->aE:I

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/nd/commplatform/d/c/im;->d:Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    invoke-virtual {v3}, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/im;->r:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/im;->i()V

    new-instance v0, Lcom/nd/commplatform/d/c/im$3;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/im$3;-><init>(Lcom/nd/commplatform/d/c/im;)V

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/im;->a(Lcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {p0, v4}, Lcom/nd/commplatform/d/c/im;->b(Z)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/im;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/nd/commplatform/d/c/im;->d:Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    invoke-virtual {v3}, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/nd/commplatform/d/c/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/nd/commplatform/NdCallbackListener;)V

    invoke-virtual {p0, v5}, Lcom/nd/commplatform/d/c/im;->b(Z)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    invoke-super {p0, p1, p2}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
