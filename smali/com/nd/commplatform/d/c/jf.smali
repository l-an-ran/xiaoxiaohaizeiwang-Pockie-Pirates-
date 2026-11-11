.class public Lcom/nd/commplatform/d/c/jf;
.super Lcom/nd/commplatform/widget/NdFrameInnerContent;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/jf;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/jf;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const/16 v0, 0x3ec

    invoke-static {v0}, Lcom/nd/commplatform/d/c/cb;->a(I)V

    new-instance v0, Lcom/nd/commplatform/d/c/bx;

    const/16 v1, 0x3ef

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/bx;-><init>(I)V

    const-string v1, "phoneNumber"

    invoke-virtual {v0, v1, p1}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, -0x1

    const/16 v2, 0xfa8

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3, v0}, Lcom/nd/commplatform/d/c/cb;->a(Landroid/content/Context;IIZLcom/nd/commplatform/d/c/bx;)V

    return-void
.end method

.method private b()V
    .locals 3

    const/16 v2, 0x3ef

    invoke-static {v2}, Lcom/nd/commplatform/d/c/cb;->b(I)Lcom/nd/commplatform/d/c/bx;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "phoneNumber"

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/jf;->a:Ljava/lang/String;

    :cond_0
    invoke-static {v2}, Lcom/nd/commplatform/d/c/cb;->c(I)Lcom/nd/commplatform/d/c/bx;

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->bw:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nd/commplatform/d/c/jf;->p:Z

    iput-boolean v1, p0, Lcom/nd/commplatform/d/c/jf;->q:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/jf;->r:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/nd/commplatform/d/c/jf;->s:Z

    iput-boolean v1, p0, Lcom/nd/commplatform/d/c/jf;->v:Z

    iput-boolean v1, p0, Lcom/nd/commplatform/d/c/jf;->w:Z

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->gQ:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/jf;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/nd/commplatform/d/c/jf$1;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/jf$1;-><init>(Lcom/nd/commplatform/d/c/jf;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->hv:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/jf;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/nd/commplatform/d/c/jf$2;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/jf$2;-><init>(Lcom/nd/commplatform/d/c/jf;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->ix:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/jf;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/nd/commplatform/d/c/jf$3;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/jf$3;-><init>(Lcom/nd/commplatform/d/c/jf;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected a(ZI)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/jf;->b()V

    :cond_0
    return-void
.end method
