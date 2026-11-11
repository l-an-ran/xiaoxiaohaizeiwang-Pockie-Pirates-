.class public Lcom/nd/commplatform/d/c/fc;
.super Lcom/nd/commplatform/widget/NdFrameInnerContent;


# static fields
.field public static final a:Ljava/lang/String; = "NdAppAchieveInfo"


# instance fields
.field private b:Lcom/nd/commplatform/entry/NdAppAchieveInfo;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/Button;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/fc;)Lcom/nd/commplatform/entry/NdAppAchieveInfo;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fc;->b:Lcom/nd/commplatform/entry/NdAppAchieveInfo;

    return-object v0
.end method

.method public static a(Lcom/nd/commplatform/entry/NdAppAchieveInfo;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/nd/commplatform/d/c/bx;

    const/16 v1, 0xbbb

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/bx;-><init>(I)V

    const-string v1, "NdAppAchieveInfo"

    invoke-virtual {v0, v1, p0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "uin"

    invoke-virtual {v0, v1, p1}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x6b

    invoke-static {v1, v0}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    return-void
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/fc;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fc;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fc;->b:Lcom/nd/commplatform/entry/NdAppAchieveInfo;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fc;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fc;->b:Lcom/nd/commplatform/entry/NdAppAchieveInfo;

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdAppAchieveInfo;->getAchievementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fc;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fc;->b:Lcom/nd/commplatform/entry/NdAppAchieveInfo;

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdAppAchieveInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fc;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fc;->b:Lcom/nd/commplatform/entry/NdAppAchieveInfo;

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdAppAchieveInfo;->getDisplayText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/fc;->c()V

    goto :goto_0
.end method

.method private c()V
    .locals 6

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fc;->b:Lcom/nd/commplatform/entry/NdAppAchieveInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdAppAchieveInfo;->isUnlock()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/fc;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$d;->aE:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fc;->c:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/op;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    new-instance v5, Lcom/nd/commplatform/d/c/fc$1;

    invoke-direct {v5, p0}, Lcom/nd/commplatform/d/c/fc$1;-><init>(Lcom/nd/commplatform/d/c/fc;)V

    invoke-virtual {p0, v5}, Lcom/nd/commplatform/d/c/fc;->a(Lcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fc;->b:Lcom/nd/commplatform/entry/NdAppAchieveInfo;

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdAppAchieveInfo;->getAchievementId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/fc;->b:Lcom/nd/commplatform/entry/NdAppAchieveInfo;

    invoke-virtual {v2}, Lcom/nd/commplatform/entry/NdAppAchieveInfo;->getCheckSum()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-super {p0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/a;->c(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fc;->c:Landroid/widget/ImageView;

    sget v1, Lcom/nd/commplatform/d/c/jo$d;->aE:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private m()V
    .locals 3

    const/16 v2, 0xbbb

    invoke-static {v2}, Lcom/nd/commplatform/d/c/cb;->b(I)Lcom/nd/commplatform/d/c/bx;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "NdAppAchieveInfo"

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/entry/NdAppAchieveInfo;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fc;->b:Lcom/nd/commplatform/entry/NdAppAchieveInfo;

    const-string v0, "uin"

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fc;->h:Ljava/lang/String;

    :cond_0
    invoke-static {v2}, Lcom/nd/commplatform/d/c/cb;->c(I)Lcom/nd/commplatform/d/c/bx;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fc;->b:Lcom/nd/commplatform/entry/NdAppAchieveInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fc;->b:Lcom/nd/commplatform/entry/NdAppAchieveInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdAppAchieveInfo;->getAchievementName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fc;->r:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/fc;->i()V

    return-void

    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fc;->r:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->v:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nd/commplatform/d/c/fc;->p:Z

    iput-boolean v1, p0, Lcom/nd/commplatform/d/c/fc;->q:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fc;->r:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nd/commplatform/d/c/fc;->s:Z

    iput-object v2, p0, Lcom/nd/commplatform/d/c/fc;->t:Ljava/lang/String;

    iput-object v2, p0, Lcom/nd/commplatform/d/c/fc;->u:Landroid/view/View$OnClickListener;

    iput-boolean v1, p0, Lcom/nd/commplatform/d/c/fc;->v:Z

    iput-boolean v1, p0, Lcom/nd/commplatform/d/c/fc;->w:Z

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->au:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/fc;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fc;->c:Landroid/widget/ImageView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->ax:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/fc;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fc;->d:Landroid/widget/TextView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->ay:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/fc;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fc;->e:Landroid/widget/TextView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->at:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/fc;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fc;->f:Landroid/widget/TextView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->gn:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/fc;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fc;->g:Landroid/widget/Button;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fc;->g:Landroid/widget/Button;

    new-instance v1, Lcom/nd/commplatform/d/c/fc$2;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/fc$2;-><init>(Lcom/nd/commplatform/d/c/fc;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected a(ZI)V
    .locals 3

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/fc;->m()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fc;->b:Lcom/nd/commplatform/entry/NdAppAchieveInfo;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fc;->h:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fc;->h:Ljava/lang/String;

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/a;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fc;->g:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :goto_1
    invoke-direct {p0}, Lcom/nd/commplatform/d/c/fc;->b()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fc;->b:Lcom/nd/commplatform/entry/NdAppAchieveInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdAppAchieveInfo;->isUnlock()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fc;->g:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fc;->g:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method
