.class public Lcom/nd/commplatform/d/c/hi;
.super Lcom/nd/commplatform/d/c/hj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/nd/commplatform/d/c/hj",
        "<",
        "Lcom/nd/commplatform/entry/NdPageList",
        "<TT;>;TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/hj;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/hj;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/nd/commplatform/entry/NdPageList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<TT;>;)I"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdPageList;->getTotalCount()I

    move-result v0

    goto :goto_0
.end method

.method public a(Lcom/nd/commplatform/entry/NdPageList;I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<TT;>;I)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdPageList;->getList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, p2, :cond_0

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/nd/commplatform/entry/NdPageList;

    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/hi;->a(Lcom/nd/commplatform/entry/NdPageList;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic a(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/nd/commplatform/entry/NdPageList;

    invoke-virtual {p0, p1}, Lcom/nd/commplatform/d/c/hi;->c(Lcom/nd/commplatform/entry/NdPageList;)Z

    move-result v0

    return v0
.end method

.method protected b(Lcom/nd/commplatform/entry/NdPageList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<TT;>;)I"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdPageList;->getPagination()Lcom/nd/commplatform/entry/NdPagination;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdPagination;->getPageIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected bridge synthetic b(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/nd/commplatform/entry/NdPageList;

    invoke-virtual {p0, p1}, Lcom/nd/commplatform/d/c/hi;->b(Lcom/nd/commplatform/entry/NdPageList;)I

    move-result v0

    return v0
.end method

.method protected synthetic c(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/nd/commplatform/entry/NdPageList;

    invoke-virtual {p0, p1}, Lcom/nd/commplatform/d/c/hi;->a(Lcom/nd/commplatform/entry/NdPageList;)I

    move-result v0

    return v0
.end method

.method protected c(Lcom/nd/commplatform/entry/NdPageList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<TT;>;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdPageList;->getList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
