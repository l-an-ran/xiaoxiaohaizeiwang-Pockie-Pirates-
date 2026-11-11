.class public Lcom/nd/commplatform/d/c/iz;
.super Lcom/nd/commplatform/widget/NdFrameInnerContent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nd/commplatform/d/c/iz$1;,
        Lcom/nd/commplatform/d/c/iz$a;
    }
.end annotation


# static fields
.field private static final a:I = 0x1


# instance fields
.field private b:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/iz;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/iz;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/iz;Ljava/lang/String;)Lcom/nd/commplatform/entry/NdPayForAnotherRequest;
    .locals 1

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/iz;->a(Ljava/lang/String;)Lcom/nd/commplatform/entry/NdPayForAnotherRequest;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/nd/commplatform/entry/NdPayForAnotherRequest;
    .locals 12

    const/16 v0, 0x138a

    invoke-static {v0}, Lcom/nd/commplatform/d/c/cb;->b(I)Lcom/nd/commplatform/d/c/bx;

    move-result-object v1

    const-string v0, "productInfo"

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/entry/NdBuyInfo;

    move-object v10, v0

    check-cast v10, Lcom/nd/commplatform/entry/NdBuyInfo;

    const-string v0, "uin"

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    new-instance v0, Lcom/nd/commplatform/entry/NdPayForAnotherRequest;

    invoke-virtual {v10}, Lcom/nd/commplatform/entry/NdBuyInfo;->getProductId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Lcom/nd/commplatform/entry/NdBuyInfo;->getProductName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10}, Lcom/nd/commplatform/entry/NdBuyInfo;->getProductPrice()D

    move-result-wide v3

    invoke-virtual {v10}, Lcom/nd/commplatform/entry/NdBuyInfo;->getProductOrginalPrice()D

    move-result-wide v5

    invoke-virtual {v10}, Lcom/nd/commplatform/entry/NdBuyInfo;->getCount()I

    move-result v7

    invoke-virtual {v10}, Lcom/nd/commplatform/entry/NdBuyInfo;->getPayDescription()Ljava/lang/String;

    move-result-object v8

    move-object v9, p1

    invoke-direct/range {v0 .. v9}, Lcom/nd/commplatform/entry/NdPayForAnotherRequest;-><init>(Ljava/lang/String;Ljava/lang/String;DDILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/nd/commplatform/entry/NdBuyInfo;->getSerial()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v11}, Lcom/nd/commplatform/entry/NdPayForAnotherRequest;->addRequest(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->bp:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/iz;->p:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/iz;->q:Z

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/iz;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->gW:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/iz;->r:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/iz;->s:Z

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/iz;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->gj:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/iz;->t:Ljava/lang/String;

    new-instance v0, Lcom/nd/commplatform/d/c/iz$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nd/commplatform/d/c/iz$a;-><init>(Lcom/nd/commplatform/d/c/iz;Lcom/nd/commplatform/d/c/iz$1;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/iz;->u:Landroid/view/View$OnClickListener;

    iput-boolean v3, p0, Lcom/nd/commplatform/d/c/iz;->v:Z

    iput-boolean v3, p0, Lcom/nd/commplatform/d/c/iz;->w:Z

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->ho:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/iz;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/iz;->b:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/iz;->b:Landroid/widget/EditText;

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->gt:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/iz;->b:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMinLines(I)V

    return-void
.end method

.method protected a(ZI)V
    .locals 0

    return-void
.end method
