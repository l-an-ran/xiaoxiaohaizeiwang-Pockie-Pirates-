.class public Lcom/nd/commplatform/d/c/mu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nd/commplatform/d/c/mu$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "NdActivityUserListViewHolder"


# instance fields
.field private b:Landroid/widget/ListView;

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
            "Lcom/nd/commplatform/d/c/mu$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;

.field private f:Lcom/nd/commplatform/d/c/mq;

.field private g:Lcom/nd/commplatform/d/c/mx;

.field private h:Lcom/nd/commplatform/widget/NdFrameInnerContent;

.field private i:Z

.field private j:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nd/commplatform/widget/NdFrameInnerContent;Landroid/widget/ListView;Lcom/nd/commplatform/d/c/mx;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/mu;->d:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nd/commplatform/d/c/mu;->i:Z

    iput-object p1, p0, Lcom/nd/commplatform/d/c/mu;->h:Lcom/nd/commplatform/widget/NdFrameInnerContent;

    iput-object p3, p0, Lcom/nd/commplatform/d/c/mu;->g:Lcom/nd/commplatform/d/c/mx;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/mu;->b:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mu;->g:Lcom/nd/commplatform/d/c/mx;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/mx;->a()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nd/commplatform/d/c/mu;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(I)Lcom/nd/commplatform/d/c/mu$a;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mu;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/mu$a;

    return-object v0
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/mu;I)Lcom/nd/commplatform/d/c/mu$a;
    .locals 1

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/mu;->a(I)Lcom/nd/commplatform/d/c/mu$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/mu;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mu;->d:Ljava/util/List;

    return-object v0
.end method

.method private a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/d/c/nb;",
            ">;)V"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/mu;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/nb;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/nb;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/nd/commplatform/d/c/mu;->c:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/mu;->c:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mu;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_2

    new-instance v3, Lcom/nd/commplatform/d/c/mu$a;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Lcom/nd/commplatform/d/c/mu$a;-><init>(Lcom/nd/commplatform/d/c/mu$1;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mu;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/nb;

    iput-object v0, v3, Lcom/nd/commplatform/d/c/mu$a;->e:Lcom/nd/commplatform/d/c/nb;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mu;->d:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/mu;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/nd/commplatform/d/c/mu;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/mu;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mu;->b:Landroid/widget/ListView;

    return-object v0
.end method

.method private b()V
    .locals 2

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/mu;->d()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mu;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/mu;->j:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private c()V
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x5

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mu;->b:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$f;->z:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/mu;->e:Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mu;->e:Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;

    sget v1, Lcom/nd/commplatform/d/c/jo$d;->f:I

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mu;->e:Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;

    const/4 v1, 0x7

    invoke-virtual {v0, v2, v2, v1, v2}, Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;->setPadding(IIII)V

    new-instance v0, Lcom/nd/commplatform/d/c/mq;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/mu;->e:Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;

    new-instance v2, Lcom/nd/commplatform/d/c/mu$1;

    iget-object v3, p0, Lcom/nd/commplatform/d/c/mu;->g:Lcom/nd/commplatform/d/c/mx;

    invoke-direct {v2, p0, v3}, Lcom/nd/commplatform/d/c/mu$1;-><init>(Lcom/nd/commplatform/d/c/mu;Lcom/nd/commplatform/d/c/my;)V

    invoke-direct {v0, v1, v2}, Lcom/nd/commplatform/d/c/mq;-><init>(Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;Lcom/nd/commplatform/d/c/mr;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/mu;->f:Lcom/nd/commplatform/d/c/mq;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mu;->f:Lcom/nd/commplatform/d/c/mq;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/mq;->b()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mu;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/mu;->e:Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v4, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method

.method static synthetic c(Lcom/nd/commplatform/d/c/mu;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/mu;->e()V

    return-void
.end method

.method static synthetic d(Lcom/nd/commplatform/d/c/mu;)Landroid/widget/ArrayAdapter;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mu;->j:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method private d()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mu;->j:Landroid/widget/ArrayAdapter;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/nd/commplatform/d/c/mu$2;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/mu;->b:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2, v2}, Lcom/nd/commplatform/d/c/mu$2;-><init>(Lcom/nd/commplatform/d/c/mu;Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/mu;->j:Landroid/widget/ArrayAdapter;

    goto :goto_0
.end method

.method private e()V
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/nd/commplatform/d/c/mu;->i:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v3, p0, Lcom/nd/commplatform/d/c/mu;->i:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mu;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    move v4, v3

    :goto_1
    if-ge v4, v5, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mu;->d:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/mu$a;

    iget v6, v0, Lcom/nd/commplatform/d/c/mu$a;->f:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    const/16 v7, 0xa

    if-lt v6, v7, :cond_2

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_4

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/mu;->i:Z

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mu;->j:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcom/nd/commplatform/d/c/mu$a;->e:Lcom/nd/commplatform/d/c/nb;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/nb;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_4
    new-instance v6, Lcom/nd/commplatform/d/c/mu$3;

    invoke-direct {v6, p0}, Lcom/nd/commplatform/d/c/mu$3;-><init>(Lcom/nd/commplatform/d/c/mu;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mu;->h:Lcom/nd/commplatform/widget/NdFrameInnerContent;

    invoke-virtual {v0, v6}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->a(Lcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    iget-object v4, p0, Lcom/nd/commplatform/d/c/mu;->b:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v5

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/nd/commplatform/d/c/a;->a(Ljava/util/List;ZZZLandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/mu;->c()V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/mu;->b()V

    return-void
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

    iget-object v1, p0, Lcom/nd/commplatform/d/c/mu;->d:Ljava/util/List;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/hx;->d()I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/mu$a;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/mu$a;->e:Lcom/nd/commplatform/d/c/nb;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/nb;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ed;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
