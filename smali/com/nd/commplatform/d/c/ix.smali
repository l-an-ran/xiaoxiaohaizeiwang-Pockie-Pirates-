.class public Lcom/nd/commplatform/d/c/ix;
.super Lcom/nd/commplatform/widget/NdFrameInnerContent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nd/commplatform/d/c/ix$a;
    }
.end annotation


# static fields
.field private static final a:I = 0x1

.field private static final b:I = 0x2


# instance fields
.field private c:Lcom/nd/commplatform/entry/NdBuyInfo;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/Button;


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

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ix;->getContext()Landroid/content/Context;

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

.method static synthetic a(Lcom/nd/commplatform/d/c/ix;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/ix;->m()V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/ix;Landroid/widget/TextView;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nd/commplatform/d/c/ix;->a(Landroid/widget/TextView;I)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/ix;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/nd/commplatform/d/c/ix;->q:Z

    return p1
.end method

.method private b()V
    .locals 4

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ix;->getContext()Landroid/content/Context;

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

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ix;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->kD:I

    new-instance v3, Lcom/nd/commplatform/d/c/ix$1;

    invoke-direct {v3, p0, v0}, Lcom/nd/commplatform/d/c/ix$1;-><init>(Lcom/nd/commplatform/d/c/ix;Landroid/widget/EditText;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget v0, Lcom/nd/commplatform/d/c/jo$h;->bG:I

    new-instance v1, Lcom/nd/commplatform/d/c/ix$2;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/ix$2;-><init>(Lcom/nd/commplatform/d/c/ix;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/ix;)V
    .locals 0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ix;->i()V

    return-void
.end method

.method static synthetic c(Lcom/nd/commplatform/d/c/ix;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ix;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method private c()V
    .locals 4

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ix;->getContext()Landroid/content/Context;

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

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ix;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->kD:I

    new-instance v3, Lcom/nd/commplatform/d/c/ix$3;

    invoke-direct {v3, p0, v0}, Lcom/nd/commplatform/d/c/ix$3;-><init>(Lcom/nd/commplatform/d/c/ix;Landroid/widget/EditText;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget v0, Lcom/nd/commplatform/d/c/jo$h;->bG:I

    new-instance v1, Lcom/nd/commplatform/d/c/ix$4;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/ix$4;-><init>(Lcom/nd/commplatform/d/c/ix;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic d(Lcom/nd/commplatform/d/c/ix;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/ix;->b()V

    return-void
.end method

.method static synthetic e(Lcom/nd/commplatform/d/c/ix;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/ix;->c()V

    return-void
.end method

.method private m()V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ix;->c:Lcom/nd/commplatform/entry/NdBuyInfo;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v3}, Lcom/nd/commplatform/d/c/ix;->f(I)Lcom/nd/commplatform/NdCallbackListener;

    move-result-object v0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/nd/commplatform/d/c/ix;->q:Z

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ix;->i()V

    new-instance v0, Lcom/nd/commplatform/d/c/ix$5;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/ix$5;-><init>(Lcom/nd/commplatform/d/c/ix;)V

    invoke-virtual {p0, v1}, Lcom/nd/commplatform/d/c/ix;->b(Z)V

    invoke-virtual {p0, v3, v0, v2}, Lcom/nd/commplatform/d/c/ix;->a(ILcom/nd/commplatform/NdCallbackListener;Z)Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {p0, v2}, Lcom/nd/commplatform/d/c/ix;->b(Z)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/ix;->c:Lcom/nd/commplatform/entry/NdBuyInfo;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ix;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/nd/commplatform/d/c/a;->a(Lcom/nd/commplatform/entry/NdBuyInfo;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    goto :goto_0
.end method

.method private n()V
    .locals 11

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ix;->c:Lcom/nd/commplatform/entry/NdBuyInfo;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ix;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ix;->c:Lcom/nd/commplatform/entry/NdBuyInfo;

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdBuyInfo;->getProductName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ix;->f:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/ix;->c:Lcom/nd/commplatform/entry/NdBuyInfo;

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

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ix;->c:Lcom/nd/commplatform/entry/NdBuyInfo;

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdBuyInfo;->getProductPrice()D

    move-result-wide v1

    iget-object v3, p0, Lcom/nd/commplatform/d/c/ix;->c:Lcom/nd/commplatform/entry/NdBuyInfo;

    invoke-virtual {v3}, Lcom/nd/commplatform/entry/NdBuyInfo;->getCount()I

    move-result v3

    iget-object v4, p0, Lcom/nd/commplatform/d/c/ix;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ix;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/nd/commplatform/d/c/jo$h;->ha:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    int-to-double v9, v3

    mul-double/2addr v1, v9

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ix;->g:Landroid/widget/TextView;

    sget v1, Lcom/nd/commplatform/d/c/jo$b;->c:I

    invoke-direct {p0, v0, v1}, Lcom/nd/commplatform/d/c/ix;->a(Landroid/widget/TextView;I)V

    goto :goto_0
.end method

.method private o()V
    .locals 3

    new-instance v0, Lcom/nd/commplatform/d/c/ix$6;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/ix$6;-><init>(Lcom/nd/commplatform/d/c/ix;)V

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ix;->a(Lcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/nd/commplatform/d/c/ix;->b(Z)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ix;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/nd/commplatform/d/c/a;->i(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
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

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/ix;->p:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/ix;->q:Z

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ix;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->gU:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ix;->r:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/nd/commplatform/d/c/ix;->s:Z

    iput-boolean v3, p0, Lcom/nd/commplatform/d/c/ix;->v:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/ix;->w:Z

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 3

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->fs:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ix;->d:Landroid/widget/TextView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->fw:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ix;->e:Landroid/widget/TextView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->fr:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ix;->f:Landroid/widget/TextView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->fu:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ix;->g:Landroid/widget/TextView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->bM:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ix;->h:Landroid/widget/TextView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->bJ:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ix;->i:Landroid/widget/Button;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ix;->i:Landroid/widget/Button;

    new-instance v1, Lcom/nd/commplatform/d/c/ix$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/nd/commplatform/d/c/ix$a;-><init>(Lcom/nd/commplatform/d/c/ix;Lcom/nd/commplatform/d/c/ix$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected a(ZI)V
    .locals 8

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/nd/commplatform/d/c/bz;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/nd/commplatform/d/c/bz;->a()Lcom/nd/commplatform/entry/NdBuyInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ix;->c:Lcom/nd/commplatform/entry/NdBuyInfo;

    :goto_0
    invoke-static {}, Lcom/nd/commplatform/d/c/of;->a()Lcom/nd/commplatform/d/c/of;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/of;->f()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ix;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ix;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/nd/commplatform/d/c/jo$h;->gX:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ix;->d:Landroid/widget/TextView;

    sget v1, Lcom/nd/commplatform/d/c/jo$b;->D:I

    invoke-direct {p0, v0, v1}, Lcom/nd/commplatform/d/c/ix;->a(Landroid/widget/TextView;I)V

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ix;->h:Landroid/widget/TextView;

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/a;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/ix;->o()V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/ix;->n()V

    :cond_1
    return-void

    :cond_2
    :try_start_0
    invoke-static {}, Lcom/nd/commplatform/d/c/cb;->a()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "productInfo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/entry/NdBuyInfo;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ix;->c:Lcom/nd/commplatform/entry/NdBuyInfo;
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
    iget-boolean v0, p0, Lcom/nd/commplatform/d/c/ix;->q:Z

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
