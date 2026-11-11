.class public Lcom/nd/commplatform/d/c/fi;
.super Lcom/nd/commplatform/widget/NdFrameInnerContent;

# interfaces
.implements Lcom/nd/commplatform/d/c/hl;
.implements Lcom/nd/commplatform/d/c/hm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/widget/NdFrameInnerContent;",
        "Lcom/nd/commplatform/d/c/hm",
        "<",
        "Lcom/nd/commplatform/entry/NdUserRankInfo;",
        ">;",
        "Lcom/nd/commplatform/d/c/hl;"
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "NdLeaderBoardSwitcherView_LeaderboardId"

.field public static final b:Ljava/lang/String; = "NdLeaderBoardSwitcherView_Uin"


# instance fields
.field private c:Landroid/view/ViewGroup;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Lcom/nd/commplatform/d/c/fj;

.field private i:Lcom/nd/commplatform/d/c/hf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nd/commplatform/d/c/hf",
            "<",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<",
            "Lcom/nd/commplatform/entry/NdUserRankInfo;",
            ">;",
            "Lcom/nd/commplatform/entry/NdUserRankInfo;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/nd/commplatform/d/c/hi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nd/commplatform/d/c/hi",
            "<",
            "Lcom/nd/commplatform/entry/NdUserRankInfo;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroid/widget/ListView;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/nd/commplatform/d/c/fj;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/fj;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fi;->h:Lcom/nd/commplatform/d/c/fj;

    new-instance v0, Lcom/nd/commplatform/d/c/hf;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/hf;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fi;->i:Lcom/nd/commplatform/d/c/hf;

    new-instance v0, Lcom/nd/commplatform/d/c/hi;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/hi;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fi;->j:Lcom/nd/commplatform/d/c/hi;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/nd/commplatform/d/c/fj;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/fj;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fi;->h:Lcom/nd/commplatform/d/c/fj;

    new-instance v0, Lcom/nd/commplatform/d/c/hf;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/hf;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fi;->i:Lcom/nd/commplatform/d/c/hf;

    new-instance v0, Lcom/nd/commplatform/d/c/hi;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/hi;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fi;->j:Lcom/nd/commplatform/d/c/hi;

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/fi;)Lcom/nd/commplatform/d/c/hf;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fi;->i:Lcom/nd/commplatform/d/c/hf;

    return-object v0
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/fi;Lcom/nd/commplatform/entry/NdRankPageList;)Lcom/nd/commplatform/entry/NdRankPageList;
    .locals 1

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/fi;->a(Lcom/nd/commplatform/entry/NdRankPageList;)Lcom/nd/commplatform/entry/NdRankPageList;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/nd/commplatform/entry/NdRankPageList;)Lcom/nd/commplatform/entry/NdRankPageList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nd/commplatform/entry/NdRankPageList",
            "<",
            "Lcom/nd/commplatform/entry/NdUserRankInfo;",
            ">;)",
            "Lcom/nd/commplatform/entry/NdRankPageList",
            "<",
            "Lcom/nd/commplatform/entry/NdUserRankInfo;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    return-object p1

    :cond_1
    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdRankPageList;->getList()Ljava/util/List;

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

    check-cast v0, Lcom/nd/commplatform/entry/NdUserRankInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdUserRankInfo;->getUin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdUserRankInfo;->getNickName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/nd/commplatform/d/c/oh;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/nd/commplatform/entry/NdUserRankInfo;->setNickName(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/nd/commplatform/d/c/bx;

    const/16 v1, 0xbba

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/bx;-><init>(I)V

    const-string v1, "NdLeaderBoardSwitcherView_LeaderboardId"

    invoke-virtual {v0, v1, p1}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "NdLeaderBoardSwitcherView_Uin"

    invoke-virtual {v0, v1, p2}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, -0x1

    const/16 v2, 0x6d

    invoke-static {p0, v1, v2, v0}, Lcom/nd/commplatform/d/c/cb;->a(Landroid/content/Context;IILcom/nd/commplatform/d/c/bx;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/nd/commplatform/d/c/bx;

    const/16 v1, 0xbba

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/bx;-><init>(I)V

    const-string v1, "NdLeaderBoardSwitcherView_LeaderboardId"

    invoke-virtual {v0, v1, p0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "NdLeaderBoardSwitcherView_Uin"

    invoke-virtual {v0, v1, p1}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x6d

    invoke-static {v1, v0}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    return-void
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/fi;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fi;->k:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic c(Lcom/nd/commplatform/d/c/fi;)Lcom/nd/commplatform/d/c/fj;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fi;->h:Lcom/nd/commplatform/d/c/fj;

    return-object v0
.end method

.method private c()Z
    .locals 1

    invoke-static {}, Lcom/nd/commplatform/d/c/cb;->g()Z

    move-result v0

    return v0
.end method

.method private m()V
    .locals 3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fi;->m:Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fi;->d:Landroid/view/View;

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/nd/commplatform/d/c/jo$f;->bF:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fi;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fi;->h:Lcom/nd/commplatform/d/c/fj;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fi;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/fj;->a(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fi;->h:Lcom/nd/commplatform/d/c/fj;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/fj;->a()V

    goto :goto_0
.end method

.method private n()V
    .locals 3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fi;->m:Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fi;->e:Landroid/view/View;

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/nd/commplatform/d/c/jo$f;->bE:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fi;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fi;->h:Lcom/nd/commplatform/d/c/fj;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fi;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/fj;->b(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fi;->h:Lcom/nd/commplatform/d/c/fj;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/fj;->b()V

    goto :goto_0
.end method

.method private o()V
    .locals 3

    const/16 v2, 0xbba

    invoke-static {v2}, Lcom/nd/commplatform/d/c/cb;->b(I)Lcom/nd/commplatform/d/c/bx;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "NdLeaderBoardSwitcherView_LeaderboardId"

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fi;->m:Ljava/lang/String;

    const-string v0, "NdLeaderBoardSwitcherView_Uin"

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fi;->l:Ljava/lang/String;

    :cond_0
    invoke-static {v2}, Lcom/nd/commplatform/d/c/cb;->c(I)Lcom/nd/commplatform/d/c/bx;

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    const/4 v1, 0x0

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->bD:I

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fi;->f:Landroid/view/View;

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->bC:I

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lcom/nd/commplatform/widget/NdFrameInnerContent;
    .locals 1

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/fi;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/fi;->m()V

    :goto_0
    invoke-super {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->a(I)Lcom/nd/commplatform/widget/NdFrameInnerContent;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/nd/commplatform/d/c/fi;->n()V

    goto :goto_0
.end method

.method protected a()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nd/commplatform/d/c/fi;->p:Z

    iput-boolean v1, p0, Lcom/nd/commplatform/d/c/fi;->q:Z

    iput-boolean v1, p0, Lcom/nd/commplatform/d/c/fi;->s:Z

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fi;->t:Ljava/lang/String;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fi;->u:Landroid/view/View$OnClickListener;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nd/commplatform/d/c/fi;->v:Z

    iput-boolean v1, p0, Lcom/nd/commplatform/d/c/fi;->w:Z

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 1

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->fN:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fi;->c:Landroid/view/ViewGroup;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->fK:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fi;->k:Landroid/widget/ListView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->iw:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fi;->g:Landroid/view/View;

    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 1

    check-cast p1, Lcom/nd/commplatform/widget/NdListBlankView;

    sget v0, Lcom/nd/commplatform/d/c/jo$h;->fE:I

    invoke-virtual {p1, v0}, Lcom/nd/commplatform/widget/NdListBlankView;->a(I)V

    return-void
.end method

.method public a(Landroid/view/View;IIZ)V
    .locals 0

    check-cast p1, Lcom/nd/commplatform/widget/NdListViewFooter;

    invoke-virtual {p1, p4}, Lcom/nd/commplatform/widget/NdListViewFooter;->a(Z)V

    return-void
.end method

.method public a(Landroid/view/View;ILjava/lang/Object;)V
    .locals 3

    check-cast p3, Lcom/nd/commplatform/entry/NdRankPageList;

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fi;->h:Lcom/nd/commplatform/d/c/fj;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2}, Lcom/nd/commplatform/d/c/fj;->a(ILcom/nd/commplatform/entry/NdUserRankInfo;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/nd/commplatform/d/c/fi;->h:Lcom/nd/commplatform/d/c/fj;

    invoke-virtual {p3}, Lcom/nd/commplatform/entry/NdRankPageList;->getT()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/entry/NdUserRankInfo;

    invoke-virtual {p3}, Lcom/nd/commplatform/entry/NdRankPageList;->getTotalCount()I

    move-result v2

    invoke-virtual {v1, p2, v0, v2}, Lcom/nd/commplatform/d/c/fj;->a(ILcom/nd/commplatform/entry/NdUserRankInfo;I)V

    goto :goto_0
.end method

.method public a(Lcom/nd/commplatform/d/c/hh;)V
    .locals 0

    check-cast p1, Lcom/nd/commplatform/d/c/hd;

    invoke-virtual {p1}, Lcom/nd/commplatform/d/c/hd;->b()V

    return-void
.end method

.method public a(Lcom/nd/commplatform/d/c/hh;Lcom/nd/commplatform/entry/NdUserRankInfo;)V
    .locals 0

    check-cast p1, Lcom/nd/commplatform/d/c/hd;

    invoke-virtual {p1, p2}, Lcom/nd/commplatform/d/c/hd;->a(Lcom/nd/commplatform/entry/NdUserRankInfo;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/nd/commplatform/d/c/hh;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/nd/commplatform/entry/NdUserRankInfo;

    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/fi;->a(Lcom/nd/commplatform/d/c/hh;Lcom/nd/commplatform/entry/NdUserRankInfo;)V

    return-void
.end method

.method public a(Lcom/nd/commplatform/entry/NdUserRankInfo;Lcom/nd/commplatform/d/c/hh;)V
    .locals 1

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdUserRankInfo;->getUin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ed;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/nd/commplatform/d/c/hh;)V
    .locals 0

    check-cast p1, Lcom/nd/commplatform/entry/NdUserRankInfo;

    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/fi;->a(Lcom/nd/commplatform/entry/NdUserRankInfo;Lcom/nd/commplatform/d/c/hh;)V

    return-void
.end method

.method protected a(ZI)V
    .locals 4

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/fi;->o()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fi;->h:Lcom/nd/commplatform/d/c/fj;

    invoke-virtual {v0, p0}, Lcom/nd/commplatform/d/c/fj;->a(Lcom/nd/commplatform/d/c/fi;)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->i()Z

    move-result v0

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/a;->o()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fi;->l:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fi;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fi;->h:Lcom/nd/commplatform/d/c/fj;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/fj;->a(Z)V

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fi;->h:Lcom/nd/commplatform/d/c/fj;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fi;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/fj;->a(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fi;->h:Lcom/nd/commplatform/d/c/fj;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fi;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/fj;->d(Landroid/view/View;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fi;->h:Lcom/nd/commplatform/d/c/fj;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fi;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/fj;->c(Landroid/view/View;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fi;->i:Lcom/nd/commplatform/d/c/hf;

    invoke-virtual {v0, p0}, Lcom/nd/commplatform/d/c/hf;->a(Lcom/nd/commplatform/d/c/hl;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fi;->i:Lcom/nd/commplatform/d/c/hf;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/fi;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/fi;->k:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/nd/commplatform/d/c/fi;->j:Lcom/nd/commplatform/d/c/hi;

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/nd/commplatform/d/c/hf;->a(Landroid/content/Context;Landroid/widget/ListView;Lcom/nd/commplatform/d/c/hm;Lcom/nd/commplatform/d/c/hj;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fi;->h:Lcom/nd/commplatform/d/c/fj;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fi;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/fj;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/fi;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/fi;->m()V

    :goto_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fi;->i:Lcom/nd/commplatform/d/c/hf;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/hf;->c()V

    :cond_2
    return-void

    :cond_3
    invoke-direct {p0}, Lcom/nd/commplatform/d/c/fi;->n()V

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
    .locals 1

    new-instance v0, Lcom/nd/commplatform/d/c/hd;

    check-cast p1, Lcom/nd/commplatform/widget/NdLeaderBoardListItem;

    invoke-direct {v0, p1}, Lcom/nd/commplatform/d/c/hd;-><init>(Lcom/nd/commplatform/widget/NdLeaderBoardListItem;)V

    return-object v0
.end method

.method public b()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fi;->h:Lcom/nd/commplatform/d/c/fj;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/fj;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fi;->i:Lcom/nd/commplatform/d/c/hf;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/hf;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fi;->k:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/widget/NdListBlankView;

    invoke-virtual {v0, v2}, Lcom/nd/commplatform/widget/NdListBlankView;->b(I)V

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fi;->h:Lcom/nd/commplatform/d/c/fj;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/fj;->c()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fi;->i:Lcom/nd/commplatform/d/c/hf;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/hf;->a()V

    return-void
.end method

.method public b(I)V
    .locals 8

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    new-instance v7, Lcom/nd/commplatform/d/c/fi$1;

    invoke-direct {v7, p0}, Lcom/nd/commplatform/d/c/fi$1;-><init>(Lcom/nd/commplatform/d/c/fi;)V

    invoke-virtual {p0, v7}, Lcom/nd/commplatform/d/c/fi;->a(Lcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;

    new-instance v1, Lcom/nd/commplatform/entry/NdPagination;

    invoke-direct {v1}, Lcom/nd/commplatform/entry/NdPagination;-><init>()V

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Lcom/nd/commplatform/entry/NdPagination;->setPageIndex(I)V

    iget-object v2, p0, Lcom/nd/commplatform/d/c/fi;->j:Lcom/nd/commplatform/d/c/hi;

    invoke-virtual {v2}, Lcom/nd/commplatform/d/c/hi;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nd/commplatform/entry/NdPagination;->setPageSize(I)V

    iget-object v2, p0, Lcom/nd/commplatform/d/c/fi;->m:Ljava/lang/String;

    iget-object v3, p0, Lcom/nd/commplatform/d/c/fi;->l:Ljava/lang/String;

    iget-object v4, p0, Lcom/nd/commplatform/d/c/fi;->h:Lcom/nd/commplatform/d/c/fj;

    invoke-virtual {v4}, Lcom/nd/commplatform/d/c/fj;->e()I

    move-result v4

    iget-object v5, p0, Lcom/nd/commplatform/d/c/fi;->h:Lcom/nd/commplatform/d/c/fj;

    invoke-virtual {v5}, Lcom/nd/commplatform/d/c/fj;->f()I

    move-result v5

    invoke-super {p0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual/range {v0 .. v7}, Lcom/nd/commplatform/d/c/a;->a(Lcom/nd/commplatform/entry/NdPagination;Ljava/lang/String;Ljava/lang/String;IILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

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

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->aj:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/widget/NdLeaderBoardListItem;

    return-object v0
.end method

.method public e(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fi;->f:Landroid/view/View;

    return-object v0
.end method
