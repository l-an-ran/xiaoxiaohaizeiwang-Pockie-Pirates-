.class public Lcom/nd/commplatform/d/c/j;
.super Lcom/nd/commplatform/widget/NdFrameInnerContent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nd/commplatform/d/c/j$1;,
        Lcom/nd/commplatform/d/c/j$b;,
        Lcom/nd/commplatform/d/c/j$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/entry/NdThirdPartyPlatform;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/widget/ImageView;Lcom/nd/commplatform/entry/NdThirdPartyPlatform;)V
    .locals 5

    new-instance v0, Lcom/nd/commplatform/d/c/j$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/nd/commplatform/d/c/j$a;-><init>(Lcom/nd/commplatform/d/c/j;Landroid/widget/ImageView;Lcom/nd/commplatform/entry/NdThirdPartyPlatform;)V

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/j;->a(Lcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;->getCheckSum()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/j;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/nd/commplatform/d/c/a;->e(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/entry/NdThirdPartyPlatform;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v6, Lcom/nd/commplatform/d/c/j$b;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v1}, Lcom/nd/commplatform/d/c/j$b;-><init>(Lcom/nd/commplatform/d/c/j;Lcom/nd/commplatform/d/c/j$1;)V

    sget v1, Lcom/nd/commplatform/d/c/jo$e;->Q:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/j;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual/range {p0 .. p0}, Lcom/nd/commplatform/d/c/j;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v8

    const/4 v2, 0x0

    move v5, v2

    :goto_0
    if-ge v5, v8, :cond_0

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    sget v3, Lcom/nd/commplatform/d/c/jo$f;->bg:I

    const/4 v4, 0x0

    invoke-virtual {v7, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    sget v3, Lcom/nd/commplatform/d/c/jo$e;->cW:I

    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    sget v3, Lcom/nd/commplatform/d/c/jo$e;->gt:I

    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    sget v3, Lcom/nd/commplatform/d/c/jo$e;->gs:I

    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    check-cast v3, Landroid/widget/ImageView;

    sget v4, Lcom/nd/commplatform/d/c/jo$e;->eY:I

    invoke-virtual {v9, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/nd/commplatform/d/c/j;->getContext()Landroid/content/Context;

    move-result-object v12

    sget v13, Lcom/nd/commplatform/d/c/jo$h;->V:I

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v2}, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;->getName()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/nd/commplatform/d/c/j;->a(Landroid/widget/ImageView;Lcom/nd/commplatform/entry/NdThirdPartyPlatform;)V

    if-nez v5, :cond_2

    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v11, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v10, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v10, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v9, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->n:I

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

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/j;->p:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/j;->q:Z

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/j;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->X:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/j;->r:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/nd/commplatform/d/c/j;->s:Z

    iput-object v4, p0, Lcom/nd/commplatform/d/c/j;->t:Ljava/lang/String;

    iput-object v4, p0, Lcom/nd/commplatform/d/c/j;->u:Landroid/view/View$OnClickListener;

    iput-boolean v3, p0, Lcom/nd/commplatform/d/c/j;->v:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/j;->w:Z

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected a(ZI)V
    .locals 3

    const/16 v2, 0xfa1

    if-eqz p1, :cond_0

    invoke-static {v2}, Lcom/nd/commplatform/d/c/cb;->b(I)Lcom/nd/commplatform/d/c/bx;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "list"

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/j;->a:Ljava/util/List;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/j;->a:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/nd/commplatform/d/c/j;->a(Ljava/util/List;)V

    invoke-static {v2}, Lcom/nd/commplatform/d/c/cb;->c(I)Lcom/nd/commplatform/d/c/bx;

    goto :goto_0
.end method
