.class public Lcom/nd/commplatform/d/c/fm;
.super Lcom/nd/commplatform/widget/NdFrameInnerContent;


# instance fields
.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private a:Lcom/nd/commplatform/NdCallbackListener;

.field protected b:Landroid/widget/ImageView;

.field protected c:Landroid/widget/TextView;

.field protected d:Landroid/widget/ImageView;

.field protected e:Landroid/view/View;

.field protected f:Landroid/widget/Button;

.field protected g:Landroid/view/View;

.field protected h:Landroid/widget/TextView;

.field protected i:Lcom/nd/commplatform/widget/NdAchievementPropertyHolder;

.field protected j:Lcom/nd/commplatform/widget/NdLeaderboardPropertyHolder;

.field protected k:Landroid/view/View;

.field protected l:Landroid/view/View;

.field protected m:Landroid/widget/Button;

.field protected n:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fm;->H:Ljava/lang/String;

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fm;->I:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/fm;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fm;->H:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/fm;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fm;->I:Ljava/lang/String;

    return-object v0
.end method

.method public static b()V
    .locals 2

    const/16 v0, 0x65

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    return-void
.end method

.method private c()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fm;->i:Lcom/nd/commplatform/widget/NdAchievementPropertyHolder;

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/a;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/widget/NdAchievementPropertyHolder;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fm;->i:Lcom/nd/commplatform/widget/NdAchievementPropertyHolder;

    invoke-virtual {v0, v2}, Lcom/nd/commplatform/widget/NdAchievementPropertyHolder;->a(Z)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fm;->j:Lcom/nd/commplatform/widget/NdLeaderboardPropertyHolder;

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/a;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/widget/NdLeaderboardPropertyHolder;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fm;->j:Lcom/nd/commplatform/widget/NdLeaderboardPropertyHolder;

    invoke-virtual {v0, v2}, Lcom/nd/commplatform/widget/NdLeaderboardPropertyHolder;->a(Z)V

    invoke-static {}, Lcom/nd/commplatform/d/c/of;->a()Lcom/nd/commplatform/d/c/of;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/fm;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/nd/commplatform/d/c/fm$5;

    invoke-direct {v2, p0}, Lcom/nd/commplatform/d/c/fm$5;-><init>(Lcom/nd/commplatform/d/c/fm;)V

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/of;->a(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method private m()V
    .locals 3

    invoke-static {}, Lcom/nd/commplatform/d/c/of;->a()Lcom/nd/commplatform/d/c/of;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/of;->d()Lcom/nd/commplatform/entry/NdUserInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdUserInfo;->getEmotion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdUserInfo;->getEmotion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fm;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdUserInfo;->getEmotion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdUserInfo;->getNickName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdUserInfo;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdUserInfo;->getNickName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nd/commplatform/d/c/fm;->r:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/fm;->i()V

    :cond_0
    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdUserInfo;->getUin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdUserInfo;->getCheckSum()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/nd/commplatform/d/c/fm;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/nd/commplatform/d/c/fm;->c:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->ad:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nd/commplatform/d/c/fm;->p:Z

    iput-boolean v1, p0, Lcom/nd/commplatform/d/c/fm;->q:Z

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fm;->r:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nd/commplatform/d/c/fm;->s:Z

    iput-boolean v1, p0, Lcom/nd/commplatform/d/c/fm;->v:Z

    iput-boolean v1, p0, Lcom/nd/commplatform/d/c/fm;->w:Z

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 3

    const/16 v2, 0x8

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->cB:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/fm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fm;->b:Landroid/widget/ImageView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->dy:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/fm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fm;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fm;->c:Landroid/widget/TextView;

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->bZ:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fm;->c:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/SingleLineTransformationMethod;->getInstance()Landroid/text/method/SingleLineTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->gw:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/fm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fm;->d:Landroid/widget/ImageView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->cP:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/fm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fm;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fm;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->bO:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/fm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fm;->f:Landroid/widget/Button;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fm;->f:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->fA:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/fm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fm;->g:Landroid/view/View;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fm;->g:Landroid/view/View;

    new-instance v1, Lcom/nd/commplatform/d/c/fm$1;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/fm$1;-><init>(Lcom/nd/commplatform/d/c/fm;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->cO:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/fm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fm;->h:Landroid/widget/TextView;

    new-instance v0, Lcom/nd/commplatform/widget/NdAchievementPropertyHolder;

    invoke-direct {v0}, Lcom/nd/commplatform/widget/NdAchievementPropertyHolder;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fm;->i:Lcom/nd/commplatform/widget/NdAchievementPropertyHolder;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fm;->i:Lcom/nd/commplatform/widget/NdAchievementPropertyHolder;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->av:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/fm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/widget/NdAppPropertyItem;

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/widget/NdAchievementPropertyHolder;->a(Lcom/nd/commplatform/widget/NdAppPropertyItem;)V

    new-instance v0, Lcom/nd/commplatform/widget/NdLeaderboardPropertyHolder;

    invoke-direct {v0}, Lcom/nd/commplatform/widget/NdLeaderboardPropertyHolder;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fm;->j:Lcom/nd/commplatform/widget/NdLeaderboardPropertyHolder;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fm;->j:Lcom/nd/commplatform/widget/NdLeaderboardPropertyHolder;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->fI:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/fm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/widget/NdAppPropertyItem;

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/widget/NdLeaderboardPropertyHolder;->a(Lcom/nd/commplatform/widget/NdAppPropertyItem;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->cs:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/fm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fm;->k:Landroid/view/View;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fm;->k:Landroid/view/View;

    new-instance v1, Lcom/nd/commplatform/d/c/fm$2;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/fm$2;-><init>(Lcom/nd/commplatform/d/c/fm;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->br:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/fm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fm;->l:Landroid/view/View;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->br:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/fm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fm;->m:Landroid/widget/Button;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fm;->m:Landroid/widget/Button;

    new-instance v1, Lcom/nd/commplatform/d/c/fm$3;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/fm$3;-><init>(Lcom/nd/commplatform/d/c/fm;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->cb:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/fm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fm;->n:Landroid/widget/Button;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fm;->n:Landroid/widget/Button;

    new-instance v1, Lcom/nd/commplatform/d/c/fm$4;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/fm$4;-><init>(Lcom/nd/commplatform/d/c/fm;)V

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

    new-instance v5, Lcom/nd/commplatform/d/c/fm$6;

    invoke-direct {v5, p0}, Lcom/nd/commplatform/d/c/fm$6;-><init>(Lcom/nd/commplatform/d/c/fm;)V

    invoke-virtual {p0, v5}, Lcom/nd/commplatform/d/c/fm;->a(Lcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/fm;->getContext()Landroid/content/Context;

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
    .locals 6

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/fm;->c()V

    :cond_0
    invoke-direct {p0}, Lcom/nd/commplatform/d/c/fm;->m()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fm;->n:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/fm;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->cv:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nd/commplatform/d/c/a;->x()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
