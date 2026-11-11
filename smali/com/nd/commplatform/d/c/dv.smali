.class public Lcom/nd/commplatform/d/c/dv;
.super Lcom/nd/commplatform/widget/NdFrameInnerContent;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final e:I = 0x0

.field private static final f:I = 0x1

.field private static final g:I = 0x2

.field private static final h:I = 0x3


# instance fields
.field private a:Lcom/nd/commplatform/widget/NdCategoryItem;

.field private b:Lcom/nd/commplatform/widget/NdCategoryItem;

.field private c:Lcom/nd/commplatform/widget/NdCategoryItem;

.field private d:Lcom/nd/commplatform/widget/NdCategoryItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private b()V
    .locals 0

    invoke-static {}, Lcom/nd/commplatform/d/c/dw;->b()V

    return-void
.end method

.method private c()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/dz;->c(I)V

    return-void
.end method

.method private m()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/nd/commplatform/d/c/dz;->c(I)V

    return-void
.end method

.method private n()V
    .locals 0

    invoke-static {}, Lcom/nd/commplatform/d/c/dt;->b()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->R:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/dv;->p:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/dv;->q:Z

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->fS:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dv;->r:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nd/commplatform/d/c/dv;->s:Z

    iput-object v3, p0, Lcom/nd/commplatform/d/c/dv;->t:Ljava/lang/String;

    iput-object v3, p0, Lcom/nd/commplatform/d/c/dv;->u:Landroid/view/View$OnClickListener;

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/dv;->v:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/dv;->w:Z

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->dd:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/widget/NdCategoryItem;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dv;->a:Lcom/nd/commplatform/widget/NdCategoryItem;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dv;->a:Lcom/nd/commplatform/widget/NdCategoryItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdCategoryItem;->a:Landroid/widget/TextView;

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->cX:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dv;->a:Lcom/nd/commplatform/widget/NdCategoryItem;

    invoke-virtual {v0, p0}, Lcom/nd/commplatform/widget/NdCategoryItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dv;->a:Lcom/nd/commplatform/widget/NdCategoryItem;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/widget/NdCategoryItem;->setTag(Ljava/lang/Object;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->am:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/widget/NdCategoryItem;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dv;->b:Lcom/nd/commplatform/widget/NdCategoryItem;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dv;->b:Lcom/nd/commplatform/widget/NdCategoryItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdCategoryItem;->a:Landroid/widget/TextView;

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->fU:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dv;->b:Lcom/nd/commplatform/widget/NdCategoryItem;

    invoke-virtual {v0, p0}, Lcom/nd/commplatform/widget/NdCategoryItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dv;->b:Lcom/nd/commplatform/widget/NdCategoryItem;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/widget/NdCategoryItem;->setTag(Ljava/lang/Object;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->fd:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/widget/NdCategoryItem;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dv;->c:Lcom/nd/commplatform/widget/NdCategoryItem;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dv;->c:Lcom/nd/commplatform/widget/NdCategoryItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdCategoryItem;->a:Landroid/widget/TextView;

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->fT:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dv;->c:Lcom/nd/commplatform/widget/NdCategoryItem;

    invoke-virtual {v0, p0}, Lcom/nd/commplatform/widget/NdCategoryItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dv;->c:Lcom/nd/commplatform/widget/NdCategoryItem;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/widget/NdCategoryItem;->setTag(Ljava/lang/Object;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->aV:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/widget/NdCategoryItem;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dv;->d:Lcom/nd/commplatform/widget/NdCategoryItem;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dv;->d:Lcom/nd/commplatform/widget/NdCategoryItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdCategoryItem;->a:Landroid/widget/TextView;

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->aT:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dv;->d:Lcom/nd/commplatform/widget/NdCategoryItem;

    invoke-virtual {v0, p0}, Lcom/nd/commplatform/widget/NdCategoryItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dv;->d:Lcom/nd/commplatform/widget/NdCategoryItem;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/widget/NdCategoryItem;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method protected a(ZI)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/nd/commplatform/d/c/dv;->b()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/nd/commplatform/d/c/dv;->c()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/nd/commplatform/d/c/dv;->m()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/nd/commplatform/d/c/dv;->n()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
