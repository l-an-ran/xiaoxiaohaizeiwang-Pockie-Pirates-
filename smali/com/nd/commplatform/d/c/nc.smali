.class public Lcom/nd/commplatform/d/c/nc;
.super Lcom/nd/commplatform/widget/NdFrameInnerContent;


# static fields
.field private static final g:Ljava/lang/String; = "NdActivityAddresser"


# instance fields
.field private a:Lcom/nd/commplatform/d/c/my;

.field private b:Lcom/nd/commplatform/uap/widget/NdActivityUserView;

.field private c:Lcom/nd/commplatform/d/c/mw;

.field private d:Lcom/nd/commplatform/d/c/mq;

.field private e:Lcom/nd/commplatform/uap/widget/NdActivityDescriptionPlusImageView;

.field private f:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Lcom/nd/commplatform/d/c/my;)V
    .locals 2

    new-instance v0, Lcom/nd/commplatform/d/c/bx;

    const/16 v1, 0xbc9

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/bx;-><init>(I)V

    const-string v1, "NdActivityAddresser"

    invoke-virtual {v0, v1, p0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x7b

    invoke-static {v1, v0}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    return-void
.end method

.method private b()V
    .locals 3

    new-instance v0, Lcom/nd/commplatform/d/c/mw;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/nc;->b:Lcom/nd/commplatform/uap/widget/NdActivityUserView;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/nc;->a:Lcom/nd/commplatform/d/c/my;

    invoke-virtual {v2}, Lcom/nd/commplatform/d/c/my;->c()Lcom/nd/commplatform/d/c/nb;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/nd/commplatform/d/c/mw;-><init>(Lcom/nd/commplatform/uap/widget/NdActivityUserView;Lcom/nd/commplatform/d/c/nb;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/nc;->c:Lcom/nd/commplatform/d/c/mw;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/nc;->c:Lcom/nd/commplatform/d/c/mw;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/mw;->a()V

    return-void
.end method

.method private c()V
    .locals 4

    iget-object v0, p0, Lcom/nd/commplatform/d/c/nc;->a:Lcom/nd/commplatform/d/c/my;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/my;->b()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/nc;->d:Lcom/nd/commplatform/d/c/mq;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/mq;->b()V

    return-void

    :sswitch_0
    new-instance v1, Lcom/nd/commplatform/d/c/mn;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/nc;->e:Lcom/nd/commplatform/uap/widget/NdActivityDescriptionPlusImageView;

    new-instance v3, Lcom/nd/commplatform/d/c/nc$1;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/nc;->a:Lcom/nd/commplatform/d/c/my;

    check-cast v0, Lcom/nd/commplatform/d/c/mx;

    invoke-direct {v3, p0, v0}, Lcom/nd/commplatform/d/c/nc$1;-><init>(Lcom/nd/commplatform/d/c/nc;Lcom/nd/commplatform/d/c/mx;)V

    invoke-direct {v1, v2, v3}, Lcom/nd/commplatform/d/c/mn;-><init>(Lcom/nd/commplatform/uap/widget/NdActivityDescriptionPlusImageView;Lcom/nd/commplatform/d/c/mo;)V

    iput-object v1, p0, Lcom/nd/commplatform/d/c/nc;->d:Lcom/nd/commplatform/d/c/mq;

    goto :goto_0

    :sswitch_1
    new-instance v1, Lcom/nd/commplatform/d/c/mm;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/nc;->e:Lcom/nd/commplatform/uap/widget/NdActivityDescriptionPlusImageView;

    new-instance v3, Lcom/nd/commplatform/d/c/nc$2;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/nc;->a:Lcom/nd/commplatform/d/c/my;

    check-cast v0, Lcom/nd/commplatform/d/c/na;

    invoke-direct {v3, p0, v0}, Lcom/nd/commplatform/d/c/nc$2;-><init>(Lcom/nd/commplatform/d/c/nc;Lcom/nd/commplatform/d/c/na;)V

    invoke-direct {v1, v2, v3}, Lcom/nd/commplatform/d/c/mm;-><init>(Lcom/nd/commplatform/uap/widget/NdActivityDescriptionPlusImageView;Lcom/nd/commplatform/d/c/mo;)V

    iput-object v1, p0, Lcom/nd/commplatform/d/c/nc;->d:Lcom/nd/commplatform/d/c/mq;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2711 -> :sswitch_1
        0x2713 -> :sswitch_1
        0x2715 -> :sswitch_1
        0x2717 -> :sswitch_1
        0x2719 -> :sswitch_1
    .end sparse-switch
.end method

.method private m()V
    .locals 6

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/nc;->a:Lcom/nd/commplatform/d/c/my;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/my;->b()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/nc;->f:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/nc;->a:Lcom/nd/commplatform/d/c/my;

    check-cast v0, Lcom/nd/commplatform/d/c/mx;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/mx;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v3, :cond_0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/nb;

    invoke-super {p0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->aI:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/nc;->f:Landroid/widget/Button;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/nb;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/nc;->f:Landroid/widget/Button;

    new-instance v2, Lcom/nd/commplatform/d/c/nc$3;

    invoke-direct {v2, p0, v0}, Lcom/nd/commplatform/d/c/nc$3;-><init>(Lcom/nd/commplatform/d/c/nc;Lcom/nd/commplatform/d/c/nb;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/nc;->f:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :sswitch_1
    invoke-super {p0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->aJ:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/nc;->a:Lcom/nd/commplatform/d/c/my;

    check-cast v0, Lcom/nd/commplatform/d/c/na;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/na;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v3, :cond_2

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/mz;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/nc;->f:Landroid/widget/Button;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/mz;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/mz;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nd/commplatform/d/c/nc;->f:Landroid/widget/Button;

    new-instance v2, Lcom/nd/commplatform/d/c/nc$4;

    invoke-direct {v2, p0, v0}, Lcom/nd/commplatform/d/c/nc$4;-><init>(Lcom/nd/commplatform/d/c/nc;Lcom/nd/commplatform/d/c/mz;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/nc;->f:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nd/commplatform/d/c/nc;->f:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2711 -> :sswitch_1
        0x2713 -> :sswitch_1
        0x2715 -> :sswitch_1
        0x2717 -> :sswitch_1
        0x2719 -> :sswitch_1
    .end sparse-switch
.end method

.method private n()V
    .locals 3

    const/16 v2, 0xbc9

    invoke-static {v2}, Lcom/nd/commplatform/d/c/cb;->b(I)Lcom/nd/commplatform/d/c/bx;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "NdActivityAddresser"

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/my;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/nc;->a:Lcom/nd/commplatform/d/c/my;

    :cond_0
    invoke-static {v2}, Lcom/nd/commplatform/d/c/cb;->c(I)Lcom/nd/commplatform/d/c/bx;

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->D:I

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

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/nc;->p:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/nc;->q:Z

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->bA:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/nc;->r:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/nd/commplatform/d/c/nc;->s:Z

    iput-object v4, p0, Lcom/nd/commplatform/d/c/nc;->t:Ljava/lang/String;

    iput-object v4, p0, Lcom/nd/commplatform/d/c/nc;->u:Landroid/view/View$OnClickListener;

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/nc;->v:Z

    iput-boolean v3, p0, Lcom/nd/commplatform/d/c/nc;->w:Z

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 1

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->aL:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/nc;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/uap/widget/NdActivityUserView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/nc;->b:Lcom/nd/commplatform/uap/widget/NdActivityUserView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->aE:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/nc;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/uap/widget/NdActivityDescriptionPlusImageView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/nc;->e:Lcom/nd/commplatform/uap/widget/NdActivityDescriptionPlusImageView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->aD:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/nc;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/nc;->f:Landroid/widget/Button;

    return-void
.end method

.method protected a(ZI)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/nc;->n()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/nc;->a:Lcom/nd/commplatform/d/c/my;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/nd/commplatform/d/c/nc;->b()V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/nc;->c()V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/nc;->m()V

    goto :goto_0
.end method
