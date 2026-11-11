.class public Lcom/nd/commplatform/d/c/ex;
.super Lcom/nd/commplatform/widget/NdFrameInnerContent;


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Lcom/nd/commplatform/NdCallbackListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/ex;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ex;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/ex;Lcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ex;->b:Lcom/nd/commplatform/NdCallbackListener;

    return-object p1
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/ex;)Lcom/nd/commplatform/NdCallbackListener;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ex;->b:Lcom/nd/commplatform/NdCallbackListener;

    return-object v0
.end method

.method public static b()V
    .locals 2

    const/16 v0, 0x66

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->bp:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 3

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/ex;->p:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/ex;->q:Z

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ex;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->ch:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ex;->r:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/ex;->s:Z

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ex;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->bT:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ex;->t:Ljava/lang/String;

    new-instance v0, Lcom/nd/commplatform/d/c/ex$1;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/ex$1;-><init>(Lcom/nd/commplatform/d/c/ex;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ex;->u:Landroid/view/View$OnClickListener;

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/ex;->v:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/ex;->w:Z

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 5

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->ho:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ex;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ex;->a:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ex;->a:Landroid/widget/EditText;

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->da:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ex;->a:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x1e

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    invoke-static {}, Lcom/nd/commplatform/d/c/of;->a()Lcom/nd/commplatform/d/c/of;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/of;->d()Lcom/nd/commplatform/entry/NdUserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdUserInfo;->getEmotion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdUserInfo;->getEmotion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ex;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdUserInfo;->getEmotion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ex;->a:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected a(ZI)V
    .locals 0

    return-void
.end method
