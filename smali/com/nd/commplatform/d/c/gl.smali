.class public Lcom/nd/commplatform/d/c/gl;
.super Lcom/nd/commplatform/d/c/gj;

# interfaces
.implements Lcom/nd/commplatform/d/c/hm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/d/c/gj",
        "<",
        "Lcom/nd/commplatform/d/c/gf;",
        ">;",
        "Lcom/nd/commplatform/d/c/hm",
        "<",
        "Lcom/nd/commplatform/d/c/gf;",
        ">;"
    }
.end annotation


# instance fields
.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/gj;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/nd/commplatform/d/c/gl;->d:I

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/gl;Lcom/nd/commplatform/entry/NdPageList;)Lcom/nd/commplatform/entry/NdPageList;
    .locals 1

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/gl;->a(Lcom/nd/commplatform/entry/NdPageList;)Lcom/nd/commplatform/entry/NdPageList;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/nd/commplatform/entry/NdPageList;)Lcom/nd/commplatform/entry/NdPageList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<",
            "Lcom/nd/commplatform/entry/NdSysMsgInfo;",
            ">;)",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<",
            "Lcom/nd/commplatform/d/c/gf;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdPageList;->getPagination()Lcom/nd/commplatform/entry/NdPagination;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdPagination;->getPageIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_4

    move v1, v2

    :goto_1
    new-instance v3, Lcom/nd/commplatform/entry/NdPageList;

    invoke-direct {v3}, Lcom/nd/commplatform/entry/NdPageList;-><init>()V

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdPageList;->getPagination()Lcom/nd/commplatform/entry/NdPagination;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/nd/commplatform/entry/NdPageList;->setPagination(Lcom/nd/commplatform/entry/NdPagination;)V

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdPageList;->getTotalCount()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/nd/commplatform/entry/NdPageList;->setTotalCount(I)V

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdPageList;->getList()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_3

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    move v4, v2

    :goto_2
    if-ge v4, v7, :cond_2

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/entry/NdSysMsgInfo;

    new-instance v8, Lcom/nd/commplatform/d/c/gf;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/gl;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v0, v9}, Lcom/nd/commplatform/d/c/gf;-><init>(Lcom/nd/commplatform/entry/NdSysMsgInfo;Landroid/content/Context;)V

    iget-object v9, p0, Lcom/nd/commplatform/d/c/gl;->b:Lcom/nd/commplatform/d/c/hi;

    invoke-virtual {v9}, Lcom/nd/commplatform/d/c/hi;->f()I

    move-result v9

    mul-int/2addr v9, v1

    add-int/2addr v9, v4

    iget v10, p0, Lcom/nd/commplatform/d/c/gl;->d:I

    if-ge v9, v10, :cond_1

    invoke-virtual {v0, v2}, Lcom/nd/commplatform/entry/NdSysMsgInfo;->setStatus(Z)V

    :cond_1
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    :cond_2
    invoke-virtual {v3, v6}, Lcom/nd/commplatform/entry/NdPageList;->setList(Ljava/util/List;)V

    :cond_3
    move-object v0, v3

    goto :goto_0

    :cond_4
    move v1, v0

    goto :goto_1
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/nd/commplatform/d/c/gl;->d:I

    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 1

    check-cast p1, Lcom/nd/commplatform/widget/NdListBlankView;

    sget v0, Lcom/nd/commplatform/d/c/jo$h;->fM:I

    invoke-virtual {p1, v0}, Lcom/nd/commplatform/widget/NdListBlankView;->a(I)V

    return-void
.end method

.method public a(Landroid/view/View;IIZ)V
    .locals 0

    check-cast p1, Lcom/nd/commplatform/widget/NdListViewFooter;

    invoke-virtual {p1, p4}, Lcom/nd/commplatform/widget/NdListViewFooter;->a(Z)V

    return-void
.end method

