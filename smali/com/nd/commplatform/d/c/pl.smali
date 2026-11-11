.class public Lcom/nd/commplatform/d/c/pl;
.super Lcom/nd/commplatform/d/c/u;


# instance fields
.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/nd/commplatform/d/c/pz;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Lcom/nd/commplatform/d/c/fr;

.field private g:Lcom/nd/commplatform/d/c/qe;

.field private final h:S

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/u;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/pl;->d:Ljava/util/HashMap;

    const/16 v0, 0x262

    iput-short v0, p0, Lcom/nd/commplatform/d/c/pl;->h:S

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/pl;)I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/d/c/pl;->e:I

    return v0
.end method

.method private a()V
    .locals 2

    new-instance v0, Lcom/nd/commplatform/d/c/qe;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/qe;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/pl;->g:Lcom/nd/commplatform/d/c/qe;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pl;->g:Lcom/nd/commplatform/d/c/qe;

    new-instance v1, Lcom/nd/commplatform/d/c/pl$1;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/pl$1;-><init>(Lcom/nd/commplatform/d/c/pl;)V

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/qe;->a(Lcom/nd/commplatform/d/c/qe$d;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pl;->g:Lcom/nd/commplatform/d/c/qe;

    new-instance v1, Lcom/nd/commplatform/d/c/pl$2;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/pl$2;-><init>(Lcom/nd/commplatform/d/c/pl;)V

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/qe;->a(Lcom/nd/commplatform/d/c/qe$a;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pl;->g:Lcom/nd/commplatform/d/c/qe;

    new-instance v1, Lcom/nd/commplatform/d/c/pl$3;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/pl$3;-><init>(Lcom/nd/commplatform/d/c/pl;)V

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/qe;->a(Lcom/nd/commplatform/d/c/qe$e;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/pl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/pl;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/pl;Lcom/nd/commplatform/d/c/fr;ILjava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/nd/commplatform/d/c/pl;->a(Lcom/nd/commplatform/d/c/fr;ILjava/lang/Object;)V

    return-void
.end method

.method private a(Lcom/nd/commplatform/entry/NdFeeInfo;Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "Money"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/nd/commplatform/entry/NdVirtualCurrency$NdVirtualCurrencyType;->BEAN91:Lcom/nd/commplatform/entry/NdVirtualCurrency$NdVirtualCurrencyType;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    sget-object v0, Lcom/nd/commplatform/entry/NdVirtualCurrency$NdVirtualCurrencyType;->BEAN91:Lcom/nd/commplatform/entry/NdVirtualCurrency$NdVirtualCurrencyType;

    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Lcom/nd/commplatform/entry/NdFeeInfo;->setVirtualCurrencyType(Lcom/nd/commplatform/entry/NdVirtualCurrency$NdVirtualCurrencyType;)V

    const-string v0, "Limited"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0}, Lcom/nd/commplatform/entry/NdFeeInfo;->setUsableOnlyOnPurchasedDevice(Z)V

    return-void

    :cond_2
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/nd/commplatform/entry/NdVirtualCurrency$NdVirtualCurrencyType;->CUSTOM:Lcom/nd/commplatform/entry/NdVirtualCurrency$NdVirtualCurrencyType;

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/pl;)Lcom/nd/commplatform/d/c/fr;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pl;->f:Lcom/nd/commplatform/d/c/fr;

    return-object v0
.end method

.method private b()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/nd/commplatform/d/c/qa;->a()Lcom/nd/commplatform/d/c/qa;

    move-result-object v0

    iget v1, p0, Lcom/nd/commplatform/d/c/pl;->e:I

    iget-object v2, p0, Lcom/nd/commplatform/d/c/pl;->g:Lcom/nd/commplatform/d/c/qe;

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/qa;->a(ILcom/nd/commplatform/d/c/qe;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pl;->d:Ljava/util/HashMap;

    iget v1, p0, Lcom/nd/commplatform/d/c/pl;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private b(I)V
    .locals 5

    const/4 v3, -0x3

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pl;->d:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/pz;

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/pl;->b()V

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/pz;->b()[B

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/pz;->b()[B

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/pl;->f:Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {p0, v0, v3, v4}, Lcom/nd/commplatform/d/c/pl;->a(Lcom/nd/commplatform/d/c/fr;ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/pz;->b()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/nd/commplatform/d/c/fr;-><init>([B)V

    iput-object v1, p0, Lcom/nd/commplatform/d/c/pl;->f:Lcom/nd/commplatform/d/c/fr;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pl;->f:Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/fr;->j()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pl;->c:Ljava/lang/String;

    const-string v1, "Invalid data!"

    iget-object v2, p0, Lcom/nd/commplatform/d/c/pl;->a:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/nd/commplatform/d/c/nv;->c(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pl;->f:Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {p0, v0, v3, v4}, Lcom/nd/commplatform/d/c/pl;->a(Lcom/nd/commplatform/d/c/fr;ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nd/commplatform/d/c/pl;->f:Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/fr;->g()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v1, p0, Lcom/nd/commplatform/d/c/pl;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "this error code is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nd/commplatform/d/c/pl;->a:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/nd/commplatform/d/c/nv;->c(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/pl;->f:Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {p0, v1, v0, v4}, Lcom/nd/commplatform/d/c/pl;->a(Lcom/nd/commplatform/d/c/fr;ILjava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/nd/commplatform/d/c/pl;->c:Ljava/lang/String;

    const-string v2, "success request data!"

    iget-object v3, p0, Lcom/nd/commplatform/d/c/pl;->a:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/nd/commplatform/d/c/nv;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/nd/commplatform/d/c/pl;->c(I)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/nd/commplatform/d/c/pl;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "this error code is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nd/commplatform/d/c/pl;->a:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/nd/commplatform/d/c/nv;->c(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/nd/commplatform/d/c/bs;->p:Z

    sput-object v4, Lcom/nd/commplatform/d/c/bs;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/pl;->f:Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {p0, v1, v0, v4}, Lcom/nd/commplatform/d/c/pl;->a(Lcom/nd/commplatform/d/c/fr;ILjava/lang/Object;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private c()I
    .locals 7

    new-instance v3, Lcom/nd/commplatform/d/c/pz;

    invoke-direct {v3}, Lcom/nd/commplatform/d/c/pz;-><init>()V

    invoke-static {}, Lcom/nd/commplatform/d/c/qa;->a()Lcom/nd/commplatform/d/c/qa;

    move-result-object v0

    invoke-static {}, Lcom/nd/commplatform/d/c/ng;->a()Lcom/nd/commplatform/d/c/ng;

    const/16 v1, 0x262

    sget-object v2, Lcom/nd/commplatform/d/c/bp;->l:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/nd/commplatform/d/c/ng;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/pl;->d()[B

    move-result-object v2

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/nd/commplatform/d/c/pl;->g:Lcom/nd/commplatform/d/c/qe;

    iget-object v6, p0, Lcom/nd/commplatform/d/c/pl;->a:Landroid/content/Context;

    invoke-virtual/range {v0 .. v6}, Lcom/nd/commplatform/d/c/qa;->a(Ljava/lang/String;[BLcom/nd/commplatform/d/c/pz;Ljava/util/HashMap;Lcom/nd/commplatform/d/c/qe;Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/nd/commplatform/d/c/pl;->e:I

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pl;->d:Ljava/util/HashMap;

    iget v1, p0, Lcom/nd/commplatform/d/c/pl;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/nd/commplatform/d/c/pl;->e:I

    return v0
.end method

.method private c(I)V
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x0

    new-instance v3, Lcom/nd/commplatform/entry/NdProductInfo;

    invoke-direct {v3}, Lcom/nd/commplatform/entry/NdProductInfo;-><init>()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pl;->f:Lcom/nd/commplatform/d/c/fr;

    const-string v4, "ProductId"

    invoke-virtual {v0, v4}, Lcom/nd/commplatform/d/c/fr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/nd/commplatform/entry/NdProductInfo;->setProductId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pl;->f:Lcom/nd/commplatform/d/c/fr;

    const-string v4, "ProductName"

    invoke-virtual {v0, v4}, Lcom/nd/commplatform/d/c/fr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/nd/commplatform/entry/NdProductInfo;->setProductName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pl;->f:Lcom/nd/commplatform/d/c/fr;

    const-string v4, "CateId"

    invoke-virtual {v0, v4}, Lcom/nd/commplatform/d/c/fr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v0, v1

    :cond_0
    invoke-virtual {v3, v0}, Lcom/nd/commplatform/entry/NdProductInfo;->setCateId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pl;->f:Lcom/nd/commplatform/d/c/fr;

    const-string v4, "OriginPrice"

    invoke-virtual {v0, v4}, Lcom/nd/commplatform/d/c/fr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v6, "0.00"

    invoke-direct {v0, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/nd/commplatform/entry/NdProductInfo;->setOrignPrice(D)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pl;->f:Lcom/nd/commplatform/d/c/fr;

    const-string v4, "SalePrice"

    invoke-virtual {v0, v4}, Lcom/nd/commplatform/d/c/fr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v6, "0.00"

    invoke-direct {v0, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/nd/commplatform/entry/NdProductInfo;->setSalePrice(D)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pl;->f:Lcom/nd/commplatform/d/c/fr;

    const-string v4, "CheckSum"

    invoke-virtual {v0, v4}, Lcom/nd/commplatform/d/c/fr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    :goto_0
    invoke-virtual {v3, v1}, Lcom/nd/commplatform/entry/NdProductInfo;->setCheckSum(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pl;->f:Lcom/nd/commplatform/d/c/fr;

    const-string v1, "Unit"

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/fr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "null"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v3, v0}, Lcom/nd/commplatform/entry/NdProductInfo;->setUnit(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/pl;->f:Lcom/nd/commplatform/d/c/fr;

    const-string v1, "GoodsDesc"

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/fr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, "null"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v3, v0}, Lcom/nd/commplatform/entry/NdProductInfo;->setDesc(Ljava/lang/String;)V

    :goto_2
    new-instance v4, Lcom/nd/commplatform/entry/NdFeeInfo;

    invoke-direct {v4}, Lcom/nd/commplatform/entry/NdFeeInfo;-><init>()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pl;->f:Lcom/nd/commplatform/d/c/fr;

    const-string v1, "FeeType"

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/fr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v5, ""

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_3
    invoke-virtual {v4, v0}, Lcom/nd/commplatform/entry/NdFeeInfo;->setFeeType(I)V

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_3

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/pl;->f:Lcom/nd/commplatform/d/c/fr;

    const-string v5, "FeeInfo"

    invoke-virtual {v2, v5}, Lcom/nd/commplatform/d/c/fr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/nd/commplatform/entry/NdFeeInfoSubscribe;

    invoke-direct {v2}, Lcom/nd/commplatform/entry/NdFeeInfoSubscribe;-><init>()V

    const-string v5, "AuthCntPerGoods"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/nd/commplatform/entry/NdFeeInfoSubscribe;->setAuthCntPerGoods(I)V

    const-string v5, "TimeLong"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/nd/commplatform/entry/NdFeeInfoSubscribe;->setTimeLong(I)V

    invoke-virtual {v4, v2}, Lcom/nd/commplatform/entry/NdFeeInfo;->setFeeInfoSubscribe(Lcom/nd/commplatform/entry/NdFeeInfoSubscribe;)V

    invoke-direct {p0, v4, v1}, Lcom/nd/commplatform/d/c/pl;->a(Lcom/nd/commplatform/entry/NdFeeInfo;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_4
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_7

    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/pl;->f:Lcom/nd/commplatform/d/c/fr;

    const-string v2, "FeeInfo"

    invoke-virtual {v1, v2}, Lcom/nd/commplatform/d/c/fr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/nd/commplatform/entry/NdFeeInfoConsumer;

    invoke-direct {v1}, Lcom/nd/commplatform/entry/NdFeeInfoConsumer;-><init>()V

    const-string v2, "BuyLimitPerUser"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nd/commplatform/entry/NdFeeInfoConsumer;->setBuyLimitPerUser(I)V

    const-string v2, "LimitTimePeriod"

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_6

    const-string v5, "null"

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nd/commplatform/entry/NdFeeInfoConsumer;->setLimitTimePeriod([Ljava/lang/String;)V

    :goto_5
    const-string v2, "StockCount"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nd/commplatform/entry/NdFeeInfoConsumer;->setStockCount(I)V

    invoke-virtual {v4, v1}, Lcom/nd/commplatform/entry/NdFeeInfo;->setFeeInfoConsumer(Lcom/nd/commplatform/entry/NdFeeInfoConsumer;)V

    invoke-direct {p0, v4, v0}, Lcom/nd/commplatform/d/c/pl;->a(Lcom/nd/commplatform/entry/NdFeeInfo;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_6
    invoke-virtual {v3, v4}, Lcom/nd/commplatform/entry/NdProductInfo;->setFeeInfo(Lcom/nd/commplatform/entry/NdFeeInfo;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pl;->f:Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {p0, v0, p1, v3}, Lcom/nd/commplatform/d/c/pl;->a(Lcom/nd/commplatform/d/c/fr;ILjava/lang/Object;)V

    return-void

    :cond_4
    const-string v0, ""

    invoke-virtual {v3, v0}, Lcom/nd/commplatform/entry/NdProductInfo;->setUnit(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    const-string v0, ""

    invoke-virtual {v3, v0}, Lcom/nd/commplatform/entry/NdProductInfo;->setDesc(Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    :try_start_2
    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/nd/commplatform/entry/NdFeeInfoConsumer;->setLimitTimePeriod([Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_6

    :cond_7
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/pl;->f:Lcom/nd/commplatform/d/c/fr;

    const-string v2, "FeeInfo"

    invoke-virtual {v1, v2}, Lcom/nd/commplatform/d/c/fr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v4, v0}, Lcom/nd/commplatform/d/c/pl;->a(Lcom/nd/commplatform/entry/NdFeeInfo;Lorg/json/JSONObject;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_6

    :cond_8
    move v0, v2

    goto/16 :goto_3

    :cond_9
    move-object v1, v0

    goto/16 :goto_0
.end method

.method private d()[B
    .locals 4

    new-instance v0, Lcom/nd/commplatform/d/c/fq;

    const/4 v1, 0x0

    const/16 v2, 0x262

    iget-object v3, p0, Lcom/nd/commplatform/d/c/pl;->a:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v3}, Lcom/nd/commplatform/d/c/fq;-><init>(BSLandroid/content/Context;)V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/pl;->e()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/fq;->a(Ljava/util/HashMap;)[B

    move-result-object v0

    return-object v0
.end method

.method private e()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "TAG"

    const-string v1, "Set request parameters!"

    iget-object v2, p0, Lcom/nd/commplatform/d/c/pl;->a:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/nd/commplatform/d/c/nv;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ProductId"

    iget-object v2, p0, Lcom/nd/commplatform/d/c/pl;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdProductInfo;",
            ">;)I"
        }
    .end annotation

    iput-object p2, p0, Lcom/nd/commplatform/d/c/pl;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/nd/commplatform/d/c/pl;->b:Lcom/nd/commplatform/NdCallbackListener;

    iput-object p1, p0, Lcom/nd/commplatform/d/c/pl;->i:Ljava/lang/String;

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/pl;->a()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pl;->c:Ljava/lang/String;

    const-string v1, "begin request data!"

    invoke-static {v0, v1, p2}, Lcom/nd/commplatform/d/c/nv;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/pl;->c()I

    move-result v0

    return v0
.end method
