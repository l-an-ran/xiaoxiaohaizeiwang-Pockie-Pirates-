.class public Lcom/nd/commplatform/entry/NdPageList;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private pagination:Lcom/nd/commplatform/entry/NdPagination;

.field private totalCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/nd/commplatform/entry/NdPageList;->totalCount:I

    return-void
.end method


# virtual methods
.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdPageList;->list:Ljava/util/List;

    return-object v0
.end method

.method public getPagination()Lcom/nd/commplatform/entry/NdPagination;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdPageList;->pagination:Lcom/nd/commplatform/entry/NdPagination;

    return-object v0
.end method

.method public getTotalCount()I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/entry/NdPageList;->totalCount:I

    return v0
.end method

.method public setList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/nd/commplatform/entry/NdPageList;, "Lcom/nd/commplatform/entry/NdPageList<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, p0, Lcom/nd/commplatform/entry/NdPageList;->list:Ljava/util/List;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdPageList;->list:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/entry/NdPageList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdPageList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public setPagination(Lcom/nd/commplatform/entry/NdPagination;)V
    .locals 0
    .param p1, "pagination"    # Lcom/nd/commplatform/entry/NdPagination;

    .prologue
    .local p0, "this":Lcom/nd/commplatform/entry/NdPageList;, "Lcom/nd/commplatform/entry/NdPageList<TT;>;"
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdPageList;->pagination:Lcom/nd/commplatform/entry/NdPagination;

    return-void
.end method

.method public setTotalCount(I)V
    .locals 0
    .param p1, "totalCount"    # I

    .prologue
    .local p0, "this":Lcom/nd/commplatform/entry/NdPageList;, "Lcom/nd/commplatform/entry/NdPageList<TT;>;"
    iput p1, p0, Lcom/nd/commplatform/entry/NdPageList;->totalCount:I

    return-void
.end method
