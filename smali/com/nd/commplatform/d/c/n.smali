.class public Lcom/nd/commplatform/d/c/n;
.super Lcom/nd/commplatform/widget/NdFrameInnerContent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nd/commplatform/d/c/n$b;,
        Lcom/nd/commplatform/d/c/n$a;,
        Lcom/nd/commplatform/d/c/n$c;
    }
.end annotation


# instance fields
.field protected a:Landroid/widget/RadioGroup;

.field protected b:Landroid/view/View;

.field protected c:Landroid/view/View;

.field protected d:Landroid/widget/EditText;

.field protected e:Landroid/widget/EditText;

.field protected f:Landroid/widget/EditText;

.field protected g:Landroid/widget/CheckBox;

.field protected h:Landroid/widget/TextView;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/Button;

.field private k:Landroid/widget/TextView;

.field private l:Lcom/nd/commplatform/d/c/n$c;

.field private m:Ljava/lang/String;

.field private n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;)V

    iput-boolean p2, p0, Lcom/nd/commplatform/d/c/n;->n:Z

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3

    new-instance v0, Lcom/nd/commplatform/d/c/bx;

    const/16 v1, 0x2afe

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/bx;-><init>(I)V

    const-string v1, "tips"

    invoke-virtual {v0, v1, p1}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fromControlCenter"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, -0x1

    const/16 v2, 0x3f6

    invoke-static {p0, v1, v2, v0}, Lcom/nd/commplatform/d/c/cb;->a(Landroid/content/Context;IILcom/nd/commplatform/d/c/bx;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/n;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nd/commplatform/d/c/n;->n:Z

    return v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/nd/commplatform/d/c/s;->a(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/n;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->a:I

    invoke-static {v1, v2}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;I)V

    :goto_0
    return v0

    :cond_0
    invoke-static {p2}, Lcom/nd/commplatform/d/c/oh;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/n;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->gb:I

    invoke-static {v1, v2}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/n;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/n;->i:Landroid/widget/Button;

    return-object v0
.end method

.method private b()V
    .locals 5

    iget-object v0, p0, Lcom/nd/commplatform/d/c/n;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/n;->f:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/nd/commplatform/d/c/n;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/nd/commplatform/d/c/n;->b(Z)V

    new-instance v2, Lcom/nd/commplatform/d/c/n$2;

    invoke-direct {v2, p0}, Lcom/nd/commplatform/d/c/n$2;-><init>(Lcom/nd/commplatform/d/c/n;)V

    iget-object v3, p0, Lcom/nd/commplatform/d/c/n;->i:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/nd/commplatform/d/c/n;->a(Lcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v3

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/n;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v0, v1, v4, v2}, Lcom/nd/commplatform/d/c/a;->m(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 7

    const/4 v6, -0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/nd/commplatform/d/c/cb;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/n;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$f;->m:I

    invoke-static {v0, v1, v5}, Lcom/nd/commplatform/d/c/n;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    :goto_0
    sget v0, Lcom/nd/commplatform/d/c/jo$e;->gQ:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/nd/commplatform/d/c/n$3;

    invoke-direct {v2, p0}, Lcom/nd/commplatform/d/c/n$3;-><init>(Lcom/nd/commplatform/d/c/n;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/nd/commplatform/d/c/n;->n:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->gQ:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    sget v0, Lcom/nd/commplatform/d/c/jo$e;->iW:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/n;->k:Landroid/widget/TextView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->iW:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/n;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->T:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/n;->d:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/n;->d:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ok;->a(Landroid/widget/EditText;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->T:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    check-cast v0, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/n;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->ac:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/n;->f:Landroid/widget/EditText;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->ac:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    check-cast v0, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/n;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->iq:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/n;->i:Landroid/widget/Button;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/n;->i:Landroid/widget/Button;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/n;->l:Lcom/nd/commplatform/d/c/n$c;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->Y:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/n;->g:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/n;->g:Landroid/widget/CheckBox;

    new-instance v2, Lcom/nd/commplatform/d/c/n$a;

    invoke-direct {v2, p0, v5}, Lcom/nd/commplatform/d/c/n$a;-><init>(Lcom/nd/commplatform/d/c/n;Lcom/nd/commplatform/d/c/n$1;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->U:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/n;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/n;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->Y:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/n;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/nd/commplatform/d/c/jo$h;->ab:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_2

    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v4, Lcom/nd/commplatform/d/c/n$b;

    invoke-direct {v4, p0, v5}, Lcom/nd/commplatform/d/c/n$b;-><init>(Lcom/nd/commplatform/d/c/n;Lcom/nd/commplatform/d/c/n$1;)V

    add-int/2addr v2, v0

    const/16 v5, 0x21

    invoke-virtual {v3, v4, v0, v2, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/n;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/n;->h:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :goto_1
    sget v0, Lcom/nd/commplatform/d/c/jo$e;->iy:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/n;->j:Landroid/widget/Button;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/n;->j:Landroid/widget/Button;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/n;->l:Lcom/nd/commplatform/d/c/n$c;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/n;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/n;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$f;->l:I

    invoke-static {v0, v1, v5}, Lcom/nd/commplatform/d/c/n;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0

    :cond_2
    iget-object v2, p0, Lcom/nd/commplatform/d/c/n;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/n;->h:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/n;->l:Lcom/nd/commplatform/d/c/n$c;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method static synthetic c(Lcom/nd/commplatform/d/c/n;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/n;->b()V

    return-void
.end method

.method static synthetic d(Lcom/nd/commplatform/d/c/n;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/n;->j:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic e(Lcom/nd/commplatform/d/c/n;)V
    .locals 0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/n;->i()V

    return-void
.end method

.method private m()V
    .locals 2

    const/16 v0, 0x2afe

    invoke-static {v0}, Lcom/nd/commplatform/d/c/cb;->b(I)Lcom/nd/commplatform/d/c/bx;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v0, "tips"

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/n;->m:Ljava/lang/String;

    const-string v0, "fromControlCenter"

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "fromControlCenter"

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nd/commplatform/d/c/n;->n:Z

    :cond_0
    invoke-static {v1}, Lcom/nd/commplatform/d/c/cb;->c(Lcom/nd/commplatform/d/c/bx;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->k:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lcom/nd/commplatform/widget/NdFrameInnerContent;
    .locals 1

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/n;->c()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/n;->d:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ok;->a(Landroid/widget/EditText;)V

    invoke-super {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->a(I)Lcom/nd/commplatform/widget/NdFrameInnerContent;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nd/commplatform/d/c/n;->p:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/n;->q:Z

    iput-object v0, p0, Lcom/nd/commplatform/d/c/n;->r:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/nd/commplatform/d/c/n;->s:Z

    iput-object v0, p0, Lcom/nd/commplatform/d/c/n;->t:Ljava/lang/String;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/n;->u:Landroid/view/View$OnClickListener;

    iget-boolean v0, p0, Lcom/nd/commplatform/d/c/n;->n:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/n;->v:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/n;->w:Z

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/nd/commplatform/d/c/n;->v:Z

    iput-boolean v1, p0, Lcom/nd/commplatform/d/c/n;->w:Z

    goto :goto_0
.end method

.method protected a(Landroid/view/View;)V
    .locals 5

    const/4 v3, -0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/nd/commplatform/d/c/n$c;

    invoke-direct {v0, p0, v4}, Lcom/nd/commplatform/d/c/n$c;-><init>(Lcom/nd/commplatform/d/c/n;Lcom/nd/commplatform/d/c/n$1;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/n;->l:Lcom/nd/commplatform/d/c/n$c;

    invoke-static {}, Lcom/nd/commplatform/d/c/cb;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/n;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$f;->m:I

    invoke-static {v1, v2, v4}, Lcom/nd/commplatform/d/c/n;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    sget v0, Lcom/nd/commplatform/d/c/jo$e;->gQ:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/nd/commplatform/d/c/n$1;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/n$1;-><init>(Lcom/nd/commplatform/d/c/n;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/nd/commplatform/d/c/n;->n:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->gQ:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    sget v0, Lcom/nd/commplatform/d/c/jo$e;->iW:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/n;->k:Landroid/widget/TextView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->T:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/n;->d:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/n;->d:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ok;->a(Landroid/widget/EditText;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->ac:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/n;->f:Landroid/widget/EditText;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->iq:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/n;->i:Landroid/widget/Button;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/n;->i:Landroid/widget/Button;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/n;->l:Lcom/nd/commplatform/d/c/n$c;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->Y:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/n;->g:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/n;->g:Landroid/widget/CheckBox;

    new-instance v1, Lcom/nd/commplatform/d/c/n$a;

    invoke-direct {v1, p0, v4}, Lcom/nd/commplatform/d/c/n$a;-><init>(Lcom/nd/commplatform/d/c/n;Lcom/nd/commplatform/d/c/n$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->U:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/n;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/n;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->Y:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/n;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->ab:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_2

    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v3, Lcom/nd/commplatform/d/c/n$b;

    invoke-direct {v3, p0, v4}, Lcom/nd/commplatform/d/c/n$b;-><init>(Lcom/nd/commplatform/d/c/n;Lcom/nd/commplatform/d/c/n$1;)V

    add-int/2addr v1, v0

    const/16 v4, 0x21

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/n;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/n;->h:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :goto_1
    sget v0, Lcom/nd/commplatform/d/c/jo$e;->iy:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/n;->j:Landroid/widget/Button;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/n;->j:Landroid/widget/Button;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/n;->l:Lcom/nd/commplatform/d/c/n$c;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/n;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$f;->l:I

    invoke-static {v1, v2, v4}, Lcom/nd/commplatform/d/c/n;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Lcom/nd/commplatform/d/c/n;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/n;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/n;->l:Lcom/nd/commplatform/d/c/n$c;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method protected a(ZI)V
    .locals 2

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/n;->clearFocus()V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/n;->m()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/n;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/n;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/n;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/n;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
