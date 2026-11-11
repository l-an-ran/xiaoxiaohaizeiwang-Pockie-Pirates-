.class public Lcom/nd/commplatform/d/c/eu;
.super Lcom/nd/commplatform/widget/NdFrameInnerContent;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final a:Ljava/lang/String; = "Product"

.field private static final b:Ljava/lang/String; = "app"

.field private static final c:Ljava/lang/String; = "spec"


# instance fields
.field private H:Landroid/widget/TextView;

.field private I:Landroid/widget/Button;

.field private J:Landroid/widget/TextView;

.field private K:Landroid/widget/TextView;

.field private L:Landroid/widget/TextView;

.field private M:Landroid/widget/TextView;

.field private N:Landroid/widget/TextView;

.field private O:Lcom/nd/commplatform/entry/NdVirtualCurrency;

.field private P:Landroid/widget/ProgressBar;

.field private Q:I

.field private d:Lcom/nd/commplatform/entry/NdProductInfo;

.field private e:I

.field private f:I

.field private g:I

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/view/ViewGroup;

.field private j:Landroid/widget/Button;

.field private k:Landroid/widget/Button;

.field private l:Landroid/widget/EditText;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/nd/commplatform/d/c/eu;->f:I

    iput v0, p0, Lcom/nd/commplatform/d/c/eu;->g:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/nd/commplatform/d/c/eu;->Q:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/nd/commplatform/d/c/eu;->f:I

    iput v0, p0, Lcom/nd/commplatform/d/c/eu;->g:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/nd/commplatform/d/c/eu;->Q:I

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/eu;)Lcom/nd/commplatform/entry/NdProductInfo;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eu;->d:Lcom/nd/commplatform/entry/NdProductInfo;

    return-object v0
.end method

