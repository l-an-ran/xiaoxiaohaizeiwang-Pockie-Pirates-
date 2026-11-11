.class public Lcom/nd/commplatform/d/c/iy;
.super Lcom/nd/commplatform/widget/NdFrameInnerContent;

# interfaces
.implements Lcom/nd/commplatform/d/c/hk;
.implements Lcom/nd/commplatform/d/c/hm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nd/commplatform/d/c/iy$1;,
        Lcom/nd/commplatform/d/c/iy$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/widget/NdFrameInnerContent;",
        "Lcom/nd/commplatform/d/c/hm",
        "<",
        "Lcom/nd/commplatform/d/c/ek;",
        ">;",
        "Lcom/nd/commplatform/d/c/hk",
        "<",
        "Lcom/nd/commplatform/d/c/ek;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "NDPaySelectFriendView"


# instance fields
.field private b:Lcom/nd/commplatform/d/c/hf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nd/commplatform/d/c/hf",
            "<",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<",
            "Lcom/nd/commplatform/d/c/ek;",
            ">;",
            "Lcom/nd/commplatform/d/c/ek;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/nd/commplatform/d/c/hi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nd/commplatform/d/c/hi",
            "<",
            "Lcom/nd/commplatform/d/c/ek;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/nd/commplatform/d/c/hf;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/hf;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/iy;->b:Lcom/nd/commplatform/d/c/hf;

    new-instance v0, Lcom/nd/commplatform/d/c/hi;

    const v1, 0x186a0

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/hi;-><init>(I)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/iy;->c:Lcom/nd/commplatform/d/c/hi;

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/iy;)Lcom/nd/commplatform/d/c/hf;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/iy;->b:Lcom/nd/commplatform/d/c/hf;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x138a

    invoke-static {v0}, Lcom/nd/commplatform/d/c/cb;->b(I)Lcom/nd/commplatform/d/c/bx;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "uin"

    invoke-virtual {v0, v1, p1}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x4b7

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 3

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->aR:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->fq:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/iy;->d:Landroid/widget/ListView;

    return-object v1
.end method

