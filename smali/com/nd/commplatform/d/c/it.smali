.class public Lcom/nd/commplatform/d/c/it;
.super Lcom/nd/commplatform/widget/NdFrameInnerContent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nd/commplatform/d/c/it$b;,
        Lcom/nd/commplatform/d/c/it$a;
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

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;",
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

.method static synthetic a(Lcom/nd/commplatform/d/c/it;Lcom/nd/commplatform/entry/NdThirdPartyPlatform;)Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;
    .locals 1

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/it;->a(Lcom/nd/commplatform/entry/NdThirdPartyPlatform;)Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/nd/commplatform/entry/NdThirdPartyPlatform;)Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;->getType()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/it;->b:Ljava/util/List;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/it;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/it;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;->getAccountType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/it;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/it;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/it;->b:Ljava/util/List;

    return-object v0
.end method

.method private a(Landroid/widget/ImageView;Lcom/nd/commplatform/entry/NdThirdPartyPlatform;)V
    .locals 5

    new-instance v0, Lcom/nd/commplatform/d/c/it$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/nd/commplatform/d/c/it$a;-><init>(Lcom/nd/commplatform/d/c/it;Landroid/widget/ImageView;Lcom/nd/commplatform/entry/NdThirdPartyPlatform;)V

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/it;->a(Lcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;->getCheckSum()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/it;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/nd/commplatform/d/c/a;->e(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/it;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nd/commplatform/d/c/it;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/it;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/it;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/nd/commplatform/d/c/it$1;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/it$1;-><init>(Lcom/nd/commplatform/d/c/it;)V

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/it;->a(Lcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/nd/commplatform/d/c/it;->b(Z)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/it;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2, v0}, Lcom/nd/commplatform/d/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/nd/commplatform/NdCallbackListener;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/it;->b(Z)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/entry/NdThirdPartyPlatform;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v9, Lcom/nd/commplatform/d/c/it$b;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v1}, Lcom/nd/commplatform/d/c/it$b;-><init>(Lcom/nd/commplatform/d/c/it;Lcom/nd/commplatform/d/c/it$1;)V

    invoke-virtual/range {p0 .. p0}, Lcom/nd/commplatform/d/c/it;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    new-instance v11, Ljava/util/Vector;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v11, v1}, Ljava/util/Vector;-><init>(I)V

    const/4 v7, 0x0

    sget v1, Lcom/nd/commplatform/d/c/jo$e;->Q:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/it;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v6, 0x1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    const/4 v2, 0x0

    move v8, v2

    :goto_1
    if-ge v8, v12, :cond_5

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/nd/commplatform/d/c/it;->b(Lcom/nd/commplatform/entry/NdThirdPartyPlatform;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v2

    move v2, v6

    :goto_2
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    move v6, v2

    move-object v7, v3

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/nd/commplatform/d/c/it;->a(Lcom/nd/commplatform/entry/NdThirdPartyPlatform;)Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual {v11, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move v2, v6

    move-object v3, v7

    goto :goto_2

    :cond_2
    sget v3, Lcom/nd/commplatform/d/c/jo$f;->bg:I

    const/4 v4, 0x0

    invoke-virtual {v10, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    sget v3, Lcom/nd/commplatform/d/c/jo$e;->cW:I

    invoke-virtual {v13, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    sget v3, Lcom/nd/commplatform/d/c/jo$e;->gt:I

    invoke-virtual {v13, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    sget v3, Lcom/nd/commplatform/d/c/jo$e;->gs:I

    invoke-virtual {v13, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    check-cast v3, Landroid/widget/ImageView;

    sget v4, Lcom/nd/commplatform/d/c/jo$e;->eY:I

    invoke-virtual {v13, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    check-cast v4, Landroid/widget/TextView;

    sget v5, Lcom/nd/commplatform/d/c/jo$e;->dL:I

    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    check-cast v5, Landroid/widget/TextView;

    if-eqz v6, :cond_4

    const/16 v6, 0x8

    :goto_3
    invoke-virtual {v15, v6}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/nd/commplatform/d/c/it;->a(Landroid/widget/ImageView;Lcom/nd/commplatform/entry/NdThirdPartyPlatform;)V

    invoke-virtual {v2}, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/nd/commplatform/d/c/it;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/nd/commplatform/d/c/jo$h;->dj:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/nd/commplatform/d/c/it;->a(Lcom/nd/commplatform/entry/NdThirdPartyPlatform;)Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;->isValidated()Z

    move-result v3

    if-nez v3, :cond_3

    sget v3, Lcom/nd/commplatform/d/c/jo$h;->R:I

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(I)V

    :cond_3
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v14, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v14, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v13, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x0

    move-object v3, v7

    goto/16 :goto_2

    :cond_4
    const/4 v6, 0x0

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_7

    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    sget v1, Lcom/nd/commplatform/d/c/jo$e;->P:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/it;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    if-eqz v7, :cond_6

    sget v2, Lcom/nd/commplatform/d/c/jo$f;->bg:I

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    sget v2, Lcom/nd/commplatform/d/c/jo$e;->dB:I

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    sget v2, Lcom/nd/commplatform/d/c/jo$e;->dF:I

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    sget v2, Lcom/nd/commplatform/d/c/jo$e;->gt:I

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    sget v2, Lcom/nd/commplatform/d/c/jo$e;->gs:I

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    check-cast v2, Landroid/widget/ImageView;

    sget v3, Lcom/nd/commplatform/d/c/jo$e;->dG:I

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    check-cast v3, Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v7}, Lcom/nd/commplatform/d/c/it;->a(Landroid/widget/ImageView;Lcom/nd/commplatform/entry/NdThirdPartyPlatform;)V

    invoke-virtual {v7}, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_8

    const/4 v2, 0x0

    :goto_5
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    sget v1, Lcom/nd/commplatform/d/c/jo$e;->S:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/it;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v3, 0x1

    const/4 v2, 0x0

    move v6, v2

    move v7, v3

    :goto_6
    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v6, v2, :cond_a

    invoke-virtual {v11, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    sget v3, Lcom/nd/commplatform/d/c/jo$f;->bg:I

    const/4 v4, 0x0

    invoke-virtual {v10, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    sget v3, Lcom/nd/commplatform/d/c/jo$e;->cW:I

    invoke-virtual {v8, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    sget v3, Lcom/nd/commplatform/d/c/jo$e;->gt:I

    invoke-virtual {v8, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    sget v3, Lcom/nd/commplatform/d/c/jo$e;->gs:I

    invoke-virtual {v8, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    check-cast v3, Landroid/widget/ImageView;

    sget v4, Lcom/nd/commplatform/d/c/jo$e;->eY:I

    invoke-virtual {v8, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    check-cast v4, Landroid/widget/TextView;

    sget v5, Lcom/nd/commplatform/d/c/jo$e;->dL:I

    invoke-virtual {v8, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    check-cast v5, Landroid/widget/TextView;

    if-eqz v7, :cond_9

    const/16 v7, 0x8

    :goto_7
    invoke-virtual {v13, v7}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/nd/commplatform/d/c/it;->a(Landroid/widget/ImageView;Lcom/nd/commplatform/entry/NdThirdPartyPlatform;)V

    invoke-virtual {v2}, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/nd/commplatform/d/c/it;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/nd/commplatform/d/c/jo$h;->dl:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v12, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v12, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v8, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x0

    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v7, v3

    goto :goto_6

    :cond_7
    const/16 v2, 0x8

    goto/16 :goto_4

    :cond_8
    const/16 v2, 0x8

    goto/16 :goto_5

    :cond_9
    const/4 v7, 0x0

    goto :goto_7

    :cond_a
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_b

    const/4 v2, 0x0

    :goto_8
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    :cond_b
    const/16 v2, 0x8

    goto :goto_8
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/it;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/it;->a:Ljava/util/List;

    return-object v0
.end method

.method private b(Lcom/nd/commplatform/entry/NdThirdPartyPlatform;)Z
    .locals 2

    invoke-static {}, Lcom/nd/commplatform/d/c/of;->a()Lcom/nd/commplatform/d/c/of;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/of;->b()Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;->getAccountType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
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

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/it;->p:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/it;->q:Z

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/it;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->ds:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/it;->r:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/nd/commplatform/d/c/it;->s:Z

    iput-object v4, p0, Lcom/nd/commplatform/d/c/it;->t:Ljava/lang/String;

    iput-object v4, p0, Lcom/nd/commplatform/d/c/it;->u:Landroid/view/View$OnClickListener;

    iput-boolean v3, p0, Lcom/nd/commplatform/d/c/it;->v:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/it;->w:Z

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected a(ZI)V
    .locals 3

    const/16 v2, 0xfa3

    if-eqz p1, :cond_1

    invoke-static {v2}, Lcom/nd/commplatform/d/c/cb;->b(I)Lcom/nd/commplatform/d/c/bx;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "list"

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/it;->a:Ljava/util/List;

    const-string v0, "binded"

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/it;->b:Ljava/util/List;

    invoke-static {v2}, Lcom/nd/commplatform/d/c/cb;->c(I)Lcom/nd/commplatform/d/c/bx;

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/it;->a:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/nd/commplatform/d/c/it;->a(Ljava/util/List;)V

    goto :goto_0
.end method
