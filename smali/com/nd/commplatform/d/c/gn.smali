.class public Lcom/nd/commplatform/d/c/gn;
.super Lcom/nd/commplatform/widget/NdFrameInnerContent;


# static fields
.field private static final f:Ljava/lang/String; = "Key"


# instance fields
.field private a:Lcom/nd/commplatform/message/widget/NdSysMessageAppView;

.field private b:Lcom/nd/commplatform/d/c/gq;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/nd/commplatform/d/c/gf;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Lcom/nd/commplatform/d/c/gf;)V
    .locals 2

    new-instance v0, Lcom/nd/commplatform/d/c/bx;

    const/16 v1, 0xbcb

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/bx;-><init>(I)V

    const-string v1, "Key"

    invoke-virtual {v0, v1, p0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x7d

    invoke-static {v1, v0}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    return-void
.end method

.method private b()V
    .locals 3

    new-instance v0, Lcom/nd/commplatform/d/c/gq;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/gn;->a:Lcom/nd/commplatform/message/widget/NdSysMessageAppView;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/gn;->e:Lcom/nd/commplatform/d/c/gf;

    invoke-direct {v0, v1, v2}, Lcom/nd/commplatform/d/c/gq;-><init>(Lcom/nd/commplatform/message/widget/NdSysMessageAppView;Lcom/nd/commplatform/d/c/gf;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/gn;->b:Lcom/nd/commplatform/d/c/gq;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gn;->b:Lcom/nd/commplatform/d/c/gq;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/gq;->a()V

    return-void
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gn;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/gn;->e:Lcom/nd/commplatform/d/c/gf;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/gf;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gn;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/gn;->e:Lcom/nd/commplatform/d/c/gf;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/gf;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private m()V
    .locals 3

    const/16 v2, 0xbcb

    invoke-static {v2}, Lcom/nd/commplatform/d/c/cb;->b(I)Lcom/nd/commplatform/d/c/bx;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "Key"

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/gf;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/gn;->e:Lcom/nd/commplatform/d/c/gf;

    :cond_0
    invoke-static {v2}, Lcom/nd/commplatform/d/c/cb;->c(I)Lcom/nd/commplatform/d/c/bx;

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->be:I

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

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/gn;->p:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/gn;->q:Z

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->jX:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/gn;->r:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/nd/commplatform/d/c/gn;->s:Z

    iput-object v4, p0, Lcom/nd/commplatform/d/c/gn;->t:Ljava/lang/String;

    iput-object v4, p0, Lcom/nd/commplatform/d/c/gn;->u:Landroid/view/View$OnClickListener;

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/gn;->v:Z

    iput-boolean v3, p0, Lcom/nd/commplatform/d/c/gn;->w:Z

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->gC:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/gn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/message/widget/NdSysMessageAppView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/gn;->a:Lcom/nd/commplatform/message/widget/NdSysMessageAppView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->gH:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/gn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/gn;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gn;->c:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->gJ:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/gn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/gn;->d:Landroid/widget/TextView;

    return-void
.end method

.method protected a(ZI)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/gn;->m()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gn;->e:Lcom/nd/commplatform/d/c/gf;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/nd/commplatform/d/c/gn;->b()V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/gn;->c()V

    goto :goto_0
.end method
