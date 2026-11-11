.class public Lcom/nd/commplatform/friend/NdFriendSectionPanel;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nd/commplatform/friend/NdFriendSectionPanel$c;,
        Lcom/nd/commplatform/friend/NdFriendSectionPanel$b;,
        Lcom/nd/commplatform/friend/NdFriendSectionPanel$a;
    }
.end annotation


# instance fields
.field private a:Lcom/nd/commplatform/friend/FriendHeaderListView;

.field private b:Lcom/nd/commplatform/friend/FriendSectionSwitcher;

.field private c:Lcom/nd/commplatform/widget/NdListBlankView;

.field private d:Lcom/nd/commplatform/d/c/dl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nd/commplatform/d/c/dl",
            "<",
            "Lcom/nd/commplatform/d/c/ek;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/nd/commplatform/friend/NdFriendSectionPanel$b;

.field private f:Lcom/nd/commplatform/friend/NdFriendSectionPanel$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/friend/NdFriendSectionPanel;)Lcom/nd/commplatform/friend/FriendHeaderListView;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/friend/NdFriendSectionPanel;->a:Lcom/nd/commplatform/friend/FriendHeaderListView;

    return-object v0
.end method

.method static synthetic b(Lcom/nd/commplatform/friend/NdFriendSectionPanel;)Lcom/nd/commplatform/widget/NdListBlankView;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/friend/NdFriendSectionPanel;->c:Lcom/nd/commplatform/widget/NdListBlankView;

    return-object v0
.end method

.method static synthetic c(Lcom/nd/commplatform/friend/NdFriendSectionPanel;)Lcom/nd/commplatform/friend/FriendSectionSwitcher;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/friend/NdFriendSectionPanel;->b:Lcom/nd/commplatform/friend/FriendSectionSwitcher;

    return-object v0
.end method

.method static synthetic d(Lcom/nd/commplatform/friend/NdFriendSectionPanel;)Lcom/nd/commplatform/friend/NdFriendSectionPanel$b;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/friend/NdFriendSectionPanel;->e:Lcom/nd/commplatform/friend/NdFriendSectionPanel$b;

    return-object v0
.end method

.method static synthetic e(Lcom/nd/commplatform/friend/NdFriendSectionPanel;)Lcom/nd/commplatform/d/c/dl;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/friend/NdFriendSectionPanel;->d:Lcom/nd/commplatform/d/c/dl;

    return-object v0
.end method