.method public static a(ILcom/nd/commplatform/entry/NdProductInfo;Lcom/nd/commplatform/entry/NdVirtualCurrency;)V
    .locals 3

    new-instance v0, Lcom/nd/commplatform/d/c/bx;

    const/16 v1, 0x1b95

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/bx;-><init>(I)V

    const-string v1, "Product"

    invoke-virtual {v0, v1, p1}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "app"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "spec"

    invoke-virtual {v0, v1, p2}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x25c

    invoke-static {v1, v0}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    return-void
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/eu;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eu;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method private b()V
    .locals 11

    const/4 v10, 0x1

    const/4 v1, 0x0

    const/16 v9, 0x8

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/eu;->m()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eu;->m:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/eu;->d:Lcom/nd/commplatform/entry/NdProductInfo;

    invoke-virtual {v2}, Lcom/nd/commplatform/entry/NdProductInfo;->getProductName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eu;->O:Lcom/nd/commplatform/entry/NdVirtualCurrency;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eu;->n:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/eu;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/nd/commplatform/d/c/jo$h;->md:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v10, [Ljava/lang/Object;

    new-instance v4, Ljava/text/DecimalFormat;

    const-string v5, "0.00"

    invoke-direct {v4, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/nd/commplatform/d/c/eu;->d:Lcom/nd/commplatform/entry/NdProductInfo;

    invoke-virtual {v5}, Lcom/nd/commplatform/entry/NdProductInfo;->getOrignPrice()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eu;->H:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/eu;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/nd/commplatform/d/c/jo$h;->md:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v10, [Ljava/lang/Object;

    new-instance v4, Ljava/text/DecimalFormat;

    const-string v5, "0.00"

    invoke-direct {v4, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/nd/commplatform/d/c/eu;->d:Lcom/nd/commplatform/entry/NdProductInfo;

    invoke-virtual {v5}, Lcom/nd/commplatform/entry/NdProductInfo;->getSalePrice()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-direct {p0}, Lcom/nd/commplatform/d/c/eu;->c()I

    move-result v0

    if-gtz v0, :cond_3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eu;->i:Landroid/view/ViewGroup;

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eu;->I:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/eu;->d:Lcom/nd/commplatform/entry/NdProductInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdProductInfo;->getFeeInfo()Lcom/nd/commplatform/entry/NdFeeInfo;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Lcom/nd/commplatform/entry/NdFeeInfo;->getFeeInfoConsumer()Lcom/nd/commplatform/entry/NdFeeInfoConsumer;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdFeeInfoConsumer;->getBuyLimitPerUser()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/nd/commplatform/d/c/eu;->M:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/eu;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/nd/commplatform/d/c/jo$h;->lR:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdFeeInfoConsumer;->getBuyLimitPerUser()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    iget-object v6, p0, Lcom/nd/commplatform/d/c/eu;->d:Lcom/nd/commplatform/entry/NdProductInfo;

    invoke-virtual {v6}, Lcom/nd/commplatform/entry/NdProductInfo;->getUnit()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdFeeInfoConsumer;->getLimitTimePeriod()[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    array-length v5, v3

    move v0, v1

    :goto_2
    if-ge v0, v5, :cond_5

    aget-object v6, v3, v0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "%s"

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v6, v8, v1

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "0.00"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nd/commplatform/d/c/eu;->d:Lcom/nd/commplatform/entry/NdProductInfo;

    invoke-virtual {v3}, Lcom/nd/commplatform/entry/NdProductInfo;->getOrignPrice()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/eu;->O:Lcom/nd/commplatform/entry/NdVirtualCurrency;

    invoke-virtual {v2}, Lcom/nd/commplatform/entry/NdVirtualCurrency;->getUnit()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/eu;->O:Lcom/nd/commplatform/entry/NdVirtualCurrency;

    invoke-virtual {v2}, Lcom/nd/commplatform/entry/NdVirtualCurrency;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/eu;->n:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "0.00"

    invoke-direct {v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nd/commplatform/d/c/eu;->d:Lcom/nd/commplatform/entry/NdProductInfo;

    invoke-virtual {v3}, Lcom/nd/commplatform/entry/NdProductInfo;->getSalePrice()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/eu;->O:Lcom/nd/commplatform/entry/NdVirtualCurrency;

    invoke-virtual {v2}, Lcom/nd/commplatform/entry/NdVirtualCurrency;->getUnit()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/eu;->O:Lcom/nd/commplatform/entry/NdVirtualCurrency;

    invoke-virtual {v2}, Lcom/nd/commplatform/entry/NdVirtualCurrency;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/eu;->H:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    if-ne v0, v10, :cond_0

    iget-object v2, p0, Lcom/nd/commplatform/d/c/eu;->l:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eu;->i:Landroid/view/ViewGroup;

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_1

    :cond_4
    const-string v7, ",%s"

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v6, v8, v1

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_5
    iget-object v0, p0, Lcom/nd/commplatform/d/c/eu;->L:Landroid/widget/TextView;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    invoke-virtual {v2}, Lcom/nd/commplatform/entry/NdFeeInfo;->getFeeInfoSubscribe()Lcom/nd/commplatform/entry/NdFeeInfoSubscribe;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdFeeInfoSubscribe;->getAuthCntPerGoods()I

    move-result v2

    if-ltz v2, :cond_c

    iget-object v3, p0, Lcom/nd/commplatform/d/c/eu;->K:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/eu;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/nd/commplatform/d/c/jo$h;->lY:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    iget-object v2, p0, Lcom/nd/commplatform/d/c/eu;->J:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/eu;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/nd/commplatform/d/c/jo$h;->ma:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v10, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdFeeInfoSubscribe;->getTimeLong()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    iget-object v0, p0, Lcom/nd/commplatform/d/c/eu;->d:Lcom/nd/commplatform/entry/NdProductInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdProductInfo;->getFeeInfo()Lcom/nd/commplatform/entry/NdFeeInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdFeeInfo;->getFeeType()I

    move-result v1

    and-int/lit8 v0, v1, 0x2

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eu;->K:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eu;->K:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_8
    iget-object v0, p0, Lcom/nd/commplatform/d/c/eu;->J:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eu;->J:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_9
    :goto_5
    and-int/lit8 v0, v1, 0x4

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eu;->L:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eu;->L:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_a
    iget-object v0, p0, Lcom/nd/commplatform/d/c/eu;->M:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eu;->M:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_b
    :goto_6
    iget-object v0, p0, Lcom/nd/commplatform/d/c/eu;->N:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/eu;->d:Lcom/nd/commplatform/entry/NdProductInfo;

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdProductInfo;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eu;->N:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    return-void

    :cond_c
    iget-object v2, p0, Lcom/nd/commplatform/d/c/eu;->K:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/eu;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/nd/commplatform/d/c/jo$h;->lY:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v10, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/eu;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/nd/commplatform/d/c/jo$h;->lZ:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_d
    iget-object v0, p0, Lcom/nd/commplatform/d/c/eu;->K:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eu;->J:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_5

    :cond_e
    iget-object v0, p0, Lcom/nd/commplatform/d/c/eu;->L:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eu;->M:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_6

    :cond_f
    iget-object v0, p0, Lcom/nd/commplatform/d/c/eu;->K:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eu;->J:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eu;->L:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eu;->M:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_6
.end method

.method private c()I
    .locals 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eu;->d:Lcom/nd/commplatform/entry/NdProductInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdProductInfo;->getFeeInfo()Lcom/nd/commplatform/entry/NdFeeInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdFeeInfo;->getFeeInfoConsumer()Lcom/nd/commplatform/entry/NdFeeInfoConsumer;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eu;->d:Lcom/nd/commplatform/entry/NdProductInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdProductInfo;->getSalePrice()D

    move-result-wide v4

    const-wide v6, 0x3f847ae140000000L    # 0.009999999776482582

    sub-double v6, v4, v6

    const-wide v8, 0x3f50624de0000000L    # 0.0010000000474974513

    cmpg-double v0, v6, v8

    if-gez v0, :cond_1

    sget v0, Lcom/nd/commplatform/d/c/jo$h;->bv:I

    iput v0, p0, Lcom/nd/commplatform/d/c/eu;->Q:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/nd/commplatform/d/c/eu;->f:I

    :goto_0
    invoke-virtual {v3}, Lcom/nd/commplatform/entry/NdFeeInfoConsumer;->getBuyLimitPerUser()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    iput v0, p0, Lcom/nd/commplatform/d/c/eu;->f:I

    iput v2, p0, Lcom/nd/commplatform/d/c/eu;->Q:I

    :cond_0
    iget v0, p0, Lcom/nd/commplatform/d/c/eu;->f:I

    if-gtz v0, :cond_3

    iput v2, p0, Lcom/nd/commplatform/d/c/eu;->g:I

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eu;->l:Landroid/widget/EditText;

    iget v1, p0, Lcom/nd/commplatform/d/c/eu;->g:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    move v0, v2

    :goto_1
    return v0

    :cond_1
    const-wide v6, 0x412e848000000000L    # 1000000.0

    div-double v4, v6, v4

    double-to-int v0, v4

    iput v0, p0, Lcom/nd/commplatform/d/c/eu;->f:I

    iget v0, p0, Lcom/nd/commplatform/d/c/eu;->f:I

    if-gez v0, :cond_2

    move v0, v1

    :goto_2
    iput v0, p0, Lcom/nd/commplatform/d/c/eu;->f:I

    sget v0, Lcom/nd/commplatform/d/c/jo$h;->bw:I

    iput v0, p0, Lcom/nd/commplatform/d/c/eu;->Q:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/nd/commplatform/d/c/eu;->f:I

    goto :goto_2

    :cond_3
    iput v1, p0, Lcom/nd/commplatform/d/c/eu;->g:I

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eu;->l:Landroid/widget/EditText;

    iget v1, p0, Lcom/nd/commplatform/d/c/eu;->g:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/nd/commplatform/d/c/eu;->f:I

    goto :goto_1

    :cond_4
    iput v1, p0, Lcom/nd/commplatform/d/c/eu;->f:I

    iget v0, p0, Lcom/nd/commplatform/d/c/eu;->f:I

    goto :goto_1
.end method

.method static synthetic c(Lcom/nd/commplatform/d/c/eu;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eu;->P:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic d(Lcom/nd/commplatform/d/c/eu;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/eu;->p()V

    return-void
.end method

.method static synthetic e(Lcom/nd/commplatform/d/c/eu;)I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/d/c/eu;->g:I

    return v0
.end method

.method private m()V
    .locals 6

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eu;->d:Lcom/nd/commplatform/entry/NdProductInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdProductInfo;->getProductId()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eu;->d:Lcom/nd/commplatform/entry/NdProductInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdProductInfo;->getCheckSum()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    new-instance v5, Lcom/nd/commplatform/d/c/eu$1;

    invoke-direct {v5, p0}, Lcom/nd/commplatform/d/c/eu$1;-><init>(Lcom/nd/commplatform/d/c/eu;)V

    const/4 v3, 0x2

    invoke-super {p0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/a;->e(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z

    return-void
.end method

.method private n()V
    .locals 3

    const/16 v2, 0x1b95

    invoke-static {v2}, Lcom/nd/commplatform/d/c/cb;->b(I)Lcom/nd/commplatform/d/c/bx;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "Product"

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/entry/NdProductInfo;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/eu;->d:Lcom/nd/commplatform/entry/NdProductInfo;

    const-string v0, "app"

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/nd/commplatform/d/c/eu;->e:I

    const-string v0, "spec"

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/entry/NdVirtualCurrency;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/eu;->O:Lcom/nd/commplatform/entry/NdVirtualCurrency;

    :cond_0
    invoke-static {v2}, Lcom/nd/commplatform/d/c/cb;->c(I)Lcom/nd/commplatform/d/c/bx;

    return-void
.end method

.method private o()V
    .locals 6

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eu;->d:Lcom/nd/commplatform/entry/NdProductInfo;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/nd/commplatform/d/c/eu;->g:I

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/eu;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->lN:I

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    new-instance v5, Lcom/nd/commplatform/d/c/eu$2;

    invoke-direct {v5, p0}, Lcom/nd/commplatform/d/c/eu$2;-><init>(Lcom/nd/commplatform/d/c/eu;)V

    invoke-virtual {p0, v5}, Lcom/nd/commplatform/d/c/eu;->a(Lcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eu;->P:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/eu;->q()V

    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    const/16 v1, 0x25c

    iget-object v2, p0, Lcom/nd/commplatform/d/c/eu;->d:Lcom/nd/commplatform/entry/NdProductInfo;

    iget v3, p0, Lcom/nd/commplatform/d/c/eu;->g:I

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/eu;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/b;->a(ILcom/nd/commplatform/entry/NdBaseProductInfo;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    goto :goto_0
.end method

.method private p()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eu;->j:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eu;->k:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eu;->l:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eu;->I:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private q()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eu;->j:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eu;->k:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eu;->l:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eu;->I:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private r()V
    .locals 6

    iget v0, p0, Lcom/nd/commplatform/d/c/eu;->Q:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/eu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/eu;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->lP:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/nd/commplatform/d/c/eu;->f:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/nd/commplatform/d/c/eu;->d:Lcom/nd/commplatform/entry/NdProductInfo;

    invoke-virtual {v5}, Lcom/nd/commplatform/entry/NdProductInfo;->getUnit()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/eu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/eu;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/nd/commplatform/d/c/eu;->Q:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private s()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/nd/commplatform/d/c/eu;->l:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lcom/nd/commplatform/d/c/eu;->g:I

    :goto_0
    return v0

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/nd/commplatform/d/c/eu;->g:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget v0, p0, Lcom/nd/commplatform/d/c/eu;->f:I

    iput v0, p0, Lcom/nd/commplatform/d/c/eu;->g:I

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->bz:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-boolean v1, p0, Lcom/nd/commplatform/d/c/eu;->p:Z

    iput-boolean v1, p0, Lcom/nd/commplatform/d/c/eu;->q:Z

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->mb:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/eu;->r:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/eu;->s:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/eu;->v:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/eu;->w:Z

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 1

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->id:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/eu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/eu;->h:Landroid/widget/ImageView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->hW:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/eu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/eu;->i:Landroid/view/ViewGroup;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->hs:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/eu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/eu;->j:Landroid/widget/Button;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eu;->j:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->iQ:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/eu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/eu;->k:Landroid/widget/Button;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eu;->k:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->hV:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/eu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/eu;->l:Landroid/widget/EditText;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->ih:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/eu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/eu;->m:Landroid/widget/TextView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->ij:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/eu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/eu;->n:Landroid/widget/TextView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->il:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/eu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/eu;->H:Landroid/widget/TextView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->iX:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/eu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/eu;->I:Landroid/widget/Button;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eu;->I:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->io:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/eu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/eu;->J:Landroid/widget/TextView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->in:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/eu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/eu;->K:Landroid/widget/TextView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->hT:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/eu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/eu;->L:Landroid/widget/TextView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->hS:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/eu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/eu;->M:Landroid/widget/TextView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->hZ:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/eu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/eu;->N:Landroid/widget/TextView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->iI:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/eu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/eu;->P:Landroid/widget/ProgressBar;

    return-void
.end method

.method protected a(ZI)V
    .locals 1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/nd/commplatform/d/c/bz;->e()V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/eu;->n()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eu;->d:Lcom/nd/commplatform/entry/NdProductInfo;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/nd/commplatform/d/c/eu;->b()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/nd/commplatform/d/c/bz;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nd/commplatform/d/c/ol;->c()V

    invoke-static {}, Lcom/nd/commplatform/d/c/bz;->e()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/nd/commplatform/d/c/jo$e;->hs:I

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/eu;->s()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/nd/commplatform/d/c/eu;->g:I

    iget v1, p0, Lcom/nd/commplatform/d/c/eu;->f:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/nd/commplatform/d/c/eu;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nd/commplatform/d/c/eu;->g:I

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eu;->l:Landroid/widget/EditText;

    iget v1, p0, Lcom/nd/commplatform/d/c/eu;->g:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/nd/commplatform/d/c/eu;->f:I

    iput v0, p0, Lcom/nd/commplatform/d/c/eu;->g:I

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/eu;->r()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eu;->l:Landroid/widget/EditText;

    iget v1, p0, Lcom/nd/commplatform/d/c/eu;->g:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nd/commplatform/d/c/eu;->l:Landroid/widget/EditText;

    iget v1, p0, Lcom/nd/commplatform/d/c/eu;->g:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    sget v1, Lcom/nd/commplatform/d/c/jo$e;->iQ:I

    if-ne v0, v1, :cond_7

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/eu;->s()Z

    move-result v0

    if-nez v0, :cond_6

    iget v0, p0, Lcom/nd/commplatform/d/c/eu;->g:I

    if-le v0, v5, :cond_5

    iget v0, p0, Lcom/nd/commplatform/d/c/eu;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/nd/commplatform/d/c/eu;->g:I

    iget v0, p0, Lcom/nd/commplatform/d/c/eu;->g:I

    iget v1, p0, Lcom/nd/commplatform/d/c/eu;->f:I

    if-le v0, v1, :cond_4

    iget v0, p0, Lcom/nd/commplatform/d/c/eu;->f:I

    iput v0, p0, Lcom/nd/commplatform/d/c/eu;->g:I

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/eu;->r()V

    :cond_4
    iget-object v0, p0, Lcom/nd/commplatform/d/c/eu;->l:Landroid/widget/EditText;

    iget v1, p0, Lcom/nd/commplatform/d/c/eu;->g:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/eu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/eu;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->lQ:I

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/nd/commplatform/d/c/eu;->d:Lcom/nd/commplatform/entry/NdProductInfo;

    invoke-virtual {v4}, Lcom/nd/commplatform/entry/NdProductInfo;->getUnit()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;Ljava/lang/String;)V

    iput v5, p0, Lcom/nd/commplatform/d/c/eu;->g:I

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eu;->l:Landroid/widget/EditText;

    iget v1, p0, Lcom/nd/commplatform/d/c/eu;->g:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/nd/commplatform/d/c/eu;->l:Landroid/widget/EditText;

    iget v1, p0, Lcom/nd/commplatform/d/c/eu;->g:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_7
    sget v1, Lcom/nd/commplatform/d/c/jo$e;->iX:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/eu;->s()Z

    move-result v0

    if-nez v0, :cond_a

    iget v0, p0, Lcom/nd/commplatform/d/c/eu;->g:I

    if-gtz v0, :cond_8

    iput v5, p0, Lcom/nd/commplatform/d/c/eu;->g:I

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eu;->l:Landroid/widget/EditText;

    iget v1, p0, Lcom/nd/commplatform/d/c/eu;->g:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/eu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/eu;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->lQ:I

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/nd/commplatform/d/c/eu;->d:Lcom/nd/commplatform/entry/NdProductInfo;

    invoke-virtual {v4}, Lcom/nd/commplatform/entry/NdProductInfo;->getUnit()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    iget v0, p0, Lcom/nd/commplatform/d/c/eu;->g:I

    iget v1, p0, Lcom/nd/commplatform/d/c/eu;->f:I

    if-le v0, v1, :cond_9

    iget v0, p0, Lcom/nd/commplatform/d/c/eu;->f:I

    iput v0, p0, Lcom/nd/commplatform/d/c/eu;->g:I

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eu;->l:Landroid/widget/EditText;

    iget v1, p0, Lcom/nd/commplatform/d/c/eu;->g:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/eu;->r()V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/nd/commplatform/d/c/eu;->l:Landroid/widget/EditText;

    iget v1, p0, Lcom/nd/commplatform/d/c/eu;->g:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/eu;->o()V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/nd/commplatform/d/c/eu;->l:Landroid/widget/EditText;

    iget v1, p0, Lcom/nd/commplatform/d/c/eu;->g:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
