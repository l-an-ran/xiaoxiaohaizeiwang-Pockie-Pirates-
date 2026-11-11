.class public Lcom/nd/commplatform/d/c/jg;
.super Lcom/nd/commplatform/widget/NdFrameInnerContent;


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Landroid/os/Handler;

.field private g:I

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x28

    iput v0, p0, Lcom/nd/commplatform/d/c/jg;->g:I

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/jg;I)I
    .locals 0

    iput p1, p0, Lcom/nd/commplatform/d/c/jg;->g:I

    return p1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/nd/commplatform/d/c/bx;

    const/16 v1, 0x2716

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/bx;-><init>(I)V

    const-string v1, "phoneNumber"

    invoke-virtual {v0, v1, p1}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, -0x1

    const/16 v2, 0xfa1

    invoke-static {p0, v1, v2, v0}, Lcom/nd/commplatform/d/c/cb;->a(Landroid/content/Context;IILcom/nd/commplatform/d/c/bx;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/jg;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/jg;->n()V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/jg;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/nd/commplatform/d/c/jg;->a(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/nd/commplatform/d/c/bx;

    const/16 v1, 0x2716

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/bx;-><init>(I)V

    const-string v1, "phoneNumber"

    invoke-virtual {v0, v1, p0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xfa1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/nd/commplatform/d/c/cb;->a(IZLcom/nd/commplatform/d/c/bx;)V

    return-void
.end method

.method private a(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/jg;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->lb:I

    new-instance v2, Lcom/nd/commplatform/d/c/jg$7;

    invoke-direct {v2, p0, p1}, Lcom/nd/commplatform/d/c/jg$7;-><init>(Lcom/nd/commplatform/d/c/jg;Z)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/nd/commplatform/d/c/jg$8;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/jg$8;-><init>(Lcom/nd/commplatform/d/c/jg;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public static b()V
    .locals 3

    const/16 v0, 0xfa1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/nd/commplatform/d/c/cb;->a(IZLcom/nd/commplatform/d/c/bx;)V

    return-void
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/jg;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/jg;->c()V

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

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/jg;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->al:I

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

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/jg;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->hg:I

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

.method static synthetic c(Lcom/nd/commplatform/d/c/jg;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/jg;->d:Landroid/widget/Button;

    return-object v0
.end method

.method private c()V
    .locals 4

    iget-object v0, p0, Lcom/nd/commplatform/d/c/jg;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/jg;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->al:I

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;I)V

    :goto_0
    return-void

    :cond_1
    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-ge v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/jg;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->hg:I

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/nd/commplatform/d/c/jg;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v1, p0, Lcom/nd/commplatform/d/c/jg;->d:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    new-instance v1, Lcom/nd/commplatform/d/c/jg$4;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/jg$4;-><init>(Lcom/nd/commplatform/d/c/jg;)V

    invoke-virtual {p0, v1}, Lcom/nd/commplatform/d/c/jg;->a(Lcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/nd/commplatform/d/c/jg;->b(Z)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/jg;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v0, v3, v1}, Lcom/nd/commplatform/d/c/a;->n(Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/nd/commplatform/d/c/jg;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/jg;->m()V

    return-void
.end method

.method static synthetic e(Lcom/nd/commplatform/d/c/jg;)I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/d/c/jg;->g:I

    return v0
.end method

.method static synthetic f(Lcom/nd/commplatform/d/c/jg;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/jg;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Lcom/nd/commplatform/d/c/jg;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/jg;->f:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic h(Lcom/nd/commplatform/d/c/jg;)I
    .locals 2

    iget v0, p0, Lcom/nd/commplatform/d/c/jg;->g:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/nd/commplatform/d/c/jg;->g:I

    return v0
.end method

.method static synthetic i(Lcom/nd/commplatform/d/c/jg;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/jg;->e:Landroid/widget/Button;

    return-object v0
.end method

.method private m()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/jg;->d:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/jg;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v0, Lcom/nd/commplatform/d/c/jg$5;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/jg$5;-><init>(Lcom/nd/commplatform/d/c/jg;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/jg;->f:Landroid/os/Handler;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/jg;->f:Landroid/os/Handler;

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private n()V
    .locals 5

    iget-object v0, p0, Lcom/nd/commplatform/d/c/jg;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nd/commplatform/d/c/jg;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/nd/commplatform/d/c/jg;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/jg;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->kO:I

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/nd/commplatform/d/c/jg;->e:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    new-instance v2, Lcom/nd/commplatform/d/c/jg$6;

    invoke-direct {v2, p0, v0}, Lcom/nd/commplatform/d/c/jg$6;-><init>(Lcom/nd/commplatform/d/c/jg;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/nd/commplatform/d/c/jg;->a(Lcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/nd/commplatform/d/c/jg;->b(Z)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v3

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/jg;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v1, v0, v4, v2}, Lcom/nd/commplatform/d/c/a;->i(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    goto :goto_0
.end method

.method private o()V
    .locals 3

    const/16 v2, 0x2716

    invoke-static {v2}, Lcom/nd/commplatform/d/c/cb;->b(I)Lcom/nd/commplatform/d/c/bx;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "phoneNumber"

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/jg;->h:Ljava/lang/String;

    :cond_0
    invoke-static {v2}, Lcom/nd/commplatform/d/c/cb;->c(I)Lcom/nd/commplatform/d/c/bx;

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->bt:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nd/commplatform/d/c/jg;->p:Z

    iput-boolean v1, p0, Lcom/nd/commplatform/d/c/jg;->q:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/jg;->r:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/nd/commplatform/d/c/jg;->s:Z

    iput-boolean v1, p0, Lcom/nd/commplatform/d/c/jg;->v:Z

    iput-boolean v1, p0, Lcom/nd/commplatform/d/c/jg;->w:Z

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 6

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->hp:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/jg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/jg;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->kJ:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nd/commplatform/d/c/a;->m()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->gQ:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/jg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/nd/commplatform/d/c/jg$1;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/jg$1;-><init>(Lcom/nd/commplatform/d/c/jg;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->hA:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/jg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/jg;->e:Landroid/widget/Button;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/jg;->e:Landroid/widget/Button;

    new-instance v1, Lcom/nd/commplatform/d/c/jg$2;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/jg$2;-><init>(Lcom/nd/commplatform/d/c/jg;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->hC:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/jg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/jg;->d:Landroid/widget/Button;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/jg;->d:Landroid/widget/Button;

    new-instance v1, Lcom/nd/commplatform/d/c/jg$3;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/jg$3;-><init>(Lcom/nd/commplatform/d/c/jg;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->iG:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/jg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/jg;->c:Landroid/widget/TextView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->hx:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/jg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/jg;->a:Landroid/widget/EditText;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->hw:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/jg;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/jg;->b:Landroid/widget/EditText;

    return-void
.end method

.method protected a(ZI)V
    .locals 2

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/jg;->clearFocus()V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/jg;->o()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/jg;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/jg;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
