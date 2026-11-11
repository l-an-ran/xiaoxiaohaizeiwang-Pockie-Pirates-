.class public Lcom/nd/commplatform/d/c/ik;
.super Lcom/nd/commplatform/widget/NdFrameInnerContent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nd/commplatform/d/c/ik$b;,
        Lcom/nd/commplatform/d/c/ik$a;
    }
.end annotation


# static fields
.field private static final H:I = 0x3

.field private static final I:I = 0x76c

.field public static final a:I = 0xc8

.field private static final i:I = 0x1

.field private static final j:I = 0x2

.field private static final k:I = 0x3

.field private static final l:I = 0x4

.field private static final m:I = 0x1

.field private static final n:I = 0x2


# instance fields
.field private J:Landroid/view/View;

.field private K:Landroid/widget/TextView;

.field private L:Landroid/widget/TextView;

.field private M:Landroid/net/Uri;

.field private N:Landroid/graphics/Bitmap;

.field private O:Lcom/nd/commplatform/entry/NdSex;

.field private P:Ljava/lang/String;

.field private Q:Ljava/lang/String;

.field private R:Ljava/lang/String;

.field private S:Ljava/lang/String;

.field private T:Ljava/lang/String;

.field protected b:Landroid/widget/ImageView;

.field protected c:Landroid/widget/EditText;

.field protected d:Landroid/widget/EditText;

.field protected e:Landroid/widget/TextView;

.field protected f:Landroid/widget/TextView;

.field protected g:Landroid/widget/TextView;

.field protected h:Lcom/nd/commplatform/d/c/ik$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/nd/commplatform/entry/NdSex;->Male:Lcom/nd/commplatform/entry/NdSex;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ik;->O:Lcom/nd/commplatform/entry/NdSex;

    const-string v0, "1980"

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ik;->P:Ljava/lang/String;

    const-string v0, "1"

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ik;->Q:Ljava/lang/String;

    const-string v0, "1"

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ik;->R:Ljava/lang/String;

    const-string v0, "110000"

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ik;->S:Ljava/lang/String;

    const-string v0, "110000"

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ik;->T:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v2, v1, :cond_0

    :goto_0
    return-object p1

    :cond_0
    if-le v2, v1, :cond_1

    move v0, v1

    :goto_1
    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    neg-int v2, v2

    int-to-float v2, v2

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v3, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v1, 0x0

    invoke-virtual {v3, p1, v4, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object p1, v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/ik;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ik;->N:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/ik;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ik;->J:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/ik;Lcom/nd/commplatform/entry/NdSex;)Lcom/nd/commplatform/entry/NdSex;
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ik;->O:Lcom/nd/commplatform/entry/NdSex;

    return-object p1
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/ik;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ik;->P:Ljava/lang/String;

    return-object p1
.end method