.method public a(Lcom/nd/commplatform/d/c/gf;Lcom/nd/commplatform/d/c/hh;)V
    .locals 0

    invoke-virtual {p1}, Lcom/nd/commplatform/d/c/gf;->e()V

    invoke-static {p1}, Lcom/nd/commplatform/d/c/go;->a(Lcom/nd/commplatform/d/c/gf;)V

    return-void
.end method

.method public a(Lcom/nd/commplatform/d/c/hh;)V
    .locals 0

    check-cast p1, Lcom/nd/commplatform/d/c/ho;

    invoke-virtual {p1}, Lcom/nd/commplatform/d/c/ho;->b()V

    return-void
.end method

.method public a(Lcom/nd/commplatform/d/c/hh;Lcom/nd/commplatform/d/c/gf;)V
    .locals 0

    check-cast p1, Lcom/nd/commplatform/d/c/ho;

    invoke-virtual {p1, p2}, Lcom/nd/commplatform/d/c/ho;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/nd/commplatform/d/c/hh;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/nd/commplatform/d/c/gf;

    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/gl;->a(Lcom/nd/commplatform/d/c/hh;Lcom/nd/commplatform/d/c/gf;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/nd/commplatform/d/c/hh;)V
    .locals 0

    check-cast p1, Lcom/nd/commplatform/d/c/gf;

    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/gl;->a(Lcom/nd/commplatform/d/c/gf;Lcom/nd/commplatform/d/c/hh;)V

    return-void
.end method

.method public b(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->M:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/widget/NdListBlankView;

    return-object v0
.end method

.method public b(Landroid/view/View;)Lcom/nd/commplatform/d/c/hh;
    .locals 2

    new-instance v0, Lcom/nd/commplatform/d/c/gl$2;

    check-cast p1, Lcom/nd/commplatform/widget/NdMessageListItem;

    new-instance v1, Lcom/nd/commplatform/d/c/gl$1;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/gl$1;-><init>(Lcom/nd/commplatform/d/c/gl;)V

    invoke-direct {v0, p0, p1, v1}, Lcom/nd/commplatform/d/c/gl$2;-><init>(Lcom/nd/commplatform/d/c/gl;Lcom/nd/commplatform/widget/NdMessageListItem;Lcom/nd/commplatform/d/c/hn;)V

    return-object v0
.end method

.method public b(I)V
    .locals 4

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    new-instance v1, Lcom/nd/commplatform/d/c/gl$3;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/gl$3;-><init>(Lcom/nd/commplatform/d/c/gl;)V

    new-instance v2, Lcom/nd/commplatform/entry/NdPagination;

    invoke-direct {v2}, Lcom/nd/commplatform/entry/NdPagination;-><init>()V

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Lcom/nd/commplatform/entry/NdPagination;->setPageIndex(I)V

    iget-object v3, p0, Lcom/nd/commplatform/d/c/gl;->b:Lcom/nd/commplatform/d/c/hi;

    invoke-virtual {v3}, Lcom/nd/commplatform/d/c/hi;->f()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/nd/commplatform/entry/NdPagination;->setPageSize(I)V

    iget-object v3, p0, Lcom/nd/commplatform/d/c/gl;->c:Lcom/nd/commplatform/widget/NdFrameInnerContent;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/nd/commplatform/d/c/gl;->c:Lcom/nd/commplatform/widget/NdFrameInnerContent;

    invoke-virtual {v3, v1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->a(Lcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;

    :cond_0
    invoke-super {p0}, Lcom/nd/commplatform/d/c/gj;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/nd/commplatform/d/c/a;->f(Lcom/nd/commplatform/entry/NdPagination;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method public c(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->al:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/widget/NdListViewFooter;

    return-object v0
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    check-cast p1, Lcom/nd/commplatform/widget/NdListBlankView;

    sget v0, Lcom/nd/commplatform/d/c/jo$b;->m:I

    invoke-virtual {p1, v0}, Lcom/nd/commplatform/widget/NdListBlankView;->b(I)V

    return-void
.end method

.method public d(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->bm:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/widget/NdMessageListItem;

    return-object v0
.end method
