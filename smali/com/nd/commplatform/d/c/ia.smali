.class public Lcom/nd/commplatform/d/c/ia;
.super Lcom/nd/commplatform/widget/NdFrameInnerContent;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/ia;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ia;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    const/4 v0, -0x1

    const/16 v1, 0x25a

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/nd/commplatform/d/c/cb;->a(Landroid/content/Context;IILcom/nd/commplatform/d/c/bx;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/ia;Lcom/nd/commplatform/entry/NdAppServProInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/ia;->a(Lcom/nd/commplatform/entry/NdAppServProInfo;)V

    return-void
.end method

.method private a(Lcom/nd/commplatform/entry/NdAppServProInfo;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ia;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdAppServProInfo;->getMerchant()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdAppServProInfo;->getMerchant()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ia;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->bh:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ia;->a:Landroid/widget/TextView;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nd/commplatform/d/c/a;->e()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdAppServProInfo;->getMerchant()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ia;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdAppServProInfo;->getServicePhone()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdAppServProInfo;->getServicePhone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdAppServProInfo;->getServicePhone()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdAppServProInfo;->getServicePhone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ia;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ia;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->bi:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ia;->a:Landroid/widget/TextView;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nd/commplatform/d/c/a;->e()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    new-instance v5, Lcom/nd/commplatform/d/c/ia$4;

    invoke-direct {v5, p0}, Lcom/nd/commplatform/d/c/ia$4;-><init>(Lcom/nd/commplatform/d/c/ia;)V

    invoke-virtual {p0, v5}, Lcom/nd/commplatform/d/c/ia;->a(Lcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/nd/commplatform/d/c/ia;->b(Z)V

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ia;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/a;->a(ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method private b()V
    .locals 3

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    new-instance v1, Lcom/nd/commplatform/d/c/ia$3;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/ia$3;-><init>(Lcom/nd/commplatform/d/c/ia;)V

    invoke-virtual {p0, v1}, Lcom/nd/commplatform/d/c/ia;->a(Lcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/nd/commplatform/d/c/ia;->b(Z)V

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ia;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/nd/commplatform/d/c/a;->l(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/ia;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/ia;->c()V

    return-void
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ia;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ia;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ia;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->bg:I

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/nd/commplatform/d/c/ia;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/nd/commplatform/d/c/ia;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/ia;->m()V

    return-void
.end method

.method private m()V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ia;->c:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ia;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->bm:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ia;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->I:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 3

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/ia;->p:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/ia;->q:Z

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ia;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->bn:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ia;->r:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/ia;->s:Z

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ia;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->jU:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ia;->t:Ljava/lang/String;

    new-instance v0, Lcom/nd/commplatform/d/c/ia$2;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/ia$2;-><init>(Lcom/nd/commplatform/d/c/ia;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ia;->u:Landroid/view/View$OnClickListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nd/commplatform/d/c/ia;->v:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/ia;->w:Z

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->bh:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ia;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ia;->a:Landroid/widget/TextView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->gi:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ia;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ia;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ia;->b:Landroid/widget/TextView;

    new-instance v1, Lcom/nd/commplatform/d/c/ia$1;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/ia$1;-><init>(Lcom/nd/commplatform/d/c/ia;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->bW:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ia;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ia;->c:Landroid/widget/EditText;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->gK:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ia;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ia;->d:Landroid/widget/EditText;

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->s()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ia;->d:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected a(ZI)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/nd/commplatform/entry/NdAppServProInfo;

    invoke-direct {v0}, Lcom/nd/commplatform/entry/NdAppServProInfo;-><init>()V

    invoke-direct {p0, v0}, Lcom/nd/commplatform/d/c/ia;->a(Lcom/nd/commplatform/entry/NdAppServProInfo;)V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/ia;->b()V

    :cond_0
    return-void
.end method