.method private a(Lcom/nd/commplatform/entry/NdSex;)Ljava/lang/String;
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
    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ik;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x4

    const/16 v1, 0x454

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/nd/commplatform/d/c/cb;->a(Landroid/content/Context;IILcom/nd/commplatform/d/c/bx;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/ik;Lcom/nd/commplatform/entry/NdUserInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/ik;->a(Lcom/nd/commplatform/entry/NdUserInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/ik;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nd/commplatform/d/c/ik;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/nd/commplatform/entry/NdUserInfo;)V
    .locals 5

    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ik;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nd/commplatform/widget/AreaCsv;->a(Landroid/content/Context;)Lcom/nd/commplatform/widget/AreaCsv;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdUserInfo;->getSex()Lcom/nd/commplatform/entry/NdSex;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ik;->O:Lcom/nd/commplatform/entry/NdSex;

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdUserInfo;->getBornYear()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ik;->P:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdUserInfo;->getBornMonth()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ik;->Q:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdUserInfo;->getBornDay()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ik;->R:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdUserInfo;->getProvince()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ik;->S:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdUserInfo;->getCity()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ik;->T:Ljava/lang/String;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ik;->c:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdUserInfo;->getTrueName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ik;->d:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdUserInfo;->getNickName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ik;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/ik;->O:Lcom/nd/commplatform/entry/NdSex;

    invoke-direct {p0, v2}, Lcom/nd/commplatform/d/c/ik;->a(Lcom/nd/commplatform/entry/NdSex;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ik;->P:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ik;->Q:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ik;->R:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ik;->P:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ik;->Q:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ik;->R:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/nd/commplatform/d/c/ik;->f:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/nd/commplatform/d/c/ik;->P:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ik;->Q:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v4, :cond_1

    const-string v0, "0"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/nd/commplatform/d/c/ik;->Q:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ik;->R:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v4, :cond_2

    const-string v0, "0"

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/nd/commplatform/d/c/ik;->R:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ik;->g:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/nd/commplatform/d/c/ik;->S:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/nd/commplatform/widget/AreaCsv;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nd/commplatform/d/c/ik;->T:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/nd/commplatform/widget/AreaCsv;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    const-string v0, ""

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)V
    .locals 8

    const/4 v2, 0x2

    const/4 v1, 0x0

    const/4 v0, -0x1

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ik;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/nd/commplatform/d/c/jo$h;->ek:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ik;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/nd/commplatform/d/c/jo$h;->ej:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ik;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/nd/commplatform/d/c/jo$h;->el:I

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

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ik;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/nd/commplatform/d/c/ik$10;

    invoke-direct {v2, p0, v4}, Lcom/nd/commplatform/d/c/ik$10;-><init>(Lcom/nd/commplatform/d/c/ik;[Ljava/lang/String;)V

    invoke-virtual {v1, v4, v0, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->ef:I

    new-instance v2, Lcom/nd/commplatform/d/c/ik$11;

    invoke-direct {v2, p0}, Lcom/nd/commplatform/d/c/ik$11;-><init>(Lcom/nd/commplatform/d/c/ik;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/ik;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ik;->K:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/ik;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ik;->Q:Ljava/lang/String;

    return-object p1
.end method

.method private b()V
    .locals 2

    new-instance v0, Lcom/nd/commplatform/d/c/hy;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ik;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/hy;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ik;->h:Lcom/nd/commplatform/d/c/ik$b;

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/hy;->a(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/hy;->show()V

    return-void
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/ik;Lcom/nd/commplatform/entry/NdSex;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/ik;->b(Lcom/nd/commplatform/entry/NdSex;)V

    return-void
.end method

.method private b(Lcom/nd/commplatform/entry/NdSex;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/ik;->a(Lcom/nd/commplatform/entry/NdSex;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nd/commplatform/d/c/ik;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/ik;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ik;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nd/commplatform/widget/AreaCsv;->a(Landroid/content/Context;)Lcom/nd/commplatform/widget/AreaCsv;

    move-result-object v3

    const/4 v2, -0x1

    invoke-virtual {v3, p1}, Lcom/nd/commplatform/widget/AreaCsv;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_0

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v3, p1}, Lcom/nd/commplatform/widget/AreaCsv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ik;->S:Ljava/lang/String;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/nd/commplatform/widget/AreaCsv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ik;->T:Ljava/lang/String;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/ik;->g:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ik;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    new-instance v3, Lcom/nd/commplatform/d/c/ik$6;

    invoke-direct {v3, p0, p1, v4}, Lcom/nd/commplatform/d/c/ik$6;-><init>(Lcom/nd/commplatform/d/c/ik;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->ef:I

    new-instance v2, Lcom/nd/commplatform/d/c/ik$7;

    invoke-direct {v2, p0}, Lcom/nd/commplatform/d/c/ik$7;-><init>(Lcom/nd/commplatform/d/c/ik;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method static synthetic c(Lcom/nd/commplatform/d/c/ik;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ik;->L:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/nd/commplatform/d/c/ik;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ik;->R:Ljava/lang/String;

    return-object p1
.end method

.method private c()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ik;->N:Landroid/graphics/Bitmap;

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    new-instance v1, Lcom/nd/commplatform/d/c/ik$8;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/ik$8;-><init>(Lcom/nd/commplatform/d/c/ik;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/nd/commplatform/d/c/ik;->b(Z)V

    const/4 v2, 0x3

    invoke-virtual {p0, v2, v1, v4}, Lcom/nd/commplatform/d/c/ik;->a(ILcom/nd/commplatform/NdCallbackListener;Z)Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {p0, v4}, Lcom/nd/commplatform/d/c/ik;->b(Z)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ik;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v0, v3, v1}, Lcom/nd/commplatform/d/c/a;->a([BLandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 6

    const/16 v0, 0x76c

    const/4 v3, -0x1

    invoke-static {}, Lcom/nd/commplatform/d/c/oh;->d()I

    move-result v1

    if-ge v1, v0, :cond_1

    :goto_0
    add-int/lit16 v1, v0, -0x76c

    add-int/lit8 v4, v1, 0x1

    new-array v5, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    move v1, v3

    :goto_1
    if-ge v2, v4, :cond_2

    sub-int v3, v0, v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    aget-object v3, v5, v2

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ik;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->kC:I

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/nd/commplatform/d/c/ik$12;

    invoke-direct {v2, p0, v5}, Lcom/nd/commplatform/d/c/ik$12;-><init>(Lcom/nd/commplatform/d/c/ik;[Ljava/lang/String;)V

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->ef:I

    new-instance v2, Lcom/nd/commplatform/d/c/ik$13;

    invoke-direct {v2, p0}, Lcom/nd/commplatform/d/c/ik$13;-><init>(Lcom/nd/commplatform/d/c/ik;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic d(Lcom/nd/commplatform/d/c/ik;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ik;->P:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/nd/commplatform/d/c/ik;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ik;->S:Ljava/lang/String;

    return-object p1
.end method

.method private d(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ik;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nd/commplatform/widget/AreaCsv;->a(Landroid/content/Context;)Lcom/nd/commplatform/widget/AreaCsv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/widget/AreaCsv;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nd/commplatform/d/c/ik;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/nd/commplatform/d/c/ik;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ik;->Q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/nd/commplatform/d/c/ik;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ik;->T:Ljava/lang/String;

    return-object p1
.end method

.method private e(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ik;->getContext()Landroid/content/Context;

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
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ik;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    new-instance v4, Lcom/nd/commplatform/d/c/ik$4;

    invoke-direct {v4, p0, v3}, Lcom/nd/commplatform/d/c/ik$4;-><init>(Lcom/nd/commplatform/d/c/ik;Ljava/util/List;)V

    invoke-virtual {v1, v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->ef:I

    new-instance v2, Lcom/nd/commplatform/d/c/ik$5;

    invoke-direct {v2, p0}, Lcom/nd/commplatform/d/c/ik$5;-><init>(Lcom/nd/commplatform/d/c/ik;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic f(Lcom/nd/commplatform/d/c/ik;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ik;->R:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/nd/commplatform/d/c/ik;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/ik;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic g(Lcom/nd/commplatform/d/c/ik;)Lcom/nd/commplatform/entry/NdSex;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ik;->O:Lcom/nd/commplatform/entry/NdSex;

    return-object v0
.end method

.method static synthetic g(Lcom/nd/commplatform/d/c/ik;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/ik;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic h(Lcom/nd/commplatform/d/c/ik;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ik;->S:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/nd/commplatform/d/c/ik;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ik;->T:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/nd/commplatform/d/c/ik;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/ik;->b()V

    return-void
.end method

.method static synthetic k(Lcom/nd/commplatform/d/c/ik;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/ik;->m()V

    return-void
.end method

.method static synthetic l(Lcom/nd/commplatform/d/c/ik;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/ik;->n()V

    return-void
.end method

.method private m()V
    .locals 5

    const/16 v4, 0x78

    const/4 v3, 0x1

    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "image/*"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "crop"

    const-string v2, "true"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "noFaceDetection"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "scale"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "scaleUpIfNeeded"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "aspectX"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "aspectY"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "outputX"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "outputY"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "return-data"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ik;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    check-cast v0, Landroid/app/Activity;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private n()V
    .locals 5

    const/16 v4, 0x78

    const/4 v3, 0x1

    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/nd/commplatform/d/c/oh;->c()I

    move-result v0

    const/4 v2, 0x5

    if-gt v0, v2, :cond_0

    const-string v0, "crop"

    const-string v2, "true"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string v0, "noFaceDetection"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "scale"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "scaleUpIfNeeded"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "aspectX"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "aspectY"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "outputX"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "outputY"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "return-data"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ik;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private o()V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Lcom/nd/commplatform/d/c/ik$9;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/ik$9;-><init>(Lcom/nd/commplatform/d/c/ik;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/nd/commplatform/d/c/ik;->b(Z)V

    invoke-virtual {p0, v2, v0, v2}, Lcom/nd/commplatform/d/c/ik;->a(ILcom/nd/commplatform/NdCallbackListener;Z)Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {p0, v2}, Lcom/nd/commplatform/d/c/ik;->b(Z)V

    invoke-static {}, Lcom/nd/commplatform/d/c/of;->a()Lcom/nd/commplatform/d/c/of;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ik;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/nd/commplatform/d/c/of;->b(Lcom/nd/commplatform/NdCallbackListener;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->aA:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 3

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/ik;->p:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/ik;->q:Z

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ik;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->er:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ik;->r:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/ik;->s:Z

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ik;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->dR:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ik;->t:Ljava/lang/String;

    new-instance v0, Lcom/nd/commplatform/d/c/ik$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nd/commplatform/d/c/ik$a;-><init>(Lcom/nd/commplatform/d/c/ik;Lcom/nd/commplatform/d/c/ik$1;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ik;->u:Landroid/view/View$OnClickListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nd/commplatform/d/c/ik;->v:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/ik;->w:Z

    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 7

    const/4 v1, 0x0

    const/16 v4, 0x78

    const/4 v5, 0x0

    const/16 v2, 0xc8

    const/4 v3, 0x1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p3, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v3, "data"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    :goto_1
    iget-object v3, p0, Lcom/nd/commplatform/d/c/ik;->M:Landroid/net/Uri;

    if-eqz v3, :cond_3

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ik;->M:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_2
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/nd/commplatform/d/c/ik;->M:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_3
    move-object v3, v0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-gt v0, v2, :cond_4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-le v0, v2, :cond_8

    :cond_4
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-le v0, v4, :cond_7

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    mul-int/2addr v0, v2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/2addr v0, v4

    move v6, v2

    move v2, v0

    move v0, v6

    :goto_2
    invoke-static {v3, v2, v0, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/nd/commplatform/d/c/ik;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v0, v2, :cond_5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    :goto_3
    iget-object v2, p0, Lcom/nd/commplatform/d/c/ik;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/nd/commplatform/d/c/ik;->J:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ik;->K:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ik;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ik;->L:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ik;->N:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/ik;->c()V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    mul-int/2addr v0, v2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/2addr v0, v4

    goto :goto_2

    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.android.camera.action.CROP"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ik;->M:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v0, "aspectX"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "aspectY"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "outputX"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "outputY"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "noFaceDetection"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "scale"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "scaleUpIfNeeded"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "return-data"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ik;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_8
    move-object v0, v3

    goto :goto_3

    :cond_9
    move-object v0, v1

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected a(Landroid/view/View;)V
    .locals 2

    new-instance v0, Lcom/nd/commplatform/d/c/ik$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nd/commplatform/d/c/ik$b;-><init>(Lcom/nd/commplatform/d/c/ik;Lcom/nd/commplatform/d/c/ik$1;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ik;->h:Lcom/nd/commplatform/d/c/ik$b;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->eh:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ik;->J:Landroid/view/View;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ik;->J:Landroid/view/View;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ik;->h:Lcom/nd/commplatform/d/c/ik$b;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->ef:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ik;->K:Landroid/widget/TextView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->ee:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ik;->b:Landroid/widget/ImageView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->eg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ik;->L:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ik;->L:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->ee:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ik;->b:Landroid/widget/ImageView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->ei:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ik;->c:Landroid/widget/EditText;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->ed:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ik;->d:Landroid/widget/EditText;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->ej:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ik;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ik;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ik;->h:Lcom/nd/commplatform/d/c/ik$b;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->eb:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ik;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ik;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ik;->h:Lcom/nd/commplatform/d/c/ik$b;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->ea:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ik;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ik;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ik;->h:Lcom/nd/commplatform/d/c/ik$b;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Lcom/nd/commplatform/d/c/oh;->d()I

    move-result v2

    invoke-static {}, Lcom/nd/commplatform/d/c/oh;->e()I

    move-result v3

    const/4 v1, -0x1

    const/16 v0, 0xc

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v3, 0x1

    :cond_0
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v2, "00"

    invoke-direct {v3, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    new-array v4, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    add-int/lit8 v5, v2, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    aget-object v5, v4, v2

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v1, v2

    :cond_1
    add-int/lit8 v5, v2, 0x1

    int-to-long v5, v5

    invoke-virtual {v3, v5, v6}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    aget-object v5, v4, v2

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v1, v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ik;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->cZ:I

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/nd/commplatform/d/c/ik$14;

    invoke-direct {v2, p0, p1, v4}, Lcom/nd/commplatform/d/c/ik$14;-><init>(Lcom/nd/commplatform/d/c/ik;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->ef:I

    new-instance v2, Lcom/nd/commplatform/d/c/ik$15;

    invoke-direct {v2, p0}, Lcom/nd/commplatform/d/c/ik$15;-><init>(Lcom/nd/commplatform/d/c/ik;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v0, 0xc

    new-array v4, v0, [I

    fill-array-data v4, :array_0

    const/4 v3, -0x1

    const/16 v0, 0x1f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    rem-int/lit8 v0, v5, 0x64

    if-nez v0, :cond_4

    rem-int/lit16 v0, v5, 0x190

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    add-int/lit8 v7, v6, -0x1

    aget v4, v4, v7

    if-eqz v0, :cond_6

    const/4 v0, 0x2

    if-ne v0, v6, :cond_6

    :goto_1
    add-int v0, v4, v1

    invoke-static {}, Lcom/nd/commplatform/d/c/oh;->d()I

    move-result v1

    if-ne v5, v1, :cond_0

    invoke-static {}, Lcom/nd/commplatform/d/c/oh;->e()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ne v6, v1, :cond_0

    invoke-static {}, Lcom/nd/commplatform/d/c/oh;->f()I

    move-result v0

    :cond_0
    new-instance v4, Ljava/text/DecimalFormat;

    const-string v1, "00"

    invoke-direct {v4, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    new-array v5, v0, [Ljava/lang/String;

    move v1, v3

    :goto_2
    if-ge v2, v0, :cond_7

    add-int/lit8 v3, v2, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    aget-object v3, v5, v2

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    :cond_1
    add-int/lit8 v3, v2, 0x1

    int-to-long v6, v3

    invoke-virtual {v4, v6, v7}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    aget-object v3, v5, v2

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    rem-int/lit8 v0, v5, 0x4

    if-nez v0, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_1

    :cond_7
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ik;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->bY:I

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/nd/commplatform/d/c/ik$2;

    invoke-direct {v2, p0, p1, p2, v5}, Lcom/nd/commplatform/d/c/ik$2;-><init>(Lcom/nd/commplatform/d/c/ik;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->ef:I

    new-instance v2, Lcom/nd/commplatform/d/c/ik$3;

    invoke-direct {v2, p0}, Lcom/nd/commplatform/d/c/ik$3;-><init>(Lcom/nd/commplatform/d/c/ik;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :array_0
    .array-data 4
        0x1f
        0x1c
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
    .end array-data
.end method

.method protected a(ZI)V
    .locals 3

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/nd/commplatform/d/c/of;->a()Lcom/nd/commplatform/d/c/of;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/of;->d()Lcom/nd/commplatform/entry/NdUserInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/nd/commplatform/d/c/ik;->a(Lcom/nd/commplatform/entry/NdUserInfo;)V

    :goto_0
    invoke-direct {p0}, Lcom/nd/commplatform/d/c/ik;->o()V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lcom/nd/commplatform/d/c/ik$1;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/ik$1;-><init>(Lcom/nd/commplatform/d/c/ik;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/nd/commplatform/d/c/ik;->b(Z)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0, v2}, Lcom/nd/commplatform/d/c/ik;->a(ILcom/nd/commplatform/NdCallbackListener;Z)Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {p0, v2}, Lcom/nd/commplatform/d/c/ik;->b(Z)V

    invoke-static {}, Lcom/nd/commplatform/d/c/of;->a()Lcom/nd/commplatform/d/c/of;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ik;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/nd/commplatform/d/c/of;->a(Lcom/nd/commplatform/NdCallbackListener;Landroid/content/Context;)V

    goto :goto_0
.end method
