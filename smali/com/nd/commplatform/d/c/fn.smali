.class public Lcom/nd/commplatform/d/c/fn;
.super Lcom/nd/commplatform/widget/NdFrameInnerContent;


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Lcom/nd/commplatform/NdCallbackListener;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/d/c/ff",
            "<",
            "Lcom/nd/commplatform/entry/NdFriendUserInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/fn;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fn;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/fn;Lcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/fn;->b:Lcom/nd/commplatform/NdCallbackListener;

    return-object p1
.end method

.method public static a(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/d/c/ff",
            "<",
            "Lcom/nd/commplatform/entry/NdFriendUserInfo;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/bx;

    const/16 v1, 0x6e

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/bx;-><init>(I)V

    const-string v1, "ndInviteFriendUserInfo_list"

    invoke-virtual {v0, v1, p0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "inviteDesc"

    invoke-virtual {v0, v1, p1}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x75

    invoke-static {v1, v0}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    return-void
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/fn;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fn;->c:Ljava/util/List;

    return-object v0
.end method

.method private b()V
    .locals 3

    const/16 v2, 0x6e

    invoke-static {v2}, Lcom/nd/commplatform/d/c/cb;->b(I)Lcom/nd/commplatform/d/c/bx;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "ndInviteFriendUserInfo_list"

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fn;->c:Ljava/util/List;

    const-string v0, "inviteDesc"

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fn;->d:Ljava/lang/String;

    :cond_0
    invoke-static {v2}, Lcom/nd/commplatform/d/c/cb;->c(I)Lcom/nd/commplatform/d/c/bx;

    return-void
.end method

.method static synthetic c(Lcom/nd/commplatform/d/c/fn;)Lcom/nd/commplatform/NdCallbackListener;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fn;->b:Lcom/nd/commplatform/NdCallbackListener;

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

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/fn;->p:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/fn;->q:Z

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/fn;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->cF:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fn;->r:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/fn;->s:Z

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/fn;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->jU:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fn;->t:Ljava/lang/String;

    new-instance v0, Lcom/nd/commplatform/d/c/fn$1;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/fn$1;-><init>(Lcom/nd/commplatform/d/c/fn;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fn;->u:Landroid/view/View$OnClickListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nd/commplatform/d/c/fn;->v:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/fn;->w:Z

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->ho:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/fn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fn;->a:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fn;->a:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fn;->a:Landroid/widget/EditText;

    new-array v1, v4, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x12c

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fn;->a:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/fn;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->cE:I

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nd/commplatform/d/c/a;->e()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected a(ZI)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/fn;->b()V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fn;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fn;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fn;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
