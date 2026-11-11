.class public Lcom/nd/commplatform/d/c/fg;
.super Lcom/nd/commplatform/widget/NdFrameInnerContent;

# interfaces
.implements Lcom/nd/commplatform/d/c/hm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/widget/NdFrameInnerContent;",
        "Lcom/nd/commplatform/d/c/hm",
        "<",
        "Lcom/nd/commplatform/entry/ThirdPlatformUserInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/nd/commplatform/d/c/hf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nd/commplatform/d/c/hf",
            "<",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<",
            "Lcom/nd/commplatform/entry/ThirdPlatformUserInfo;",
            ">;",
            "Lcom/nd/commplatform/entry/ThirdPlatformUserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/nd/commplatform/d/c/hi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nd/commplatform/d/c/hi",
            "<",
            "Lcom/nd/commplatform/entry/ThirdPlatformUserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

.field private d:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/nd/commplatform/d/c/hf;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/hf;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fg;->a:Lcom/nd/commplatform/d/c/hf;

    new-instance v0, Lcom/nd/commplatform/d/c/hi;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/hi;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fg;->b:Lcom/nd/commplatform/d/c/hi;

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/fg;)Lcom/nd/commplatform/entry/NdThirdPartyPlatform;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fg;->c:Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    return-object v0
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/fg;Ljava/util/List;Lcom/nd/commplatform/entry/NdThirdPartyPlatform;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nd/commplatform/d/c/fg;->a(Ljava/util/List;Lcom/nd/commplatform/entry/NdThirdPartyPlatform;)V

    return-void
.end method

