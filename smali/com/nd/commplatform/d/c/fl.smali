.class public Lcom/nd/commplatform/d/c/fl;
.super Lcom/nd/commplatform/widget/NdFrameInnerContent;


# static fields
.field private static final g:Ljava/lang/String; = "Uin"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/fl;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fl;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/nd/commplatform/d/c/bx;

    const/16 v1, 0xbc1

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/bx;-><init>(I)V

    const-string v1, "Uin"

    invoke-virtual {v0, v1, p0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x67

    invoke-static {v1, v0}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    return-void
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/fl;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fl;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method private b()V
    .locals 3

    const/16 v2, 0xbc1

    invoke-static {v2}, Lcom/nd/commplatform/d/c/cb;->b(I)Lcom/nd/commplatform/d/c/bx;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "Uin"

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fl;->h:Ljava/lang/String;

    :cond_0
    invoke-static {v2}, Lcom/nd/commplatform/d/c/cb;->c(I)Lcom/nd/commplatform/d/c/bx;

    return-void
.end method

.method static synthetic c(Lcom/nd/commplatform/d/c/fl;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fl;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/nd/commplatform/d/c/fl;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fl;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/nd/commplatform/d/c/fl;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fl;->f:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->aU:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/fl;->b()V

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/fl;->p:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/fl;->q:Z

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/fl;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->hb:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fl;->r:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nd/commplatform/d/c/fl;->s:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/fl;->v:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/fl;->w:Z

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->fZ:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/fl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fl;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fl;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->fb:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/fl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fl;->b:Landroid/widget/TextView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->eX:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/fl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fl;->c:Landroid/widget/TextView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->gj:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/fl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fl;->d:Landroid/widget/TextView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->bx:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/fl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fl;->e:Landroid/widget/TextView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->aT:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/fl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fl;->f:Landroid/widget/TextView;

    return-void
.end method

.method protected a(ZI)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fl;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fl;->h:Ljava/lang/String;

    new-instance v1, Lcom/nd/commplatform/d/c/fl$1;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/fl$1;-><init>(Lcom/nd/commplatform/d/c/fl;)V

    invoke-virtual {p0, v1}, Lcom/nd/commplatform/d/c/fl;->a(Lcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {p0, v4}, Lcom/nd/commplatform/d/c/fl;->b(Z)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/fl;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v0, v4, v3, v1}, Lcom/nd/commplatform/d/c/a;->a(Ljava/lang/String;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    :cond_0
    return-void
.end method
