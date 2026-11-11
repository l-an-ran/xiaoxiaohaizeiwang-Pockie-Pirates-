.class Lcom/nd/commplatform/d/c/im$b;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/d/c/im;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/im;


# direct methods
.method private constructor <init>(Lcom/nd/commplatform/d/c/im;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/im$b;->a:Lcom/nd/commplatform/d/c/im;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nd/commplatform/d/c/im;Lcom/nd/commplatform/d/c/im$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/im$b;-><init>(Lcom/nd/commplatform/d/c/im;)V

    return-void
.end method

.method private a(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/im$b;->a:Lcom/nd/commplatform/d/c/im;

    invoke-static {v2}, Lcom/nd/commplatform/d/c/im;->d(Lcom/nd/commplatform/d/c/im;)Lcom/nd/commplatform/entry/NdThirdPlatformConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nd/commplatform/entry/NdThirdPlatformConfig;->getRedirectUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "oauth_verifier"

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_0

    const-string v2, "access_token"

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/im$b;->a:Lcom/nd/commplatform/d/c/im;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/im;->a(Lcom/nd/commplatform/d/c/im;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    const-string v0, "error="

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    const-string v0, "denied"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/cb;->a(Lcom/nd/commplatform/d/c/bx;)V

    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, ""

    :cond_3
    iget-object v2, p0, Lcom/nd/commplatform/d/c/im$b;->a:Lcom/nd/commplatform/d/c/im;

    iget-object v3, p0, Lcom/nd/commplatform/d/c/im$b;->a:Lcom/nd/commplatform/d/c/im;

    invoke-static {v3}, Lcom/nd/commplatform/d/c/im;->b(Lcom/nd/commplatform/d/c/im;)Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/nd/commplatform/d/c/im;->a(Lcom/nd/commplatform/d/c/im;Lcom/nd/commplatform/entry/NdThirdPartyPlatform;)Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;

    move-result-object v2

    if-nez v2, :cond_4

    new-instance v2, Lcom/nd/commplatform/d/c/im$b$1;

    invoke-direct {v2, p0}, Lcom/nd/commplatform/d/c/im$b$1;-><init>(Lcom/nd/commplatform/d/c/im$b;)V

    iget-object v3, p0, Lcom/nd/commplatform/d/c/im$b;->a:Lcom/nd/commplatform/d/c/im;

    invoke-virtual {v3, v2}, Lcom/nd/commplatform/d/c/im;->a(Lcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;

    iget-object v3, p0, Lcom/nd/commplatform/d/c/im$b;->a:Lcom/nd/commplatform/d/c/im;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/nd/commplatform/d/c/im;->b(Z)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v3

    iget-object v4, p0, Lcom/nd/commplatform/d/c/im$b;->a:Lcom/nd/commplatform/d/c/im;

    invoke-static {v4}, Lcom/nd/commplatform/d/c/im;->b(Lcom/nd/commplatform/d/c/im;)Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;->getType()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/nd/commplatform/d/c/im$b;->a:Lcom/nd/commplatform/d/c/im;

    invoke-virtual {v5}, Lcom/nd/commplatform/d/c/im;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3, v4, v0, v5, v2}, Lcom/nd/commplatform/d/c/a;->g(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/im$b;->a:Lcom/nd/commplatform/d/c/im;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/nd/commplatform/d/c/im;->b(Z)V

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/nd/commplatform/d/c/im$b;->a:Lcom/nd/commplatform/d/c/im;

    invoke-static {v2, v0}, Lcom/nd/commplatform/d/c/im;->a(Lcom/nd/commplatform/d/c/im;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, p1, p2}, Lcom/nd/commplatform/d/c/im$b;->a(Landroid/webkit/WebView;Ljava/lang/String;)Z

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/im$b;->a:Lcom/nd/commplatform/d/c/im;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/im;->removeAllViews()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/im$b;->a:Lcom/nd/commplatform/d/c/im;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/im$b;->a:Lcom/nd/commplatform/d/c/im;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/im;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$f;->aL:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/im;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/im$b;->a:Lcom/nd/commplatform/d/c/im;

    sget v1, Lcom/nd/commplatform/d/c/jo$e;->bS:I

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/im;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
