.class public Lcom/nd/commplatform/d/c/fb;
.super Lcom/nd/commplatform/widget/NdFrameInnerContent;


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/fb;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fb;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/fb;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fb;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method public static b()V
    .locals 2

    const/16 v0, 0x73

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->u:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 3

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/fb;->p:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/fb;->q:Z

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/fb;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->cP:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fb;->r:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/fb;->s:Z

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/fb;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->ay:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fb;->t:Ljava/lang/String;

    new-instance v0, Lcom/nd/commplatform/d/c/fb$1;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/fb$1;-><init>(Lcom/nd/commplatform/d/c/fb;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fb;->u:Landroid/view/View$OnClickListener;

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/fb;->v:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/fb;->w:Z

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 1

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->ap:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/fb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fb;->a:Landroid/widget/EditText;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->as:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/fb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fb;->b:Landroid/widget/EditText;

    return-void
.end method

.method protected a(ZI)V
    .locals 0

    return-void
.end method
