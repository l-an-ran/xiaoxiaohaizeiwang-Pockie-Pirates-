.class public Lcom/nd/commplatform/d/c/fj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nd/commplatform/d/c/fj$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "NdLeaderboardSwitcherViewBase"


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lcom/nd/commplatform/d/c/fi;

.field private d:Landroid/content/Context;

.field private e:Landroid/view/ViewGroup;

.field private f:Lcom/nd/commplatform/d/c/fj$a;

.field private g:Lcom/nd/commplatform/d/c/fj$a;

.field private h:Lcom/nd/commplatform/d/c/fj$a;

.field private i:Landroid/view/ViewGroup;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/view/View;

.field private n:Z

.field private o:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/nd/commplatform/d/c/fj$a;

    invoke-direct {v0, p0, v1}, Lcom/nd/commplatform/d/c/fj$a;-><init>(Lcom/nd/commplatform/d/c/fj;Lcom/nd/commplatform/d/c/fj$1;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fj;->f:Lcom/nd/commplatform/d/c/fj$a;

    new-instance v0, Lcom/nd/commplatform/d/c/fj$a;

    invoke-direct {v0, p0, v1}, Lcom/nd/commplatform/d/c/fj$a;-><init>(Lcom/nd/commplatform/d/c/fj;Lcom/nd/commplatform/d/c/fj$1;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fj;->g:Lcom/nd/commplatform/d/c/fj$a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nd/commplatform/d/c/fj;->n:Z

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/fj;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fj;->j:Landroid/widget/ImageView;

    return-object v0
.end method

.method private a(Lcom/nd/commplatform/entry/NdUserRankInfo;I)Ljava/lang/String;
    .locals 12

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v2, 0x5

    const/4 v0, 0x1

    const/4 v9, 0x0

    const-string v1, ""

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdUserRankInfo;->getScore()Ljava/lang/String;

    move-result-object v3

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fj;->m:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdUserRankInfo;->getUserRank()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdUserRankInfo;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdUserRankInfo;->getUin()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nd/commplatform/d/c/a;->o()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fj;->d:Landroid/content/Context;

    sget v3, Lcom/nd/commplatform/d/c/jo$h;->mv:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    :goto_1
    const/16 v1, 0x64

    if-ge v4, v1, :cond_3

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fj;->d:Landroid/content/Context;

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->mw:I

    new-array v5, v11, [Ljava/lang/Object;

    aput-object v3, v5, v9

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v10

    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    if-gtz p2, :cond_4

    move p2, v0

    :cond_4
    int-to-double v5, v4

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    mul-double/2addr v5, v7

    int-to-double v7, p2

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v1, v5

    const/16 v5, 0x50

    if-le v1, v5, :cond_8

    sub-int v1, p2, v4

    int-to-double v4, v1

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    int-to-double v6, p2

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    rem-int/lit8 v4, v1, 0x5

    if-eqz v4, :cond_5

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x5

    :cond_5
    if-ge v1, v2, :cond_6

    move v1, v2

    :cond_6
    const/16 v2, 0x14

    if-le v1, v2, :cond_7

    const/16 v1, 0x14

    :cond_7
    iget-object v2, p0, Lcom/nd/commplatform/d/c/fj;->d:Landroid/content/Context;

    sget v4, Lcom/nd/commplatform/d/c/jo$h;->my:I

    new-array v5, v11, [Ljava/lang/Object;

    aput-object v3, v5, v9

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v10

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    rem-int/lit8 v4, v1, 0x5

    if-eqz v4, :cond_9

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x5

    :cond_9
    if-ge v1, v2, :cond_a

    move v1, v2

    :cond_a
    const/16 v2, 0x50

    if-le v1, v2, :cond_b

    const/16 v1, 0x50

    :cond_b
    iget-object v2, p0, Lcom/nd/commplatform/d/c/fj;->d:Landroid/content/Context;

    sget v4, Lcom/nd/commplatform/d/c/jo$h;->mx:I

    new-array v5, v11, [Ljava/lang/Object;

    aput-object v3, v5, v9

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v10

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_c
    move-object v3, v1

    goto/16 :goto_1
.end method

.method private a(Lcom/nd/commplatform/entry/NdUserRankInfo;)V
    .locals 6

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fj;->j:Landroid/widget/ImageView;

    sget v1, Lcom/nd/commplatform/d/c/jo$d;->aa:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdUserRankInfo;->getUin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdUserRankInfo;->getCheckSum()Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez v2, :cond_1

    const-string v2, ""

    :cond_1
    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    new-instance v5, Lcom/nd/commplatform/d/c/fj$1;

    invoke-direct {v5, p0, p1}, Lcom/nd/commplatform/d/c/fj$1;-><init>(Lcom/nd/commplatform/d/c/fj;Lcom/nd/commplatform/entry/NdUserRankInfo;)V

    iget-object v3, p0, Lcom/nd/commplatform/d/c/fj;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/nd/commplatform/d/c/oh;->g(Landroid/content/Context;)I

    move-result v3

    iget-object v4, p0, Lcom/nd/commplatform/d/c/fj;->d:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/a;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z

    goto :goto_0
.end method

.method private b(Lcom/nd/commplatform/entry/NdUserRankInfo;)Ljava/lang/String;
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdUserRankInfo;->getDisplayText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdUserRankInfo;->getScore()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fj;->d:Landroid/content/Context;

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->fZ:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdUserRankInfo;->getUin()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/a;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fj;->d:Landroid/content/Context;

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->jy:I

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/nd/commplatform/d/c/fj;->d:Landroid/content/Context;

    sget v4, Lcom/nd/commplatform/d/c/jo$h;->mz:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fj;->d:Landroid/content/Context;

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->jy:I

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/nd/commplatform/d/c/fj;->d:Landroid/content/Context;

    sget v4, Lcom/nd/commplatform/d/c/jo$h;->mr:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fj;->h:Lcom/nd/commplatform/d/c/fj$a;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/fj$a;->j:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fj;->h:Lcom/nd/commplatform/d/c/fj$a;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/fj$a;->e:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    return-void
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fj;->k:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fj;->l:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fj;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fj;->f:Lcom/nd/commplatform/d/c/fj$a;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/fj$a;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/nd/commplatform/d/c/fj;->n:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fj;->f:Lcom/nd/commplatform/d/c/fj$a;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/fj$a;->c:Landroid/widget/Button;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fj;->f:Lcom/nd/commplatform/d/c/fj$a;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/fj$a;->c:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fj;->f:Lcom/nd/commplatform/d/c/fj$a;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/fj$a;->d:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v4}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fj;->f:Lcom/nd/commplatform/d/c/fj$a;

    iget-object v3, v0, Lcom/nd/commplatform/d/c/fj$a;->e:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/fj;->f()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fj;->f:Lcom/nd/commplatform/d/c/fj$a;

    iget-object v3, v0, Lcom/nd/commplatform/d/c/fj$a;->f:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/fj;->f()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fj;->f:Lcom/nd/commplatform/d/c/fj$a;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/fj$a;->d:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fj;->f:Lcom/nd/commplatform/d/c/fj$a;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/fj$a;->d:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setVisibility(I)V

    :goto_3
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fj;->e:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/nd/commplatform/d/c/fj;->f:Lcom/nd/commplatform/d/c/fj$a;

    iget-object v3, v3, Lcom/nd/commplatform/d/c/fj$a;->a:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fj;->f:Lcom/nd/commplatform/d/c/fj$a;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/fj$a;->g:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v4}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fj;->f:Lcom/nd/commplatform/d/c/fj$a;

    iget-object v3, v0, Lcom/nd/commplatform/d/c/fj$a;->h:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/fj;->e()I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fj;->f:Lcom/nd/commplatform/d/c/fj$a;

    iget-object v3, v0, Lcom/nd/commplatform/d/c/fj$a;->i:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/fj;->e()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fj;->f:Lcom/nd/commplatform/d/c/fj$a;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/fj$a;->j:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/fj;->e()I

    move-result v3

    if-nez v3, :cond_6

    :goto_6
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fj;->f:Lcom/nd/commplatform/d/c/fj$a;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/fj$a;->g:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fj;->f:Lcom/nd/commplatform/d/c/fj$a;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/fj$a;->g:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fj;->g:Lcom/nd/commplatform/d/c/fj$a;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/fj$a;->d:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v5}, Landroid/widget/RadioGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fj;->f:Lcom/nd/commplatform/d/c/fj$a;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fj;->h:Lcom/nd/commplatform/d/c/fj$a;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fj;->f:Lcom/nd/commplatform/d/c/fj$a;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/fj$a;->c:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fj;->f:Lcom/nd/commplatform/d/c/fj$a;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/fj$a;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_1
    move v0, v2

    goto/16 :goto_1

    :cond_2
    move v0, v2

    goto/16 :goto_2

    :cond_3
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fj;->f:Lcom/nd/commplatform/d/c/fj$a;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/fj$a;->d:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v5}, Landroid/widget/RadioGroup;->setVisibility(I)V

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_4

    :cond_5
    move v0, v2

    goto :goto_5

    :cond_6
    move v1, v2

    goto :goto_6
.end method

.method public a(ILcom/nd/commplatform/entry/NdUserRankInfo;I)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nd/commplatform/d/c/fj;->b(Z)V

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/fj;->g()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p2, :cond_2

    if-nez p3, :cond_2

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/fj;->g()V

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/fj;->d()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fj;->k:Landroid/widget/TextView;

    invoke-direct {p0, p2, p3}, Lcom/nd/commplatform/d/c/fj;->a(Lcom/nd/commplatform/entry/NdUserRankInfo;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fj;->l:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lcom/nd/commplatform/d/c/fj;->b(Lcom/nd/commplatform/entry/NdUserRankInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p2}, Lcom/nd/commplatform/d/c/fj;->a(Lcom/nd/commplatform/entry/NdUserRankInfo;)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fj;->f:Lcom/nd/commplatform/d/c/fj$a;

    iput-object p1, v0, Lcom/nd/commplatform/d/c/fj$a;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fj;->f:Lcom/nd/commplatform/d/c/fj$a;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->fL:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/nd/commplatform/d/c/fj$a;->b:Landroid/widget/Button;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fj;->f:Lcom/nd/commplatform/d/c/fj$a;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->fM:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/nd/commplatform/d/c/fj$a;->c:Landroid/widget/Button;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fj;->f:Lcom/nd/commplatform/d/c/fj$a;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->iO:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, v1, Lcom/nd/commplatform/d/c/fj$a;->d:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fj;->f:Lcom/nd/commplatform/d/c/fj$a;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->aW:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, v1, Lcom/nd/commplatform/d/c/fj$a;->e:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fj;->f:Lcom/nd/commplatform/d/c/fj$a;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->ci:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, v1, Lcom/nd/commplatform/d/c/fj$a;->f:Landroid/widget/RadioButton;

    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/fj;->e:Landroid/view/ViewGroup;

    return-void
.end method

.method public a(Lcom/nd/commplatform/d/c/fi;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/fj;->c:Lcom/nd/commplatform/d/c/fi;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/fj;->o:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nd/commplatform/d/c/fj;->n:Z

    return-void
.end method

.method public b()V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fj;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fj;->g:Lcom/nd/commplatform/d/c/fj$a;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/fj$a;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/nd/commplatform/d/c/fj;->n:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fj;->g:Lcom/nd/commplatform/d/c/fj$a;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/fj$a;->c:Landroid/widget/Button;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fj;->g:Lcom/nd/commplatform/d/c/fj$a;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/fj$a;->c:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fj;->g:Lcom/nd/commplatform/d/c/fj$a;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/fj$a;->g:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v5}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fj;->g:Lcom/nd/commplatform/d/c/fj$a;

    iget-object v3, v0, Lcom/nd/commplatform/d/c/fj$a;->h:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/fj;->e()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fj;->g:Lcom/nd/commplatform/d/c/fj$a;

    iget-object v3, v0, Lcom/nd/commplatform/d/c/fj$a;->i:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/fj;->e()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fj;->g:Lcom/nd/commplatform/d/c/fj$a;

    iget-object v3, v0, Lcom/nd/commplatform/d/c/fj$a;->j:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/fj;->e()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fj;->g:Lcom/nd/commplatform/d/c/fj$a;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/fj$a;->g:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fj;->g:Lcom/nd/commplatform/d/c/fj$a;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/fj$a;->g:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fj;->e:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/nd/commplatform/d/c/fj;->g:Lcom/nd/commplatform/d/c/fj$a;

    iget-object v3, v3, Lcom/nd/commplatform/d/c/fj$a;->a:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fj;->g:Lcom/nd/commplatform/d/c/fj$a;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/fj$a;->d:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v5}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fj;->g:Lcom/nd/commplatform/d/c/fj$a;

    iget-object v3, v0, Lcom/nd/commplatform/d/c/fj$a;->e:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/fj;->f()I

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fj;->g:Lcom/nd/commplatform/d/c/fj$a;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/fj$a;->f:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/fj;->f()I

    move-result v3

    if-ne v3, v1, :cond_5

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fj;->g:Lcom/nd/commplatform/d/c/fj$a;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/fj$a;->d:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->i()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fj;->g:Lcom/nd/commplatform/d/c/fj$a;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/fj$a;->d:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setVisibility(I)V

    :goto_6
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fj;->f:Lcom/nd/commplatform/d/c/fj$a;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/fj$a;->g:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v6}, Landroid/widget/RadioGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fj;->g:Lcom/nd/commplatform/d/c/fj$a;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fj;->h:Lcom/nd/commplatform/d/c/fj$a;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fj;->g:Lcom/nd/commplatform/d/c/fj$a;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/fj$a;->c:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fj;->g:Lcom/nd/commplatform/d/c/fj$a;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/fj$a;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_1
    move v0, v2

    goto/16 :goto_1

    :cond_2
    move v0, v2

    goto/16 :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_4

    :cond_5
    move v1, v2

    goto :goto_5

    :cond_6
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fj;->g:Lcom/nd/commplatform/d/c/fj$a;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/fj$a;->d:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v6}, Landroid/widget/RadioGroup;->setVisibility(I)V

    goto :goto_6
