.class public Lcom/nd/commplatform/d/c/fe;
.super Lcom/nd/commplatform/widget/NdFrameInnerContent;

# interfaces
.implements Lcom/nd/commplatform/d/c/hm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/widget/NdFrameInnerContent;",
        "Lcom/nd/commplatform/d/c/hm",
        "<",
        "Lcom/nd/commplatform/d/c/ff",
        "<",
        "Lcom/nd/commplatform/entry/NdFriendUserInfo;",
        ">;>;"
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
            "Lcom/nd/commplatform/d/c/ff",
            "<",
            "Lcom/nd/commplatform/entry/NdFriendUserInfo;",
            ">;>;",
            "Lcom/nd/commplatform/d/c/ff",
            "<",
            "Lcom/nd/commplatform/entry/NdFriendUserInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Lcom/nd/commplatform/d/c/hi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nd/commplatform/d/c/hi",
            "<",
            "Lcom/nd/commplatform/d/c/ff",
            "<",
            "Lcom/nd/commplatform/entry/NdFriendUserInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Landroid/widget/ListView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/nd/commplatform/d/c/ff",
            "<",
            "Lcom/nd/commplatform/entry/NdFriendUserInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/nd/commplatform/d/c/hf;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/hf;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fe;->a:Lcom/nd/commplatform/d/c/hf;

    new-instance v0, Lcom/nd/commplatform/d/c/hi;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/hi;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fe;->b:Lcom/nd/commplatform/d/c/hi;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fe;->e:Landroid/util/SparseArray;

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->b()I

    move-result v0

    iput v0, p0, Lcom/nd/commplatform/d/c/fe;->g:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/nd/commplatform/d/c/hf;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/hf;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fe;->a:Lcom/nd/commplatform/d/c/hf;

    new-instance v0, Lcom/nd/commplatform/d/c/hi;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/hi;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fe;->b:Lcom/nd/commplatform/d/c/hi;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fe;->e:Landroid/util/SparseArray;

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->b()I

    move-result v0

    iput v0, p0, Lcom/nd/commplatform/d/c/fe;->g:I

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/fe;)Lcom/nd/commplatform/d/c/hf;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fe;->a:Lcom/nd/commplatform/d/c/hf;

    return-object v0
.end method

.method static synthetic a(Lcom/nd/commplatform/entry/NdPageList;)Lcom/nd/commplatform/entry/NdPageList;
    .locals 1

    invoke-static {p0}, Lcom/nd/commplatform/d/c/fe;->b(Lcom/nd/commplatform/entry/NdPageList;)Lcom/nd/commplatform/entry/NdPageList;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3

    new-instance v0, Lcom/nd/commplatform/d/c/bx;

    const/16 v1, 0x75

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/bx;-><init>(I)V

    const-string v1, "inviteDesc"

    invoke-virtual {v0, v1, p1}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "app"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, -0x1

    const/16 v2, 0xbc0

    invoke-static {p0, v1, v2, v0}, Lcom/nd/commplatform/d/c/cb;->a(Landroid/content/Context;IILcom/nd/commplatform/d/c/bx;)V

    return-void
.end method

