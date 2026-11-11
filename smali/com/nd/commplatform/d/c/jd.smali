.class public Lcom/nd/commplatform/d/c/jd;
.super Lcom/nd/commplatform/widget/NdFrameInnerContent;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Ljava/lang/String;

.field private c:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/jd;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/jd;->c()V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/nd/commplatform/d/c/bx;

    const/16 v1, 0x2711

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/bx;-><init>(I)V

    const-string v1, "phoneNo"

    invoke-virtual {v0, v1, p0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xfa2

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/nd/commplatform/d/c/cb;->a(IZLcom/nd/commplatform/d/c/bx;)V

    return-void
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/jd;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/jd;->c:Landroid/widget/Button;

    return-object v0
.end method

.method private b()V
    .locals 2

    const/16 v0, 0x2711

    invoke-static {v0}, Lcom/nd/commplatform/d/c/cb;->b(I)Lcom/nd/commplatform/d/c/bx;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "phoneNo"

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/jd;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/cb;->c(Lcom/nd/commplatform/d/c/bx;)V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/jd;->c:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    new-instance v0, Lcom/nd/commplatform/d/c/jd$3;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/jd$3;-><init>(Lcom/nd/commplatform/d/c/jd;)V

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/jd;->a(Lcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/nd/commplatform/d/c/jd;->b(Z)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/jd;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/nd/commplatform/d/c/a;->s(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->bu:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nd/commplatform/d/c/jd;->p:Z

    iput-boolean v1, p0, Lcom/nd/commplatform/d/c/jd;->q:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/jd;->r:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/nd/commplatform/d/c/jd;->s:Z

    iput-boolean v1, p0, Lcom/nd/commplatform/d/c/jd;->v:Z

    iput-boolean v1, p0, Lcom/nd/commplatform/d/c/jd;->w:Z

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->gQ:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/jd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/nd/commplatform/d/c/jd$1;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/jd$1;-><init>(Lcom/nd/commplatform/d/c/jd;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->hz:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/jd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/jd;->c:Landroid/widget/Button;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/jd;->c:Landroid/widget/Button;

    new-instance v1, Lcom/nd/commplatform/d/c/jd$2;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/jd$2;-><init>(Lcom/nd/commplatform/d/c/jd;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->hE:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/jd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/jd;->a:Landroid/widget/TextView;

    return-void
.end method

.method protected a(ZI)V
    .locals 6

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/jd;->clearFocus()V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/jd;->b()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/jd;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/jd;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->ld:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nd/commplatform/d/c/a;->m()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/nd/commplatform/d/c/jd;->b:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
