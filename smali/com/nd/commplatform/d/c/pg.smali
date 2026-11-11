.class public Lcom/nd/commplatform/d/c/pg;
.super Lcom/nd/commplatform/widget/NdFrameInnerContent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nd/commplatform/d/c/pg$a;
    }
.end annotation


# static fields
.field private static final a:I = 0x1

.field private static final b:I = 0x2


# instance fields
.field private c:Lcom/nd/commplatform/entry/NdBuyInfo;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/widget/TextView;I)V
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    move v2, v0

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_2

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    if-lt v5, v6, :cond_0

    const/16 v6, 0x39

    if-le v5, v6, :cond_1

    :cond_0
    const/16 v6, 0x2e

    if-ne v5, v6, :cond_2

    :cond_1
    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-gtz v2, :cond_3

    :goto_1
    return-void

    :cond_3
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/pg;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v4, 0x21

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/pg;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/pg;->m()V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/pg;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/nd/commplatform/d/c/pg;->q:Z

    return p1
.end method

.method private b()V
    .locals 4

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/pg;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$f;->aP:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->fo:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->gz:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->fm:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    check-cast v0, Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/pg;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->kD:I

    new-instance v3, Lcom/nd/commplatform/d/c/pg$1;

    invoke-direct {v3, p0, v0}, Lcom/nd/commplatform/d/c/pg$1;-><init>(Lcom/nd/commplatform/d/c/pg;Landroid/widget/EditText;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget v0, Lcom/nd/commplatform/d/c/jo$h;->bG:I

    new-instance v1, Lcom/nd/commplatform/d/c/pg$2;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/pg$2;-><init>(Lcom/nd/commplatform/d/c/pg;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/pg;)V
    .locals 0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/pg;->i()V

    return-void
.end method

.method static synthetic c(Lcom/nd/commplatform/d/c/pg;)Lcom/nd/commplatform/entry/NdBuyInfo;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pg;->c:Lcom/nd/commplatform/entry/NdBuyInfo;

    return-object v0
.end method

.method private c()V
    .locals 4

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/pg;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$f;->aP:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->fm:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    check-cast v0, Landroid/widget/EditText;

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/pg;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->kD:I

    new-instance v3, Lcom/nd/commplatform/d/c/pg$3;

    invoke-direct {v3, p0, v0}, Lcom/nd/commplatform/d/c/pg$3;-><init>(Lcom/nd/commplatform/d/c/pg;Landroid/widget/EditText;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget v0, Lcom/nd/commplatform/d/c/jo$h;->bG:I

    new-instance v1, Lcom/nd/commplatform/d/c/pg$4;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/pg$4;-><init>(Lcom/nd/commplatform/d/c/pg;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic d(Lcom/nd/commplatform/d/c/pg;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/pg;->b()V

    return-void
.end method

.method static synthetic e(Lcom/nd/commplatform/d/c/pg;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/pg;->c()V

    return-void
.end method

.method private m()V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pg;->c:Lcom/nd/commplatform/entry/NdBuyInfo;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v3}, Lcom/nd/commplatform/d/c/pg;->f(I)Lcom/nd/commplatform/NdCallbackListener;

    move-result-object v0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/nd/commplatform/d/c/pg;->q:Z

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/pg;->i()V

    new-instance v0, Lcom/nd/commplatform/d/c/pg$5;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/pg$5;-><init>(Lcom/nd/commplatform/d/c/pg;)V

    invoke-virtual {p0, v1}, Lcom/nd/commplatform/d/c/pg;->b(Z)V

    invoke-virtual {p0, v3, v0, v2}, Lcom/nd/commplatform/d/c/pg;->a(ILcom/nd/commplatform/NdCallbackListener;Z)Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {p0, v2}, Lcom/nd/commplatform/d/c/pg;->b(Z)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/pg;->c:Lcom/nd/commplatform/entry/NdBuyInfo;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/pg;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/nd/commplatform/d/c/a;->a(Lcom/nd/commplatform/entry/NdBuyInfo;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    goto :goto_0
.end method

.method private n()V
    .locals 9

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pg;->c:Lcom/nd/commplatform/entry/NdBuyInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pg;->c:Lcom/nd/commplatform/entry/NdBuyInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdBuyInfo;->getProductName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/pg;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pg;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/pg;->c:Lcom/nd/commplatform/entry/NdBuyInfo;

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdBuyInfo;->getProductName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pg;->g:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/pg;->c:Lcom/nd/commplatform/entry/NdBuyInfo;

    invoke-virtual {v2}, Lcom/nd/commplatform/entry/NdBuyInfo;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/pg;->c:Lcom/nd/commplatform/entry/NdBuyInfo;

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdBuyInfo;->getProductPrice()D

    move-result-wide v1

    iget-object v3, p0, Lcom/nd/commplatform/d/c/pg;->c:Lcom/nd/commplatform/entry/NdBuyInfo;

    invoke-virtual {v3}, Lcom/nd/commplatform/entry/NdBuyInfo;->getCount()I

    move-result v3

    invoke-static {}, Lcom/nd/commplatform/d/c/of;->a()Lcom/nd/commplatform/d/c/of;

    move-result-object v4

    int-to-double v5, v3

    mul-double/2addr v5, v1

    invoke-virtual {v0, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    iget-object v5, p0, Lcom/nd/commplatform/d/c/pg;->h:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    int-to-double v7, v3

    mul-double/2addr v1, v7

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/pg;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/nd/commplatform/d/c/of;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/pg;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/nd/commplatform/d/c/of;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pg;->h:Landroid/widget/TextView;

    sget v1, Lcom/nd/commplatform/d/c/jo$b;->c:I

    invoke-direct {p0, v0, v1}, Lcom/nd/commplatform/d/c/pg;->a(Landroid/widget/TextView;I)V

    goto/16 :goto_0
.end method

.method private o()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-static {}, Lcom/nd/commplatform/d/c/of;->a()Lcom/nd/commplatform/d/c/of;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/of;->e()Lcom/nd/commplatform/entry/NdVirtualCurrencyBalance;

    move-result-object v0

    invoke-static {}, Lcom/nd/commplatform/d/c/of;->a()Lcom/nd/commplatform/d/c/of;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/of;->e()Lcom/nd/commplatform/entry/NdVirtualCurrencyBalance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdVirtualCurrencyBalance;->getCurrency()Lcom/nd/commplatform/entry/NdVirtualCurrency;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdVirtualCurrency;->getType()Lcom/nd/commplatform/entry/NdVirtualCurrency$NdVirtualCurrencyType;

    move-result-object v2

    sget-object v3, Lcom/nd/commplatform/entry/NdVirtualCurrency$NdVirtualCurrencyType;->CUSTOM:Lcom/nd/commplatform/entry/NdVirtualCurrency$NdVirtualCurrencyType;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/nd/commplatform/d/c/pg;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/pg;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/nd/commplatform/d/c/jo$h;->gZ:I

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdVirtualCurrencyBalance;->getBalance()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdVirtualCurrency;->getUnit()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v9

    const/4 v0, 0x2

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdVirtualCurrency;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/pg;->d:Landroid/widget/TextView;

    sget v1, Lcom/nd/commplatform/d/c/jo$b;->D:I

    invoke-direct {p0, v0, v1}, Lcom/nd/commplatform/d/c/pg;->a(Landroid/widget/TextView;I)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/nd/commplatform/d/c/pg;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/pg;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/nd/commplatform/d/c/jo$h;->gX:I

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdVirtualCurrencyBalance;->getBalance()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->aS:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/pg;->p:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/pg;->q:Z

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/pg;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->gU:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/pg;->r:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/nd/commplatform/d/c/pg;->s:Z

    iput-boolean v3, p0, Lcom/nd/commplatform/d/c/pg;->v:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/pg;->w:Z

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 3

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->fs:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/pg;->d:Landroid/widget/TextView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->fv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/pg;->e:Landroid/view/View;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->fw:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/pg;->f:Landroid/widget/TextView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->fr:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/pg;->g:Landroid/widget/TextView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->fu:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/pg;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pg;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->bM:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/pg;->i:Landroid/widget/TextView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->bJ:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/pg;->j:Landroid/widget/Button;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pg;->j:Landroid/widget/Button;

    new-instance v1, Lcom/nd/commplatform/d/c/pg$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/nd/commplatform/d/c/pg$a;-><init>(Lcom/nd/commplatform/d/c/pg;Lcom/nd/commplatform/d/c/pg$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected a(ZI)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/nd/commplatform/d/c/bz;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/nd/commplatform/d/c/bz;->a()Lcom/nd/commplatform/entry/NdBuyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/pg;->c:Lcom/nd/commplatform/entry/NdBuyInfo;

    :goto_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/pg;->i:Landroid/widget/TextView;

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/a;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/pg;->n()V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/pg;->o()V

    :cond_0
    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/nd/commplatform/d/c/cb;->a()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "productInfo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/entry/NdBuyInfo;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/pg;->c:Lcom/nd/commplatform/entry/NdBuyInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    iget-boolean v0, p0, Lcom/nd/commplatform/d/c/pg;->q:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
