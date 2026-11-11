.class public Lcom/nd/commplatform/d/c/fh;
.super Lcom/nd/commplatform/widget/NdFrameInnerContent;

# interfaces
.implements Lcom/nd/commplatform/d/c/hm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/widget/NdFrameInnerContent;",
        "Lcom/nd/commplatform/d/c/hm",
        "<",
        "Lcom/nd/commplatform/entry/NdRankInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:I = 0x64

.field private static final d:Ljava/lang/String; = "Uin"

.field private static final e:Ljava/lang/String; = "App"


# instance fields
.field private a:Lcom/nd/commplatform/d/c/hf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nd/commplatform/d/c/hf",
            "<",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<",
            "Lcom/nd/commplatform/entry/NdRankInfo;",
            ">;",
            "Lcom/nd/commplatform/entry/NdRankInfo;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/nd/commplatform/d/c/hi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nd/commplatform/d/c/hi",
            "<",
            "Lcom/nd/commplatform/entry/NdRankInfo;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/nd/commplatform/d/c/hf;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/hf;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fh;->a:Lcom/nd/commplatform/d/c/hf;

    new-instance v0, Lcom/nd/commplatform/d/c/hi;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/hi;-><init>(I)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fh;->c:Lcom/nd/commplatform/d/c/hi;

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->b()I

    move-result v0

    iput v0, p0, Lcom/nd/commplatform/d/c/fh;->g:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/nd/commplatform/d/c/hf;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/hf;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fh;->a:Lcom/nd/commplatform/d/c/hf;

    new-instance v0, Lcom/nd/commplatform/d/c/hi;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/hi;-><init>(I)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fh;->c:Lcom/nd/commplatform/d/c/hi;

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->b()I

    move-result v0

    iput v0, p0, Lcom/nd/commplatform/d/c/fh;->g:I

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/fh;)Lcom/nd/commplatform/d/c/hf;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fh;->a:Lcom/nd/commplatform/d/c/hf;

    return-object v0
.end method

