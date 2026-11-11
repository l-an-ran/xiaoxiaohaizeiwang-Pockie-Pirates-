.class public Lcom/nd/commplatform/d/c/gp;
.super Lcom/nd/commplatform/widget/NdFrameInnerContent;


# static fields
.field private static final d:Ljava/lang/String; = "Uin"

.field private static final e:Ljava/lang/String; = "Nickname"


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/EditText;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/gp;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gp;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/nd/commplatform/d/c/bx;

    const/16 v1, 0xbc5

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/bx;-><init>(I)V

    const-string v1, "Uin"

    invoke-virtual {v0, v1, p0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Nickname"

    invoke-virtual {v0, v1, p1}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/cb;->a(Lcom/nd/commplatform/d/c/bx;)V

    return-void
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/gp;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gp;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method public static b()V
    .locals 2

    const/16 v0, 0x6e

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    return-void
.end method

.method static synthetic c(Lcom/nd/commplatform/d/c/gp;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gp;->f:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .locals 3

    const/16 v2, 0xbc5

    invoke-static {v2}, Lcom/nd/commplatform/d/c/cb;->b(I)Lcom/nd/commplatform/d/c/bx;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "Uin"

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/gp;->f:Ljava/lang/String;

    const-string v0, "Nickname"

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/gp;->g:Ljava/lang/String;

    invoke-static {v2}, Lcom/nd/commplatform/d/c/cb;->c(I)Lcom/nd/commplatform/d/c/bx;

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/gp;->m()V

    goto :goto_0
.end method

.method private m()V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gp;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/gp;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->at:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 3

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/gp;->v:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nd/commplatform/d/c/gp;->w:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/gp;->p:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/gp;->q:Z

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/gp;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->fv:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/gp;->r:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/gp;->s:Z

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/gp;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->jz:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/gp;->t:Ljava/lang/String;

    new-instance v0, Lcom/nd/commplatform/d/c/gp$3;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/gp$3;-><init>(Lcom/nd/commplatform/d/c/gp;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/gp;->u:Landroid/view/View$OnClickListener;

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 5

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->fP:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/gp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/gp;->a:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gp;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/nd/commplatform/d/c/gp$1;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/gp$1;-><init>(Lcom/nd/commplatform/d/c/gp;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->df:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/gp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/gp;->c:Landroid/widget/EditText;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->aS:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/gp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/gp;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gp;->b:Landroid/widget/ImageView;

    new-instance v1, Lcom/nd/commplatform/d/c/gp$2;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/gp$2;-><init>(Lcom/nd/commplatform/d/c/gp;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gp;->c:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x8c

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gp;->c:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMinLines(I)V

    return-void
.end method

.method protected a(ZI)V
    .locals 1

    if-nez p1, :cond_0

    const/16 v0, 0x72

    if-ne p2, v0, :cond_0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/gp;->c()V

    :cond_0
    return-void
.end method
