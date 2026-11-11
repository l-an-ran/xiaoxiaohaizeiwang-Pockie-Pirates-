.class public Lcom/nd/commplatform/d/c/dy;
.super Lcom/nd/commplatform/widget/NdFrameInnerContent;

# interfaces
.implements Lcom/nd/commplatform/d/c/hm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/widget/NdFrameInnerContent;",
        "Lcom/nd/commplatform/d/c/hm",
        "<",
        "Lcom/nd/commplatform/d/c/my;",
        ">;"
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/String; = "Uin"

.field private static final g:Ljava/lang/String; = "Name"

.field private static final h:Ljava/lang/String; = "check"


# instance fields
.field protected a:Lcom/nd/commplatform/d/c/hf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nd/commplatform/d/c/hf",
            "<",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<",
            "Lcom/nd/commplatform/d/c/my;",
            ">;",
            "Lcom/nd/commplatform/d/c/my;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/nd/commplatform/d/c/hi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nd/commplatform/d/c/hi",
            "<",
            "Lcom/nd/commplatform/d/c/my;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private i:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/nd/commplatform/d/c/hf;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/hf;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dy;->a:Lcom/nd/commplatform/d/c/hf;

    new-instance v0, Lcom/nd/commplatform/d/c/hi;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/hi;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dy;->b:Lcom/nd/commplatform/d/c/hi;

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/dy;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dy;->i:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/dy;Lcom/nd/commplatform/entry/NdPageList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/dy;->a(Lcom/nd/commplatform/entry/NdPageList;)V

    return-void
.end method

