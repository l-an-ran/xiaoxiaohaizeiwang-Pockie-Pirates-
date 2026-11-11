.class final Lcom/nd/commplatform/d/c/er$2;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/er;->a(Landroid/view/View;Landroid/webkit/WebView;Landroid/widget/ProgressBar;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/webkit/WebView;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Lcom/nd/commplatform/d/c/er;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/er;ZLandroid/webkit/WebView;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/er$2;->d:Lcom/nd/commplatform/d/c/er;

    iput-boolean p2, p0, Lcom/nd/commplatform/d/c/er$2;->a:Z

    iput-object p3, p0, Lcom/nd/commplatform/d/c/er$2;->b:Landroid/webkit/WebView;

    iput-object p4, p0, Lcom/nd/commplatform/d/c/er$2;->c:Landroid/view/View;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/d/c/er$2;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/er$2;->b:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/er$2;->c:Landroid/view/View;

    sget v1, Lcom/nd/commplatform/d/c/jo$e;->bS:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

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
    .locals 15
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/nd/commplatform/d/c/oe;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "BackToClient"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/nd/commplatform/d/c/cb;->a(Lcom/nd/commplatform/d/c/bx;)V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    iget-boolean v1, p0, Lcom/nd/commplatform/d/c/er$2;->a:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/nd/commplatform/d/c/oe;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ShowUser"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/nd/commplatform/d/c/er$2;->d:Lcom/nd/commplatform/d/c/er;

    const-string v2, "uin"

    move-object/from16 v0, p2

    invoke-static {v1, v0, v2}, Lcom/nd/commplatform/d/c/er;->a(Lcom/nd/commplatform/d/c/er;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nd/commplatform/d/c/a;->i()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/nd/commplatform/d/c/ed;->a(Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/nd/commplatform/d/c/oe;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "LoginForum"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/nd/commplatform/d/c/er$2;->d:Lcom/nd/commplatform/d/c/er;

    const-string v2, "Url"

    move-object/from16 v0, p2

    invoke-static {v1, v0, v2}, Lcom/nd/commplatform/d/c/er;->a(Lcom/nd/commplatform/d/c/er;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/er$2;->d:Lcom/nd/commplatform/d/c/er;

    const-string v3, "appID"

    move-object/from16 v0, p2

    invoke-static {v2, v0, v3}, Lcom/nd/commplatform/d/c/er;->a(Lcom/nd/commplatform/d/c/er;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_18

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&appID="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    :goto_1
    iget-object v1, p0, Lcom/nd/commplatform/d/c/er$2;->d:Lcom/nd/commplatform/d/c/er;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/er;->a(Lcom/nd/commplatform/d/c/er;)Lcom/nd/commplatform/widget/NdFrameInnerContent;

    move-result-object v1

    check-cast v1, Lcom/nd/commplatform/d/c/eq;

    invoke-virtual {v1, v2}, Lcom/nd/commplatform/d/c/eq;->b(Ljava/lang/String;)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lcom/nd/commplatform/d/c/er$2;->b:Landroid/webkit/WebView;

    move-object/from16 v0, p2

    invoke-super {p0, v1, v0}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v1

    goto/16 :goto_0

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/nd/commplatform/d/c/oe;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "GoLeaderBoard"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    iget-object v1, p0, Lcom/nd/commplatform/d/c/er$2;->d:Lcom/nd/commplatform/d/c/er;

    const-string v2, "appID"

    move-object/from16 v0, p2

    invoke-static {v1, v0, v2}, Lcom/nd/commplatform/d/c/er;->a(Lcom/nd/commplatform/d/c/er;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/er$2;->d:Lcom/nd/commplatform/d/c/er;

    const-string v3, "uin"

    move-object/from16 v0, p2

    invoke-static {v2, v0, v3}, Lcom/nd/commplatform/d/c/er;->a(Lcom/nd/commplatform/d/c/er;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_5

    const-string v1, "0"

    :cond_5
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v2, v1}, Lcom/nd/commplatform/d/c/fh;->a(Ljava/lang/String;I)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/nd/commplatform/d/c/oe;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "GoAchievement"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_8

    iget-object v1, p0, Lcom/nd/commplatform/d/c/er$2;->d:Lcom/nd/commplatform/d/c/er;

    const-string v2, "appID"

    move-object/from16 v0, p2

    invoke-static {v1, v0, v2}, Lcom/nd/commplatform/d/c/er;->a(Lcom/nd/commplatform/d/c/er;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/er$2;->d:Lcom/nd/commplatform/d/c/er;

    const-string v3, "uin"

    move-object/from16 v0, p2

    invoke-static {v2, v0, v3}, Lcom/nd/commplatform/d/c/er;->a(Lcom/nd/commplatform/d/c/er;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_7

    const-string v1, "0"

    :cond_7
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v2, v1}, Lcom/nd/commplatform/d/c/fd;->a(Ljava/lang/String;I)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/nd/commplatform/d/c/oe;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "GoWhoPlay"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_a

    iget-object v1, p0, Lcom/nd/commplatform/d/c/er$2;->d:Lcom/nd/commplatform/d/c/er;

    const-string v2, "appID"

    move-object/from16 v0, p2

    invoke-static {v1, v0, v2}, Lcom/nd/commplatform/d/c/er;->a(Lcom/nd/commplatform/d/c/er;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    const-string v1, "0"

    :cond_9
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/nd/commplatform/d/c/fk;->c(I)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/nd/commplatform/d/c/oe;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "GoBBS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    iget-object v1, p0, Lcom/nd/commplatform/d/c/er$2;->d:Lcom/nd/commplatform/d/c/er;

    const-string v2, "appID"

    move-object/from16 v0, p2

    invoke-static {v1, v0, v2}, Lcom/nd/commplatform/d/c/er;->a(Lcom/nd/commplatform/d/c/er;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nd/commplatform/d/c/eq;->a(Ljava/lang/String;)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/nd/commplatform/d/c/oe;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "GoInviteFriend"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_c

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/a;->b()I

    move-result v1

    invoke-static {v1}, Lcom/nd/commplatform/d/c/fa;->b(I)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/nd/commplatform/d/c/oe;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DownApp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_15

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/nd/commplatform/d/c/er$2;->d:Lcom/nd/commplatform/d/c/er;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/er;->b(Lcom/nd/commplatform/d/c/er;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->kh:I

    invoke-static {v1, v2}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;I)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_d
    const-wide/16 v8, 0x0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/er$2;->d:Lcom/nd/commplatform/d/c/er;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/er;->c(Lcom/nd/commplatform/d/c/er;)I

    move-result v6

    const/4 v7, 0x0

    const-string v1, "&"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    array-length v11, v5

    const/4 v1, 0x0

    move v4, v1

    :goto_2
    if-ge v4, v11, :cond_13

    aget-object v1, v5, v4

    const-string v2, "name="

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_e

    const-string v2, "name="

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-virtual {v10, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v7

    move-wide v2, v8

    :goto_3
    add-int/lit8 v4, v4, 0x1

    move-object v7, v1

    move-wide v8, v2

    goto :goto_2

    :cond_e
    const-string v2, "url="

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_f

    const-string v2, "url="

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "url"

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-virtual {v10, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v7

    move-wide v2, v8

    goto :goto_3

    :cond_f
    const-string v2, "package="

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_10

    const-string v2, "package="

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "package"

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-virtual {v10, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v7

    move-wide v2, v8

    goto :goto_3

    :cond_10
    const-string v2, "appID="

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_11

    const-string v2, "appID="

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    :try_start_0
    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    move-object v1, v7

    move-wide v2, v8

    goto :goto_3

    :catch_0
    move-exception v1

    move-object v1, v7

    move-wide v2, v8

    goto :goto_3

    :cond_11
    const-string v2, "packagesize="

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_12

    const-string v2, "packagesize="

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    :try_start_1
    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    int-to-long v1, v1

    move-wide v13, v1

    move-wide v2, v13

    move-object v1, v7

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v1, v7

    move-wide v2, v8

    goto :goto_3

    :cond_12
    const-string v2, "version="

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_17

    const-string v2, "version="

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    :try_start_2
    aget-object v1, v1, v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-wide v2, v8

    goto/16 :goto_3

    :catch_2
    move-exception v1

    move-object v1, v7

    move-wide v2, v8

    goto/16 :goto_3

    :cond_13
    const-string v1, "name"

    invoke-virtual {v10, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    invoke-static {v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    :goto_4
    const-string v1, "url"

    invoke-virtual {v10, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_14

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "package"

    invoke-virtual {v10, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v10, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/er$2;->d:Lcom/nd/commplatform/d/c/er;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/er;->b(Lcom/nd/commplatform/d/c/er;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v10, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->bc:I

    invoke-virtual {v10, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    sget v12, Lcom/nd/commplatform/d/c/jo$h;->aY:I

    new-instance v1, Lcom/nd/commplatform/d/c/er$2$2;

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/nd/commplatform/d/c/er$2$2;-><init>(Lcom/nd/commplatform/d/c/er$2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v11, v12, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->bG:I

    new-instance v3, Lcom/nd/commplatform/d/c/er$2$1;

    invoke-direct {v3, p0}, Lcom/nd/commplatform/d/c/er$2$1;-><init>(Lcom/nd/commplatform/d/c/er$2;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/er$2;->d:Lcom/nd/commplatform/d/c/er;

    invoke-static {v1, v4, v7, v8, v9}, Lcom/nd/commplatform/d/c/er;->a(Lcom/nd/commplatform/d/c/er;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_14
    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_15
    iget-object v1, p0, Lcom/nd/commplatform/d/c/er$2;->b:Landroid/webkit/WebView;

    move-object/from16 v0, p2

    invoke-super {p0, v1, v0}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v1

    goto/16 :goto_0

    :cond_16
    move-object v4, v1

    goto :goto_4

    :cond_17
    move-object v1, v7

    move-wide v2, v8

    goto/16 :goto_3

    :cond_18
    move-object v2, v1

    goto/16 :goto_1
.end method
