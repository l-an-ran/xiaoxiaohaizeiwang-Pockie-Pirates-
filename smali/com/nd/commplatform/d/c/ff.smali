.class public Lcom/nd/commplatform/d/c/ff;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/nd/commplatform/entry/NdFriendUserInfo;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Lcom/nd/commplatform/entry/NdFriendUserInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected b:Z

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/nd/commplatform/entry/NdFriendUserInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ff;->a:Lcom/nd/commplatform/entry/NdFriendUserInfo;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nd/commplatform/d/c/ff;->c:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nd/commplatform/d/c/ff;->b:Z

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ff;->a:Lcom/nd/commplatform/entry/NdFriendUserInfo;

    return-void
.end method

.method public static a(Lcom/nd/commplatform/entry/NdPageList;)Lcom/nd/commplatform/entry/NdPageList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/nd/commplatform/entry/NdFriendUserInfo;",
            ">(",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<TT;>;)",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<",
            "Lcom/nd/commplatform/d/c/ff",
            "<TT;>;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/nd/commplatform/entry/NdPageList;

    invoke-direct {v1}, Lcom/nd/commplatform/entry/NdPageList;-><init>()V

    invoke-virtual {p0}, Lcom/nd/commplatform/entry/NdPageList;->getPagination()Lcom/nd/commplatform/entry/NdPagination;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/entry/NdPageList;->setPagination(Lcom/nd/commplatform/entry/NdPagination;)V

    invoke-virtual {p0}, Lcom/nd/commplatform/entry/NdPageList;->getTotalCount()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/entry/NdPageList;->setTotalCount(I)V

    invoke-virtual {p0}, Lcom/nd/commplatform/entry/NdPageList;->getList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v5, :cond_1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/entry/NdFriendUserInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdFriendUserInfo;->getBaseUserInfo()Lcom/nd/commplatform/entry/NdBaseUserInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nd/commplatform/entry/NdBaseUserInfo;->getUin()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/nd/commplatform/entry/NdBaseUserInfo;->getNickName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/nd/commplatform/d/c/oh;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/nd/commplatform/entry/NdBaseUserInfo;->setNickName(Ljava/lang/String;)V

    new-instance v6, Lcom/nd/commplatform/d/c/ff;

    invoke-direct {v6, v0}, Lcom/nd/commplatform/d/c/ff;-><init>(Lcom/nd/commplatform/entry/NdFriendUserInfo;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v4}, Lcom/nd/commplatform/entry/NdPageList;->setList(Ljava/util/List;)V

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/nd/commplatform/d/c/ff;->c:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nd/commplatform/d/c/ff;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nd/commplatform/d/c/ff;->b:Z

    return v0
.end method
