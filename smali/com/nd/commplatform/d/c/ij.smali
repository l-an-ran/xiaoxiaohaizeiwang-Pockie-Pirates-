.class final Lcom/nd/commplatform/d/c/ij;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/d/c/ii;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/ii;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/ii;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ij;->a:Lcom/nd/commplatform/d/c/ii;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.sms.ndsns.MESSAGE_SENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/nd/commplatform/d/c/ij;->b(Landroid/content/Intent;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private b(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x2

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ij;->getResultCode()I

    move-result v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ij;->a:Lcom/nd/commplatform/d/c/ii;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/ii;->b(Lcom/nd/commplatform/d/c/ii;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ij;->a:Lcom/nd/commplatform/d/c/ii;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ii;->c(Lcom/nd/commplatform/d/c/ii;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "ReturnUrl"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ij;->a:Lcom/nd/commplatform/d/c/ii;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ii;->d(Lcom/nd/commplatform/d/c/ii;)Landroid/webkit/WebViewClient;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ij;->a:Lcom/nd/commplatform/d/c/ii;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ii;->a(Lcom/nd/commplatform/d/c/ii;)Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/ij;->a:Lcom/nd/commplatform/d/c/ii;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ij;->a:Lcom/nd/commplatform/d/c/ii;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ii;->e(Lcom/nd/commplatform/d/c/ii;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ij;->a:Lcom/nd/commplatform/d/c/ii;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ii;->c(Lcom/nd/commplatform/d/c/ii;)Ljava/util/HashMap;

    move-result-object v0

    const-string v4, "ReturnUrl"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/nd/commplatform/d/c/ii;->a(Lcom/nd/commplatform/d/c/ii;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ij;->a:Lcom/nd/commplatform/d/c/ii;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ii;->f(Lcom/nd/commplatform/d/c/ii;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, -0x1774

    invoke-static {v5, v0}, Lcom/nd/commplatform/d/c/ol;->a(II)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eq v0, v5, :cond_3

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    :cond_3
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->jB:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->jB:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.sms.ndsns.MESSAGE_SENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2, p1}, Lcom/nd/commplatform/d/c/ij;->a(Landroid/content/Intent;Landroid/content/Context;)V

    :cond_0
    return-void
.end method