.method private a(Lcom/nd/commplatform/entry/NdPageList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<",
            "Lcom/nd/commplatform/entry/DynamicInfo;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    return-void

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

    check-cast v0, Lcom/nd/commplatform/entry/DynamicInfo;

    iget-object v4, p0, Lcom/nd/commplatform/d/c/dy;->e:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/nd/commplatform/entry/DynamicInfo;->setChecksum(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/nd/commplatform/d/c/dy;->d:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/nd/commplatform/entry/DynamicInfo;->setNickName(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/nd/commplatform/d/c/dy;->c:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/nd/commplatform/entry/DynamicInfo;->setUin(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/nd/commplatform/d/c/bx;

    const/16 v1, 0xbc7

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/bx;-><init>(I)V

    const-string v1, "Uin"

    invoke-virtual {v0, v1, p0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Name"

    invoke-virtual {v0, v1, p1}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "check"

    invoke-virtual {v0, v1, p2}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x79

    invoke-static {v1, v0}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    return-void
.end method

.method private b()V
    .locals 3

    const/16 v2, 0xbc7

    invoke-static {v2}, Lcom/nd/commplatform/d/c/cb;->b(I)Lcom/nd/commplatform/d/c/bx;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "Uin"

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dy;->c:Ljava/lang/String;

    const-string v0, "Name"

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dy;->d:Ljava/lang/String;

    const-string v0, "check"

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dy;->e:Ljava/lang/String;

    :cond_0
    invoke-static {v2}, Lcom/nd/commplatform/d/c/cb;->c(I)Lcom/nd/commplatform/d/c/bx;

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 3

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->an:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dy;->i:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dy;->i:Landroid/widget/ListView;

    return-object v0
.end method

.method protected a()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/dy;->p:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/dy;->q:Z

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->bA:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dy;->r:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/nd/commplatform/d/c/dy;->s:Z

    iput-object v4, p0, Lcom/nd/commplatform/d/c/dy;->t:Ljava/lang/String;

    iput-object v4, p0, Lcom/nd/commplatform/d/c/dy;->u:Landroid/view/View$OnClickListener;

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/dy;->v:Z

    iput-boolean v3, p0, Lcom/nd/commplatform/d/c/dy;->w:Z

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 1

    check-cast p1, Lcom/nd/commplatform/widget/NdListBlankView;

    sget v0, Lcom/nd/commplatform/d/c/jo$h;->fA:I

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

    check-cast p1, Lcom/nd/commplatform/d/c/gu;

    invoke-virtual {p1}, Lcom/nd/commplatform/d/c/gu;->a()V

    return-void
.end method

.method public a(Lcom/nd/commplatform/d/c/hh;Lcom/nd/commplatform/d/c/my;)V
    .locals 0

    check-cast p1, Lcom/nd/commplatform/d/c/gu;

    invoke-virtual {p1, p2}, Lcom/nd/commplatform/d/c/gu;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/nd/commplatform/d/c/hh;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/nd/commplatform/d/c/my;

    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/dy;->a(Lcom/nd/commplatform/d/c/hh;Lcom/nd/commplatform/d/c/my;)V

    return-void
.end method

.method public a(Lcom/nd/commplatform/d/c/my;Lcom/nd/commplatform/d/c/hh;)V
    .locals 0

    invoke-static {p1}, Lcom/nd/commplatform/d/c/ms;->a(Lcom/nd/commplatform/d/c/my;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/nd/commplatform/d/c/hh;)V
    .locals 0

    check-cast p1, Lcom/nd/commplatform/d/c/my;

    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/dy;->a(Lcom/nd/commplatform/d/c/my;Lcom/nd/commplatform/d/c/hh;)V

    return-void
.end method

.method protected a(Ljava/lang/String;Lcom/nd/commplatform/entry/NdPagination;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/nd/commplatform/entry/NdPagination;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<",
            "Lcom/nd/commplatform/entry/DynamicInfo;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nd/commplatform/d/c/a;->d(Ljava/lang/String;Lcom/nd/commplatform/entry/NdPagination;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method protected a(ZI)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/dy;->b()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dy;->a:Lcom/nd/commplatform/d/c/hf;

    invoke-super {p0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/dy;->i:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/nd/commplatform/d/c/dy;->b:Lcom/nd/commplatform/d/c/hi;

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/nd/commplatform/d/c/hf;->a(Landroid/content/Context;Landroid/widget/ListView;Lcom/nd/commplatform/d/c/hm;Lcom/nd/commplatform/d/c/hj;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dy;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dy;->a:Lcom/nd/commplatform/d/c/hf;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/hf;->c()V

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

    new-instance v0, Lcom/nd/commplatform/d/c/gu;

    check-cast p1, Lcom/nd/commplatform/widget/NdUserFangleExtItem;

    invoke-static {}, Lcom/nd/commplatform/d/c/ms;->a()Lcom/nd/commplatform/d/c/gt;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/nd/commplatform/d/c/gu;-><init>(Lcom/nd/commplatform/widget/NdUserFangleExtItem;Lcom/nd/commplatform/d/c/gt;)V

    return-object v0
.end method

.method public b(I)V
    .locals 4

    new-instance v0, Lcom/nd/commplatform/d/c/dy$1;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/dy$1;-><init>(Lcom/nd/commplatform/d/c/dy;)V

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/dy;->a(Lcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;

    new-instance v1, Lcom/nd/commplatform/entry/NdPagination;

    invoke-direct {v1}, Lcom/nd/commplatform/entry/NdPagination;-><init>()V

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Lcom/nd/commplatform/entry/NdPagination;->setPageIndex(I)V

    iget-object v2, p0, Lcom/nd/commplatform/d/c/dy;->b:Lcom/nd/commplatform/d/c/hi;

    invoke-virtual {v2}, Lcom/nd/commplatform/d/c/hi;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nd/commplatform/entry/NdPagination;->setPageSize(I)V

    iget-object v2, p0, Lcom/nd/commplatform/d/c/dy;->c:Ljava/lang/String;

    invoke-super {p0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v2, v1, v3, v0}, Lcom/nd/commplatform/d/c/dy;->a(Ljava/lang/String;Lcom/nd/commplatform/entry/NdPagination;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

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

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->bj:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/widget/NdUserFangleExtItem;

    return-object v0
.end method
