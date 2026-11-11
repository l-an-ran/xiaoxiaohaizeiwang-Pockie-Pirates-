.class public Lcom/nd/commplatform/d/c/cc;
.super Landroid/app/AlertDialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nd/commplatform/d/c/cc$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/Button;

.field private d:Ljava/lang/String;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/view/LayoutInflater;

.field private g:Lcom/nd/commplatform/d/c/og$a;

.field private h:Landroid/widget/ProgressBar;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/TextView;

.field private k:Lcom/nd/commplatform/d/c/cc$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/nd/commplatform/d/c/cc;->a:Landroid/content/Context;

    iput-object p1, p0, Lcom/nd/commplatform/d/c/cc;->d:Ljava/lang/String;

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/cc;->f:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/cc;->f:Landroid/view/LayoutInflater;

    sget v1, Lcom/nd/commplatform/d/c/jo$f;->aV:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    sget v1, Lcom/nd/commplatform/d/c/jo$e;->fE:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/nd/commplatform/d/c/cc;->h:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/cc;->h:Landroid/widget/ProgressBar;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    sget v1, Lcom/nd/commplatform/d/c/jo$e;->gu:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/nd/commplatform/d/c/cc;->e:Landroid/widget/TextView;

    sget v1, Lcom/nd/commplatform/d/c/jo$e;->gv:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/nd/commplatform/d/c/cc;->j:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/cc;->b()V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/cc;->d()V

    sget v1, Lcom/nd/commplatform/d/c/jo$e;->bC:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/nd/commplatform/d/c/cc;->i:Landroid/widget/Button;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/cc;->i:Landroid/widget/Button;

    new-instance v2, Lcom/nd/commplatform/d/c/cc$1;

    invoke-direct {v2, p0}, Lcom/nd/commplatform/d/c/cc$1;-><init>(Lcom/nd/commplatform/d/c/cc;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/cc;->c()V

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/cc;->setView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/cc;)Lcom/nd/commplatform/d/c/cc$a;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/cc;->k:Lcom/nd/commplatform/d/c/cc$a;

    return-object v0
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/cc;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/cc;->a:Landroid/content/Context;

    return-object v0
.end method

.method private b()V
    .locals 4

    iget-object v0, p0, Lcom/nd/commplatform/d/c/cc;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->aZ:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "--"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "--"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/cc;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic c(Lcom/nd/commplatform/d/c/cc;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/cc;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method private c()V
    .locals 5

    iget-object v0, p0, Lcom/nd/commplatform/d/c/cc;->e:Landroid/widget/TextView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/cc;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->kw:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/cc;->e:Landroid/widget/TextView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/nd/commplatform/d/c/cc;->d:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/nd/commplatform/d/c/cc;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/cc;->h:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private d()V
    .locals 1

    new-instance v0, Lcom/nd/commplatform/d/c/cc$2;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/cc$2;-><init>(Lcom/nd/commplatform/d/c/cc;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/cc;->g:Lcom/nd/commplatform/d/c/og$a;

    return-void
.end method

.method static synthetic e(Lcom/nd/commplatform/d/c/cc;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/cc;->i:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/nd/commplatform/d/c/og$a;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/cc;->g:Lcom/nd/commplatform/d/c/og$a;

    return-object v0
.end method

.method public a(Lcom/nd/commplatform/d/c/cc$a;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/cc;->k:Lcom/nd/commplatform/d/c/cc$a;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/cc;->k:Lcom/nd/commplatform/d/c/cc$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/cc;->k:Lcom/nd/commplatform/d/c/cc$a;

    invoke-interface {v0}, Lcom/nd/commplatform/d/c/cc$a;->a()V

    :cond_0
    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/cc;->cancel()V

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
