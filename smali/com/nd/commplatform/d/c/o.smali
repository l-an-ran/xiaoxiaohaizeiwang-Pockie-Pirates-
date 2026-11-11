.class public Lcom/nd/commplatform/d/c/o;
.super Lcom/nd/commplatform/widget/NdFrameInnerContent;


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/nd/commplatform/entry/NdThirdPartyPlatform;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/o;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/o;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lcom/nd/commplatform/entry/NdThirdPartyPlatform;)V
    .locals 0

    invoke-static {p0}, Lcom/nd/commplatform/d/c/o;->b(Lcom/nd/commplatform/entry/NdThirdPartyPlatform;)V

    return-void
.end method

.method public static a(Lcom/nd/commplatform/widget/NdFrameInnerContent;Lcom/nd/commplatform/entry/NdThirdPartyPlatform;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/nd/commplatform/d/c/o;->b(Lcom/nd/commplatform/widget/NdFrameInnerContent;Lcom/nd/commplatform/entry/NdThirdPartyPlatform;)V

    return-void
.end method

.method static synthetic a(Ljava/util/HashMap;Lcom/nd/commplatform/entry/NdThirdPartyPlatform;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/nd/commplatform/d/c/o;->b(Ljava/util/HashMap;Lcom/nd/commplatform/entry/NdThirdPartyPlatform;)V

    return-void
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/o;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/o;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method private b()V
    .locals 3

    const/16 v2, 0x72

    invoke-static {v2}, Lcom/nd/commplatform/d/c/cb;->b(I)Lcom/nd/commplatform/d/c/bx;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "ndThirdPartyPlatform"

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/o;->d:Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/o;->d:Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    if-nez v0, :cond_1

    new-instance v0, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    invoke-direct {v0}, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/o;->d:Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    :cond_1
    invoke-static {v2}, Lcom/nd/commplatform/d/c/cb;->c(I)Lcom/nd/commplatform/d/c/bx;

    return-void
.end method

.method private static b(Lcom/nd/commplatform/entry/NdThirdPartyPlatform;)V
    .locals 2

    new-instance v0, Lcom/nd/commplatform/d/c/bx;

    const/16 v1, 0x72

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/bx;-><init>(I)V

    const-string v1, "ndThirdPartyPlatform"

    invoke-virtual {v0, v1, p0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x3f1

    invoke-static {v1, v0}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    return-void
.end method

.method private static b(Lcom/nd/commplatform/widget/NdFrameInnerContent;Lcom/nd/commplatform/entry/NdThirdPartyPlatform;)V
    .locals 3

    new-instance v0, Lcom/nd/commplatform/d/c/o$2;

    invoke-direct {v0, p0, p1}, Lcom/nd/commplatform/d/c/o$2;-><init>(Lcom/nd/commplatform/widget/NdFrameInnerContent;Lcom/nd/commplatform/entry/NdThirdPartyPlatform;)V

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->a(Lcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->b(Z)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/nd/commplatform/d/c/a;->o(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method private static b(Ljava/util/HashMap;Lcom/nd/commplatform/entry/NdThirdPartyPlatform;)V
    .locals 1

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;->isValidated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/nd/commplatform/d/c/fg;->a(Lcom/nd/commplatform/entry/NdThirdPartyPlatform;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/nd/commplatform/d/c/o;->b(Lcom/nd/commplatform/entry/NdThirdPartyPlatform;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/nd/commplatform/d/c/o;)Lcom/nd/commplatform/entry/NdThirdPartyPlatform;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/o;->d:Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->u:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lcom/nd/commplatform/widget/NdFrameInnerContent;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/o;->a:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ok;->a(Landroid/widget/EditText;)V

    invoke-super {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->a(I)Lcom/nd/commplatform/widget/NdFrameInnerContent;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/o;->b()V

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/o;->p:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/o;->q:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/o;->s:Z

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/o;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->dx:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/o;->t:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/o;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/o;->d:Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/o;->r:Ljava/lang/String;

    new-instance v0, Lcom/nd/commplatform/d/c/o$1;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/o$1;-><init>(Lcom/nd/commplatform/d/c/o;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/o;->u:Landroid/view/View$OnClickListener;

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/o;->v:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/o;->w:Z

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->ap:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/o;->a:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/o;->a:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ok;->a(Landroid/widget/EditText;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->as:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/o;->b:Landroid/widget/EditText;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->aq:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/o;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/o;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method protected a(ZI)V
    .locals 6

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/o;->d:Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/o;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/o;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/o;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->i:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/nd/commplatform/d/c/o;->d:Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    invoke-virtual {v4}, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