.end method

.method public b(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fj;->g:Lcom/nd/commplatform/d/c/fj$a;

    iput-object p1, v0, Lcom/nd/commplatform/d/c/fj$a;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fj;->g:Lcom/nd/commplatform/d/c/fj$a;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->fL:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/nd/commplatform/d/c/fj$a;->b:Landroid/widget/Button;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fj;->g:Lcom/nd/commplatform/d/c/fj$a;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->fM:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/nd/commplatform/d/c/fj$a;->c:Landroid/widget/Button;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fj;->g:Lcom/nd/commplatform/d/c/fj$a;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->iK:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, v1, Lcom/nd/commplatform/d/c/fj$a;->g:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fj;->g:Lcom/nd/commplatform/d/c/fj$a;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->iM:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, v1, Lcom/nd/commplatform/d/c/fj$a;->h:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fj;->g:Lcom/nd/commplatform/d/c/fj$a;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->iN:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, v1, Lcom/nd/commplatform/d/c/fj$a;->i:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fj;->g:Lcom/nd/commplatform/d/c/fj$a;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->iJ:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, v1, Lcom/nd/commplatform/d/c/fj$a;->j:Landroid/widget/RadioButton;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/fj;->b:Ljava/lang/String;

    return-void
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nd/commplatform/d/c/fj;->b(Z)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fj;->m:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fj;->k:Landroid/widget/TextView;

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->cT:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fj;->l:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fj;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fj;->f:Lcom/nd/commplatform/d/c/fj$a;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->iL:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, v1, Lcom/nd/commplatform/d/c/fj$a;->g:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fj;->f:Lcom/nd/commplatform/d/c/fj$a;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->iM:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, v1, Lcom/nd/commplatform/d/c/fj$a;->h:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fj;->f:Lcom/nd/commplatform/d/c/fj$a;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->iN:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, v1, Lcom/nd/commplatform/d/c/fj$a;->i:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fj;->f:Lcom/nd/commplatform/d/c/fj$a;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->iJ:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, v1, Lcom/nd/commplatform/d/c/fj$a;->j:Landroid/widget/RadioButton;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->cX:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fj;->i:Landroid/view/ViewGroup;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->hh:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fj;->j:Landroid/widget/ImageView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->hl:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fj;->k:Landroid/widget/TextView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->hf:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fj;->l:Landroid/widget/TextView;

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fj;->i:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    iget-object v1, p0, Lcom/nd/commplatform/d/c/fj;->g:Lcom/nd/commplatform/d/c/fj$a;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->iP:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, v1, Lcom/nd/commplatform/d/c/fj$a;->d:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fj;->g:Lcom/nd/commplatform/d/c/fj$a;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->aX:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, v1, Lcom/nd/commplatform/d/c/fj$a;->e:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fj;->g:Lcom/nd/commplatform/d/c/fj$a;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->cj:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, v1, Lcom/nd/commplatform/d/c/fj$a;->f:Landroid/widget/RadioButton;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fj;->i:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fj;->k:Landroid/widget/TextView;

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->fL:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/fj;->m:Landroid/view/View;

    return-void
.end method

.method public e()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fj;->h:Lcom/nd/commplatform/d/c/fj$a;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/nd/commplatform/d/c/fj;->h:Lcom/nd/commplatform/d/c/fj$a;

    iget-object v1, v1, Lcom/nd/commplatform/d/c/fj$a;->h:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/nd/commplatform/d/c/fj;->h:Lcom/nd/commplatform/d/c/fj$a;

    iget-object v1, v1, Lcom/nd/commplatform/d/c/fj$a;->i:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/nd/commplatform/d/c/fj;->h:Lcom/nd/commplatform/d/c/fj$a;

    iget-object v1, v1, Lcom/nd/commplatform/d/c/fj$a;->j:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public f()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fj;->h:Lcom/nd/commplatform/d/c/fj$a;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/nd/commplatform/d/c/fj;->h:Lcom/nd/commplatform/d/c/fj$a;

    iget-object v1, v1, Lcom/nd/commplatform/d/c/fj$a;->e:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fj;->h:Lcom/nd/commplatform/d/c/fj$a;

    iget-object v1, v1, Lcom/nd/commplatform/d/c/fj$a;->f:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fj;->h:Lcom/nd/commplatform/d/c/fj$a;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/fj$a;->g:Landroid/widget/RadioGroup;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fj;->h:Lcom/nd/commplatform/d/c/fj$a;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/fj$a;->d:Landroid/widget/RadioGroup;

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fj;->c:Lcom/nd/commplatform/d/c/fi;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/fi;->b()V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fj;->h:Lcom/nd/commplatform/d/c/fj$a;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/fj$a;->b:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/cb;->a(Lcom/nd/commplatform/d/c/bx;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fj;->h:Lcom/nd/commplatform/d/c/fj$a;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/fj$a;->c:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fj;->d:Landroid/content/Context;

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->hn:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/nd/commplatform/d/c/fj;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/nd/commplatform/d/c/fj;->o:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/nd/commplatform/d/c/fp;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