.method static synthetic f(Lcom/nd/commplatform/friend/NdFriendSectionPanel;)Lcom/nd/commplatform/friend/NdFriendSectionPanel$c;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/friend/NdFriendSectionPanel;->f:Lcom/nd/commplatform/friend/NdFriendSectionPanel$c;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    new-instance v0, Lcom/nd/commplatform/d/c/dl;

    invoke-super {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/dl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nd/commplatform/friend/NdFriendSectionPanel;->d:Lcom/nd/commplatform/d/c/dl;

    iget-object v0, p0, Lcom/nd/commplatform/friend/NdFriendSectionPanel;->d:Lcom/nd/commplatform/d/c/dl;

    new-instance v1, Lcom/nd/commplatform/friend/NdFriendSectionPanel$1;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/friend/NdFriendSectionPanel$1;-><init>(Lcom/nd/commplatform/friend/NdFriendSectionPanel;)V

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/dl;->a(Lcom/nd/commplatform/d/c/dl$c;)V

    iget-object v0, p0, Lcom/nd/commplatform/friend/NdFriendSectionPanel;->a:Lcom/nd/commplatform/friend/FriendHeaderListView;

    iget-object v1, p0, Lcom/nd/commplatform/friend/NdFriendSectionPanel;->d:Lcom/nd/commplatform/d/c/dl;

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/friend/FriendHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-super {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/nd/commplatform/d/c/jo$f;->W:I

    iget-object v2, p0, Lcom/nd/commplatform/friend/NdFriendSectionPanel;->a:Lcom/nd/commplatform/friend/FriendHeaderListView;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/friend/NdFriendSectionPanel;->a:Lcom/nd/commplatform/friend/FriendHeaderListView;

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/friend/FriendHeaderListView;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/nd/commplatform/friend/NdFriendSectionPanel;->a:Lcom/nd/commplatform/friend/FriendHeaderListView;

    iget-object v1, p0, Lcom/nd/commplatform/friend/NdFriendSectionPanel;->d:Lcom/nd/commplatform/d/c/dl;

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/friend/FriendHeaderListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lcom/nd/commplatform/friend/NdFriendSectionPanel;->b:Lcom/nd/commplatform/friend/FriendSectionSwitcher;

    new-instance v1, Lcom/nd/commplatform/friend/NdFriendSectionPanel$2;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/friend/NdFriendSectionPanel$2;-><init>(Lcom/nd/commplatform/friend/NdFriendSectionPanel;)V

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/friend/FriendSectionSwitcher;->a(Lcom/nd/commplatform/friend/FriendSectionSwitcher$a;)V

    return-void
.end method

.method public a(Lcom/nd/commplatform/friend/NdFriendSectionPanel$b;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/friend/NdFriendSectionPanel;->e:Lcom/nd/commplatform/friend/NdFriendSectionPanel$b;

    return-void
.end method

.method public a(Lcom/nd/commplatform/friend/NdFriendSectionPanel$c;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/friend/NdFriendSectionPanel;->f:Lcom/nd/commplatform/friend/NdFriendSectionPanel$c;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/friend/NdFriendSectionPanel;->d:Lcom/nd/commplatform/d/c/dl;

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/d/c/dl;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a([Lcom/nd/commplatform/d/c/ek;)V
    .locals 3

    iget-object v0, p0, Lcom/nd/commplatform/friend/NdFriendSectionPanel;->f:Lcom/nd/commplatform/friend/NdFriendSectionPanel$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/friend/NdFriendSectionPanel;->f:Lcom/nd/commplatform/friend/NdFriendSectionPanel$c;

    invoke-interface {v0}, Lcom/nd/commplatform/friend/NdFriendSectionPanel$c;->b()V

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/friend/NdFriendSectionPanel;->c:Lcom/nd/commplatform/widget/NdListBlankView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/widget/NdListBlankView;->b(I)V

    iget-object v0, p0, Lcom/nd/commplatform/friend/NdFriendSectionPanel;->d:Lcom/nd/commplatform/d/c/dl;

    new-instance v1, Lcom/nd/commplatform/friend/NdFriendSectionPanel$3;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/friend/NdFriendSectionPanel$3;-><init>(Lcom/nd/commplatform/friend/NdFriendSectionPanel;)V

    new-instance v2, Lcom/nd/commplatform/friend/NdFriendSectionPanel$4;

    invoke-direct {v2, p0}, Lcom/nd/commplatform/friend/NdFriendSectionPanel$4;-><init>(Lcom/nd/commplatform/friend/NdFriendSectionPanel;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/nd/commplatform/d/c/dl;->a([Ljava/lang/Object;Lcom/nd/commplatform/d/c/dk;Lcom/nd/commplatform/d/c/dl$d;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/friend/NdFriendSectionPanel;->d:Lcom/nd/commplatform/d/c/dl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/friend/NdFriendSectionPanel;->d:Lcom/nd/commplatform/d/c/dl;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/dl;->c()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->cf:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/friend/NdFriendSectionPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/friend/FriendHeaderListView;

    iput-object v0, p0, Lcom/nd/commplatform/friend/NdFriendSectionPanel;->a:Lcom/nd/commplatform/friend/FriendHeaderListView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->co:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/friend/NdFriendSectionPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/friend/FriendSectionSwitcher;

    iput-object v0, p0, Lcom/nd/commplatform/friend/NdFriendSectionPanel;->b:Lcom/nd/commplatform/friend/FriendSectionSwitcher;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->cc:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/friend/NdFriendSectionPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/widget/NdListBlankView;

    iput-object v0, p0, Lcom/nd/commplatform/friend/NdFriendSectionPanel;->c:Lcom/nd/commplatform/widget/NdListBlankView;

    iget-object v0, p0, Lcom/nd/commplatform/friend/NdFriendSectionPanel;->c:Lcom/nd/commplatform/widget/NdListBlankView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/widget/NdListBlankView;->b(I)V

    iget-object v0, p0, Lcom/nd/commplatform/friend/NdFriendSectionPanel;->a:Lcom/nd/commplatform/friend/FriendHeaderListView;

    iget-object v1, p0, Lcom/nd/commplatform/friend/NdFriendSectionPanel;->c:Lcom/nd/commplatform/widget/NdListBlankView;

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/friend/FriendHeaderListView;->setEmptyView(Landroid/view/View;)V

    return-void
.end method
