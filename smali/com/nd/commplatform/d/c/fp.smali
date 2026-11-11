.class public Lcom/nd/commplatform/d/c/fp;
.super Lcom/nd/commplatform/widget/NdFrameInnerContent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nd/commplatform/d/c/fp$a;
    }
.end annotation


# static fields
.field private static final l:I = 0x3

.field private static final m:I = 0x1


# instance fields
.field private H:Landroid/view/View;

.field private I:Landroid/widget/TextView;

.field private J:Landroid/widget/TextView;

.field private K:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/entry/NdThirdPartyPlatform;",
            ">;"
        }
    .end annotation
.end field

.field private L:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private M:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private N:I

.field private O:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private P:Landroid/widget/LinearLayout;

.field private Q:Landroid/widget/LinearLayout;

.field private R:Landroid/view/ViewGroup;

.field private S:Landroid/widget/LinearLayout;

.field private T:Landroid/view/ViewGroup;

.field private U:I

.field protected a:Lcom/nd/commplatform/d/c/fp$a;

.field protected b:Landroid/widget/ImageView;

.field private c:Landroid/widget/EditText;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:[B

.field private n:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fp;->M:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/nd/commplatform/d/c/fp;->N:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fp;->O:Ljava/util/List;

    const v0, 0xfa000

    iput v0, p0, Lcom/nd/commplatform/d/c/fp;->U:I

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/fp;I)I
    .locals 0

    iput p1, p0, Lcom/nd/commplatform/d/c/fp;->N:I

    return p1
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/fp;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/fp;->n:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/fp;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp;->H:Landroid/view/View;

    return-object v0
.end method

