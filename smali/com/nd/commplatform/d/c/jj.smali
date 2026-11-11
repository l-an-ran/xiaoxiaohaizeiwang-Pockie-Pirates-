.class public Lcom/nd/commplatform/d/c/jj;
.super Lcom/nd/commplatform/widget/NdFrameInnerContent;


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/View;

.field private f:Landroid/os/Handler;

.field private g:I

.field private h:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x28

    iput v0, p0, Lcom/nd/commplatform/d/c/jj;->g:I

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/jj;I)I
    .locals 0

    iput p1, p0, Lcom/nd/commplatform/d/c/jj;->g:I

    return p1
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/jj;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/jj;->c()V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/jj;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->nz:I

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;I)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b()V
    .locals 2

    const/16 v0, 0xfa3

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    return-void
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/jj;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/jj;->n()V

    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/jj;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->nA:I

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;I)V

    :goto_0
    return v2

    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0xb

    if-ne v0, v3, :cond_3

    move v0, v1

    :goto_1
    move v3, v2

    :goto_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_2

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    if-lt v5, v6, :cond_1

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x39

    if-le v5, v6, :cond_4

    :cond_1
    move v0, v2

    :cond_2
    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/jj;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->nB:I

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    move v2, v1

    goto :goto_0
.end method

.method static synthetic c(Lcom/nd/commplatform/d/c/jj;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/jj;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method private c()V
    .locals 4

    iget-object v0, p0, Lcom/nd/commplatform/d/c/jj;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nd/commplatform/d/c/jj;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/nd/commplatform/d/c/jj;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v1, p0, Lcom/nd/commplatform/d/c/jj;->c:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    new-instance v1, Lcom/nd/commplatform/d/c/jj$4;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/jj$4;-><init>(Lcom/nd/commplatform/d/c/jj;)V

    invoke-virtual {p0, v1}, Lcom/nd/commplatform/d/c/jj;->a(Lcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/nd/commplatform/d/c/jj;->b(Z)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/jj;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v0, v3, v1}, Lcom/nd/commplatform/d/c/a;->o(Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/nd/commplatform/d/c/jj;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/jj;->c:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/nd/commplatform/d/c/jj;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/jj;->m()V

    return-void
.end method

.method static synthetic f(Lcom/nd/commplatform/d/c/jj;)I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/d/c/jj;->g:I

    return v0
.end method

.method static synthetic g(Lcom/nd/commplatform/d/c/jj;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/jj;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcom/nd/commplatform/d/c/jj;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/jj;->f:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic i(Lcom/nd/commplatform/d/c/jj;)I
    .locals 2

    iget v0, p0, Lcom/nd/commplatform/d/c/jj;->g:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/nd/commplatform/d/c/jj;->g:I

    return v0
.end method

.method static synthetic j(Lcom/nd/commplatform/d/c/jj;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/jj;->e:Landroid/view/View;

    return-object v0
.end method

.method private m()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/jj;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/jj;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v0, Lcom/nd/commplatform/d/c/jj$5;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/jj$5;-><init>(Lcom/nd/commplatform/d/c/jj;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/jj;->f:Landroid/os/Handler;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/jj;->f:Landroid/os/Handler;

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private n()V
    .locals 5

    iget-object v0, p0, Lcom/nd/commplatform/d/c/jj;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nd/commplatform/d/c/jj;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/nd/commplatform/d/c/jj;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/nd/commplatform/d/c/jj;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nd/commplatform/d/c/jj;->e:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    new-instance v2, Lcom/nd/commplatform/d/c/jj$6;

    invoke-direct {v2, p0}, Lcom/nd/commplatform/d/c/jj$6;-><init>(Lcom/nd/commplatform/d/c/jj;)V

    invoke-virtual {p0, v2}, Lcom/nd/commplatform/d/c/jj;->a(Lcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/nd/commplatform/d/c/jj;->b(Z)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v3

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/jj;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v1, v0, v4, v2}, Lcom/nd/commplatform/d/c/a;->l(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->bI:I

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

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/jj;->p:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/jj;->q:Z

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/jj;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->nC:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/jj;->r:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/nd/commplatform/d/c/jj;->s:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/nd/commplatform/d/c/jj;->t:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/jj;->u:Landroid/view/View$OnClickListener;

    iput-boolean v3, p0, Lcom/nd/commplatform/d/c/jj;->v:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/jj;->w:Z

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->jf:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/jj;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/jj;->h:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->jb:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/jj;->a:Landroid/widget/EditText;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->ja:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/jj;->b:Landroid/widget/EditText;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->jc:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/jj;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/jj;->c:Landroid/view/View;

    new-instance v1, Lcom/nd/commplatform/d/c/jj$1;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/jj$1;-><init>(Lcom/nd/commplatform/d/c/jj;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->jd:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/jj;->d:Landroid/widget/TextView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->iZ:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/jj;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/jj;->e:Landroid/view/View;

    new-instance v1, Lcom/nd/commplatform/d/c/jj$2;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/jj$2;-><init>(Lcom/nd/commplatform/d/c/jj;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected a(ZI)V
    .locals 2

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/jj;->clearFocus()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/jj;->b(Z)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/jb;->b(Z)V

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/jj;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/nd/commplatform/d/c/jj$3;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/jj$3;-><init>(Lcom/nd/commplatform/d/c/jj;)V

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/jb;->a(Landroid/content/Context;Lcom/nd/commplatform/d/c/jb$b;)V

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
