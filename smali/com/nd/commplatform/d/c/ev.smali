.class public Lcom/nd/commplatform/d/c/ev;
.super Lcom/nd/commplatform/d/c/hh;


# static fields
.field private static final d:I = 0x0

.field private static final e:I = 0x1

.field private static final f:I = 0x2

.field private static final g:I = 0x3

.field private static final h:I = 0x4


# instance fields
.field private a:Lcom/nd/commplatform/widget/goods/NdGoodsListItem;

.field private b:Lcom/nd/commplatform/entry/NdProductInfo;

.field private c:Lcom/nd/commplatform/NdCallbackListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdIcon;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/nd/commplatform/entry/NdVirtualCurrency;


# direct methods
.method public constructor <init>(Lcom/nd/commplatform/widget/goods/NdGoodsListItem;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/hh;-><init>()V

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ev;->a:Lcom/nd/commplatform/widget/goods/NdGoodsListItem;

    return-void
.end method

.method private a(Lcom/nd/commplatform/entry/NdProductInfo;)I
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdProductInfo;->getFeeInfo()Lcom/nd/commplatform/entry/NdFeeInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdFeeInfo;->getFeeInfoConsumer()Lcom/nd/commplatform/entry/NdFeeInfoConsumer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdFeeInfoConsumer;->getStockCount()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x1

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdProductInfo;->getOrignPrice()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdProductInfo;->getSalePrice()D

    move-result-wide v3

    sub-double/2addr v1, v3

    const-wide v3, 0x3f50624de0000000L    # 0.0010000000474974513

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_1

    const/4 v0, 0x4

    :cond_1
    return v0

    :cond_2
    if-lez v2, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdFeeInfoConsumer;->getLimitTimePeriod()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v1, v1

    if-lez v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/ev;)Lcom/nd/commplatform/entry/NdProductInfo;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ev;->b:Lcom/nd/commplatform/entry/NdProductInfo;

    return-object v0
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/ev;)Lcom/nd/commplatform/widget/goods/NdGoodsListItem;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ev;->a:Lcom/nd/commplatform/widget/goods/NdGoodsListItem;

    return-object v0
.end method

