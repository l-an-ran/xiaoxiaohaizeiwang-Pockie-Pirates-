.class public Lcom/nd/commplatform/d/c/ee;
.super Lcom/nd/commplatform/widget/NdFrameInnerContent;


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Lcom/nd/commplatform/NdCallbackListener;

.field private c:Lcom/nd/commplatform/d/c/bx;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/ee;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ee;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/ee;Lcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ee;->b:Lcom/nd/commplatform/NdCallbackListener;

    return-object p1
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/nd/commplatform/d/c/bx;

    const/16 v1, 0x6a

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/bx;-><init>(I)V

    const-string v1, "uin"

    invoke-virtual {v0, v1, p0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x12e

    invoke-static {v1, v0}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    return-void
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/ee;)Lcom/nd/commplatform/NdCallbackListener;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ee;->b:Lcom/nd/commplatform/NdCallbackListener;

    return-object v0
.end method

.method private b()V
    .locals 1

    const/16 v0, 0x6a

    invoke-static {v0}, Lcom/nd/commplatform/d/c/cb;->b(I)Lcom/nd/commplatform/d/c/bx;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ee;->c:Lcom/nd/commplatform/d/c/bx;

    return-void
.end method

.method static synthetic c(Lcom/nd/commplatform/d/c/ee;)Lcom/nd/commplatform/d/c/bx;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ee;->c:Lcom/nd/commplatform/d/c/bx;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->bp:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 3

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/ee;->p:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/ee;->q:Z

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ee;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->jE:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ee;->r:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/ee;->s:Z

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ee;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->jz:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ee;->t:Ljava/lang/String;

    new-instance v0, Lcom/nd/commplatform/d/c/ee$1;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/ee$1;-><init>(Lcom/nd/commplatform/d/c/ee;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ee;->u:Landroid/view/View$OnClickListener;

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/ee;->v:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/ee;->w:Z

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 1

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->ho:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ee;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ee;->a:Landroid/widget/EditText;

    return-void
.end method

.method protected a(ZI)V
    .locals 5

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ee;->a:Landroid/widget/EditText;

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->jF:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ee;->a:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x8c

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/ee;->b()V

    return-void
.end method
