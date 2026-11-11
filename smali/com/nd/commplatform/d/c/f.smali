.class public Lcom/nd/commplatform/d/c/f;
.super Lcom/nd/commplatform/widget/NdFrameInnerContent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nd/commplatform/d/c/f$b;,
        Lcom/nd/commplatform/d/c/f$a;,
        Lcom/nd/commplatform/d/c/f$c;
    }
.end annotation


# static fields
.field private static final g:I = 0x1

.field private static final h:I = 0x2

.field private static i:Ljava/lang/String;


# instance fields
.field protected a:Landroid/widget/EditText;

.field protected b:Landroid/widget/EditText;

.field protected c:Landroid/widget/EditText;

.field protected d:Landroid/widget/CheckBox;

.field protected e:Landroid/view/View;

.field protected f:Landroid/view/View;

.field private j:Lcom/nd/commplatform/entry/NdThirdPartyPlatform;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/f;)Lcom/nd/commplatform/entry/NdThirdPartyPlatform;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/f;->j:Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/nd/commplatform/d/c/f;->i:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/nd/commplatform/d/c/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/f;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/nd/commplatform/d/c/f;->s:Z

    return p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/nd/commplatform/d/c/r;->a(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/f;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->a:I

    invoke-static {v1, v2}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;I)V

    :goto_0
    return v0

    :cond_0
    invoke-static {p2}, Lcom/nd/commplatform/d/c/oh;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/f;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->gb:I

    invoke-static {v1, v2}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/nd/commplatform/d/c/f;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/f;)V
    .locals 0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/f;->i()V

    return-void
.end method

.method private c()V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Lcom/nd/commplatform/d/c/f$1;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/f$1;-><init>(Lcom/nd/commplatform/d/c/f;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/nd/commplatform/d/c/f;->b(Z)V

    invoke-virtual {p0, v2, v0, v2}, Lcom/nd/commplatform/d/c/f;->a(ILcom/nd/commplatform/NdCallbackListener;Z)Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {p0, v2}, Lcom/nd/commplatform/d/c/f;->b(Z)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/f;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/nd/commplatform/d/c/a;->d(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->c:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lcom/nd/commplatform/widget/NdFrameInnerContent;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/f;->a:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ok;->a(Landroid/widget/EditText;)V

    invoke-super {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->a(I)Lcom/nd/commplatform/widget/NdFrameInnerContent;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/f;->p:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/f;->q:Z

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/f;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->A:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/f;->r:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/f;->s:Z

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/f;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->v:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/f;->t:Ljava/lang/String;

    new-instance v0, Lcom/nd/commplatform/d/c/f$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nd/commplatform/d/c/f$c;-><init>(Lcom/nd/commplatform/d/c/f;Lcom/nd/commplatform/d/c/f$1;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/f;->u:Landroid/view/View$OnClickListener;

    iput-boolean v3, p0, Lcom/nd/commplatform/d/c/f;->v:Z

    iput-boolean v3, p0, Lcom/nd/commplatform/d/c/f;->w:Z

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->k:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/f;->a:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/f;->a:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ok;->a(Landroid/widget/EditText;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->o:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/f;->b:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/f;->b:Landroid/widget/EditText;

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/a;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->p:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/f;->c:Landroid/widget/EditText;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->m:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/f;->d:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/f;->d:Landroid/widget/CheckBox;

    new-instance v1, Lcom/nd/commplatform/d/c/f$a;

    invoke-direct {v1, p0, v2}, Lcom/nd/commplatform/d/c/f$a;-><init>(Lcom/nd/commplatform/d/c/f;Lcom/nd/commplatform/d/c/f$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->l:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/f;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/f;->e:Landroid/view/View;

    new-instance v1, Lcom/nd/commplatform/d/c/f$b;

    invoke-direct {v1, p0, v2}, Lcom/nd/commplatform/d/c/f$b;-><init>(Lcom/nd/commplatform/d/c/f;Lcom/nd/commplatform/d/c/f$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->q:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/f;->f:Landroid/view/View;

    sput-object v2, Lcom/nd/commplatform/d/c/f;->i:Ljava/lang/String;

    return-void
.end method

.method protected a(ZI)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/f;->a:Landroid/widget/EditText;

    sget-object v1, Lcom/nd/commplatform/d/c/f;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/f;->b:Landroid/widget/EditText;

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/a;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/f;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/oh;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->s()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/f;->f:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    if-eqz p1, :cond_1

    sget-object v0, Lcom/nd/commplatform/d/c/f;->i:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/f;->c()V

    :cond_1
    if-eqz p1, :cond_2

    const/16 v0, 0xfa2

    invoke-static {v0}, Lcom/nd/commplatform/d/c/cb;->b(I)Lcom/nd/commplatform/d/c/bx;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "platform"

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    check-cast v0, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/f;->j:Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/nd/commplatform/d/c/f;->f:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