.method private b()V
    .locals 6

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ev;->a:Lcom/nd/commplatform/widget/goods/NdGoodsListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/goods/NdGoodsListItem;->d:Landroid/widget/ImageView;

    sget v1, Lcom/nd/commplatform/d/c/jo$d;->ch:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ev;->b:Lcom/nd/commplatform/entry/NdProductInfo;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ev;->b:Lcom/nd/commplatform/entry/NdProductInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdProductInfo;->getProductId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ev;->b:Lcom/nd/commplatform/entry/NdProductInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdProductInfo;->getCheckSum()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v2, ""

    :cond_2
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ev;->b:Lcom/nd/commplatform/entry/NdProductInfo;

    invoke-direct {p0, v0}, Lcom/nd/commplatform/d/c/ev;->a(Lcom/nd/commplatform/entry/NdProductInfo;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ev;->a:Lcom/nd/commplatform/widget/goods/NdGoodsListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/goods/NdGoodsListItem;->e:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_1
    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    new-instance v3, Lcom/nd/commplatform/d/c/ev$1;

    invoke-direct {v3, p0}, Lcom/nd/commplatform/d/c/ev$1;-><init>(Lcom/nd/commplatform/d/c/ev;)V

    iput-object v3, p0, Lcom/nd/commplatform/d/c/ev;->c:Lcom/nd/commplatform/NdCallbackListener;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/nd/commplatform/d/c/ev;->a:Lcom/nd/commplatform/widget/goods/NdGoodsListItem;

    invoke-virtual {v4}, Lcom/nd/commplatform/widget/goods/NdGoodsListItem;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/nd/commplatform/d/c/ev;->c:Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/a;->e(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ev;->a:Lcom/nd/commplatform/widget/goods/NdGoodsListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/goods/NdGoodsListItem;->e:Landroid/widget/ImageView;

    sget v3, Lcom/nd/commplatform/d/c/jo$d;->cl:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ev;->a:Lcom/nd/commplatform/widget/goods/NdGoodsListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/goods/NdGoodsListItem;->e:Landroid/widget/ImageView;

    sget v3, Lcom/nd/commplatform/d/c/jo$d;->cj:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ev;->a:Lcom/nd/commplatform/widget/goods/NdGoodsListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/goods/NdGoodsListItem;->e:Landroid/widget/ImageView;

    sget v3, Lcom/nd/commplatform/d/c/jo$d;->ck:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ev;->a:Lcom/nd/commplatform/widget/goods/NdGoodsListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/goods/NdGoodsListItem;->e:Landroid/widget/ImageView;

    sget v3, Lcom/nd/commplatform/d/c/jo$d;->cm:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private c()V
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ev;->c:Lcom/nd/commplatform/NdCallbackListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ev;->c:Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {v0}, Lcom/nd/commplatform/NdCallbackListener;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ev;->c:Lcom/nd/commplatform/NdCallbackListener;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/ev;->c()V

    iput-object v2, p0, Lcom/nd/commplatform/d/c/ev;->b:Lcom/nd/commplatform/entry/NdProductInfo;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ev;->a:Lcom/nd/commplatform/widget/goods/NdGoodsListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/goods/NdGoodsListItem;->d:Landroid/widget/ImageView;

    sget v1, Lcom/nd/commplatform/d/c/jo$d;->ch:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ev;->a:Lcom/nd/commplatform/widget/goods/NdGoodsListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/goods/NdGoodsListItem;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ev;->a:Lcom/nd/commplatform/widget/goods/NdGoodsListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/goods/NdGoodsListItem;->a:Landroid/widget/TextView;

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->cT:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ev;->a:Lcom/nd/commplatform/widget/goods/NdGoodsListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/goods/NdGoodsListItem;->b:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ev;->a:Lcom/nd/commplatform/widget/goods/NdGoodsListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/goods/NdGoodsListItem;->c:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Lcom/nd/commplatform/entry/NdProductInfo;Lcom/nd/commplatform/entry/NdVirtualCurrency;)V
    .locals 7

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/ev;->c()V

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ev;->b:Lcom/nd/commplatform/entry/NdProductInfo;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/ev;->i:Lcom/nd/commplatform/entry/NdVirtualCurrency;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ev;->b:Lcom/nd/commplatform/entry/NdProductInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ev;->i:Lcom/nd/commplatform/entry/NdVirtualCurrency;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ev;->a:Lcom/nd/commplatform/widget/goods/NdGoodsListItem;

    invoke-virtual {v0}, Lcom/nd/commplatform/widget/goods/NdGoodsListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->md:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ev;->a:Lcom/nd/commplatform/widget/goods/NdGoodsListItem;

    iget-object v1, v1, Lcom/nd/commplatform/widget/goods/NdGoodsListItem;->b:Landroid/widget/TextView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/text/DecimalFormat;

    const-string v5, "0.00"

    invoke-direct {v4, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/nd/commplatform/d/c/ev;->b:Lcom/nd/commplatform/entry/NdProductInfo;

    invoke-virtual {v5}, Lcom/nd/commplatform/entry/NdProductInfo;->getSalePrice()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ev;->a:Lcom/nd/commplatform/widget/goods/NdGoodsListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/goods/NdGoodsListItem;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ev;->b:Lcom/nd/commplatform/entry/NdProductInfo;

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdProductInfo;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ev;->a:Lcom/nd/commplatform/widget/goods/NdGoodsListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/goods/NdGoodsListItem;->c:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ev;->a:Lcom/nd/commplatform/widget/goods/NdGoodsListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/goods/NdGoodsListItem;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ev;->b:Lcom/nd/commplatform/entry/NdProductInfo;

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdProductInfo;->getProductName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/ev;->b()V

    :goto_1
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "0.00"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nd/commplatform/d/c/ev;->b:Lcom/nd/commplatform/entry/NdProductInfo;

    invoke-virtual {v2}, Lcom/nd/commplatform/entry/NdProductInfo;->getSalePrice()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ev;->i:Lcom/nd/commplatform/entry/NdVirtualCurrency;

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdVirtualCurrency;->getUnit()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ev;->i:Lcom/nd/commplatform/entry/NdVirtualCurrency;

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdVirtualCurrency;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ev;->a:Lcom/nd/commplatform/widget/goods/NdGoodsListItem;

    iget-object v1, v1, Lcom/nd/commplatform/widget/goods/NdGoodsListItem;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ev;->a:Lcom/nd/commplatform/widget/goods/NdGoodsListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/goods/NdGoodsListItem;->d:Landroid/widget/ImageView;

    sget v1, Lcom/nd/commplatform/d/c/jo$d;->ch:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ev;->a:Lcom/nd/commplatform/widget/goods/NdGoodsListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/goods/NdGoodsListItem;->e:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ev;->a:Lcom/nd/commplatform/widget/goods/NdGoodsListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/goods/NdGoodsListItem;->a:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ev;->a:Lcom/nd/commplatform/widget/goods/NdGoodsListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/goods/NdGoodsListItem;->b:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ev;->a:Lcom/nd/commplatform/widget/goods/NdGoodsListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/goods/NdGoodsListItem;->c:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
