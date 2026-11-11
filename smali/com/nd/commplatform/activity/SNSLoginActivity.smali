.class public Lcom/nd/commplatform/activity/SNSLoginActivity;
.super Landroid/app/Activity;


# instance fields
.field protected a:Lcom/nd/commplatform/widget/NdPlatformPanelHelper;

.field protected b:Lcom/nd/commplatform/d/c/ca;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-static {}, Lcom/nd/commplatform/d/c/ol;->c()V

    invoke-static {v1}, Lcom/nd/commplatform/d/c/ol;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/nd/commplatform/d/c/ol;->d(I)I

    move-result v0

    invoke-static {v1}, Lcom/nd/commplatform/d/c/ol;->b(I)V

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/nd/commplatform/d/c/ol;->b(I)V

    invoke-static {v0}, Lcom/nd/commplatform/NdMiscCallbackListener;->b(I)V

    :cond_0
    invoke-static {v2}, Lcom/nd/commplatform/d/c/ol;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v2}, Lcom/nd/commplatform/d/c/ol;->d(I)I

    move-result v0

    invoke-static {v2}, Lcom/nd/commplatform/d/c/ol;->b(I)V

    invoke-static {v0}, Lcom/nd/commplatform/NdMiscCallbackListener;->c(I)V

    :cond_1
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 3

    new-instance v0, Lcom/nd/commplatform/entry/NdAppInfo;

    invoke-direct {v0}, Lcom/nd/commplatform/entry/NdAppInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/nd/commplatform/entry/NdAppInfo;->setCtx(Landroid/content/Context;)V

    invoke-static {}, Lcom/nd/commplatform/NdCommplatform;->getInstance()Lcom/nd/commplatform/NdCommplatform;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/nd/commplatform/NdCommplatform;->initial(ILcom/nd/commplatform/entry/NdAppInfo;)I

    return-void
.end method

