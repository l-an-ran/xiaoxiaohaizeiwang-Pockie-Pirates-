.class public Lcom/nd/commplatform/d/c/ne;
.super Lcom/nd/commplatform/widget/NdFrameInnerContent;


# static fields
.field private static final f:Ljava/lang/String; = "NdActivityAddresser"


# instance fields
.field private a:Lcom/nd/commplatform/d/c/my;

.field private b:Lcom/nd/commplatform/uap/widget/NdActivityUserView;

.field private c:Lcom/nd/commplatform/d/c/mw;

.field private d:Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;

.field private e:Lcom/nd/commplatform/d/c/mq;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Lcom/nd/commplatform/d/c/my;)V
    .locals 2

    new-instance v0, Lcom/nd/commplatform/d/c/bx;

    const/16 v1, 0xbc8

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/bx;-><init>(I)V

    const-string v1, "NdActivityAddresser"

    invoke-virtual {v0, v1, p0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x7a

    invoke-static {v1, v0}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    return-void
.end method

.method private b()V
    .locals 3

    const/16 v2, 0xbc8

    invoke-static {v2}, Lcom/nd/commplatform/d/c/cb;->b(I)Lcom/nd/commplatform/d/c/bx;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "NdActivityAddresser"

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/my;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ne;->a:Lcom/nd/commplatform/d/c/my;

    :cond_0
    invoke-static {v2}, Lcom/nd/commplatform/d/c/cb;->c(I)Lcom/nd/commplatform/d/c/bx;

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->C:I

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

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/ne;->p:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/ne;->q:Z

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->bA:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ne;->r:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/nd/commplatform/d/c/ne;->s:Z

    iput-object v4, p0, Lcom/nd/commplatform/d/c/ne;->t:Ljava/lang/String;

    iput-object v4, p0, Lcom/nd/commplatform/d/c/ne;->u:Landroid/view/View$OnClickListener;

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/ne;->v:Z

    iput-boolean v3, p0, Lcom/nd/commplatform/d/c/ne;->w:Z

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 1

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->aL:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ne;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/uap/widget/NdActivityUserView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ne;->b:Lcom/nd/commplatform/uap/widget/NdActivityUserView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->aI:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ne;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ne;->d:Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;

    return-void
.end method

.method protected a(ZI)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/ne;->b()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ne;->a:Lcom/nd/commplatform/d/c/my;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/nd/commplatform/d/c/mw;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ne;->b:Lcom/nd/commplatform/uap/widget/NdActivityUserView;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/ne;->a:Lcom/nd/commplatform/d/c/my;

    invoke-virtual {v2}, Lcom/nd/commplatform/d/c/my;->c()Lcom/nd/commplatform/d/c/nb;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/nd/commplatform/d/c/mw;-><init>(Lcom/nd/commplatform/uap/widget/NdActivityUserView;Lcom/nd/commplatform/d/c/nb;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ne;->c:Lcom/nd/commplatform/d/c/mw;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ne;->c:Lcom/nd/commplatform/d/c/mw;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/mw;->a()V

    new-instance v0, Lcom/nd/commplatform/d/c/mq;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ne;->d:Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;

    new-instance v2, Lcom/nd/commplatform/d/c/ne$1;

    iget-object v3, p0, Lcom/nd/commplatform/d/c/ne;->a:Lcom/nd/commplatform/d/c/my;

    invoke-direct {v2, p0, v3}, Lcom/nd/commplatform/d/c/ne$1;-><init>(Lcom/nd/commplatform/d/c/ne;Lcom/nd/commplatform/d/c/my;)V

    invoke-direct {v0, v1, v2}, Lcom/nd/commplatform/d/c/mq;-><init>(Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;Lcom/nd/commplatform/d/c/mr;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ne;->e:Lcom/nd/commplatform/d/c/mq;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ne;->e:Lcom/nd/commplatform/d/c/mq;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/mq;->b()V

    goto :goto_0
.end method