.method private a(Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;)Landroid/view/View;
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp;->K:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;->getAccountType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/nd/commplatform/d/c/fp;->a(Lcom/nd/commplatform/entry/NdThirdPartyPlatform;)Landroid/view/View;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private a(Lcom/nd/commplatform/entry/NdThirdPartyPlatform;)Landroid/view/View;
    .locals 7

    invoke-super {p0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$f;->ba:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/nd/commplatform/d/c/fp;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->hd:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->R:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/16 v3, 0x2d

    invoke-direct {p0, v3}, Lcom/nd/commplatform/d/c/fp;->b(I)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->gm:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-super {p0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/nd/commplatform/d/c/jo$h;->jI:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/nd/commplatform/d/c/fp$5;

    invoke-direct {v0, p0, p1}, Lcom/nd/commplatform/d/c/fp$5;-><init>(Lcom/nd/commplatform/d/c/fp;Lcom/nd/commplatform/entry/NdThirdPartyPlatform;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1
.end method

.method private a(ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp;->K:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;->getName()Ljava/lang/String;

    move-result-object p2

    :cond_1
    return-object p2
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/fp;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/fp;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/fp;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/fp;->L:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/fp;Lcom/nd/commplatform/entry/NdThirdPartyPlatform;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/fp;->b(Lcom/nd/commplatform/entry/NdThirdPartyPlatform;)V

    return-void
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/nd/commplatform/d/c/bx;

    const/16 v1, 0x71

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/bx;-><init>(I)V

    const-string v1, "title"

    invoke-virtual {v0, v1, p0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "infoType"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "infoId"

    invoke-virtual {v0, v1, p2}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x76

    invoke-static {v1, v0}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    return-void
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/nd/commplatform/d/c/bx;

    const/16 v1, 0x71

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/bx;-><init>(I)V

    const-string v1, "title"

    invoke-virtual {v0, v1, p0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "infoType"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "infoId"

    invoke-virtual {v0, v1, p2}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    const-string v1, "extras"

    invoke-virtual {v0, v1, p3}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/16 v1, 0x76

    invoke-static {v1, v0}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    return-void
.end method

.method public static a(Ljava/lang/String;[BLandroid/content/Context;)V
    .locals 3

    sget v0, Lcom/nd/commplatform/d/c/jo$h;->hn:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/nd/commplatform/d/c/bx;

    const/16 v2, 0x71

    invoke-direct {v1, v2}, Lcom/nd/commplatform/d/c/bx;-><init>(I)V

    const-string v2, "title"

    invoke-virtual {v1, v2, v0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "strContent"

    invoke-virtual {v1, v0, p0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "flag"

    const-string v2, "1"

    invoke-virtual {v1, v0, v2}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "photoData"

    invoke-virtual {v1, v0, p1}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, -0x1

    const/16 v2, 0x76

    invoke-static {p2, v0, v2, v1}, Lcom/nd/commplatform/d/c/cb;->a(Landroid/content/Context;IILcom/nd/commplatform/d/c/bx;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/fp;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/fp;->k:[B

    return-object p1
.end method

.method private b(I)I
    .locals 3

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/fp;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    int-to-float v2, p1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;)Landroid/view/View;
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-super {p0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$f;->aY:I

    invoke-static {v0, v1, v8}, Lcom/nd/commplatform/d/c/fp;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/16 v3, 0x2d

    invoke-direct {p0, v3}, Lcom/nd/commplatform/d/c/fp;->b(I)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;->getAccountType()I

    move-result v0

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/nd/commplatform/d/c/fp;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->gm:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-super {p0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/nd/commplatform/d/c/jo$h;->jI:I

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->gl:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v2, p0, Lcom/nd/commplatform/d/c/fp;->M:Ljava/util/List;

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;->getAccountType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_0
    new-instance v2, Lcom/nd/commplatform/d/c/fp$6;

    invoke-direct {v2, p0, p1}, Lcom/nd/commplatform/d/c/fp$6;-><init>(Lcom/nd/commplatform/d/c/fp;Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-object v1

    :cond_0
    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/fp;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/fp;->K:Ljava/util/List;

    return-object p1
.end method

.method private b()V
    .locals 2

    new-instance v0, Lcom/nd/commplatform/d/c/ey;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/fp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/ey;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fp;->a:Lcom/nd/commplatform/d/c/fp$a;

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/ey;->a(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/ey;->show()V

    return-void
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/fp;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/fp;->b()V

    return-void
.end method

.method private b(Lcom/nd/commplatform/entry/NdThirdPartyPlatform;)V
    .locals 3

    new-instance v0, Lcom/nd/commplatform/d/c/bx;

    const/16 v1, 0xfa4

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/bx;-><init>(I)V

    const-string v1, "platform"

    invoke-virtual {v0, v1, p1}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "binded"

    iget-object v2, p0, Lcom/nd/commplatform/d/c/fp;->L:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;->getLoginType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/16 v1, 0x45c

    invoke-static {v1, v0}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x45e

    invoke-static {v1, v0}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    goto :goto_0
.end method

.method private c(Lcom/nd/commplatform/entry/NdThirdPartyPlatform;)Landroid/view/View;
    .locals 7

    invoke-super {p0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$f;->ba:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/nd/commplatform/d/c/fp;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/16 v3, 0x2d

    invoke-direct {p0, v3}, Lcom/nd/commplatform/d/c/fp;->b(I)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->gm:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-super {p0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/nd/commplatform/d/c/jo$h;->jI:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/nd/commplatform/d/c/fp$7;

    invoke-direct {v0, p0, p1}, Lcom/nd/commplatform/d/c/fp$7;-><init>(Lcom/nd/commplatform/d/c/fp;Lcom/nd/commplatform/entry/NdThirdPartyPlatform;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1
.end method

.method private c()V
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

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/fp;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    check-cast v0, Landroid/app/Activity;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic c(Lcom/nd/commplatform/d/c/fp;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/fp;->c()V

    return-void
.end method

.method static synthetic d(Lcom/nd/commplatform/d/c/fp;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/fp;->m()V

    return-void
.end method

.method static synthetic e(Lcom/nd/commplatform/d/c/fp;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic f(Lcom/nd/commplatform/d/c/fp;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/nd/commplatform/d/c/fp;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp;->M:Ljava/util/List;

    return-object v0
.end method

.method static synthetic h(Lcom/nd/commplatform/d/c/fp;)[B
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp;->k:[B

    return-object v0
.end method

.method static synthetic i(Lcom/nd/commplatform/d/c/fp;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp;->I:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic j(Lcom/nd/commplatform/d/c/fp;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp;->J:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic k(Lcom/nd/commplatform/d/c/fp;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/fp;->y()V

    return-void
.end method

.method static synthetic l(Lcom/nd/commplatform/d/c/fp;)I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/d/c/fp;->U:I

    return v0
.end method

.method private m()V
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

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/fp;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic m(Lcom/nd/commplatform/d/c/fp;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/fp;->r()V

    return-void
.end method

.method static synthetic n(Lcom/nd/commplatform/d/c/fp;)I
    .locals 1

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/fp;->q()I

    move-result v0

    return v0
.end method

.method private n()V
    .locals 5

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fp;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/nd/commplatform/d/c/fp$2;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/fp$2;-><init>(Lcom/nd/commplatform/d/c/fp;)V

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/fp;->a(Lcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/nd/commplatform/d/c/fp;->b(Z)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    iget v2, p0, Lcom/nd/commplatform/d/c/fp;->f:I

    iget-object v3, p0, Lcom/nd/commplatform/d/c/fp;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/fp;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/nd/commplatform/d/c/a;->a(ILjava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    goto :goto_0
.end method

.method private o()V
    .locals 3

    const/16 v2, 0x71

    invoke-static {v2}, Lcom/nd/commplatform/d/c/cb;->b(I)Lcom/nd/commplatform/d/c/bx;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v0, "title"

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fp;->d:Ljava/lang/String;

    const-string v0, "infoType"

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nd/commplatform/d/c/fp;->f:I

    :cond_0
    const-string v0, "infoId"

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fp;->g:Ljava/lang/String;

    const-string v0, "extras"

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fp;->j:Ljava/lang/String;

    const-string v0, "strContent"

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fp;->i:Ljava/lang/String;

    const-string v0, "photoData"

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fp;->k:[B

    const-string v0, "flag"

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nd/commplatform/d/c/fp;->h:Z

    :cond_1
    invoke-static {v2}, Lcom/nd/commplatform/d/c/cb;->c(I)Lcom/nd/commplatform/d/c/bx;

    return-void
.end method

.method static synthetic o(Lcom/nd/commplatform/d/c/fp;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/fp;->s()V

    return-void
.end method

.method private p()V
    .locals 3

    new-instance v0, Lcom/nd/commplatform/d/c/fp$3;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/fp$3;-><init>(Lcom/nd/commplatform/d/c/fp;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/nd/commplatform/d/c/fp;->b(Z)V

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/fp;->a(Lcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/fp;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/nd/commplatform/d/c/a;->o(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method static synthetic p(Lcom/nd/commplatform/d/c/fp;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/fp;->t()V

    return-void
.end method

.method private q()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fp;->L:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;->isValidated()Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method static synthetic q(Lcom/nd/commplatform/d/c/fp;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/fp;->v()V

    return-void
.end method

.method private r()V
    .locals 3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp;->L:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;->isValidated()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nd/commplatform/d/c/fp;->O:Ljava/util/List;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;->getAccountType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic r(Lcom/nd/commplatform/d/c/fp;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/fp;->w()V

    return-void
.end method

.method private s()V
    .locals 3

    new-instance v0, Lcom/nd/commplatform/d/c/fp$4;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/fp$4;-><init>(Lcom/nd/commplatform/d/c/fp;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/nd/commplatform/d/c/fp;->b(Z)V

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/fp;->a(Lcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/fp;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/nd/commplatform/d/c/a;->n(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method private t()V
    .locals 3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp;->L:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;->isValidated()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nd/commplatform/d/c/fp;->M:Ljava/util/List;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;->getAccountType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private u()V
    .locals 2

    const/16 v1, 0x8

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->bo:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/fp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fp;->P:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp;->P:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->hc:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/fp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fp;->T:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp;->T:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->hb:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/fp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fp;->S:Landroid/widget/LinearLayout;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->bq:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/fp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fp;->R:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp;->R:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->bp:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/fp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fp;->Q:Landroid/widget/LinearLayout;

    return-void
.end method

.method private v()V
    .locals 10

    const/4 v6, 0x1

    const/16 v9, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp;->L:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp;->K:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    if-gez v0, :cond_0

    move v5, v2

    :goto_0
    if-lez v3, :cond_c

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp;->L:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;->isValidated()Z

    move-result v0

    if-nez v0, :cond_12

    add-int/lit8 v0, v1, 0x1

    :goto_2
    move v1, v0

    goto :goto_1

    :cond_0
    move v5, v0

    goto :goto_0

    :cond_1
    sub-int v0, v3, v1

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp;->P:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp;->P:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    move v3, v2

    move v4, v2

    :goto_3
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp;->L:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_5

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp;->L:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;->isValidated()Z

    move-result v7

    if-nez v7, :cond_2

    :goto_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    :cond_2
    if-lt v4, v6, :cond_3

    iget-object v7, p0, Lcom/nd/commplatform/d/c/fp;->P:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/fp;->x()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_3
    iget-object v7, p0, Lcom/nd/commplatform/d/c/fp;->P:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/nd/commplatform/d/c/fp;->b(Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp;->P:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_5
    if-lez v1, :cond_9

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp;->R:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp;->Q:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    move v1, v2

    move v3, v2

    :goto_5
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp;->L:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_a

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp;->L:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;->isValidated()Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    :goto_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_7
    if-lt v3, v6, :cond_8

    iget-object v4, p0, Lcom/nd/commplatform/d/c/fp;->Q:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/fp;->x()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_8
    invoke-direct {p0, v0}, Lcom/nd/commplatform/d/c/fp;->a(Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v4, p0, Lcom/nd/commplatform/d/c/fp;->Q:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_9
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp;->R:Landroid/view/ViewGroup;

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_a
    :goto_7
    if-lez v5, :cond_e

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp;->T:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp;->S:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    move v3, v2

    move v4, v2

    :goto_8
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp;->K:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_f

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp;->K:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    move v5, v2

    :goto_9
    iget-object v1, p0, Lcom/nd/commplatform/d/c/fp;->L:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v5, v1, :cond_11

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fp;->L:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;->getAccountType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    move v1, v6

    :goto_a
    if-nez v1, :cond_10

    if-lt v4, v6, :cond_b

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fp;->S:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/fp;->x()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_b
    iget-object v1, p0, Lcom/nd/commplatform/d/c/fp;->S:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/nd/commplatform/d/c/fp;->c(Lcom/nd/commplatform/entry/NdThirdPartyPlatform;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v4, 0x1

    :goto_b
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v4, v1

    goto :goto_8

    :cond_c
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp;->P:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp;->R:Landroid/view/ViewGroup;

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_7

    :cond_d
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_9

    :cond_e
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp;->T:Landroid/view/ViewGroup;

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_f
    invoke-direct {p0}, Lcom/nd/commplatform/d/c/fp;->w()V

    return-void

    :cond_10
    move v1, v4

    goto :goto_b

    :cond_11
    move v1, v2

    goto :goto_a

    :cond_12
    move v0, v1

    goto/16 :goto_2
.end method

.method private w()V
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp;->M:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/nd/commplatform/d/c/fp;->s:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nd/commplatform/d/c/fp;->s:Z

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/fp;->i()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/nd/commplatform/d/c/fp;->s:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nd/commplatform/d/c/fp;->s:Z

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/fp;->i()V

    goto :goto_0
.end method

.method private x()Landroid/view/View;
    .locals 2

    new-instance v0, Landroid/widget/ImageView;

    invoke-super {p0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/nd/commplatform/d/c/jo$d;->ac:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    return-object v0
.end method

.method private y()V
    .locals 6

    const/4 v5, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp;->M:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp;->M:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp;->M:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/fp;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->jK:I

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->C()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/fp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/a;->o()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nk;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/fp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/a;->o()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/nd/commplatform/d/c/nk;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/fp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->jK:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/fp;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->nu:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nd/commplatform/d/c/a;->e()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->ns:I

    new-instance v2, Lcom/nd/commplatform/d/c/fp$8;

    invoke-direct {v2, p0}, Lcom/nd/commplatform/d/c/fp$8;-><init>(Lcom/nd/commplatform/d/c/fp;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->bG:I

    new-instance v2, Lcom/nd/commplatform/d/c/fp$9;

    invoke-direct {v2, p0}, Lcom/nd/commplatform/d/c/fp$9;-><init>(Lcom/nd/commplatform/d/c/fp;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/fp;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->jK:I

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->aZ:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/fp;->o()V

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/fp;->p:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/fp;->q:Z

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fp;->r:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nd/commplatform/d/c/fp;->s:Z

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/fp;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->jU:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fp;->t:Ljava/lang/String;

    new-instance v0, Lcom/nd/commplatform/d/c/fp$1;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/fp$1;-><init>(Lcom/nd/commplatform/d/c/fp;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fp;->u:Landroid/view/View$OnClickListener;

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/fp;->v:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/fp;->w:Z

    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p3, :cond_0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v2, "data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    :goto_1
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/nd/commplatform/d/c/fp;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/nd/commplatform/d/c/fp;->H:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fp;->I:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fp;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fp;->J:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fp;->n:Landroid/graphics/Bitmap;

    :cond_2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fp;->n:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fp;->k:[B

    goto :goto_0

    :cond_3
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected a(Landroid/view/View;)V
    .locals 5

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->ho:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/fp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fp;->c:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp;->c:Landroid/widget/EditText;

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->jF:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp;->c:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x8c

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    new-instance v0, Lcom/nd/commplatform/d/c/fp$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nd/commplatform/d/c/fp$a;-><init>(Lcom/nd/commplatform/d/c/fp;Lcom/nd/commplatform/d/c/fp$1;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fp;->a:Lcom/nd/commplatform/d/c/fp$a;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->eh:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fp;->H:Landroid/view/View;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp;->H:Landroid/view/View;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fp;->a:Lcom/nd/commplatform/d/c/fp$a;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->ef:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fp;->I:Landroid/widget/TextView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->fC:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fp;->b:Landroid/widget/ImageView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->eg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fp;->J:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp;->J:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/fp;->u()V

    return-void
.end method

.method protected a(ZI)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    iget-boolean v0, p0, Lcom/nd/commplatform/d/c/fp;->h:Z

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fp;->c:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp;->i:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp;->k:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp;->k:[B

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fp;->k:[B

    array-length v1, v1

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fp;->n:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fp;->n:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp;->H:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp;->I:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp;->J:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/nd/commplatform/d/c/fp;->p()V

    :cond_1
    :goto_2
    return-void

    :cond_2
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp;->i:Ljava/lang/String;

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/nd/commplatform/d/c/fp;->n()V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp;->L:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/fp;->q()I

    move-result v0

    iget v1, p0, Lcom/nd/commplatform/d/c/fp;->N:I

    if-eq v1, v0, :cond_1

    iput v0, p0, Lcom/nd/commplatform/d/c/fp;->N:I

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp;->L:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;->isValidated()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;->getAccountType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v2, p0, Lcom/nd/commplatform/d/c/fp;->O:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/nd/commplatform/d/c/fp;->O:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/nd/commplatform/d/c/fp;->M:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    invoke-direct {p0}, Lcom/nd/commplatform/d/c/fp;->v()V

    goto :goto_2
.end method
