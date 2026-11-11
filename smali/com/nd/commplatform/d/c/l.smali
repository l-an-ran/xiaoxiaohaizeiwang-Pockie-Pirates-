.class public Lcom/nd/commplatform/d/c/l;
.super Lcom/nd/commplatform/widget/NdFrameInnerContent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nd/commplatform/d/c/l$b;,
        Lcom/nd/commplatform/d/c/l$a;,
        Lcom/nd/commplatform/d/c/l$c;,
        Lcom/nd/commplatform/d/c/l$e;,
        Lcom/nd/commplatform/d/c/l$d;,
        Lcom/nd/commplatform/d/c/l$f;
    }
.end annotation


# static fields
.field private static final i:I = 0x1

.field private static final j:I = 0x2

.field private static final k:I = 0x28

.field private static l:Ljava/lang/String;


# instance fields
.field protected a:Landroid/widget/RadioGroup;

.field protected b:Landroid/view/View;

.field protected c:Landroid/view/View;

.field protected d:Landroid/widget/EditText;

.field protected e:Landroid/widget/EditText;

.field protected f:Landroid/widget/EditText;

.field protected g:Landroid/widget/CheckBox;

.field protected h:Landroid/widget/TextView;

.field private m:Landroid/os/Handler;

.field private n:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/l;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/l;->m:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/l;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/l;->m:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/nd/commplatform/d/c/l;->l:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/l;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/l;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/l;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/nd/commplatform/d/c/l;->s:Z

    return p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/nd/commplatform/d/c/r;->a(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/l;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->a:I

    invoke-static {v1, v2}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;I)V

    :goto_0
    return v0

    :cond_0
    invoke-static {p2}, Lcom/nd/commplatform/d/c/oh;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/l;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->gb:I

    invoke-static {v1, v2}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/l;)I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/d/c/l;->n:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/nd/commplatform/d/c/l;->n:I

    return v0
.end method

.method public static b()V
    .locals 2

    const/16 v0, 0x3ee

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    return-void
.end method

.method private b(I)V
    .locals 0

    return-void
.end method

