.class public Lcom/nd/commplatform/d/c/jc;
.super Lcom/nd/commplatform/widget/NdFrameInnerContent;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/nd/commplatform/d/c/bx;

    const/16 v1, 0x2713

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/bx;-><init>(I)V

    const-string v1, "tips"

    invoke-virtual {v0, v1, p0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xfa7

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/nd/commplatform/d/c/cb;->a(IZLcom/nd/commplatform/d/c/bx;)V

    return-void
.end method

.method private b()V
    .locals 2

    const/16 v0, 0x2713

    invoke-static {v0}, Lcom/nd/commplatform/d/c/cb;->b(I)Lcom/nd/commplatform/d/c/bx;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "tips"

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/jc;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/cb;->c(Lcom/nd/commplatform/d/c/bx;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->bs:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nd/commplatform/d/c/jc;->p:Z

    iput-boolean v1, p0, Lcom/nd/commplatform/d/c/jc;->q:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/jc;->r:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/nd/commplatform/d/c/jc;->s:Z

    iput-boolean v1, p0, Lcom/nd/commplatform/d/c/jc;->v:Z

    iput-boolean v1, p0, Lcom/nd/commplatform/d/c/jc;->w:Z

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->gQ:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/jc;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/nd/commplatform/d/c/jc$1;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/jc$1;-><init>(Lcom/nd/commplatform/d/c/jc;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->iA:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/jc;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/nd/commplatform/d/c/jc$2;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/jc$2;-><init>(Lcom/nd/commplatform/d/c/jc;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->iB:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/jc;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/jc;->b:Landroid/widget/TextView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->iR:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/jc;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/jc;->c:Landroid/widget/TextView;

    return-void
.end method

.method protected a(ZI)V
    .locals 6

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/jc;->clearFocus()V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/jc;->b()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/jc;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/jc;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/jc;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/jc;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->nm:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nd/commplatform/d/c/a;->f()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