.method protected a()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/iy;->p:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/iy;->q:Z

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/iy;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->gW:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/iy;->r:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/iy;->s:Z

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/iy;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->gh:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/iy;->t:Ljava/lang/String;

    new-instance v0, Lcom/nd/commplatform/d/c/iy$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nd/commplatform/d/c/iy$a;-><init>(Lcom/nd/commplatform/d/c/iy;Lcom/nd/commplatform/d/c/iy$1;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/iy;->u:Landroid/view/View$OnClickListener;

    iput-boolean v3, p0, Lcom/nd/commplatform/d/c/iy;->v:Z

    iput-boolean v3, p0, Lcom/nd/commplatform/d/c/iy;->w:Z

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 1

    check-cast p1, Lcom/nd/commplatform/widget/NdListBlankView;

    sget v0, Lcom/nd/commplatform/d/c/jo$h;->gs:I

    invoke-virtual {p1, v0}, Lcom/nd/commplatform/widget/NdListBlankView;->a(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nd/commplatform/d/c/iy;->s:Z

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/iy;->i()V

    return-void
.end method

.method public a(Landroid/view/View;IIZ)V
    .locals 0

    check-cast p1, Lcom/nd/commplatform/widget/NdListViewFooter;

    invoke-virtual {p1, p4}, Lcom/nd/commplatform/widget/NdListViewFooter;->a(Z)V

    return-void
.end method

.method public a(Landroid/view/View;Z)V
    .locals 0

    return-void
.end method

.method public a(Lcom/nd/commplatform/d/c/ek;Lcom/nd/commplatform/d/c/hh;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/nd/commplatform/d/c/hh;)V
    .locals 0

    check-cast p1, Lcom/nd/commplatform/d/c/hr;

    invoke-virtual {p1}, Lcom/nd/commplatform/d/c/hr;->a()V

    return-void
.end method

.method public a(Lcom/nd/commplatform/d/c/hh;Lcom/nd/commplatform/d/c/ek;)V
    .locals 0

    check-cast p1, Lcom/nd/commplatform/d/c/hr;

    invoke-virtual {p1, p2}, Lcom/nd/commplatform/d/c/hr;->a(Lcom/nd/commplatform/d/c/ek;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/nd/commplatform/d/c/hh;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/nd/commplatform/d/c/ek;

    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/iy;->a(Lcom/nd/commplatform/d/c/hh;Lcom/nd/commplatform/d/c/ek;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/nd/commplatform/d/c/hh;)V
    .locals 0

    check-cast p1, Lcom/nd/commplatform/d/c/ek;

    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/iy;->a(Lcom/nd/commplatform/d/c/ek;Lcom/nd/commplatform/d/c/hh;)V

    return-void
.end method

.method protected a(ZI)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/iy;->b:Lcom/nd/commplatform/d/c/hf;

    invoke-super {p0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/iy;->d:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/nd/commplatform/d/c/iy;->c:Lcom/nd/commplatform/d/c/hi;

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/nd/commplatform/d/c/hf;->a(Landroid/content/Context;Landroid/widget/ListView;Lcom/nd/commplatform/d/c/hm;Lcom/nd/commplatform/d/c/hj;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/iy;->b:Lcom/nd/commplatform/d/c/hf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/nd/commplatform/d/c/hf;->a(ZLcom/nd/commplatform/d/c/hk;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/iy;->b:Lcom/nd/commplatform/d/c/hf;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/hf;->c()V

    :cond_0
    return-void
.end method

.method public a([Lcom/nd/commplatform/d/c/hk$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/nd/commplatform/d/c/hk$a",
            "<",
            "Lcom/nd/commplatform/d/c/ek;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    aget-object v0, p1, v2

    iget-object v0, v0, Lcom/nd/commplatform/d/c/hk$a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/d/c/ek;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/ek;->getUin()Ljava/lang/String;

    aget-object v0, p1, v2

    iget-object v0, v0, Lcom/nd/commplatform/d/c/hk$a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/d/c/ek;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/ek;->getUin()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nd/commplatform/d/c/iy;->a(Ljava/lang/String;)V

    :cond_0
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

    new-instance v0, Lcom/nd/commplatform/d/c/hr;

    check-cast p1, Lcom/nd/commplatform/widget/NdPayFriendListItem;

    new-instance v1, Lcom/nd/commplatform/d/c/hq;

    invoke-direct {v1}, Lcom/nd/commplatform/d/c/hq;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/nd/commplatform/d/c/hr;-><init>(Lcom/nd/commplatform/widget/NdPayFriendListItem;Lcom/nd/commplatform/d/c/hq;)V

    return-object v0
.end method

.method public b(I)V
    .locals 4

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->w()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/nd/commplatform/entry/NdPageList;

    invoke-direct {v1}, Lcom/nd/commplatform/entry/NdPageList;-><init>()V

    new-instance v2, Lcom/nd/commplatform/entry/NdPagination;

    invoke-direct {v2}, Lcom/nd/commplatform/entry/NdPagination;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/nd/commplatform/entry/NdPagination;->setPageIndex(I)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/nd/commplatform/entry/NdPagination;->setPageSize(I)V

    invoke-virtual {v1, v2}, Lcom/nd/commplatform/entry/NdPageList;->setPagination(Lcom/nd/commplatform/entry/NdPagination;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nd/commplatform/entry/NdPageList;->setTotalCount(I)V

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/entry/NdPageList;->setList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/iy;->b:Lcom/nd/commplatform/d/c/hf;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/nd/commplatform/d/c/hf;->a(Lcom/nd/commplatform/NdCallbackListener;ILjava/lang/Object;)V

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

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/nd/commplatform/widget/NdListBlankView;->b(I)V

    return-void
.end method

.method public d(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->aN:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/widget/NdPayFriendListItem;

    check-cast v0, Lcom/nd/commplatform/widget/NdPayFriendListItem;

    return-object v0
.end method