.method private c()V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Lcom/nd/commplatform/d/c/l$3;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/l$3;-><init>(Lcom/nd/commplatform/d/c/l;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/nd/commplatform/d/c/l;->b(Z)V

    invoke-virtual {p0, v2, v0, v2}, Lcom/nd/commplatform/d/c/l;->a(ILcom/nd/commplatform/NdCallbackListener;Z)Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {p0, v2}, Lcom/nd/commplatform/d/c/l;->b(Z)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/l;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/nd/commplatform/d/c/a;->d(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method static synthetic c(Lcom/nd/commplatform/d/c/l;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/l;->n()V

    return-void
.end method

.method static synthetic d(Lcom/nd/commplatform/d/c/l;)V
    .locals 0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/l;->i()V

    return-void
.end method

.method private m()V
    .locals 1

    const/16 v0, 0x28

    invoke-direct {p0, v0}, Lcom/nd/commplatform/d/c/l;->b(I)V

    return-void
.end method

.method private n()V
    .locals 8

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/l;->f(I)Lcom/nd/commplatform/NdCallbackListener;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v7, Lcom/nd/commplatform/d/c/l$4;

    invoke-direct {v7, p0}, Lcom/nd/commplatform/d/c/l$4;-><init>(Lcom/nd/commplatform/d/c/l;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/l;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/l;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/nd/commplatform/d/c/l;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/nd/commplatform/d/c/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0xa

    if-le v0, v4, :cond_4

    const/16 v0, 0xa

    :goto_1
    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/l;->b(Z)V

    const/4 v0, 0x2

    const/4 v4, 0x1

    invoke-virtual {p0, v0, v7, v4}, Lcom/nd/commplatform/d/c/l;->a(ILcom/nd/commplatform/NdCallbackListener;Z)Lcom/nd/commplatform/NdCallbackListener;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/l;->b(Z)V

    sget-object v0, Lcom/nd/commplatform/d/c/l;->l:Ljava/lang/String;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/nd/commplatform/d/c/l;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/l;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual/range {v0 .. v7}, Lcom/nd/commplatform/d/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    :goto_2
    sget v0, Lcom/nd/commplatform/d/c/jo$e;->X:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/l;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/l;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual/range {v0 .. v7}, Lcom/nd/commplatform/d/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    goto :goto_2
.end method

.method private o()V
    .locals 0

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->o:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lcom/nd/commplatform/widget/NdFrameInnerContent;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/l;->d:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ok;->a(Landroid/widget/EditText;)V

    invoke-super {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->a(I)Lcom/nd/commplatform/widget/NdFrameInnerContent;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/l;->p:Z

    iput-boolean v3, p0, Lcom/nd/commplatform/d/c/l;->q:Z

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/l;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->aw:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/l;->r:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/nd/commplatform/d/c/l;->s:Z

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/l;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->af:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/l;->t:Ljava/lang/String;

    new-instance v0, Lcom/nd/commplatform/d/c/l$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nd/commplatform/d/c/l$d;-><init>(Lcom/nd/commplatform/d/c/l;Lcom/nd/commplatform/d/c/l$1;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/l;->u:Landroid/view/View$OnClickListener;

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/l;->v:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/l;->w:Z

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    new-instance v1, Lcom/nd/commplatform/d/c/l$e;

    invoke-direct {v1, p0, v5}, Lcom/nd/commplatform/d/c/l$e;-><init>(Lcom/nd/commplatform/d/c/l;Lcom/nd/commplatform/d/c/l$1;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->aa:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/nd/commplatform/d/c/l$1;

    invoke-direct {v2, p0}, Lcom/nd/commplatform/d/c/l$1;-><init>(Lcom/nd/commplatform/d/c/l;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->X:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/nd/commplatform/d/c/l$d;

    invoke-direct {v2, p0, v5}, Lcom/nd/commplatform/d/c/l$d;-><init>(Lcom/nd/commplatform/d/c/l;Lcom/nd/commplatform/d/c/l$1;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->T:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/l;->d:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/l;->d:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ok;->a(Landroid/widget/EditText;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->ab:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/l;->e:Landroid/widget/EditText;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->ac:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/l;->f:Landroid/widget/EditText;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->Y:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/l;->g:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/l;->g:Landroid/widget/CheckBox;

    new-instance v2, Lcom/nd/commplatform/d/c/l$a;

    invoke-direct {v2, p0, v5}, Lcom/nd/commplatform/d/c/l$a;-><init>(Lcom/nd/commplatform/d/c/l;Lcom/nd/commplatform/d/c/l$1;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->U:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/l;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/l;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->Y:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/l;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/nd/commplatform/d/c/jo$h;->ab:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_0

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Lcom/nd/commplatform/d/c/l$b;

    invoke-direct {v3, p0, v5}, Lcom/nd/commplatform/d/c/l$b;-><init>(Lcom/nd/commplatform/d/c/l;Lcom/nd/commplatform/d/c/l$1;)V

    add-int/2addr v2, v0

    const/16 v4, 0x21

    invoke-virtual {v1, v3, v0, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/l;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/l;->h:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :goto_0
    sput-object v5, Lcom/nd/commplatform/d/c/l;->l:Ljava/lang/String;

    new-instance v0, Lcom/nd/commplatform/d/c/l$2;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/l$2;-><init>(Lcom/nd/commplatform/d/c/l;)V

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/l;->a(Lcom/nd/commplatform/widget/NdFrameInnerContent$OnInvisibleListener;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/nd/commplatform/d/c/l;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/l;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected a(ZI)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/l;->d:Landroid/widget/EditText;

    sget-object v1, Lcom/nd/commplatform/d/c/l;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_0

    sget-object v0, Lcom/nd/commplatform/d/c/l;->l:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->D()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/l;->c()V

    :cond_0
    return-void
.end method
