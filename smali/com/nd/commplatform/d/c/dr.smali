.class public Lcom/nd/commplatform/d/c/dr;
.super Lcom/nd/commplatform/widget/NdFrameInnerContent;


# instance fields
.field private H:Landroid/widget/ImageView;

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field protected a:Landroid/widget/ImageView;

.field protected b:Landroid/widget/TextView;

.field protected c:Landroid/view/View;

.field protected d:Landroid/view/View;

.field protected e:Landroid/widget/Button;

.field protected f:Landroid/view/View;

.field protected g:Lcom/nd/commplatform/widget/NdAchievementPropertyHolder;

.field protected h:Lcom/nd/commplatform/widget/NdLeaderboardPropertyHolder;

.field protected i:Landroid/view/View;

.field protected j:Landroid/view/View;

.field protected k:Landroid/widget/Button;

.field protected l:Landroid/widget/Button;

.field private m:Lcom/nd/commplatform/NdCallbackListener;

.field private n:Lcom/nd/commplatform/NdCallbackListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/dr;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dr;->I:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/dr;Lcom/nd/commplatform/entry/NdUserInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/dr;->a(Lcom/nd/commplatform/entry/NdUserInfo;)V

    return-void
.end method

.method private a(Lcom/nd/commplatform/entry/NdUserInfo;)V
    .locals 2

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdUserInfo;->getEmotion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdUserInfo;->getEmotion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dr;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdUserInfo;->getEmotion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdUserInfo;->getNickName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dr;->J:Ljava/lang/String;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dr;->J:Ljava/lang/String;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dr;->r:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/dr;->i()V

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdUserInfo;->getCheckSum()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dr;->K:Ljava/lang/String;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dr;->I:Ljava/lang/String;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/dr;->K:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/nd/commplatform/d/c/dr;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/nd/commplatform/d/c/bx;

    const/16 v1, 0x69

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/bx;-><init>(I)V

    const-string v1, "uin"

    invoke-virtual {v0, v1, p0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xca

    invoke-static {v1, v0}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/nd/commplatform/d/c/bx;

    const/16 v1, 0x69

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/bx;-><init>(I)V

    const-string v1, "uin"

    invoke-virtual {v0, v1, p0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    const/16 v2, 0xca

    invoke-static {p1, v1, v2, v0}, Lcom/nd/commplatform/d/c/cb;->a(Landroid/content/Context;IILcom/nd/commplatform/d/c/bx;)V

    return-void
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/dr;)Lcom/nd/commplatform/NdCallbackListener;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dr;->n:Lcom/nd/commplatform/NdCallbackListener;

    return-object v0
.end method

.method private b()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dr;->g:Lcom/nd/commplatform/widget/NdAchievementPropertyHolder;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/dr;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/widget/NdAchievementPropertyHolder;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dr;->g:Lcom/nd/commplatform/widget/NdAchievementPropertyHolder;

    invoke-virtual {v0, v2}, Lcom/nd/commplatform/widget/NdAchievementPropertyHolder;->a(Z)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dr;->h:Lcom/nd/commplatform/widget/NdLeaderboardPropertyHolder;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/dr;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/widget/NdLeaderboardPropertyHolder;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dr;->h:Lcom/nd/commplatform/widget/NdLeaderboardPropertyHolder;

    invoke-virtual {v0, v2}, Lcom/nd/commplatform/widget/NdLeaderboardPropertyHolder;->a(Z)V

    invoke-static {}, Lcom/nd/commplatform/d/c/of;->a()Lcom/nd/commplatform/d/c/of;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/dr;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/nd/commplatform/d/c/dr$9;

    invoke-direct {v2, p0}, Lcom/nd/commplatform/d/c/dr$9;-><init>(Lcom/nd/commplatform/d/c/dr;)V

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/of;->a(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method static synthetic c(Lcom/nd/commplatform/d/c/dr;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dr;->J:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .locals 2

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/dr;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/a;->e(Ljava/lang/String;)Lcom/nd/commplatform/d/c/ek;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/ek;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/dr;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dr;->r:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/dr;->i()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/dr;->J:Ljava/lang/String;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dr;->r:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic d(Lcom/nd/commplatform/d/c/dr;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dr;->r:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/nd/commplatform/d/c/dr;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dr;->K:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/nd/commplatform/d/c/dr;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dr;->r:Ljava/lang/String;

    return-object v0
.end method

.method private m()V
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dr;->I:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/dr;->o()V

    :cond_0
    return-void
.end method

.method private n()V
    .locals 1

    new-instance v0, Lcom/nd/commplatform/d/c/dr$10;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/dr$10;-><init>(Lcom/nd/commplatform/d/c/dr;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dr;->n:Lcom/nd/commplatform/NdCallbackListener;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dr;->n:Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/dr;->a(Lcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;

    new-instance v0, Lcom/nd/commplatform/d/c/dr$11;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/dr$11;-><init>(Lcom/nd/commplatform/d/c/dr;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dr;->m:Lcom/nd/commplatform/NdCallbackListener;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dr;->m:Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/dr;->a(Lcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;

    return-void
.end method

.method private o()V
    .locals 5

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/dr;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/a;->e(Ljava/lang/String;)Lcom/nd/commplatform/d/c/ek;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/nd/commplatform/d/c/dr;->a(Lcom/nd/commplatform/entry/NdUserInfo;)V

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/ek;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/ek;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/ek;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dr;->r:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/dr;->i()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/dr;->b(Z)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/dr;->I:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/dr;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/nd/commplatform/d/c/dr;->m:Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nd/commplatform/d/c/a;->a(Ljava/lang/String;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    goto :goto_0
.end method

.method private p()V
    .locals 3

    const/16 v2, 0x69

    invoke-static {v2}, Lcom/nd/commplatform/d/c/cb;->b(I)Lcom/nd/commplatform/d/c/bx;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "uin"

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dr;->I:Ljava/lang/String;

    invoke-static {v2}, Lcom/nd/commplatform/d/c/cb;->c(I)Lcom/nd/commplatform/d/c/bx;

    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->U:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nd/commplatform/d/c/dr;->p:Z

    iput-boolean v0, p0, Lcom/nd/commplatform/d/c/dr;->q:Z

    iput-boolean v0, p0, Lcom/nd/commplatform/d/c/dr;->s:Z

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/dr;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->jE:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dr;->t:Ljava/lang/String;

    new-instance v0, Lcom/nd/commplatform/d/c/dr$3;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/dr$3;-><init>(Lcom/nd/commplatform/d/c/dr;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dr;->u:Landroid/view/View$OnClickListener;

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/dr;->n()V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->cB:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/dr;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dr;->a:Landroid/widget/ImageView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->gw:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/dr;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dr;->H:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dr;->H:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->dy:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/dr;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dr;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dr;->b:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/SingleLineTransformationMethod;->getInstance()Landroid/text/method/SingleLineTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dr;->b:Landroid/widget/TextView;

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->fP:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->cP:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/dr;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dr;->c:Landroid/view/View;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->bH:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/dr;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dr;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dr;->d:Landroid/view/View;

    new-instance v1, Lcom/nd/commplatform/d/c/dr$1;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/dr$1;-><init>(Lcom/nd/commplatform/d/c/dr;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->bO:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/dr;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dr;->e:Landroid/widget/Button;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dr;->e:Landroid/widget/Button;

    new-instance v1, Lcom/nd/commplatform/d/c/dr$4;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/dr$4;-><init>(Lcom/nd/commplatform/d/c/dr;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->fA:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/dr;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dr;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dr;->c:Landroid/view/View;

    new-instance v1, Lcom/nd/commplatform/d/c/dr$5;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/dr$5;-><init>(Lcom/nd/commplatform/d/c/dr;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/nd/commplatform/widget/NdAchievementPropertyHolder;

    invoke-direct {v0}, Lcom/nd/commplatform/widget/NdAchievementPropertyHolder;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dr;->g:Lcom/nd/commplatform/widget/NdAchievementPropertyHolder;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/dr;->g:Lcom/nd/commplatform/widget/NdAchievementPropertyHolder;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->av:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/dr;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/widget/NdAppPropertyItem;

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/widget/NdAchievementPropertyHolder;->a(Lcom/nd/commplatform/widget/NdAppPropertyItem;)V

    new-instance v0, Lcom/nd/commplatform/widget/NdLeaderboardPropertyHolder;

    invoke-direct {v0}, Lcom/nd/commplatform/widget/NdLeaderboardPropertyHolder;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dr;->h:Lcom/nd/commplatform/widget/NdLeaderboardPropertyHolder;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/dr;->h:Lcom/nd/commplatform/widget/NdLeaderboardPropertyHolder;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->fI:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/dr;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/widget/NdAppPropertyItem;

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/widget/NdLeaderboardPropertyHolder;->a(Lcom/nd/commplatform/widget/NdAppPropertyItem;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->cs:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/dr;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dr;->i:Landroid/view/View;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dr;->i:Landroid/view/View;

    new-instance v1, Lcom/nd/commplatform/d/c/dr$6;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/dr$6;-><init>(Lcom/nd/commplatform/d/c/dr;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->br:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/dr;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dr;->j:Landroid/view/View;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->br:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/dr;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dr;->k:Landroid/widget/Button;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dr;->k:Landroid/widget/Button;

    new-instance v1, Lcom/nd/commplatform/d/c/dr$7;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/dr$7;-><init>(Lcom/nd/commplatform/d/c/dr;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->cb:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/dr;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dr;->l:Landroid/widget/Button;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dr;->l:Landroid/widget/Button;

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->bJ:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dr;->l:Landroid/widget/Button;

    new-instance v1, Lcom/nd/commplatform/d/c/dr$8;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/dr$8;-><init>(Lcom/nd/commplatform/d/c/dr;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string v2, ""

    :goto_1
    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    new-instance v5, Lcom/nd/commplatform/d/c/dr$2;

    invoke-direct {v5, p0}, Lcom/nd/commplatform/d/c/dr$2;-><init>(Lcom/nd/commplatform/d/c/dr;)V

    invoke-virtual {p0, v5}, Lcom/nd/commplatform/d/c/dr;->a(Lcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/dr;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nd/commplatform/d/c/oh;->g(Landroid/content/Context;)I

    move-result v3

    invoke-super {p0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/a;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z

    goto :goto_0

    :cond_1
    move-object v2, p2

    goto :goto_1
.end method

.method protected a(ZI)V
    .locals 1

    if-nez p1, :cond_1

    const/16 v0, 0xcc

    if-ne v0, p2, :cond_0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/dr;->c()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/nd/commplatform/d/c/dr;->p()V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/dr;->b()V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/dr;->m()V

    goto :goto_0
.end method
