.class public Lcom/nd/commplatform/d/c/mv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/nd/commplatform/uap/widget/NdNonScrollListAdapter$NdNonScrollListItemAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nd/commplatform/d/c/mv$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "NdActivityUserNonScrollListViewHolder"


# instance fields
.field private b:Lcom/nd/commplatform/uap/widget/NdNonScrollListView;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/d/c/nb;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/d/c/mv$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/nd/commplatform/widget/NdFrameInnerContent;

.field private f:Lcom/nd/commplatform/uap/widget/NdNonScrollListAdapter;


# direct methods
.method public constructor <init>(Lcom/nd/commplatform/widget/NdFrameInnerContent;Lcom/nd/commplatform/uap/widget/NdNonScrollListView;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nd/commplatform/widget/NdFrameInnerContent;",
            "Lcom/nd/commplatform/uap/widget/NdNonScrollListView;",
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/d/c/nb;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/mv;->d:Ljava/util/List;

    iput-object p1, p0, Lcom/nd/commplatform/d/c/mv;->e:Lcom/nd/commplatform/widget/NdFrameInnerContent;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/mv;->b:Lcom/nd/commplatform/uap/widget/NdNonScrollListView;

    invoke-direct {p0, p3}, Lcom/nd/commplatform/d/c/mv;->a(Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/mv;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/mv;->b()V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/d/c/nb;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nd/commplatform/d/c/mv;->c:Ljava/util/List;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mv;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mv;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    new-instance v3, Lcom/nd/commplatform/d/c/mv$a;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Lcom/nd/commplatform/d/c/mv$a;-><init>(Lcom/nd/commplatform/d/c/mv$1;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mv;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/nb;

    iput-object v0, v3, Lcom/nd/commplatform/d/c/mv$a;->e:Lcom/nd/commplatform/d/c/nb;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mv;->d:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/mv;)Lcom/nd/commplatform/uap/widget/NdNonScrollListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mv;->f:Lcom/nd/commplatform/uap/widget/NdNonScrollListAdapter;

    return-object v0
.end method

.method private b()V
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mv;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mv;->d:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/mv$a;

    iget v6, v0, Lcom/nd/commplatform/d/c/mv$a;->f:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    const/16 v7, 0xa

    if-lt v6, v7, :cond_1

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mv;->b:Lcom/nd/commplatform/uap/widget/NdNonScrollListView;

    new-instance v1, Lcom/nd/commplatform/d/c/mv$2;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/mv$2;-><init>(Lcom/nd/commplatform/d/c/mv;)V

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/uap/widget/NdNonScrollListView;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mv;->b:Lcom/nd/commplatform/uap/widget/NdNonScrollListView;

    invoke-virtual {v0, v3}, Lcom/nd/commplatform/uap/widget/NdNonScrollListView;->setVisibility(I)V

    :goto_1
    return-void

    :cond_1
    iget-object v0, v0, Lcom/nd/commplatform/d/c/mv$a;->e:Lcom/nd/commplatform/d/c/nb;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/nb;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_3
    new-instance v6, Lcom/nd/commplatform/d/c/mv$3;

    invoke-direct {v6, p0}, Lcom/nd/commplatform/d/c/mv$3;-><init>(Lcom/nd/commplatform/d/c/mv;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mv;->e:Lcom/nd/commplatform/widget/NdFrameInnerContent;

    invoke-virtual {v0, v2}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->b(Z)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mv;->e:Lcom/nd/commplatform/widget/NdFrameInnerContent;

    invoke-virtual {v0, v6}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->a(Lcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    iget-object v4, p0, Lcom/nd/commplatform/d/c/mv;->b:Lcom/nd/commplatform/uap/widget/NdNonScrollListView;

    invoke-virtual {v4}, Lcom/nd/commplatform/uap/widget/NdNonScrollListView;->getContext()Landroid/content/Context;

    move-result-object v5

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/nd/commplatform/d/c/a;->a(Ljava/util/List;ZZZLandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    goto :goto_1
.end method

.method static synthetic c(Lcom/nd/commplatform/d/c/mv;)Lcom/nd/commplatform/widget/NdFrameInnerContent;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mv;->e:Lcom/nd/commplatform/widget/NdFrameInnerContent;

    return-object v0
.end method

.method private c()V
    .locals 4

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mv;->f:Lcom/nd/commplatform/uap/widget/NdNonScrollListAdapter;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/nd/commplatform/uap/widget/NdNonScrollListAdapter;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/mv;->b:Lcom/nd/commplatform/uap/widget/NdNonScrollListView;

    invoke-virtual {v1}, Lcom/nd/commplatform/uap/widget/NdNonScrollListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/mv;->d:Ljava/util/List;

    sget v3, Lcom/nd/commplatform/d/c/jo$f;->bl:I

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/nd/commplatform/uap/widget/NdNonScrollListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/nd/commplatform/uap/widget/NdNonScrollListAdapter$NdNonScrollListItemAdapter;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/mv;->f:Lcom/nd/commplatform/uap/widget/NdNonScrollListAdapter;

    goto :goto_0
.end method

.method static synthetic d(Lcom/nd/commplatform/d/c/mv;)Lcom/nd/commplatform/uap/widget/NdNonScrollListView;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mv;->b:Lcom/nd/commplatform/uap/widget/NdNonScrollListView;

    return-object v0
.end method

.method static synthetic e(Lcom/nd/commplatform/d/c/mv;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mv;->d:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/nd/commplatform/d/c/hx;

    check-cast p1, Lcom/nd/commplatform/widget/NdUserListItem;

    new-instance v1, Lcom/nd/commplatform/d/c/mv$4;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/mv$4;-><init>(Lcom/nd/commplatform/d/c/mv;)V

    invoke-direct {v0, p1, v1}, Lcom/nd/commplatform/d/c/hx;-><init>(Lcom/nd/commplatform/widget/NdUserListItem;Lcom/nd/commplatform/d/c/hg;)V

    return-object v0
.end method

.method public a()V
    .locals 4

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/mv;->c()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mv;->b:Lcom/nd/commplatform/uap/widget/NdNonScrollListView;

    invoke-virtual {v0, p0}, Lcom/nd/commplatform/uap/widget/NdNonScrollListView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mv;->b:Lcom/nd/commplatform/uap/widget/NdNonScrollListView;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/mv;->f:Lcom/nd/commplatform/uap/widget/NdNonScrollListAdapter;

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/uap/widget/NdNonScrollListView;->a(Lcom/nd/commplatform/uap/widget/NdNonScrollListAdapter;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mv;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mv;->b:Lcom/nd/commplatform/uap/widget/NdNonScrollListView;

    new-instance v1, Lcom/nd/commplatform/d/c/mv$1;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/mv$1;-><init>(Lcom/nd/commplatform/d/c/mv;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/nd/commplatform/uap/widget/NdNonScrollListView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/nd/commplatform/d/c/hx;

    check-cast p2, Lcom/nd/commplatform/d/c/mv$a;

    const/4 v0, 0x2

    iget v1, p2, Lcom/nd/commplatform/d/c/mv$a;->f:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/nd/commplatform/d/c/hx;->b(Z)V

    invoke-virtual {p1, p2}, Lcom/nd/commplatform/d/c/hx;->a(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/nd/commplatform/d/c/hx;->c()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/hx;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/hx;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/mv;->d:Ljava/util/List;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/hx;->d()I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/mv$a;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/mv$a;->e:Lcom/nd/commplatform/d/c/nb;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/nb;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ed;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