.method public static a(Ljava/lang/String;I)V
    .locals 3

    new-instance v0, Lcom/nd/commplatform/d/c/bx;

    const/16 v1, 0x75

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/bx;-><init>(I)V

    const-string v1, "inviteDesc"

    invoke-virtual {v0, v1, p0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "app"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xbc0

    invoke-static {v1, v0}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    return-void
.end method

.method private static b(Lcom/nd/commplatform/entry/NdPageList;)Lcom/nd/commplatform/entry/NdPageList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<",
            "Lcom/nd/commplatform/entry/NdFriendUserInfo;",
            ">;)",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<",
            "Lcom/nd/commplatform/d/c/ff",
            "<",
            "Lcom/nd/commplatform/entry/NdFriendUserInfo;",
            ">;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/nd/commplatform/d/c/ff;->a(Lcom/nd/commplatform/entry/NdPageList;)Lcom/nd/commplatform/entry/NdPageList;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fe;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fe;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/ff;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/ff;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fe;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    invoke-direct {p0, v2}, Lcom/nd/commplatform/d/c/fe;->c(Z)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/fe;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/fe;->m()V

    return-void
.end method

.method static synthetic c(Lcom/nd/commplatform/d/c/fe;)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/fe;->n()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private c(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/nd/commplatform/d/c/fe;->s:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/nd/commplatform/d/c/fe;->s:Z

    iget-boolean v0, p0, Lcom/nd/commplatform/d/c/fe;->s:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/fe;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->cH:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fe;->t:Ljava/lang/String;

    new-instance v0, Lcom/nd/commplatform/d/c/fe$3;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/fe$3;-><init>(Lcom/nd/commplatform/d/c/fe;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fe;->u:Landroid/view/View$OnClickListener;

    :cond_0
    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/fe;->i()V

    :cond_1
    return-void
.end method

.method private c()Z
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fe;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/nd/commplatform/d/c/fe;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fe;->f:Ljava/lang/String;

    return-object v0
.end method

.method private m()V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fe;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fe;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private n()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/d/c/ff",
            "<",
            "Lcom/nd/commplatform/entry/NdFriendUserInfo;",
            ">;>;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fe;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fe;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/ff;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private o()V
    .locals 3

    const/16 v2, 0x75

    invoke-static {v2}, Lcom/nd/commplatform/d/c/cb;->b(I)Lcom/nd/commplatform/d/c/bx;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "inviteDesc"

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fe;->f:Ljava/lang/String;

    const-string v0, "app"

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/nd/commplatform/d/c/fe;->g:I

    :cond_0
    invoke-static {v2}, Lcom/nd/commplatform/d/c/cb;->c(I)Lcom/nd/commplatform/d/c/bx;

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->ag:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/fe;->p:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/fe;->q:Z

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->cF:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fe;->r:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/nd/commplatform/d/c/fe;->s:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/fe;->v:Z

    iput-boolean v3, p0, Lcom/nd/commplatform/d/c/fe;->w:Z

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 1

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->fH:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fe;->c:Landroid/widget/ListView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->cR:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/fe;->d:Landroid/widget/TextView;

    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 1

    check-cast p1, Lcom/nd/commplatform/widget/NdListBlankView;

    sget v0, Lcom/nd/commplatform/d/c/jo$h;->fC:I

    invoke-virtual {p1, v0}, Lcom/nd/commplatform/widget/NdListBlankView;->a(I)V

    return-void
.end method

.method public a(Landroid/view/View;IIZ)V
    .locals 0

    check-cast p1, Lcom/nd/commplatform/widget/NdListViewFooter;

    invoke-virtual {p1, p4}, Lcom/nd/commplatform/widget/NdListViewFooter;->a(Z)V

    return-void
.end method

.method public a(Lcom/nd/commplatform/d/c/ff;Lcom/nd/commplatform/d/c/hh;)V
    .locals 2

    invoke-virtual {p1}, Lcom/nd/commplatform/d/c/ff;->a()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/nd/commplatform/d/c/ff;->b()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/fe;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/fe;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->cK:I

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    check-cast p2, Lcom/nd/commplatform/d/c/gy;

    invoke-virtual {p2}, Lcom/nd/commplatform/d/c/gy;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/nd/commplatform/d/c/ff;->a:Lcom/nd/commplatform/entry/NdFriendUserInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdFriendUserInfo;->getBaseUserInfo()Lcom/nd/commplatform/entry/NdBaseUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdBaseUserInfo;->getUin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/nd/commplatform/d/c/ff;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fe;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fe;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    invoke-direct {p0, v0}, Lcom/nd/commplatform/d/c/fe;->c(Z)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/nd/commplatform/d/c/fe;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public a(Lcom/nd/commplatform/d/c/hh;)V
    .locals 0

    check-cast p1, Lcom/nd/commplatform/d/c/gy;

    invoke-virtual {p1}, Lcom/nd/commplatform/d/c/gy;->b()V

    return-void
.end method

.method public a(Lcom/nd/commplatform/d/c/hh;Lcom/nd/commplatform/d/c/ff;)V
    .locals 0

    check-cast p1, Lcom/nd/commplatform/d/c/gy;

    invoke-virtual {p1, p2}, Lcom/nd/commplatform/d/c/gy;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/nd/commplatform/d/c/hh;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/nd/commplatform/d/c/ff;

    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/fe;->a(Lcom/nd/commplatform/d/c/hh;Lcom/nd/commplatform/d/c/ff;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/nd/commplatform/d/c/hh;)V
    .locals 0

    check-cast p1, Lcom/nd/commplatform/d/c/ff;

    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/fe;->a(Lcom/nd/commplatform/d/c/ff;Lcom/nd/commplatform/d/c/hh;)V

    return-void
.end method

.method protected a(ZI)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/fe;->o()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fe;->a:Lcom/nd/commplatform/d/c/hf;

    invoke-super {p0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/fe;->c:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/nd/commplatform/d/c/fe;->b:Lcom/nd/commplatform/d/c/hi;

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/nd/commplatform/d/c/hf;->a(Landroid/content/Context;Landroid/widget/ListView;Lcom/nd/commplatform/d/c/hm;Lcom/nd/commplatform/d/c/hj;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fe;->a:Lcom/nd/commplatform/d/c/hf;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/hf;->c()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/nd/commplatform/d/c/fe;->b()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fe;->a:Lcom/nd/commplatform/d/c/hf;

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

    new-instance v0, Lcom/nd/commplatform/d/c/gy;

    check-cast p1, Lcom/nd/commplatform/widget/NdInviteFriendListItem;

    new-instance v1, Lcom/nd/commplatform/d/c/fe$1;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/fe$1;-><init>(Lcom/nd/commplatform/d/c/fe;)V

    invoke-direct {v0, p1, v1}, Lcom/nd/commplatform/d/c/gy;-><init>(Lcom/nd/commplatform/widget/NdInviteFriendListItem;Lcom/nd/commplatform/d/c/gx;)V

    return-object v0
.end method

.method public b(I)V
    .locals 5

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    new-instance v1, Lcom/nd/commplatform/d/c/fe$2;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/fe$2;-><init>(Lcom/nd/commplatform/d/c/fe;)V

    invoke-virtual {p0, v1}, Lcom/nd/commplatform/d/c/fe;->a(Lcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;

    new-instance v2, Lcom/nd/commplatform/entry/NdPagination;

    invoke-direct {v2}, Lcom/nd/commplatform/entry/NdPagination;-><init>()V

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Lcom/nd/commplatform/entry/NdPagination;->setPageIndex(I)V

    iget-object v3, p0, Lcom/nd/commplatform/d/c/fe;->b:Lcom/nd/commplatform/d/c/hi;

    invoke-virtual {v3}, Lcom/nd/commplatform/d/c/hi;->f()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/nd/commplatform/entry/NdPagination;->setPageSize(I)V

    iget v3, p0, Lcom/nd/commplatform/d/c/fe;->g:I

    invoke-super {p0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/nd/commplatform/d/c/a;->a(Lcom/nd/commplatform/entry/NdPagination;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

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
