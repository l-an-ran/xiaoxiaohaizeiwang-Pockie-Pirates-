.class public Lcom/nd/commplatform/d/c/ji;
.super Lcom/nd/commplatform/widget/NdFrameInnerContent;


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/view/View;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/ji;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/ji;->b()V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/nd/commplatform/d/c/bx;

    const/16 v1, 0x2714

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/bx;-><init>(I)V

    const-string v1, "account"

    invoke-virtual {v0, v1, p0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xfa6

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/nd/commplatform/d/c/cb;->a(IZLcom/nd/commplatform/d/c/bx;)V

    return-void
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/ji;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ji;->c:Landroid/view/View;

    return-object v0
.end method

.method private b()V
    .locals 5

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ji;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/oh;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ji;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->gb:I

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/nd/commplatform/d/c/ji;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ji;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->cq:I

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/nd/commplatform/d/c/ji;->c:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    new-instance v1, Lcom/nd/commplatform/d/c/ji$2;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/ji$2;-><init>(Lcom/nd/commplatform/d/c/ji;)V

    invoke-virtual {p0, v1}, Lcom/nd/commplatform/d/c/ji;->a(Lcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/nd/commplatform/d/c/ji;->b(Z)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v2

    iget-object v3, p0, Lcom/nd/commplatform/d/c/ji;->d:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ji;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v4, v1}, Lcom/nd/commplatform/d/c/a;->j(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    goto :goto_0
.end method

.method private c()V
    .locals 2

    const/16 v0, 0x2714

    invoke-static {v0}, Lcom/nd/commplatform/d/c/cb;->b(I)Lcom/nd/commplatform/d/c/bx;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "account"

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ji;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/cb;->c(Lcom/nd/commplatform/d/c/bx;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->bH:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lcom/nd/commplatform/widget/NdFrameInnerContent;
    .locals 1

    invoke-super {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->a(I)Lcom/nd/commplatform/widget/NdFrameInnerContent;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/ji;->p:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/ji;->q:Z

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ji;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->nr:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ji;->r:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/nd/commplatform/d/c/ji;->s:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ji;->t:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ji;->u:Landroid/view/View$OnClickListener;

    iput-boolean v3, p0, Lcom/nd/commplatform/d/c/ji;->v:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/ji;->w:Z

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->iV:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ji;->a:Landroid/widget/EditText;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->iU:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ji;->b:Landroid/widget/EditText;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->iS:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ji;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ji;->c:Landroid/view/View;

    new-instance v1, Lcom/nd/commplatform/d/c/ji$1;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/ji$1;-><init>(Lcom/nd/commplatform/d/c/ji;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected a(ZI)V
    .locals 0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ji;->clearFocus()V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/ji;->c()V

    :cond_0
    return-void
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
