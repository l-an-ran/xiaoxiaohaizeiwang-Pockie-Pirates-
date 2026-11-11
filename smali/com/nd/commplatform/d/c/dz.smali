.class public Lcom/nd/commplatform/d/c/dz;
.super Lcom/nd/commplatform/widget/NdFrameInnerContent;

# interfaces
.implements Lcom/nd/commplatform/d/c/hm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/widget/NdFrameInnerContent;",
        "Lcom/nd/commplatform/d/c/hm",
        "<",
        "Lcom/nd/commplatform/entry/NdStrangerUserInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:Ljava/lang/String; = "NormalSearchType"

.field private static final d:Ljava/lang/String; = "NdNormalSearchFriendView"


# instance fields
.field private e:Lcom/nd/commplatform/d/c/hf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nd/commplatform/d/c/hf",
            "<",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<",
            "Lcom/nd/commplatform/entry/NdStrangerUserInfo;",
            ">;",
            "Lcom/nd/commplatform/entry/NdStrangerUserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/nd/commplatform/d/c/hi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nd/commplatform/d/c/hi",
            "<",
            "Lcom/nd/commplatform/entry/NdStrangerUserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Landroid/widget/ListView;

.field private j:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/nd/commplatform/d/c/hf;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/hf;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dz;->e:Lcom/nd/commplatform/d/c/hf;

    new-instance v0, Lcom/nd/commplatform/d/c/hi;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/hi;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dz;->f:Lcom/nd/commplatform/d/c/hi;

    const-string v0, ""

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dz;->h:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/dz;)Lcom/nd/commplatform/d/c/hf;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dz;->e:Lcom/nd/commplatform/d/c/hf;

    return-object v0
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/dz;Lcom/nd/commplatform/entry/NdPageList;)Lcom/nd/commplatform/entry/NdPageList;
    .locals 1

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/dz;->a(Lcom/nd/commplatform/entry/NdPageList;)Lcom/nd/commplatform/entry/NdPageList;

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
            "Lcom/nd/commplatform/entry/NdStrangerUserInfo;",
            ">;)",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<",
            "Lcom/nd/commplatform/entry/NdStrangerUserInfo;",
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

    check-cast v0, Lcom/nd/commplatform/entry/NdStrangerUserInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdStrangerUserInfo;->getBaseUserInfo()Lcom/nd/commplatform/entry/NdBaseUserInfo;

    move-result-object v4

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdStrangerUserInfo;->getBaseUserInfo()Lcom/nd/commplatform/entry/NdBaseUserInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nd/commplatform/entry/NdBaseUserInfo;->getUin()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdStrangerUserInfo;->getBaseUserInfo()Lcom/nd/commplatform/entry/NdBaseUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdBaseUserInfo;->getNickName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/nd/commplatform/d/c/oh;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/nd/commplatform/entry/NdBaseUserInfo;->setNickName(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/dz;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/dz;->h:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/dz;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dz;->j:Landroid/widget/EditText;

    return-object v0
.end method

.method private b()V
    .locals 5

    const/16 v4, 0xbb9

    const/4 v3, 0x2

    const/4 v1, 0x1

    invoke-static {v4}, Lcom/nd/commplatform/d/c/cb;->b(I)Lcom/nd/commplatform/d/c/bx;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v2, "NormalSearchType"

    invoke-virtual {v0, v2}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    invoke-static {v4}, Lcom/nd/commplatform/d/c/cb;->c(I)Lcom/nd/commplatform/d/c/bx;

    :goto_1
    if-nez v0, :cond_1

    iput v1, p0, Lcom/nd/commplatform/d/c/dz;->g:I

    :goto_2
    iget v0, p0, Lcom/nd/commplatform/d/c/dz;->g:I

    if-ne v3, v0, :cond_3

    invoke-super {p0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->fT:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dz;->r:Ljava/lang/String;

    :cond_0
    :goto_3
    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/dz;->i()V

    return-void

    :cond_1
    if-ne v1, v0, :cond_2

    iput v3, p0, Lcom/nd/commplatform/d/c/dz;->g:I

    goto :goto_2

    :cond_2
    iput v3, p0, Lcom/nd/commplatform/d/c/dz;->g:I

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/nd/commplatform/d/c/dz;->g:I

    if-ne v1, v0, :cond_0

    invoke-super {p0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->fU:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dz;->r:Ljava/lang/String;

    goto :goto_3

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method static synthetic c(Lcom/nd/commplatform/d/c/dz;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dz;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static c(I)V
    .locals 3

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/nd/commplatform/d/c/bx;

    const/16 v1, 0xbb9

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/bx;-><init>(I)V

    const-string v1, "NormalSearchType"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xbbb

    invoke-static {v1, v0}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 3

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->aM:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/dz;->p:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/dz;->q:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/dz;->s:Z

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->fR:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dz;->t:Ljava/lang/String;

    new-instance v0, Lcom/nd/commplatform/d/c/dz$3;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/dz$3;-><init>(Lcom/nd/commplatform/d/c/dz;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dz;->u:Landroid/view/View$OnClickListener;

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/dz;->v:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nd/commplatform/d/c/dz;->w:Z

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 1

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->ck:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dz;->j:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dz;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dz;->h:Ljava/lang/String;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->cl:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dz;->i:Landroid/widget/ListView;

    sget v0, Lcom/nd/commplatform/d/c/jo$b;->A:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 1

    check-cast p1, Lcom/nd/commplatform/widget/NdListBlankView;

    sget v0, Lcom/nd/commplatform/d/c/jo$h;->jt:I

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

    check-cast p1, Lcom/nd/commplatform/d/c/hx;

    invoke-virtual {p1}, Lcom/nd/commplatform/d/c/hx;->c()V

    return-void
.end method

.method public a(Lcom/nd/commplatform/d/c/hh;Lcom/nd/commplatform/entry/NdStrangerUserInfo;)V
    .locals 0

    check-cast p1, Lcom/nd/commplatform/d/c/hx;

    invoke-virtual {p1, p2}, Lcom/nd/commplatform/d/c/hx;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/nd/commplatform/d/c/hh;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/nd/commplatform/entry/NdStrangerUserInfo;

    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/dz;->a(Lcom/nd/commplatform/d/c/hh;Lcom/nd/commplatform/entry/NdStrangerUserInfo;)V

    return-void
.end method

.method public a(Lcom/nd/commplatform/entry/NdStrangerUserInfo;Lcom/nd/commplatform/d/c/hh;)V
    .locals 1

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdStrangerUserInfo;->getBaseUserInfo()Lcom/nd/commplatform/entry/NdBaseUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdBaseUserInfo;->getUin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ed;->a(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/nd/commplatform/d/c/hh;)V
    .locals 0

    check-cast p1, Lcom/nd/commplatform/entry/NdStrangerUserInfo;

    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/dz;->a(Lcom/nd/commplatform/entry/NdStrangerUserInfo;Lcom/nd/commplatform/d/c/hh;)V

    return-void
.end method

.method protected a(ZI)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/dz;->b()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dz;->e:Lcom/nd/commplatform/d/c/hf;

    invoke-super {p0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/dz;->i:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/nd/commplatform/d/c/dz;->f:Lcom/nd/commplatform/d/c/hi;

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/nd/commplatform/d/c/hf;->a(Landroid/content/Context;Landroid/widget/ListView;Lcom/nd/commplatform/d/c/hm;Lcom/nd/commplatform/d/c/hj;)V

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/dz;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    invoke-static {}, Lcom/nd/commplatform/d/c/cb;->f()V

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

    new-instance v0, Lcom/nd/commplatform/d/c/hx;

    check-cast p1, Lcom/nd/commplatform/widget/NdUserListItem;

    new-instance v1, Lcom/nd/commplatform/d/c/dz$1;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/dz$1;-><init>(Lcom/nd/commplatform/d/c/dz;)V

    invoke-direct {v0, p1, v1}, Lcom/nd/commplatform/d/c/hx;-><init>(Lcom/nd/commplatform/widget/NdUserListItem;Lcom/nd/commplatform/d/c/hg;)V

    return-object v0
.end method

.method public b(I)V
    .locals 6

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    new-instance v5, Lcom/nd/commplatform/d/c/dz$2;

    invoke-direct {v5, p0}, Lcom/nd/commplatform/d/c/dz$2;-><init>(Lcom/nd/commplatform/d/c/dz;)V

    invoke-virtual {p0, v5}, Lcom/nd/commplatform/d/c/dz;->a(Lcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;

    new-instance v3, Lcom/nd/commplatform/entry/NdPagination;

    invoke-direct {v3}, Lcom/nd/commplatform/entry/NdPagination;-><init>()V

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v3, v1}, Lcom/nd/commplatform/entry/NdPagination;->setPageIndex(I)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/dz;->f:Lcom/nd/commplatform/d/c/hi;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/hi;->f()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/nd/commplatform/entry/NdPagination;->setPageSize(I)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/dz;->j:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/nd/commplatform/d/c/dz;->g:I

    invoke-super {p0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/a;->a(Ljava/lang/String;ILcom/nd/commplatform/entry/NdPagination;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

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

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->bk:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/widget/NdUserListItem;

    sget v1, Lcom/nd/commplatform/d/c/jo$d;->bI:I

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/widget/NdUserListItem;->setBackgroundResource(I)V

    return-object v0
.end method
