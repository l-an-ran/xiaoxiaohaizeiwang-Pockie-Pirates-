.class final Lcom/nd/commplatform/d/c/he;
.super Lcom/nd/commplatform/d/c/hg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/d/c/hd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/d/c/hg",
        "<",
        "Lcom/nd/commplatform/entry/NdUserRankInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/hd;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/hd;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/he;->a:Lcom/nd/commplatform/d/c/hd;

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/hg;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/he;->b:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/entry/NdUserRankInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdUserRankInfo;->getCheckSum()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/he;->b:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/entry/NdUserRankInfo;

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/entry/NdUserRankInfo;->setCheckSum(Ljava/lang/String;)V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/he;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/a;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/he;->a:Lcom/nd/commplatform/d/c/hd;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/hd;->a(Lcom/nd/commplatform/d/c/hd;)Lcom/nd/commplatform/widget/NdLeaderBoardListItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/widget/NdLeaderBoardListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->mv:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/he;->b:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/entry/NdUserRankInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdUserRankInfo;->getNickName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/he;->b:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/entry/NdUserRankInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdUserRankInfo;->getUin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/CharSequence;
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/he;->b:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/entry/NdUserRankInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdUserRankInfo;->getDisplayText()Ljava/lang/String;

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

    iget-object v0, p0, Lcom/nd/commplatform/d/c/he;->b:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/entry/NdUserRankInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdUserRankInfo;->getScore()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/nd/commplatform/d/c/he;->a:Lcom/nd/commplatform/d/c/hd;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/hd;->a(Lcom/nd/commplatform/d/c/hd;)Lcom/nd/commplatform/widget/NdLeaderBoardListItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nd/commplatform/widget/NdLeaderBoardListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->fZ:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/he;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/a;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/he;->a:Lcom/nd/commplatform/d/c/hd;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/hd;->a(Lcom/nd/commplatform/d/c/hd;)Lcom/nd/commplatform/widget/NdLeaderBoardListItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/widget/NdLeaderBoardListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->jy:I

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/nd/commplatform/d/c/he;->a:Lcom/nd/commplatform/d/c/hd;

    invoke-static {v3}, Lcom/nd/commplatform/d/c/hd;->a(Lcom/nd/commplatform/d/c/hd;)Lcom/nd/commplatform/widget/NdLeaderBoardListItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nd/commplatform/widget/NdLeaderBoardListItem;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/nd/commplatform/d/c/jo$h;->mz:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/nd/commplatform/d/c/he;->a:Lcom/nd/commplatform/d/c/hd;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/hd;->a(Lcom/nd/commplatform/d/c/hd;)Lcom/nd/commplatform/widget/NdLeaderBoardListItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/widget/NdLeaderBoardListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->jy:I

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/nd/commplatform/d/c/he;->a:Lcom/nd/commplatform/d/c/hd;

    invoke-static {v3}, Lcom/nd/commplatform/d/c/hd;->a(Lcom/nd/commplatform/d/c/hd;)Lcom/nd/commplatform/widget/NdLeaderBoardListItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nd/commplatform/widget/NdLeaderBoardListItem;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/nd/commplatform/d/c/jo$h;->mr:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
