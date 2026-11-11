.class public Lcom/nd/commplatform/d/c/ir;
.super Lcom/nd/commplatform/widget/NdFrameInnerContent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nd/commplatform/d/c/ir$1;,
        Lcom/nd/commplatform/d/c/ir$a;
    }
.end annotation


# instance fields
.field protected a:Landroid/view/View;

.field protected b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x4

    const/16 v1, 0x459

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/nd/commplatform/d/c/cb;->a(Landroid/content/Context;IILcom/nd/commplatform/d/c/bx;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->aI:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/ir;->p:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/ir;->q:Z

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ir;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->fn:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ir;->r:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/nd/commplatform/d/c/ir;->s:Z

    iput-object v4, p0, Lcom/nd/commplatform/d/c/ir;->t:Ljava/lang/String;

    iput-object v4, p0, Lcom/nd/commplatform/d/c/ir;->u:Landroid/view/View$OnClickListener;

    iput-boolean v3, p0, Lcom/nd/commplatform/d/c/ir;->v:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/ir;->w:Z

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 2

    new-instance v0, Lcom/nd/commplatform/d/c/ir$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nd/commplatform/d/c/ir$a;-><init>(Lcom/nd/commplatform/d/c/ir;Lcom/nd/commplatform/d/c/ir$1;)V

    sget v1, Lcom/nd/commplatform/d/c/jo$e;->eQ:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/nd/commplatform/d/c/ir;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ir;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/nd/commplatform/d/c/jo$e;->eO:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/nd/commplatform/d/c/ir;->b:Landroid/view/View;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ir;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected a(ZI)V
    .locals 0

    return-void
.end method