.method public static a(Lcom/nd/commplatform/entry/NdThirdPartyPlatform;)V
    .locals 2

    new-instance v0, Lcom/nd/commplatform/d/c/bx;

    const/16 v1, 0x6f

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/bx;-><init>(I)V

    const-string v1, "ndThirdPartyPlatform"

    invoke-virtual {v0, v1, p0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xbc2

    invoke-static {v1, v0}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    return-void
.end method

.method private a(Ljava/util/List;Lcom/nd/commplatform/entry/NdThirdPartyPlatform;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/entry/ThirdPlatformUserInfo;",
            ">;",
            "Lcom/nd/commplatform/entry/NdThirdPartyPlatform;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/entry/ThirdPlatformUserInfo;

    invoke-static {v0, p2}, Lcom/nd/commplatform/d/c/fo;->a(Lcom/nd/commplatform/entry/ThirdPlatformUserInfo;Lcom/nd/commplatform/entry/NdThirdPartyPlatform;)V

    return-void
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/fg;)Lcom/nd/commplatform/d/c/hf;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fg;->a:Lcom/nd/commplatform/d/c/hf;

    return-object v0
.end method

.method private b()V
    .locals 6

    const/16 v5, 0x6f

    invoke-static {v5}, Lcom/nd/commplatform/d/c/cb;->b(I)Lcom/nd/commplatform/d/c/bx;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "ndThirdPartyPlatform"

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fg;->c:Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/fg;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->cR:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/nd/commplatform/d/c/fg;->c:Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    invoke-virtual {v4}, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fg;->r:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/fg;->i()V

    :cond_0
    invoke-static {v5}, Lcom/nd/commplatform/d/c/cb;->c(I)Lcom/nd/commplatform/d/c/bx;

    return-void
.end method

.method public static b(Lcom/nd/commplatform/entry/NdThirdPartyPlatform;)V
    .locals 2

    new-instance v0, Lcom/nd/commplatform/d/c/bx;

    const/16 v1, 0x6f

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/bx;-><init>(I)V

    const-string v1, "ndThirdPartyPlatform"

    invoke-virtual {v0, v1, p0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xbc2

    invoke-static {v1, v0}, Lcom/nd/commplatform/d/c/cb;->d(ILcom/nd/commplatform/d/c/bx;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->ai:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-super {p0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->getContext()Landroid/content/Context;

    iput-boolean v0, p0, Lcom/nd/commplatform/d/c/fg;->p:Z

    iput-boolean v0, p0, Lcom/nd/commplatform/d/c/fg;->q:Z

    iput-boolean v1, p0, Lcom/nd/commplatform/d/c/fg;->s:Z

    iput-boolean v0, p0, Lcom/nd/commplatform/d/c/fg;->v:Z

    iput-boolean v1, p0, Lcom/nd/commplatform/d/c/fg;->w:Z

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 1

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->fH:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fg;->d:Landroid/widget/ListView;

    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 1

    check-cast p1, Lcom/nd/commplatform/widget/NdListBlankView;

    sget v0, Lcom/nd/commplatform/d/c/jo$h;->fD:I

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

    check-cast p1, Lcom/nd/commplatform/d/c/gz;

    invoke-virtual {p1}, Lcom/nd/commplatform/d/c/gz;->a()V

    return-void
.end method

.method public a(Lcom/nd/commplatform/d/c/hh;Lcom/nd/commplatform/entry/ThirdPlatformUserInfo;)V
    .locals 0

    check-cast p1, Lcom/nd/commplatform/d/c/gz;

    invoke-virtual {p1, p2}, Lcom/nd/commplatform/d/c/gz;->a(Lcom/nd/commplatform/entry/ThirdPlatformUserInfo;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/nd/commplatform/d/c/hh;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/nd/commplatform/entry/ThirdPlatformUserInfo;

    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/fg;->a(Lcom/nd/commplatform/d/c/hh;Lcom/nd/commplatform/entry/ThirdPlatformUserInfo;)V

    return-void
.end method

.method public a(Lcom/nd/commplatform/entry/ThirdPlatformUserInfo;Lcom/nd/commplatform/d/c/hh;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/nd/commplatform/d/c/hh;)V
    .locals 0

    check-cast p1, Lcom/nd/commplatform/entry/ThirdPlatformUserInfo;

    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/fg;->a(Lcom/nd/commplatform/entry/ThirdPlatformUserInfo;Lcom/nd/commplatform/d/c/hh;)V

    return-void
.end method

.method protected a(ZI)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/fg;->b()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fg;->a:Lcom/nd/commplatform/d/c/hf;

    invoke-super {p0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/fg;->d:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/nd/commplatform/d/c/fg;->b:Lcom/nd/commplatform/d/c/hi;

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/nd/commplatform/d/c/hf;->a(Landroid/content/Context;Landroid/widget/ListView;Lcom/nd/commplatform/d/c/hm;Lcom/nd/commplatform/d/c/hj;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fg;->a:Lcom/nd/commplatform/d/c/hf;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/hf;->c()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fg;->a:Lcom/nd/commplatform/d/c/hf;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/hf;->f()V

    goto :goto_0
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

    new-instance v0, Lcom/nd/commplatform/d/c/gz;

    check-cast p1, Lcom/nd/commplatform/widget/NdInviteFriendListItem;

    invoke-direct {v0, p1}, Lcom/nd/commplatform/d/c/gz;-><init>(Lcom/nd/commplatform/widget/NdInviteFriendListItem;)V

    new-instance v1, Lcom/nd/commplatform/d/c/fg$1;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/fg$1;-><init>(Lcom/nd/commplatform/d/c/fg;)V

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/gz;->a(Lcom/nd/commplatform/d/c/gz$b;)V

    return-object v0
.end method

.method public b(I)V
    .locals 5

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    new-instance v1, Lcom/nd/commplatform/d/c/fg$2;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/fg$2;-><init>(Lcom/nd/commplatform/d/c/fg;)V

    new-instance v2, Lcom/nd/commplatform/entry/NdPagination;

    invoke-direct {v2}, Lcom/nd/commplatform/entry/NdPagination;-><init>()V

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Lcom/nd/commplatform/entry/NdPagination;->setPageIndex(I)V

    iget-object v3, p0, Lcom/nd/commplatform/d/c/fg;->b:Lcom/nd/commplatform/d/c/hi;

    invoke-virtual {v3}, Lcom/nd/commplatform/d/c/hi;->f()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/nd/commplatform/entry/NdPagination;->setPageSize(I)V

    invoke-virtual {p0, v1}, Lcom/nd/commplatform/d/c/fg;->a(Lcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;

    iget-object v3, p0, Lcom/nd/commplatform/d/c/fg;->c:Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    invoke-virtual {v3}, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-super {p0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/nd/commplatform/d/c/a;->c(Lcom/nd/commplatform/entry/NdPagination;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

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

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->ah:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/widget/NdInviteFriendListItem;

    return-object v0
.end method