.method private b()V
    .locals 1

    sget v0, Lcom/nd/commplatform/d/c/oe;->e:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/activity/SNSLoginActivity;->setRequestedOrientation(I)V

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/activity/SNSLoginActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/activity/SNSLoginActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/activity/SNSLoginActivity;->b:Lcom/nd/commplatform/d/c/ca;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/activity/SNSLoginActivity;->b:Lcom/nd/commplatform/d/c/ca;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/ca;->c()Lcom/nd/commplatform/widget/NdFrameInnerContent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->a(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/nd/commplatform/activity/SNSLoginActivity;->b:Lcom/nd/commplatform/d/c/ca;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/activity/SNSLoginActivity;->b:Lcom/nd/commplatform/d/c/ca;

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/d/c/ca;->a(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/nd/commplatform/activity/SNSLoginActivity;->b()V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/nd/commplatform/NdCommplatform;->getInstance()Lcom/nd/commplatform/NdCommplatform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/NdCommplatform;->getAppId()I

    move-result v0

    if-gtz v0, :cond_0

    new-instance v0, Lcom/nd/commplatform/entry/NdAppInfo;

    invoke-direct {v0}, Lcom/nd/commplatform/entry/NdAppInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/nd/commplatform/entry/NdAppInfo;->setCtx(Landroid/content/Context;)V

    invoke-static {}, Lcom/nd/commplatform/NdCommplatform;->getInstance()Lcom/nd/commplatform/NdCommplatform;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/nd/commplatform/NdCommplatform;->initial(ILcom/nd/commplatform/entry/NdAppInfo;)I

    sget v0, Lcom/nd/commplatform/d/c/jo$h;->aK:I

    invoke-static {p0, v0}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;I)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;

    invoke-direct {v0}, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/activity/SNSLoginActivity;->a:Lcom/nd/commplatform/widget/NdPlatformPanelHelper;

    iget-object v0, p0, Lcom/nd/commplatform/activity/SNSLoginActivity;->a:Lcom/nd/commplatform/widget/NdPlatformPanelHelper;

    invoke-virtual {v0, p0}, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/nd/commplatform/activity/SNSLoginActivity;->a:Lcom/nd/commplatform/widget/NdPlatformPanelHelper;

    invoke-virtual {v0}, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->d()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/activity/SNSLoginActivity;->setContentView(Landroid/view/View;)V

    new-instance v0, Lcom/nd/commplatform/d/c/ca;

    iget-object v1, p0, Lcom/nd/commplatform/activity/SNSLoginActivity;->a:Lcom/nd/commplatform/widget/NdPlatformPanelHelper;

    invoke-direct {v0, p0, v1}, Lcom/nd/commplatform/d/c/ca;-><init>(Landroid/app/Activity;Lcom/nd/commplatform/widget/NdPlatformPanelHelper;)V

    iput-object v0, p0, Lcom/nd/commplatform/activity/SNSLoginActivity;->b:Lcom/nd/commplatform/d/c/ca;

    iget-object v0, p0, Lcom/nd/commplatform/activity/SNSLoginActivity;->b:Lcom/nd/commplatform/d/c/ca;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/cb;->a(Lcom/nd/commplatform/d/c/ca;)V

    iget-object v0, p0, Lcom/nd/commplatform/activity/SNSLoginActivity;->b:Lcom/nd/commplatform/d/c/ca;

    invoke-virtual {v0, v3, v2}, Lcom/nd/commplatform/d/c/ca;->a(II)V

    iget-object v0, p0, Lcom/nd/commplatform/activity/SNSLoginActivity;->b:Lcom/nd/commplatform/d/c/ca;

    invoke-virtual {v0, v2, v5}, Lcom/nd/commplatform/d/c/ca;->a(II)V

    iget-object v0, p0, Lcom/nd/commplatform/activity/SNSLoginActivity;->b:Lcom/nd/commplatform/d/c/ca;

    invoke-virtual {v0, v5, v6}, Lcom/nd/commplatform/d/c/ca;->a(II)V

    iget-object v0, p0, Lcom/nd/commplatform/activity/SNSLoginActivity;->b:Lcom/nd/commplatform/d/c/ca;

    const/4 v1, 0x4

    invoke-virtual {v0, v6, v1}, Lcom/nd/commplatform/d/c/ca;->a(II)V

    iget-object v0, p0, Lcom/nd/commplatform/activity/SNSLoginActivity;->b:Lcom/nd/commplatform/d/c/ca;

    const/4 v1, 0x4

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/ca;->a(II)V

    invoke-virtual {p0}, Lcom/nd/commplatform/activity/SNSLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "intent_control_center"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nd/commplatform/activity/SNSLoginActivity;->c:Z

    invoke-virtual {p0}, Lcom/nd/commplatform/activity/SNSLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "intent_category"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/nd/commplatform/activity/SNSLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "intent_view"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/nd/commplatform/activity/SNSLoginActivity;->a:Lcom/nd/commplatform/widget/NdPlatformPanelHelper;

    invoke-virtual {v2, v0}, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->b(I)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/nd/commplatform/d/c/cb;->a(IILcom/nd/commplatform/d/c/bx;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/nd/commplatform/activity/SNSLoginActivity;->a:Lcom/nd/commplatform/widget/NdPlatformPanelHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/activity/SNSLoginActivity;->a:Lcom/nd/commplatform/widget/NdPlatformPanelHelper;

    invoke-virtual {v0}, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->e()V

    iput-object v1, p0, Lcom/nd/commplatform/activity/SNSLoginActivity;->a:Lcom/nd/commplatform/widget/NdPlatformPanelHelper;

    :cond_0
    iput-object v1, p0, Lcom/nd/commplatform/activity/SNSLoginActivity;->b:Lcom/nd/commplatform/d/c/ca;

    iget-boolean v0, p0, Lcom/nd/commplatform/activity/SNSLoginActivity;->c:Z

    if-nez v0, :cond_1

    invoke-static {v1}, Lcom/nd/commplatform/d/c/cb;->a(Lcom/nd/commplatform/d/c/ca;)V

    :cond_1
    invoke-direct {p0}, Lcom/nd/commplatform/activity/SNSLoginActivity;->a()V

    sget-object v0, Lcom/nd/commplatform/d/c/oe;->d:Lcom/nd/commplatform/NdMiscCallbackListener$OnPlatformBackground;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/nd/commplatform/d/c/oe;->d:Lcom/nd/commplatform/NdMiscCallbackListener$OnPlatformBackground;

    invoke-interface {v0}, Lcom/nd/commplatform/NdMiscCallbackListener$OnPlatformBackground;->onPlatformBackground()V

    :cond_2
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/nd/commplatform/activity/SNSLoginActivity;->b:Lcom/nd/commplatform/d/c/ca;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nd/commplatform/activity/SNSLoginActivity;->b:Lcom/nd/commplatform/d/c/ca;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/ca;->c()Lcom/nd/commplatform/widget/NdFrameInnerContent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    packed-switch p1, :pswitch_data_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/nd/commplatform/d/c/cb;->a(Lcom/nd/commplatform/d/c/bx;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/d/c/a;->b(Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/nd/commplatform/activity/SNSLoginActivity;->a(Landroid/os/Bundle;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->g()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nd/commplatform/activity/SNSLoginActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/d/c/a;->a(Landroid/os/Bundle;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
