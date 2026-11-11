.class public Lcom/nd/commplatform/d/c/fa;
.super Lcom/nd/commplatform/widget/NdFrameInnerContent;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/LinearLayout;

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->b()I

    move-result v0

    iput v0, p0, Lcom/nd/commplatform/d/c/fa;->d:I

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/fa;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fa;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3

    new-instance v0, Lcom/nd/commplatform/d/c/bx;

    const/16 v1, 0x74

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/bx;-><init>(I)V

    const-string v1, "inviteDesc"

    invoke-virtual {v0, v1, p1}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "app"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, -0x1

    const/16 v2, 0x68

    invoke-static {p0, v1, v2, v0}, Lcom/nd/commplatform/d/c/cb;->a(Landroid/content/Context;IILcom/nd/commplatform/d/c/bx;)V

    return-void
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/fa;)I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/d/c/fa;->d:I

    return v0
.end method

.method private b()V
    .locals 3

    new-instance v0, Lcom/nd/commplatform/d/c/fa$2;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/fa$2;-><init>(Lcom/nd/commplatform/d/c/fa;)V

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/fa;->a(Lcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/nd/commplatform/d/c/fa;->b(Z)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/fa;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/nd/commplatform/d/c/a;->n(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method public static b(I)V
    .locals 3

    new-instance v0, Lcom/nd/commplatform/d/c/bx;

    const/16 v1, 0x74

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/bx;-><init>(I)V

    const-string v1, "app"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x68

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    return-void
.end method

.method static synthetic c(Lcom/nd/commplatform/d/c/fa;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fa;->b:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private c()V
    .locals 3

    const/16 v2, 0x74

    invoke-static {v2}, Lcom/nd/commplatform/d/c/cb;->b(I)Lcom/nd/commplatform/d/c/bx;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "inviteDesc"

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fa;->c:Ljava/lang/String;

    const-string v0, "app"

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/nd/commplatform/d/c/fa;->d:I

    :cond_1
    invoke-static {v2}, Lcom/nd/commplatform/d/c/cb;->c(I)Lcom/nd/commplatform/d/c/bx;

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->af:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 3

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/fa;->p:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/fa;->q:Z

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/fa;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->cJ:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fa;->r:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nd/commplatform/d/c/fa;->s:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/fa;->v:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/fa;->w:Z

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->cQ:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/fa;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fa;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fa;->a:Landroid/view/View;

    new-instance v1, Lcom/nd/commplatform/d/c/fa$1;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/fa$1;-><init>(Lcom/nd/commplatform/d/c/fa;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->gM:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/fa;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fa;->b:Landroid/widget/LinearLayout;

    return-void
.end method

.method protected a(ZI)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/fa;->c()V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/fa;->b()V

    :cond_0
    return-void
.end method
