.class public Lcom/nd/commplatform/d/c/hd;
.super Lcom/nd/commplatform/d/c/hh;


# static fields
.field private static final a:Ljava/lang/String; = "NdLeaderboardListItemHolder"


# instance fields
.field private b:Lcom/nd/commplatform/d/c/hg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nd/commplatform/d/c/hg",
            "<",
            "Lcom/nd/commplatform/entry/NdUserRankInfo;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/nd/commplatform/widget/NdLeaderBoardListItem;

.field private d:Lcom/nd/commplatform/NdCallbackListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdIcon;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nd/commplatform/widget/NdLeaderBoardListItem;)V
    .locals 1

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/hh;-><init>()V

    new-instance v0, Lcom/nd/commplatform/d/c/he;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/he;-><init>(Lcom/nd/commplatform/d/c/hd;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/hd;->b:Lcom/nd/commplatform/d/c/hg;

    iput-object p1, p0, Lcom/nd/commplatform/d/c/hd;->c:Lcom/nd/commplatform/widget/NdLeaderBoardListItem;

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/hd;)Lcom/nd/commplatform/widget/NdLeaderBoardListItem;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hd;->c:Lcom/nd/commplatform/widget/NdLeaderBoardListItem;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hd;->c:Lcom/nd/commplatform/widget/NdLeaderBoardListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdLeaderBoardListItem;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hd;->c:Lcom/nd/commplatform/widget/NdLeaderBoardListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdLeaderBoardListItem;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v0, "NdLeaderboardListItemHolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error Rank Format:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/hd;->c:Lcom/nd/commplatform/widget/NdLeaderBoardListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdLeaderBoardListItem;->d:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hd;->c:Lcom/nd/commplatform/widget/NdLeaderBoardListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdLeaderBoardListItem;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/hd;->c:Lcom/nd/commplatform/widget/NdLeaderBoardListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdLeaderBoardListItem;->d:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hd;->c:Lcom/nd/commplatform/widget/NdLeaderBoardListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdLeaderBoardListItem;->d:Landroid/widget/TextView;

    sget v1, Lcom/nd/commplatform/d/c/jo$d;->bd:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/nd/commplatform/d/c/hd;->c:Lcom/nd/commplatform/widget/NdLeaderBoardListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdLeaderBoardListItem;->d:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hd;->c:Lcom/nd/commplatform/widget/NdLeaderBoardListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdLeaderBoardListItem;->d:Landroid/widget/TextView;

    sget v1, Lcom/nd/commplatform/d/c/jo$d;->be:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/nd/commplatform/d/c/hd;->c:Lcom/nd/commplatform/widget/NdLeaderBoardListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdLeaderBoardListItem;->d:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hd;->c:Lcom/nd/commplatform/widget/NdLeaderBoardListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdLeaderBoardListItem;->d:Landroid/widget/TextView;

    sget v1, Lcom/nd/commplatform/d/c/jo$d;->bf:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/hd;)Lcom/nd/commplatform/d/c/hg;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hd;->b:Lcom/nd/commplatform/d/c/hg;

    return-object v0
.end method

.method private f()V
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hd;->d:Lcom/nd/commplatform/NdCallbackListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hd;->d:Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {v0}, Lcom/nd/commplatform/NdCallbackListener;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/hd;->d:Lcom/nd/commplatform/NdCallbackListener;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/hd;->b()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hd;->c:Lcom/nd/commplatform/widget/NdLeaderBoardListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdLeaderBoardListItem;->a:Landroid/widget/TextView;

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->fL:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public a(Lcom/nd/commplatform/entry/NdUserRankInfo;)V
    .locals 2

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/hd;->f()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hd;->b:Lcom/nd/commplatform/d/c/hg;

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/d/c/hg;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hd;->c:Lcom/nd/commplatform/widget/NdLeaderBoardListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdLeaderBoardListItem;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/hd;->b:Lcom/nd/commplatform/d/c/hg;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/hg;->p()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hd;->c:Lcom/nd/commplatform/widget/NdLeaderBoardListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdLeaderBoardListItem;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/hd;->b:Lcom/nd/commplatform/d/c/hg;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/hg;->q()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdUserRankInfo;->getUserRank()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nd/commplatform/d/c/hd;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hd;->b:Lcom/nd/commplatform/d/c/hg;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/hg;->n()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/hd;->b:Lcom/nd/commplatform/d/c/hg;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/hg;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/nd/commplatform/d/c/hd;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/hd;->c()V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string v2, ""

    :goto_1
    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    new-instance v1, Lcom/nd/commplatform/d/c/hd$1;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/hd$1;-><init>(Lcom/nd/commplatform/d/c/hd;)V

    iput-object v1, p0, Lcom/nd/commplatform/d/c/hd;->d:Lcom/nd/commplatform/NdCallbackListener;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/hd;->c:Lcom/nd/commplatform/widget/NdLeaderBoardListItem;

    invoke-virtual {v1}, Lcom/nd/commplatform/widget/NdLeaderBoardListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nd/commplatform/d/c/oh;->g(Landroid/content/Context;)I

    move-result v3

    iget-object v1, p0, Lcom/nd/commplatform/d/c/hd;->c:Lcom/nd/commplatform/widget/NdLeaderBoardListItem;

    invoke-virtual {v1}, Lcom/nd/commplatform/widget/NdLeaderBoardListItem;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/nd/commplatform/d/c/hd;->d:Lcom/nd/commplatform/NdCallbackListener;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/a;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z

    goto :goto_0

    :cond_1
    move-object v2, p2

    goto :goto_1
.end method

.method public b()V
    .locals 2

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/hd;->f()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hd;->b:Lcom/nd/commplatform/d/c/hg;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/hg;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hd;->c:Lcom/nd/commplatform/widget/NdLeaderBoardListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdLeaderBoardListItem;->a:Landroid/widget/TextView;

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->cT:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hd;->c:Lcom/nd/commplatform/widget/NdLeaderBoardListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdLeaderBoardListItem;->c:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hd;->c:Lcom/nd/commplatform/widget/NdLeaderBoardListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdLeaderBoardListItem;->d:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hd;->c:Lcom/nd/commplatform/widget/NdLeaderBoardListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdLeaderBoardListItem;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/hd;->c()V

    return-void
.end method

.method protected c()V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hd;->c:Lcom/nd/commplatform/widget/NdLeaderBoardListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdLeaderBoardListItem;->b:Landroid/widget/ImageView;

    sget v1, Lcom/nd/commplatform/d/c/jo$d;->aa:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