.method public static a(Ljava/lang/String;I)V
    .locals 3

    new-instance v0, Lcom/nd/commplatform/d/c/bx;

    const/16 v1, 0xbc0

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/bx;-><init>(I)V

    const-string v1, "Uin"

    invoke-virtual {v0, v1, p0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "App"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x6c

    invoke-static {v1, v0}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    return-void
.end method

.method private b()V
    .locals 4

    new-instance v0, Lcom/nd/commplatform/d/c/oz;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/fh;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/oz;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/oz;->b()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/nd/commplatform/d/c/fh$2;

    invoke-direct {v2, p0, v0}, Lcom/nd/commplatform/d/c/fh$2;-><init>(Lcom/nd/commplatform/d/c/fh;Lcom/nd/commplatform/d/c/oz;)V

    invoke-virtual {p0, v2}, Lcom/nd/commplatform/d/c/fh;->a(Lcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/fh;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v2}, Lcom/nd/commplatform/d/c/a;->b(Ljava/util/List;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method private c()V
    .locals 3

    const/16 v2, 0xbc0

    invoke-static {v2}, Lcom/nd/commplatform/d/c/cb;->b(I)Lcom/nd/commplatform/d/c/bx;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "Uin"

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fh;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    :goto_0
    if-eqz v1, :cond_2

    const-string v0, "App"

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/nd/commplatform/d/c/fh;->g:I

    :goto_1
    invoke-static {v2}, Lcom/nd/commplatform/d/c/cb;->c(I)Lcom/nd/commplatform/d/c/bx;

    return-void

    :cond_0
    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fh;->f:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->b()I

    move-result v0

    iput v0, p0, Lcom/nd/commplatform/d/c/fh;->g:I

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->b()I

    move-result v0

    iput v0, p0, Lcom/nd/commplatform/d/c/fh;->g:I

    goto :goto_1
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
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/fh;->b()V

    :cond_0
    invoke-super {p0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/fh;->p:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/fh;->q:Z

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->hm:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fh;->r:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/nd/commplatform/d/c/fh;->s:Z

    iput-object v4, p0, Lcom/nd/commplatform/d/c/fh;->t:Ljava/lang/String;

    iput-object v4, p0, Lcom/nd/commplatform/d/c/fh;->u:Landroid/view/View$OnClickListener;

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/fh;->v:Z

    iput-boolean v3, p0, Lcom/nd/commplatform/d/c/fh;->w:Z

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 1

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->fH:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/fh;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fh;->h:Landroid/widget/ListView;

    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 1

    check-cast p1, Lcom/nd/commplatform/widget/NdListBlankView;

    sget v0, Lcom/nd/commplatform/d/c/jo$h;->fK:I

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

    check-cast p1, Lcom/nd/commplatform/d/c/hc;

    invoke-virtual {p1}, Lcom/nd/commplatform/d/c/hc;->a()V

    return-void
.end method

.method public a(Lcom/nd/commplatform/d/c/hh;Lcom/nd/commplatform/entry/NdRankInfo;)V
    .locals 0

    check-cast p1, Lcom/nd/commplatform/d/c/hc;

    invoke-virtual {p1, p2}, Lcom/nd/commplatform/d/c/hc;->a(Lcom/nd/commplatform/entry/NdRankInfo;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/nd/commplatform/d/c/hh;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/nd/commplatform/entry/NdRankInfo;

    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/fh;->a(Lcom/nd/commplatform/d/c/hh;Lcom/nd/commplatform/entry/NdRankInfo;)V

    return-void
.end method

.method public a(Lcom/nd/commplatform/entry/NdRankInfo;Lcom/nd/commplatform/d/c/hh;)V
    .locals 2

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdRankInfo;->getLeaderBoardId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fh;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/fi;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/nd/commplatform/d/c/hh;)V
    .locals 0

    check-cast p1, Lcom/nd/commplatform/entry/NdRankInfo;

    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/fh;->a(Lcom/nd/commplatform/entry/NdRankInfo;Lcom/nd/commplatform/d/c/hh;)V

    return-void
.end method

.method protected a(ZI)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/fh;->c()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fh;->a:Lcom/nd/commplatform/d/c/hf;

    invoke-super {p0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/fh;->h:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/nd/commplatform/d/c/fh;->c:Lcom/nd/commplatform/d/c/hi;

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/nd/commplatform/d/c/hf;->a(Landroid/content/Context;Landroid/widget/ListView;Lcom/nd/commplatform/d/c/hm;Lcom/nd/commplatform/d/c/hj;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fh;->a:Lcom/nd/commplatform/d/c/hf;

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
    .locals 1

    new-instance v0, Lcom/nd/commplatform/d/c/hc;

    check-cast p1, Lcom/nd/commplatform/widget/NdCategoryPlusImageItem;

    invoke-direct {v0, p1}, Lcom/nd/commplatform/d/c/hc;-><init>(Lcom/nd/commplatform/widget/NdCategoryPlusImageItem;)V

    return-object v0
.end method

.method public b(I)V
    .locals 4

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    new-instance v1, Lcom/nd/commplatform/d/c/fh$1;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/fh$1;-><init>(Lcom/nd/commplatform/d/c/fh;)V

    invoke-virtual {p0, v1}, Lcom/nd/commplatform/d/c/fh;->a(Lcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;

    new-instance v2, Lcom/nd/commplatform/entry/NdPagination;

    invoke-direct {v2}, Lcom/nd/commplatform/entry/NdPagination;-><init>()V

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Lcom/nd/commplatform/entry/NdPagination;->setPageIndex(I)V

    iget-object v3, p0, Lcom/nd/commplatform/d/c/fh;->c:Lcom/nd/commplatform/d/c/hi;

    invoke-virtual {v3}, Lcom/nd/commplatform/d/c/hi;->f()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/nd/commplatform/entry/NdPagination;->setPageSize(I)V

    iget v2, p0, Lcom/nd/commplatform/d/c/fh;->g:I

    invoke-super {p0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/nd/commplatform/d/c/a;->b(ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

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

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->P:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/widget/NdCategoryPlusImageItem;

    return-object v0
.end method
