.class Lcom/nd/commplatform/d/c/iu$b;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/d/c/iu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/iu;


# direct methods
.method private constructor <init>(Lcom/nd/commplatform/d/c/iu;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/iu$b;->a:Lcom/nd/commplatform/d/c/iu;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nd/commplatform/d/c/iu;Lcom/nd/commplatform/d/c/iu$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/iu$b;-><init>(Lcom/nd/commplatform/d/c/iu;)V

    return-void
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
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x2

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-static {v1}, Lcom/nd/commplatform/d/c/ol;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, -0x5dc3

    invoke-static {v1, v0}, Lcom/nd/commplatform/d/c/ol;->a(II)V

    :cond_0
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

    iget-object v0, p0, Lcom/nd/commplatform/d/c/iu$b;->a:Lcom/nd/commplatform/d/c/iu;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/iu;->removeAllViews()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/iu$b;->a:Lcom/nd/commplatform/d/c/iu;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/iu$b;->a:Lcom/nd/commplatform/d/c/iu;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/iu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$f;->aL:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/iu;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/iu$b;->a:Lcom/nd/commplatform/d/c/iu;

    sget v1, Lcom/nd/commplatform/d/c/jo$e;->bS:I

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/iu;->findViewById(I)Landroid/view/View;

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
    .locals 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v7, -0x1

    iget-object v4, p0, Lcom/nd/commplatform/d/c/iu$b;->a:Lcom/nd/commplatform/d/c/iu;

    const-string v0, "OrderSnUsed="

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v7, :cond_1

    move v0, v2

    :goto_0
    invoke-static {v4, v0}, Lcom/nd/commplatform/d/c/iu;->a(Lcom/nd/commplatform/d/c/iu;Z)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/nd/commplatform/d/c/oe;->f:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "QueryConsumeRecord"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v7, :cond_2

    const/16 v0, 0x453

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    :cond_0
    :goto_1
    return v2

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/iu$b;->a:Lcom/nd/commplatform/d/c/iu;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/iu;->g(Lcom/nd/commplatform/d/c/iu;)Z

    move-result v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/nd/commplatform/d/c/oe;->f:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "QueryCreditRecord"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v7, :cond_3

    const/16 v0, 0x458

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/nd/commplatform/d/c/oe;->f:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "BackToClient"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v7, :cond_6

    iget-object v0, p0, Lcom/nd/commplatform/d/c/iu$b;->a:Lcom/nd/commplatform/d/c/iu;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/iu;->g(Lcom/nd/commplatform/d/c/iu;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/nd/commplatform/d/c/bz;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v1}, Lcom/nd/commplatform/d/c/cb;->a(Lcom/nd/commplatform/d/c/bx;)V

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/nd/commplatform/d/c/cb;->e()V

    goto :goto_1

    :cond_5
    invoke-static {v1}, Lcom/nd/commplatform/d/c/cb;->a(Lcom/nd/commplatform/d/c/bx;)V

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/nd/commplatform/d/c/oe;->f:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "SmsSend"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v7, :cond_b

    const-string v0, "&"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/iu$b;->a:Lcom/nd/commplatform/d/c/iu;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/iu;->c(Lcom/nd/commplatform/d/c/iu;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    array-length v1, v0

    :goto_2
    if-ge v3, v1, :cond_a

    aget-object v4, v0, v3

    const-string v5, "Text="

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v7, :cond_8

    const-string v5, "Text="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/nd/commplatform/d/c/iu$b;->a:Lcom/nd/commplatform/d/c/iu;

    invoke-static {v5}, Lcom/nd/commplatform/d/c/iu;->c(Lcom/nd/commplatform/d/c/iu;)Ljava/util/HashMap;

    move-result-object v5

    const-string v6, "Text"

    aget-object v4, v4, v2

    invoke-static {v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    const-string v5, "SPNo="

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v7, :cond_9

    const-string v5, "SPNo="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/nd/commplatform/d/c/iu$b;->a:Lcom/nd/commplatform/d/c/iu;

    invoke-static {v5}, Lcom/nd/commplatform/d/c/iu;->c(Lcom/nd/commplatform/d/c/iu;)Ljava/util/HashMap;

    move-result-object v5

    const-string v6, "SPNo"

    aget-object v4, v4, v2

    invoke-static {v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_9
    const-string v5, "ReturnUrl="

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v7, :cond_7

    const-string v5, "ReturnUrl="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/nd/commplatform/d/c/iu$b;->a:Lcom/nd/commplatform/d/c/iu;

    invoke-static {v5}, Lcom/nd/commplatform/d/c/iu;->c(Lcom/nd/commplatform/d/c/iu;)Ljava/util/HashMap;

    move-result-object v5

    const-string v6, "ReturnUrl"

    aget-object v4, v4, v2

    invoke-static {v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lcom/nd/commplatform/d/c/iu$b;->a:Lcom/nd/commplatform/d/c/iu;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/iu;->c(Lcom/nd/commplatform/d/c/iu;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.android.sms.ndsns.MESSAGE_SENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/iu$b;->a:Lcom/nd/commplatform/d/c/iu;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/iu;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/iu$b;->a:Lcom/nd/commplatform/d/c/iu;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/iu;->b(Lcom/nd/commplatform/d/c/iu;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.android.sms.ndsns.MESSAGE_SENT"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/nd/commplatform/d/c/iu$b;->a:Lcom/nd/commplatform/d/c/iu;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/iu$b;->a:Lcom/nd/commplatform/d/c/iu;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/iu;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v0, p0, Lcom/nd/commplatform/d/c/iu$b;->a:Lcom/nd/commplatform/d/c/iu;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/iu;->c(Lcom/nd/commplatform/d/c/iu;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "SPNo"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/iu$b;->a:Lcom/nd/commplatform/d/c/iu;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/iu;->c(Lcom/nd/commplatform/d/c/iu;)Ljava/util/HashMap;

    move-result-object v1

    const-string v5, "Text"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v4, v0, v1}, Lcom/nd/commplatform/d/c/iu;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/nd/commplatform/d/c/oe;->f:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "DownApp"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v7, :cond_c

    new-instance v0, Lcom/nd/commplatform/d/c/nm;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/nm;-><init>()V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/iu$b;->a:Lcom/nd/commplatform/d/c/iu;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/iu$b;->a:Lcom/nd/commplatform/d/c/iu;

    invoke-virtual {v2}, Lcom/nd/commplatform/d/c/iu;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Lcom/nd/commplatform/d/c/nm;->a(Lcom/nd/commplatform/widget/NdFrameInnerContent;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    goto/16 :goto_1

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/nd/commplatform/d/c/oe;->f:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "CallPhone"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v7, :cond_e

    const-string v0, "&"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v0, v3

    :goto_4
    if-ge v0, v5, :cond_f

    aget-object v3, v4, v0

    const-string v6, "PhoneNo="

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v7, :cond_d

    const-string v0, "PhoneNo="

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tel://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :try_start_0
    invoke-static {}, Lcom/nd/commplatform/d/c/cb;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_e
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v2

    goto/16 :goto_1

    :cond_f
    move-object v0, v1

    goto :goto_5
.end method
