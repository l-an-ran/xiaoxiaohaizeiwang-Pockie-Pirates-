.class public Lcom/nd/commplatform/d/c/fo;
.super Lcom/nd/commplatform/widget/NdFrameInnerContent;


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Lcom/nd/commplatform/NdCallbackListener;

.field private c:Lcom/nd/commplatform/entry/ThirdPlatformUserInfo;

.field private d:Lcom/nd/commplatform/entry/NdThirdPartyPlatform;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/fo;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fo;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/fo;Lcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/fo;->b:Lcom/nd/commplatform/NdCallbackListener;

    return-object p1
.end method

.method public static a(Lcom/nd/commplatform/entry/ThirdPlatformUserInfo;Lcom/nd/commplatform/entry/NdThirdPartyPlatform;)V
    .locals 2

    new-instance v0, Lcom/nd/commplatform/d/c/bx;

    const/16 v1, 0x6d

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/bx;-><init>(I)V

    const-string v1, "thirdPlatformUserInfoList"

    invoke-virtual {v0, v1, p0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ndThirdPartyPlatform"

    invoke-virtual {v0, v1, p1}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x74

    invoke-static {v1, v0}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    return-void
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/fo;)Lcom/nd/commplatform/entry/ThirdPlatformUserInfo;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fo;->c:Lcom/nd/commplatform/entry/ThirdPlatformUserInfo;

    return-object v0
.end method

.method private b()V
    .locals 7

    const/16 v6, 0x6d

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {v6}, Lcom/nd/commplatform/d/c/cb;->b(I)Lcom/nd/commplatform/d/c/bx;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "thirdPlatformUserInfoList"

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/entry/ThirdPlatformUserInfo;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fo;->c:Lcom/nd/commplatform/entry/ThirdPlatformUserInfo;

    const-string v0, "ndThirdPartyPlatform"

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fo;->d:Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/fo;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->cR:I

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/nd/commplatform/d/c/fo;->d:Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    invoke-virtual {v3}, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fo;->r:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/fo;->i()V

    :cond_0
    invoke-static {v6}, Lcom/nd/commplatform/d/c/cb;->c(I)Lcom/nd/commplatform/d/c/bx;

    new-instance v0, Lcom/nd/commplatform/d/c/fo$2;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/fo$2;-><init>(Lcom/nd/commplatform/d/c/fo;)V

    invoke-virtual {p0, v5, v0}, Lcom/nd/commplatform/d/c/fo;->a(ILcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {p0, v4}, Lcom/nd/commplatform/d/c/fo;->b(Z)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/fo;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v4, v2, v3, v0}, Lcom/nd/commplatform/d/c/a;->a(ILjava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method static synthetic c(Lcom/nd/commplatform/d/c/fo;)Lcom/nd/commplatform/entry/NdThirdPartyPlatform;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fo;->d:Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    return-object v0
.end method

.method static synthetic d(Lcom/nd/commplatform/d/c/fo;)Lcom/nd/commplatform/NdCallbackListener;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fo;->b:Lcom/nd/commplatform/NdCallbackListener;

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
    .locals 3

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/fo;->p:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/fo;->q:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/fo;->s:Z

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/fo;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->jU:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fo;->t:Ljava/lang/String;

    new-instance v0, Lcom/nd/commplatform/d/c/fo$1;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/fo$1;-><init>(Lcom/nd/commplatform/d/c/fo;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fo;->u:Landroid/view/View$OnClickListener;

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/fo;->v:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nd/commplatform/d/c/fo;->w:Z

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 5

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->ho:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/fo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fo;->a:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fo;->a:Landroid/widget/EditText;

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->cO:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fo;->a:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x12c

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fo;->a:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMinLines(I)V

    return-void
.end method

.method protected a(ZI)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/fo;->b()V

    :cond_0
    return-void
.end method
