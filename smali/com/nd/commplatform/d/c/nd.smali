.class public Lcom/nd/commplatform/d/c/nd;
.super Lcom/nd/commplatform/widget/NdFrameInnerContent;


# static fields
.field private static final f:Ljava/lang/String; = "NdActivityAddresser"


# instance fields
.field private a:Lcom/nd/commplatform/d/c/mx;

.field private b:Lcom/nd/commplatform/uap/widget/NdActivityUserView;

.field private c:Lcom/nd/commplatform/d/c/mw;

.field private d:Landroid/widget/ListView;

.field private e:Lcom/nd/commplatform/d/c/mu;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/nd;)Lcom/nd/commplatform/d/c/mu;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/nd;->e:Lcom/nd/commplatform/d/c/mu;

    return-object v0
.end method

.method public static a(Lcom/nd/commplatform/d/c/my;)V
    .locals 2

    new-instance v0, Lcom/nd/commplatform/d/c/bx;

    const/16 v1, 0xbca

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/bx;-><init>(I)V

    const-string v1, "NdActivityAddresser"

    invoke-virtual {v0, v1, p0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x7c

    invoke-static {v1, v0}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    return-void
.end method

.method private b()V
    .locals 3

    new-instance v0, Lcom/nd/commplatform/d/c/mw;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/nd;->b:Lcom/nd/commplatform/uap/widget/NdActivityUserView;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/nd;->a:Lcom/nd/commplatform/d/c/mx;

    invoke-virtual {v2}, Lcom/nd/commplatform/d/c/mx;->c()Lcom/nd/commplatform/d/c/nb;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/nd/commplatform/d/c/mw;-><init>(Lcom/nd/commplatform/uap/widget/NdActivityUserView;Lcom/nd/commplatform/d/c/nb;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/nd;->c:Lcom/nd/commplatform/d/c/mw;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/nd;->c:Lcom/nd/commplatform/d/c/mw;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/mw;->a()V

    return-void
.end method

.method private c()V
    .locals 3

    new-instance v0, Lcom/nd/commplatform/d/c/mu;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/nd;->d:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/nd;->a:Lcom/nd/commplatform/d/c/mx;

    invoke-direct {v0, p0, v1, v2}, Lcom/nd/commplatform/d/c/mu;-><init>(Lcom/nd/commplatform/widget/NdFrameInnerContent;Landroid/widget/ListView;Lcom/nd/commplatform/d/c/mx;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/nd;->e:Lcom/nd/commplatform/d/c/mu;

    new-instance v0, Lcom/nd/commplatform/d/c/nd$1;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/nd$1;-><init>(Lcom/nd/commplatform/d/c/nd;)V

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/nd;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private m()V
    .locals 3

    const/16 v2, 0xbca

    invoke-static {v2}, Lcom/nd/commplatform/d/c/cb;->b(I)Lcom/nd/commplatform/d/c/bx;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "NdActivityAddresser"

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/mx;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/nd;->a:Lcom/nd/commplatform/d/c/mx;

    :cond_0
    invoke-static {v2}, Lcom/nd/commplatform/d/c/cb;->c(I)Lcom/nd/commplatform/d/c/bx;

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->F:I

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

    invoke-super {p0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/nd;->p:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/nd;->q:Z

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->bA:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/nd;->r:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/nd/commplatform/d/c/nd;->s:Z

    iput-object v4, p0, Lcom/nd/commplatform/d/c/nd;->t:Ljava/lang/String;

    iput-object v4, p0, Lcom/nd/commplatform/d/c/nd;->u:Landroid/view/View$OnClickListener;

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/nd;->v:Z

    iput-boolean v3, p0, Lcom/nd/commplatform/d/c/nd;->w:Z

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 1

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->aL:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/nd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/uap/widget/NdActivityUserView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/nd;->b:Lcom/nd/commplatform/uap/widget/NdActivityUserView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->db:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/nd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/nd;->d:Landroid/widget/ListView;

    return-void
.end method

.method protected a(ZI)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/nd;->m()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/nd;->a:Lcom/nd/commplatform/d/c/mx;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/nd/commplatform/d/c/nd;->b()V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/nd;->c()V

    goto :goto_0
.end method
