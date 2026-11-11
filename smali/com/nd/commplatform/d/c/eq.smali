.class public Lcom/nd/commplatform/d/c/eq;
.super Lcom/nd/commplatform/widget/NdFrameInnerContent;


# static fields
.field private static f:Ljava/lang/String;


# instance fields
.field private a:Lcom/nd/commplatform/d/c/er;

.field private b:Landroid/webkit/WebView;

.field private c:Landroid/widget/ProgressBar;

.field private d:Landroid/view/View;

.field private e:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/nd/commplatform/d/c/eq;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const/16 v2, 0x259

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {p0, v0, v2, v1}, Lcom/nd/commplatform/d/c/cb;->a(Landroid/content/Context;IILcom/nd/commplatform/d/c/bx;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/nd/commplatform/d/c/bx;

    const/16 v1, 0x77

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/bx;-><init>(I)V

    const-string v1, "appId"

    invoke-virtual {v0, v1, p1}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, -0x1

    invoke-static {p0, v1, v2, v0}, Lcom/nd/commplatform/d/c/cb;->a(Landroid/content/Context;IILcom/nd/commplatform/d/c/bx;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3

    const/16 v2, 0x259

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/nd/commplatform/d/c/bx;

    const/16 v1, 0x77

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/bx;-><init>(I)V

    const-string v1, "appId"

    invoke-virtual {v0, v1, p0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/nd/commplatform/d/c/eq;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 1

    iput-object p1, p0, Lcom/nd/commplatform/d/c/eq;->e:Landroid/view/LayoutInflater;

    new-instance v0, Lcom/nd/commplatform/d/c/er;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/er;-><init>(Lcom/nd/commplatform/widget/NdFrameInnerContent;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/eq;->a:Lcom/nd/commplatform/d/c/er;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eq;->a:Lcom/nd/commplatform/d/c/er;

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/d/c/er;->a(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lcom/nd/commplatform/widget/NdFrameInnerContent;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eq;->a:Lcom/nd/commplatform/d/c/er;

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/d/c/er;->a(I)V

    invoke-super {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->a(I)Lcom/nd/commplatform/widget/NdFrameInnerContent;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nd/commplatform/d/c/eq;->p:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nd/commplatform/d/c/eq;->v:Z

    iput-boolean v1, p0, Lcom/nd/commplatform/d/c/eq;->w:Z

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 7

    const/4 v6, -0x1

    const/4 v5, 0x1

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->cz:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/eq;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/eq;->e:Landroid/view/LayoutInflater;

    sget v2, Lcom/nd/commplatform/d/c/jo$f;->Z:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/nd/commplatform/d/c/eq;->b:Landroid/webkit/WebView;

    sget v1, Lcom/nd/commplatform/d/c/jo$e;->hn:I

    invoke-virtual {p0, v1}, Lcom/nd/commplatform/d/c/eq;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/nd/commplatform/d/c/eq;->c:Landroid/widget/ProgressBar;

    sget v1, Lcom/nd/commplatform/d/c/jo$e;->ct:I

    invoke-virtual {p0, v1}, Lcom/nd/commplatform/d/c/eq;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/nd/commplatform/d/c/eq;->d:Landroid/view/View;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/eq;->b:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/eq;->b:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/eq;->b:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->requestFocus()Z

    iget-object v1, p0, Lcom/nd/commplatform/d/c/eq;->b:Landroid/webkit/WebView;

    invoke-virtual {v1, v5}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/eq;->a:Lcom/nd/commplatform/d/c/er;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/eq;->d:Landroid/view/View;

    iget-object v3, p0, Lcom/nd/commplatform/d/c/eq;->b:Landroid/webkit/WebView;

    iget-object v4, p0, Lcom/nd/commplatform/d/c/eq;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/nd/commplatform/d/c/er;->a(Landroid/view/View;Landroid/webkit/WebView;Landroid/widget/ProgressBar;Z)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/eq;->b:Landroid/webkit/WebView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected a(ZI)V
    .locals 5

    const/16 v2, 0x77

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-static {v2}, Lcom/nd/commplatform/d/c/cb;->b(I)Lcom/nd/commplatform/d/c/bx;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "appId"

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    invoke-static {v2}, Lcom/nd/commplatform/d/c/cb;->c(I)Lcom/nd/commplatform/d/c/bx;

    :cond_0
    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/a;->i()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v2

    sget-object v3, Lcom/nd/commplatform/d/c/oe;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/nd/commplatform/d/c/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nd/commplatform/d/c/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/nd/commplatform/d/c/eq;->f:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string v0, "&Url="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/nd/commplatform/d/c/eq;->f:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/eq;->b()V

    move-object v0, v1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/eq;->b:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    if-eqz v0, :cond_8

    const-string v2, "&appID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/a;->h()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_4
    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    sget-object v2, Lcom/nd/commplatform/d/c/oe;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/nd/commplatform/d/c/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_5

    const-string v2, "?appID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    move-object v0, v1

    goto :goto_0

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v3

    sget-object v4, Lcom/nd/commplatform/d/c/oe;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/nd/commplatform/d/c/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_7

    const-string v2, "&appID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    move-object v0, v1

    goto :goto_0

    :cond_8
    move-object v0, v1

    goto :goto_0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/nd/commplatform/d/c/eq;->f:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/eq;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/b;->n()Lcom/nd/commplatform/entry/NdLoginStatus;

    move-result-object v0

    sget-object v1, Lcom/nd/commplatform/entry/NdLoginStatus;->GuestLogin:Lcom/nd/commplatform/entry/NdLoginStatus;

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/nd/commplatform/d/c/cb;->a(Lcom/nd/commplatform/d/c/eq;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/nd/commplatform/d/c/cb;->b(Lcom/nd/commplatform/d/c/eq;)V

    goto :goto_0
.end method
