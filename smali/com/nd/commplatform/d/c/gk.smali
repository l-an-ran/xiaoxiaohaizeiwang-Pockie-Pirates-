.class public Lcom/nd/commplatform/d/c/gk;
.super Lcom/nd/commplatform/d/c/gj;

# interfaces
.implements Lcom/nd/commplatform/d/c/hm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/d/c/gj",
        "<",
        "Lcom/nd/commplatform/entry/NdUserMsgInfo;",
        ">;",
        "Lcom/nd/commplatform/d/c/hm",
        "<",
        "Lcom/nd/commplatform/entry/NdUserMsgInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/gj;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/gk;Lcom/nd/commplatform/entry/NdPageList;)Lcom/nd/commplatform/entry/NdPageList;
    .locals 1

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/gk;->a(Lcom/nd/commplatform/entry/NdPageList;)Lcom/nd/commplatform/entry/NdPageList;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/nd/commplatform/entry/NdPageList;)Lcom/nd/commplatform/entry/NdPageList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<",
            "Lcom/nd/commplatform/entry/NdUserMsgInfo;",
            ">;)",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<",
            "Lcom/nd/commplatform/entry/NdUserMsgInfo;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    return-object p1

    :cond_1
    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdPageList;->getList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/entry/NdUserMsgInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdUserMsgInfo;->getUserInfo()Lcom/nd/commplatform/entry/NdBaseUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdBaseUserInfo;->getUin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdBaseUserInfo;->getNickName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/nd/commplatform/d/c/oh;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/nd/commplatform/entry/NdBaseUserInfo;->setNickName(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .locals 1

    check-cast p1, Lcom/nd/commplatform/widget/NdListBlankView;

    sget v0, Lcom/nd/commplatform/d/c/jo$h;->fI:I

    invoke-virtual {p1, v0}, Lcom/nd/commplatform/widget/NdListBlankView;->a(I)V

    return-void
.end method

.method public a(Landroid/view/View;IIZ)V
    .locals 0

    check-cast p1, Lcom/nd/commplatform/widget/NdListViewFooter;

    invoke-virtual {p1, p4}, Lcom/nd/commplatform/widget/NdListViewFooter;->a(Z)V

    return-void
.end method

.method public a(Lcom/nd/commplatform/d/c/hh;)V
    .locals 0

    check-cast p1, Lcom/nd/commplatform/d/c/ho;

    invoke-virtual {p1}, Lcom/nd/commplatform/d/c/ho;->b()V

    return-void
.end method

.method public a(Lcom/nd/commplatform/d/c/hh;Lcom/nd/commplatform/entry/NdUserMsgInfo;)V
    .locals 0

    check-cast p1, Lcom/nd/commplatform/d/c/ho;

    invoke-virtual {p1, p2}, Lcom/nd/commplatform/d/c/ho;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/nd/commplatform/d/c/hh;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/nd/commplatform/entry/NdUserMsgInfo;

    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/gk;->a(Lcom/nd/commplatform/d/c/hh;Lcom/nd/commplatform/entry/NdUserMsgInfo;)V

    return-void
.end method

.method public a(Lcom/nd/commplatform/entry/NdUserMsgInfo;Lcom/nd/commplatform/d/c/hh;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/nd/commplatform/entry/NdUserMsgInfo;->setStatus(Z)V

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdUserMsgInfo;->getUserInfo()Lcom/nd/commplatform/entry/NdBaseUserInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/gh;->a(Lcom/nd/commplatform/entry/NdBaseUserInfo;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/nd/commplatform/d/c/hh;)V
    .locals 0

    check-cast p1, Lcom/nd/commplatform/entry/NdUserMsgInfo;

    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/gk;->a(Lcom/nd/commplatform/entry/NdUserMsgInfo;Lcom/nd/commplatform/d/c/hh;)V

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

    new-instance v0, Lcom/nd/commplatform/d/c/ho;

    check-cast p1, Lcom/nd/commplatform/widget/NdMessageListItem;

    new-instance v1, Lcom/nd/commplatform/d/c/gk$1;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/gk$1;-><init>(Lcom/nd/commplatform/d/c/gk;)V

    invoke-direct {v0, p1, v1}, Lcom/nd/commplatform/d/c/ho;-><init>(Lcom/nd/commplatform/widget/NdMessageListItem;Lcom/nd/commplatform/d/c/hn;)V

    return-object v0
.end method

.method public b(I)V
    .locals 4

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    new-instance v1, Lcom/nd/commplatform/d/c/gk$2;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/gk$2;-><init>(Lcom/nd/commplatform/d/c/gk;)V

    new-instance v2, Lcom/nd/commplatform/entry/NdPagination;

    invoke-direct {v2}, Lcom/nd/commplatform/entry/NdPagination;-><init>()V

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Lcom/nd/commplatform/entry/NdPagination;->setPageIndex(I)V

    iget-object v3, p0, Lcom/nd/commplatform/d/c/gk;->b:Lcom/nd/commplatform/d/c/hi;

    invoke-virtual {v3}, Lcom/nd/commplatform/d/c/hi;->f()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/nd/commplatform/entry/NdPagination;->setPageSize(I)V

    iget-object v3, p0, Lcom/nd/commplatform/d/c/gk;->c:Lcom/nd/commplatform/widget/NdFrameInnerContent;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/nd/commplatform/d/c/gk;->c:Lcom/nd/commplatform/widget/NdFrameInnerContent;

    invoke-virtual {v3, v1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->a(Lcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;

    :cond_0
    invoke-super {p0}, Lcom/nd/commplatform/d/c/gj;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/nd/commplatform/d/c/a;->e(Lcom/nd/commplatform/entry/NdPagination;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

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
