.class public Lcom/TQFramework/TQWebDlg;
.super Landroid/app/Dialog;
.source "TQWebDlg.java"


# instance fields
.field private btnBack:Landroid/widget/ImageButton;

.field private btnExit:Landroid/widget/ImageButton;

.field private txtTitle:Landroid/widget/TextView;

.field private wvBrowser:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    sget v0, Lcom/TQFramework/DynamicActivityId$style;->tq_webdialog:I

    invoke-direct {p0, p1, v0}, Lcom/TQFramework/TQWebDlg;-><init>(Landroid/content/Context;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 23
    iput-object v0, p0, Lcom/TQFramework/TQWebDlg;->wvBrowser:Landroid/webkit/WebView;

    .line 24
    iput-object v0, p0, Lcom/TQFramework/TQWebDlg;->btnExit:Landroid/widget/ImageButton;

    .line 25
    iput-object v0, p0, Lcom/TQFramework/TQWebDlg;->btnBack:Landroid/widget/ImageButton;

    .line 26
    iput-object v0, p0, Lcom/TQFramework/TQWebDlg;->txtTitle:Landroid/widget/TextView;

    .line 39
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p0, p1}, Lcom/TQFramework/TQWebDlg;->setOwnerActivity(Landroid/app/Activity;)V

    .line 40
    return-void
.end method

.method static synthetic access$0(Lcom/TQFramework/TQWebDlg;)V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/TQFramework/TQWebDlg;->release()V

    return-void
.end method

.method static synthetic access$1(Lcom/TQFramework/TQWebDlg;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/TQFramework/TQWebDlg;->wvBrowser:Landroid/webkit/WebView;

    return-object v0
.end method

.method private release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 129
    invoke-virtual {p0}, Lcom/TQFramework/TQWebDlg;->dismiss()V

    .line 130
    invoke-static {}, Lcom/TQFramework/TQWebAdapter;->sharedInstance()Lcom/TQFramework/TQWebAdapter;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v1}, Lcom/TQFramework/TQWebAdapter;->TQWebEvent2JniCall(III)I

    .line 131
    return-void
.end method


# virtual methods
.method public loadURL(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "strUrl"    # Ljava/lang/String;
    .param p2, "strTitle"    # Ljava/lang/String;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/TQFramework/TQWebDlg;->wvBrowser:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/TQFramework/TQWebDlg;->txtTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 46
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 47
    sget v3, Lcom/TQFramework/DynamicActivityId$layout;->tq_webdlg:I

    invoke-virtual {p0, v3}, Lcom/TQFramework/TQWebDlg;->setContentView(I)V

    .line 49
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 50
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/TQFramework/TQWebDlg;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 52
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 53
    .local v1, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 54
    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 55
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 56
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 57
    invoke-virtual {p0}, Lcom/TQFramework/TQWebDlg;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 59
    sget v3, Lcom/TQFramework/DynamicActivityId$id;->tq_wv_browser:I

    invoke-virtual {p0, v3}, Lcom/TQFramework/TQWebDlg;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebView;

    iput-object v3, p0, Lcom/TQFramework/TQWebDlg;->wvBrowser:Landroid/webkit/WebView;

    .line 60
    iget-object v3, p0, Lcom/TQFramework/TQWebDlg;->wvBrowser:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 61
    .local v2, "settings":Landroid/webkit/WebSettings;
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 62
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 63
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 64
    sget-object v3, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 65
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 66
    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 67
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 69
    iget-object v3, p0, Lcom/TQFramework/TQWebDlg;->wvBrowser:Landroid/webkit/WebView;

    new-instance v4, Lcom/TQFramework/TQWebDlg$1;

    invoke-direct {v4, p0}, Lcom/TQFramework/TQWebDlg$1;-><init>(Lcom/TQFramework/TQWebDlg;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 78
    sget v3, Lcom/TQFramework/DynamicActivityId$id;->tq_btn_exit:I

    invoke-virtual {p0, v3}, Lcom/TQFramework/TQWebDlg;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/TQFramework/TQWebDlg;->btnExit:Landroid/widget/ImageButton;

    .line 79
    iget-object v3, p0, Lcom/TQFramework/TQWebDlg;->btnExit:Landroid/widget/ImageButton;

    new-instance v4, Lcom/TQFramework/TQWebDlg$2;

    invoke-direct {v4, p0}, Lcom/TQFramework/TQWebDlg$2;-><init>(Lcom/TQFramework/TQWebDlg;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    sget v3, Lcom/TQFramework/DynamicActivityId$id;->tq_btn_back:I

    invoke-virtual {p0, v3}, Lcom/TQFramework/TQWebDlg;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/TQFramework/TQWebDlg;->btnBack:Landroid/widget/ImageButton;

    .line 89
    iget-object v3, p0, Lcom/TQFramework/TQWebDlg;->btnBack:Landroid/widget/ImageButton;

    new-instance v4, Lcom/TQFramework/TQWebDlg$3;

    invoke-direct {v4, p0}, Lcom/TQFramework/TQWebDlg$3;-><init>(Lcom/TQFramework/TQWebDlg;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    sget v3, Lcom/TQFramework/DynamicActivityId$id;->tq_txt_Title:I

    invoke-virtual {p0, v3}, Lcom/TQFramework/TQWebDlg;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/TQFramework/TQWebDlg;->txtTitle:Landroid/widget/TextView;

    .line 102
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 121
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 122
    invoke-direct {p0}, Lcom/TQFramework/TQWebDlg;->release()V

    .line 124
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 114
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 115
    return-void
.end method
