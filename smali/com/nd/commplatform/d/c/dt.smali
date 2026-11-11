.class public Lcom/nd/commplatform/d/c/dt;
.super Lcom/nd/commplatform/widget/NdFrameInnerContent;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nd/commplatform/d/c/dt$a;
    }
.end annotation


# static fields
.field private static final f:I = 0xc

.field private static final g:I = 0x50


# instance fields
.field protected a:Landroid/widget/TextView;

.field protected b:Landroid/widget/TextView;

.field protected c:Landroid/widget/TextView;

.field protected d:Lcom/nd/commplatform/d/c/dt$a;

.field private e:Lcom/nd/commplatform/entry/NdSex;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


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

.method static synthetic a(Lcom/nd/commplatform/d/c/dt;)Lcom/nd/commplatform/entry/NdSex;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dt;->e:Lcom/nd/commplatform/entry/NdSex;

    return-object v0
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/dt;Lcom/nd/commplatform/entry/NdSex;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/dt;->a(Lcom/nd/commplatform/entry/NdSex;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/dt;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/dt;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/dt;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nd/commplatform/d/c/dt;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/nd/commplatform/entry/NdSex;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/dt;->b(Lcom/nd/commplatform/entry/NdSex;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nd/commplatform/d/c/dt;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 8

    const/4 v2, 0x2

    const/4 v1, 0x0

    const/4 v0, -0x1

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/dt;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/nd/commplatform/d/c/jo$h;->ek:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/dt;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/nd/commplatform/d/c/jo$h;->ej:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/dt;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/nd/commplatform/d/c/jo$h;->fz:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v5, v4, v1

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-gez v0, :cond_2

    move v0, v2

    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/dt;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/nd/commplatform/d/c/dt$1;

    invoke-direct {v2, p0, v4}, Lcom/nd/commplatform/d/c/dt$1;-><init>(Lcom/nd/commplatform/d/c/dt;[Ljava/lang/String;)V

    invoke-virtual {v1, v4, v0, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->ef:I

    new-instance v2, Lcom/nd/commplatform/d/c/dt$3;

    invoke-direct {v2, p0}, Lcom/nd/commplatform/d/c/dt$3;-><init>(Lcom/nd/commplatform/d/c/dt;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/dt;Lcom/nd/commplatform/entry/NdSex;)Lcom/nd/commplatform/entry/NdSex;
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/dt;->e:Lcom/nd/commplatform/entry/NdSex;

    return-object p1
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/dt;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dt;->h:Ljava/lang/String;

    return-object v0
.end method

.method private b(Lcom/nd/commplatform/entry/NdSex;)Ljava/lang/String;
    .locals 2

    const/4 v0, -0x1

    sget-object v1, Lcom/nd/commplatform/entry/NdSex;->Male:Lcom/nd/commplatform/entry/NdSex;

    if-ne p1, v1, :cond_1

    sget v0, Lcom/nd/commplatform/d/c/jo$h;->ek:I

    :cond_0
    :goto_0
    if-gez v0, :cond_2

    const-string v0, ""

    :goto_1
    return-object v0

    :cond_1
    sget-object v1, Lcom/nd/commplatform/entry/NdSex;->Female:Lcom/nd/commplatform/entry/NdSex;

    if-ne p1, v1, :cond_0

    sget v0, Lcom/nd/commplatform/d/c/jo$h;->ej:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/dt;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static b()V
    .locals 2

    const/16 v0, 0xbbd

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    return-void
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/dt;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/dt;->d(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/dt;->c(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-super {p0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->fz:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_1
    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/dt;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nd/commplatform/widget/AreaCsv;->a(Landroid/content/Context;)Lcom/nd/commplatform/widget/AreaCsv;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/widget/AreaCsv;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dt;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_2
    invoke-super {p0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->fz:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v2, v1

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/dt;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    new-instance v4, Lcom/nd/commplatform/d/c/dt$10;

    invoke-direct {v4, p0, v3, p1}, Lcom/nd/commplatform/d/c/dt$10;-><init>(Lcom/nd/commplatform/d/c/dt;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->ef:I

    new-instance v2, Lcom/nd/commplatform/d/c/dt$2;

    invoke-direct {v2, p0}, Lcom/nd/commplatform/d/c/dt$2;-><init>(Lcom/nd/commplatform/d/c/dt;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method static synthetic c(Lcom/nd/commplatform/d/c/dt;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dt;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/nd/commplatform/d/c/dt;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/dt;->h:Ljava/lang/String;

    return-object p1
.end method

.method private c(Ljava/lang/String;)V
    .locals 7

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-super {p0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->fz:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    const/4 v0, -0x1

    const/16 v2, 0xc

    const/16 v3, 0x46

    new-array v4, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_4

    const/16 v5, 0x45

    if-ne v1, v5, :cond_3

    invoke-super {p0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/nd/commplatform/d/c/jo$h;->fz:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    :goto_1
    aget-object v5, v4, v1

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v0, v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    add-int v5, v2, v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    goto :goto_1

    :cond_4
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/dt;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/nd/commplatform/d/c/dt$4;

    invoke-direct {v2, p0, v4}, Lcom/nd/commplatform/d/c/dt$4;-><init>(Lcom/nd/commplatform/d/c/dt;[Ljava/lang/String;)V

    invoke-virtual {v1, v4, v0, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->ef:I

    new-instance v2, Lcom/nd/commplatform/d/c/dt$5;

    invoke-direct {v2, p0}, Lcom/nd/commplatform/d/c/dt$5;-><init>(Lcom/nd/commplatform/d/c/dt;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic d(Lcom/nd/commplatform/d/c/dt;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dt;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/nd/commplatform/d/c/dt;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/dt;->i:Ljava/lang/String;

    return-object p1
.end method

.method private d(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/dt;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nd/commplatform/widget/AreaCsv;->a(Landroid/content/Context;)Lcom/nd/commplatform/widget/AreaCsv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/widget/AreaCsv;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nd/commplatform/d/c/dt;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e(Lcom/nd/commplatform/d/c/dt;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/dt;->j:Ljava/lang/String;

    return-object p1
.end method

.method private e(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/dt;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nd/commplatform/widget/AreaCsv;->a(Landroid/content/Context;)Lcom/nd/commplatform/widget/AreaCsv;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Lcom/nd/commplatform/widget/AreaCsv;->a()Ljava/util/List;

    move-result-object v3

    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v2, v1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-super {p0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->fz:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/dt;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    new-instance v4, Lcom/nd/commplatform/d/c/dt$8;

    invoke-direct {v4, p0, v3}, Lcom/nd/commplatform/d/c/dt$8;-><init>(Lcom/nd/commplatform/d/c/dt;Ljava/util/List;)V

    invoke-virtual {v1, v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->ef:I

    new-instance v2, Lcom/nd/commplatform/d/c/dt$9;

    invoke-direct {v2, p0}, Lcom/nd/commplatform/d/c/dt$9;-><init>(Lcom/nd/commplatform/d/c/dt;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic f(Lcom/nd/commplatform/d/c/dt;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/dt;->k:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->aX:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/dt;->p:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/dt;->q:Z

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->aT:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nd/commplatform/d/c/dt;->r:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/dt;->s:Z

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->bT:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dt;->t:Ljava/lang/String;

    iput-object p0, p0, Lcom/nd/commplatform/d/c/dt;->u:Landroid/view/View$OnClickListener;

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/dt;->v:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nd/commplatform/d/c/dt;->w:Z

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 2

    new-instance v0, Lcom/nd/commplatform/d/c/dt$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nd/commplatform/d/c/dt$a;-><init>(Lcom/nd/commplatform/d/c/dt;Lcom/nd/commplatform/d/c/dt$1;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dt;->d:Lcom/nd/commplatform/d/c/dt$a;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->ej:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dt;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dt;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/dt;->d:Lcom/nd/commplatform/d/c/dt$a;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->eb:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dt;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dt;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/dt;->d:Lcom/nd/commplatform/d/c/dt$a;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->ea:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dt;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dt;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/dt;->d:Lcom/nd/commplatform/d/c/dt$a;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-super {p0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->fz:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_1
    if-nez p1, :cond_2

    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v0, -0x1

    rsub-int/lit8 v1, v2, 0x50

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v1, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_5

    add-int/lit8 v5, v3, -0x1

    if-ne v1, v5, :cond_4

    invoke-super {p0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/nd/commplatform/d/c/jo$h;->fz:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    :goto_1
    aget-object v5, v4, v1

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v0, v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    add-int v5, v2, v1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    goto :goto_1

    :cond_5
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/dt;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/nd/commplatform/d/c/dt$6;

    invoke-direct {v2, p0, v4}, Lcom/nd/commplatform/d/c/dt$6;-><init>(Lcom/nd/commplatform/d/c/dt;[Ljava/lang/String;)V

    invoke-virtual {v1, v4, v0, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->ef:I

    new-instance v2, Lcom/nd/commplatform/d/c/dt$7;

    invoke-direct {v2, p0}, Lcom/nd/commplatform/d/c/dt$7;-><init>(Lcom/nd/commplatform/d/c/dt;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method protected a(ZI)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x1

    new-instance v2, Lcom/nd/commplatform/entry/NdAdvanceSearch;

    invoke-direct {v2}, Lcom/nd/commplatform/entry/NdAdvanceSearch;-><init>()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dt;->h:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dt;->h:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dt;->h:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    iget-object v3, p0, Lcom/nd/commplatform/d/c/dt;->i:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/nd/commplatform/d/c/dt;->i:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/dt;->i:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :cond_0
    invoke-virtual {v2, v0}, Lcom/nd/commplatform/entry/NdAdvanceSearch;->setAgeBegin(I)V

    invoke-virtual {v2, v1}, Lcom/nd/commplatform/entry/NdAdvanceSearch;->setAgeEnd(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dt;->e:Lcom/nd/commplatform/entry/NdSex;

    invoke-virtual {v2, v0}, Lcom/nd/commplatform/entry/NdAdvanceSearch;->setSex(Lcom/nd/commplatform/entry/NdSex;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dt;->j:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/nd/commplatform/entry/NdAdvanceSearch;->setProvince(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dt;->k:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/nd/commplatform/entry/NdAdvanceSearch;->setCity(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/nd/commplatform/d/c/du;->a(Lcom/nd/commplatform/entry/NdAdvanceSearch;)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method
