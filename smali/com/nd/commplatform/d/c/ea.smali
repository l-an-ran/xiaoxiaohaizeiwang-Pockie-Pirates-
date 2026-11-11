.class public Lcom/nd/commplatform/d/c/ea;
.super Lcom/nd/commplatform/d/c/fm;


# static fields
.field public static final a:Ljava/lang/String; = "Uin"


# instance fields
.field private H:Lcom/nd/commplatform/entry/NdUserInfo;

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/fm;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/ea;Lcom/nd/commplatform/entry/NdUserInfo;)Lcom/nd/commplatform/entry/NdUserInfo;
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ea;->H:Lcom/nd/commplatform/entry/NdUserInfo;

    return-object p1
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/ea;)Lcom/nd/commplatform/widget/NdLeaderboardPropertyHolder;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ea;->j:Lcom/nd/commplatform/widget/NdLeaderboardPropertyHolder;

    return-object v0
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/ea;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ea;->r:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/ea;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/ea;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/nd/commplatform/d/c/bx;

    const/16 v1, 0xbbe

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/bx;-><init>(I)V

    const-string v1, "Uin"

    invoke-virtual {v0, v1, p0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xbc1

    invoke-static {v1, v0}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/nd/commplatform/d/c/bx;

    const/16 v1, 0xbbe

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/bx;-><init>(I)V

    const-string v1, "Uin"

    invoke-virtual {v0, v1, p0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    const/16 v2, 0xbc1

    invoke-static {p1, v1, v2, v0}, Lcom/nd/commplatform/d/c/cb;->a(Landroid/content/Context;IILcom/nd/commplatform/d/c/bx;)V

    return-void
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/ea;)Lcom/nd/commplatform/widget/NdAchievementPropertyHolder;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ea;->i:Lcom/nd/commplatform/widget/NdAchievementPropertyHolder;

    return-object v0
.end method

.method static synthetic c(Lcom/nd/commplatform/d/c/ea;)Lcom/nd/commplatform/entry/NdUserInfo;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ea;->H:Lcom/nd/commplatform/entry/NdUserInfo;

    return-object v0
.end method

.method private c()V
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ea;->I:Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/nd/commplatform/d/c/ea;->m()V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/ea;->p()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/nd/commplatform/d/c/ea;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ea;->I:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/nd/commplatform/d/c/ea;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ea;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/nd/commplatform/d/c/ea;)V
    .locals 0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ea;->i()V

    return-void
.end method

.method static synthetic g(Lcom/nd/commplatform/d/c/ea;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/ea;->o()V

    return-void
.end method

.method private m()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ea;->i:Lcom/nd/commplatform/widget/NdAchievementPropertyHolder;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ea;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/widget/NdAchievementPropertyHolder;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ea;->i:Lcom/nd/commplatform/widget/NdAchievementPropertyHolder;

    invoke-virtual {v0, v2}, Lcom/nd/commplatform/widget/NdAchievementPropertyHolder;->a(Z)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ea;->j:Lcom/nd/commplatform/widget/NdLeaderboardPropertyHolder;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ea;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/widget/NdLeaderboardPropertyHolder;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ea;->j:Lcom/nd/commplatform/widget/NdLeaderboardPropertyHolder;

    invoke-virtual {v0, v2}, Lcom/nd/commplatform/widget/NdLeaderboardPropertyHolder;->a(Z)V

    invoke-static {}, Lcom/nd/commplatform/d/c/of;->a()Lcom/nd/commplatform/d/c/of;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ea;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/nd/commplatform/d/c/ea$1;

    invoke-direct {v2, p0}, Lcom/nd/commplatform/d/c/ea$1;-><init>(Lcom/nd/commplatform/d/c/ea;)V

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/of;->a(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method private n()V
    .locals 3

    const/16 v2, 0xbbe

    invoke-static {v2}, Lcom/nd/commplatform/d/c/cb;->b(I)Lcom/nd/commplatform/d/c/bx;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "Uin"

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ea;->I:Ljava/lang/String;

    :cond_0
    invoke-static {v2}, Lcom/nd/commplatform/d/c/cb;->c(I)Lcom/nd/commplatform/d/c/bx;

    return-void
.end method

.method private o()V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ea;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ea;->H:Lcom/nd/commplatform/entry/NdUserInfo;

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdUserInfo;->getEmotion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private p()V
    .locals 5

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    new-instance v1, Lcom/nd/commplatform/d/c/ea$6;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/ea$6;-><init>(Lcom/nd/commplatform/d/c/ea;)V

    invoke-virtual {p0, v1}, Lcom/nd/commplatform/d/c/ea;->a(Lcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/nd/commplatform/d/c/ea;->b(Z)V

    iget-object v2, p0, Lcom/nd/commplatform/d/c/ea;->I:Ljava/lang/String;

    const/4 v3, 0x5

    invoke-super {p0}, Lcom/nd/commplatform/d/c/fm;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/nd/commplatform/d/c/a;->a(Ljava/lang/String;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->bb:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 3

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/ea;->p:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/ea;->q:Z

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ea;->J:Ljava/lang/String;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ea;->r:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/ea;->s:Z

    invoke-super {p0}, Lcom/nd/commplatform/d/c/fm;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->jT:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ea;->t:Ljava/lang/String;

    new-instance v0, Lcom/nd/commplatform/d/c/ea$2;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/ea$2;-><init>(Lcom/nd/commplatform/d/c/ea;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ea;->u:Landroid/view/View$OnClickListener;

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/ea;->v:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/ea;->w:Z

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 3

    const/16 v2, 0x8

    invoke-super {p0, p1}, Lcom/nd/commplatform/d/c/fm;->a(Landroid/view/View;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->cP:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ea;->K:Landroid/view/View;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ea;->K:Landroid/view/View;

    new-instance v1, Lcom/nd/commplatform/d/c/ea$3;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/ea$3;-><init>(Lcom/nd/commplatform/d/c/ea;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ea;->n:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ea;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ea;->g:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ea;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ea;->l:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ea;->f:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ea;->k:Landroid/view/View;

    new-instance v1, Lcom/nd/commplatform/d/c/ea$4;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/ea$4;-><init>(Lcom/nd/commplatform/d/c/ea;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ea;->e:Landroid/view/View;

    new-instance v1, Lcom/nd/commplatform/d/c/ea$5;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/ea$5;-><init>(Lcom/nd/commplatform/d/c/ea;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ea;->c:Landroid/widget/TextView;

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->fP:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ea;->h:Landroid/widget/TextView;

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->fP:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    return-void
.end method

.method protected a(ZI)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/ea;->n()V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/ea;->c()V

    :cond_0
    return-void
.end method
