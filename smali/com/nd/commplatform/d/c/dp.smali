.class public Lcom/nd/commplatform/d/c/dp;
.super Lcom/nd/commplatform/widget/NdFrameInnerContent;


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/dp;)Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/dp;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/dp;->c:Ljava/lang/String;

    return-object p1
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/nd/commplatform/d/c/bx;

    const/16 v1, 0x70

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/bx;-><init>(I)V

    const-string v1, "uin"

    invoke-virtual {v0, v1, p0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xcc

    invoke-static {v1, v0}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    return-void
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/dp;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dp;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dp;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/dp;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/a;->e(Ljava/lang/String;)Lcom/nd/commplatform/d/c/ek;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/ek;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dp;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dp;->c:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, ""

    :goto_1
    iput-object v0, p0, Lcom/nd/commplatform/d/c/dp;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dp;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/dp;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/nd/commplatform/d/c/dp;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/dp;->c()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/nd/commplatform/d/c/dp;->c:Ljava/lang/String;

    goto :goto_1
.end method

.method static synthetic c(Lcom/nd/commplatform/d/c/dp;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dp;->c:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .locals 3

    invoke-static {p0}, Lcom/nd/commplatform/d/c/dp;->a(Lcom/nd/commplatform/d/c/dp;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dp;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.method static synthetic d(Lcom/nd/commplatform/d/c/dp;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dp;->b:Ljava/lang/String;

    return-object v0
.end method

.method private m()V
    .locals 3

    const/16 v2, 0x70

    invoke-static {v2}, Lcom/nd/commplatform/d/c/cb;->b(I)Lcom/nd/commplatform/d/c/bx;

    move-result-object v0

    const-string v1, "uin"

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dp;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/nd/commplatform/d/c/cb;->c(I)Lcom/nd/commplatform/d/c/bx;

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->V:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 3

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/dp;->p:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/dp;->q:Z

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/dp;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->ci:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dp;->r:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/dp;->s:Z

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/dp;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->bT:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dp;->t:Ljava/lang/String;

    new-instance v0, Lcom/nd/commplatform/d/c/dp$2;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/dp$2;-><init>(Lcom/nd/commplatform/d/c/dp;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dp;->u:Landroid/view/View$OnClickListener;

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/dp;->v:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/dp;->w:Z

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 5

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->ho:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/dp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dp;->a:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dp;->a:Landroid/widget/EditText;

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->cj:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dp;->a:Landroid/widget/EditText;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Lcom/nd/commplatform/d/c/dp$1;

    invoke-direct {v3, p0}, Lcom/nd/commplatform/d/c/dp$1;-><init>(Lcom/nd/commplatform/d/c/dp;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dp;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->setSingleLine()V

    return-void
.end method

.method protected a(ZI)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/dp;->m()V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/dp;->b()V

    :cond_0
    return-void
.end method
