.class public Lcom/nd/commplatform/d/c/hf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/nd/commplatform/d/c/hj$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nd/commplatform/d/c/hf$a;,
        Lcom/nd/commplatform/d/c/hf$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/nd/commplatform/d/c/hj$a;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "NdListAdapter<K, V>"


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/widget/ListView;

.field private d:Z

.field private e:Z

.field private f:Lcom/nd/commplatform/d/c/hk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nd/commplatform/d/c/hk",
            "<TV;>;"
        }
    .end annotation
.end field

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Z

.field private j:Z

.field private k:Landroid/view/View;

.field private l:Lcom/nd/commplatform/d/c/hl;

.field private m:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<TV;>;"
        }
    .end annotation
.end field

.field private n:Lcom/nd/commplatform/d/c/hm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nd/commplatform/d/c/hm",
            "<TV;>;"
        }
    .end annotation
.end field

.field private o:Lcom/nd/commplatform/d/c/hj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nd/commplatform/d/c/hj",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/nd/commplatform/d/c/hf;->d:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nd/commplatform/d/c/hf;->e:Z

    iput-boolean v1, p0, Lcom/nd/commplatform/d/c/hf;->i:Z

    iput-boolean v1, p0, Lcom/nd/commplatform/d/c/hf;->j:Z

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/hf;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf;->h:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/hf;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/hf;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nd/commplatform/d/c/hf;->i:Z

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/hf;->l()V

    return-void
.end method

.method private b(I)V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf;->n:Lcom/nd/commplatform/d/c/hm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf;->o:Lcom/nd/commplatform/d/c/hj;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/hj;->a()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf;->n:Lcom/nd/commplatform/d/c/hm;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/hf;->g:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Lcom/nd/commplatform/d/c/hm;->a(Landroid/view/View;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf;->n:Lcom/nd/commplatform/d/c/hm;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/hf;->g:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Lcom/nd/commplatform/d/c/hm;->a(Landroid/view/View;I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/hf;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nd/commplatform/d/c/hf;->j:Z

    return v0
.end method

.method static synthetic c(Lcom/nd/commplatform/d/c/hf;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nd/commplatform/d/c/hf;->i:Z

    return v0
.end method

.method static synthetic d(Lcom/nd/commplatform/d/c/hf;)Lcom/nd/commplatform/d/c/hj;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf;->o:Lcom/nd/commplatform/d/c/hj;

    return-object v0
.end method

.method static synthetic e(Lcom/nd/commplatform/d/c/hf;)Lcom/nd/commplatform/d/c/hm;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf;->n:Lcom/nd/commplatform/d/c/hm;

    return-object v0
.end method

.method static synthetic f(Lcom/nd/commplatform/d/c/hf;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g(Lcom/nd/commplatform/d/c/hf;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf;->c:Landroid/widget/ListView;

    return-object v0
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf;->c:Landroid/widget/ListView;

    new-instance v1, Lcom/nd/commplatform/d/c/hf$1;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/hf$1;-><init>(Lcom/nd/commplatform/d/c/hf;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method static synthetic h(Lcom/nd/commplatform/d/c/hf;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nd/commplatform/d/c/hf;->e:Z

    return v0
.end method

.method static synthetic i(Lcom/nd/commplatform/d/c/hf;)Lcom/nd/commplatform/d/c/hk;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf;->f:Lcom/nd/commplatform/d/c/hk;

    return-object v0
.end method

.method private i()V
    .locals 4

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf;->l:Lcom/nd/commplatform/d/c/hl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf;->k:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf;->b:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/hf;->l:Lcom/nd/commplatform/d/c/hl;

    invoke-interface {v1, v0}, Lcom/nd/commplatform/d/c/hl;->e(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/hf;->k:Landroid/view/View;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf;->c:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf;->k:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/hf;->k:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_0
    return-void
.end method

.method private j()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf;->h:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf;->b:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/hf;->n:Lcom/nd/commplatform/d/c/hm;

    invoke-interface {v1, v0}, Lcom/nd/commplatform/d/c/hm;->c(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/hf;->h:Landroid/view/View;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/hf;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf;->h:Landroid/view/View;

    new-instance v1, Lcom/nd/commplatform/d/c/hf$2;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/hf$2;-><init>(Lcom/nd/commplatform/d/c/hf;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/hf;->j:Z

    :cond_0
    iget-boolean v0, p0, Lcom/nd/commplatform/d/c/hf;->j:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/hf;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/hf;->j:Z

    :cond_1
    return-void
.end method

.method static synthetic j(Lcom/nd/commplatform/d/c/hf;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nd/commplatform/d/c/hf;->d:Z

    return v0
.end method

.method private k()V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf;->n:Lcom/nd/commplatform/d/c/hm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf;->o:Lcom/nd/commplatform/d/c/hj;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/hj;->a()I

    move-result v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/hf;->o:Lcom/nd/commplatform/d/c/hj;

    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf;->n:Lcom/nd/commplatform/d/c/hm;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/hf;->g:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/nd/commplatform/d/c/hm;->c(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private l()V
    .locals 5

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/hf;->g()Z

    move-result v0

    iget-boolean v1, p0, Lcom/nd/commplatform/d/c/hf;->j:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/hf;->c:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/hf;->h:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nd/commplatform/d/c/hf;->j:Z

    :cond_0
    iget-boolean v1, p0, Lcom/nd/commplatform/d/c/hf;->j:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf;->o:Lcom/nd/commplatform/d/c/hj;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/hj;->b()I

    move-result v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/hf;->o:Lcom/nd/commplatform/d/c/hj;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/hj;->a()I

    move-result v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/hf;->n:Lcom/nd/commplatform/d/c/hm;

    iget-object v3, p0, Lcom/nd/commplatform/d/c/hf;->h:Landroid/view/View;

    iget-boolean v4, p0, Lcom/nd/commplatform/d/c/hf;->i:Z

    invoke-interface {v2, v3, v0, v1, v4}, Lcom/nd/commplatform/d/c/hm;->a(Landroid/view/View;IIZ)V

    :cond_1
    return-void
.end method

.method private m()V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf;->o:Lcom/nd/commplatform/d/c/hj;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/hj;->a(Z)V

    return-void
.end method

.method private n()Landroid/widget/ArrayAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/ArrayAdapter",
            "<TV;>;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf;->m:Landroid/widget/ArrayAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf;->m:Landroid/widget/ArrayAdapter;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf;->k:Landroid/view/View;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/nd/commplatform/d/c/hf$3;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/hf;->b:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2, v2}, Lcom/nd/commplatform/d/c/hf$3;-><init>(Lcom/nd/commplatform/d/c/hf;Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/hf;->m:Landroid/widget/ArrayAdapter;

    :goto_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf;->m:Landroid/widget/ArrayAdapter;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/nd/commplatform/d/c/hf$a;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/hf;->b:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2, v2}, Lcom/nd/commplatform/d/c/hf$a;-><init>(Lcom/nd/commplatform/d/c/hf;Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/hf;->m:Landroid/widget/ArrayAdapter;

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/hf;->c()V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/hf;->k()V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/hf;->l()V

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/hf;->f()V

    return-void
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf;->o:Lcom/nd/commplatform/d/c/hj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf;->c:Landroid/widget/ListView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf;->o:Lcom/nd/commplatform/d/c/hj;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/hf;->c:Landroid/widget/ListView;

    invoke-virtual {v0, p1, v1}, Lcom/nd/commplatform/d/c/hj;->a(ILandroid/widget/ListView;)V

    goto :goto_0
.end method

.method public a(ILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf;->k:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf;->l:Lcom/nd/commplatform/d/c/hl;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/hf;->k:Landroid/view/View;

    invoke-interface {v0, v1, p1, p2}, Lcom/nd/commplatform/d/c/hl;->a(Landroid/view/View;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf;->c:Landroid/widget/ListView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf;->m:Landroid/widget/ArrayAdapter;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/hf;->n()Landroid/widget/ArrayAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/hf;->m:Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/hf;->m:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/hf;->f()V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Landroid/widget/ListView;Lcom/nd/commplatform/d/c/hm;Lcom/nd/commplatform/d/c/hj;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/ListView;",
            "Lcom/nd/commplatform/d/c/hm",
            "<TV;>;",
            "Lcom/nd/commplatform/d/c/hj",
            "<TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nd/commplatform/d/c/hf;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/hf;->c:Landroid/widget/ListView;

    iput-object p3, p0, Lcom/nd/commplatform/d/c/hf;->n:Lcom/nd/commplatform/d/c/hm;

    iput-object p4, p0, Lcom/nd/commplatform/d/c/hf;->o:Lcom/nd/commplatform/d/c/hj;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf;->o:Lcom/nd/commplatform/d/c/hj;

    invoke-virtual {v0, p0}, Lcom/nd/commplatform/d/c/hj;->a(Lcom/nd/commplatform/d/c/hj$a;)V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/hf;->i()V

    return-void
.end method

.method public final a(Lcom/nd/commplatform/NdCallbackListener;ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<*>;ITK;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf;->b:Landroid/content/Context;

    invoke-static {p1, v0, p2}, Lcom/nd/commplatform/d/c/nt;->a(Lcom/nd/commplatform/NdCallbackListener;Landroid/content/Context;I)V

    :cond_0
    invoke-direct {p0}, Lcom/nd/commplatform/d/c/hf;->i()V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/hf;->j()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf;->o:Lcom/nd/commplatform/d/c/hj;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf;->o:Lcom/nd/commplatform/d/c/hj;

    invoke-virtual {v0, p2, p3}, Lcom/nd/commplatform/d/c/hj;->a(ILjava/lang/Object;)I

    :cond_1
    invoke-direct {p0, p2}, Lcom/nd/commplatform/d/c/hf;->b(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nd/commplatform/d/c/hf;->a(Z)V

    return-void
.end method

.method public a(Lcom/nd/commplatform/d/c/hl;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/hf;->l:Lcom/nd/commplatform/d/c/hl;

    return-void
.end method

.method public final a(ZLcom/nd/commplatform/d/c/hk;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/nd/commplatform/d/c/hk",
            "<TV;>;)V"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf;->c:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    iget-boolean v0, p0, Lcom/nd/commplatform/d/c/hf;->d:Z

    if-ne v0, p1, :cond_0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    :cond_0
    iput-boolean p1, p0, Lcom/nd/commplatform/d/c/hf;->d:Z

    iput-object p2, p0, Lcom/nd/commplatform/d/c/hf;->f:Lcom/nd/commplatform/d/c/hk;

    iget-boolean v0, p0, Lcom/nd/commplatform/d/c/hf;->d:Z

    if-nez v0, :cond_2

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/hf;->e:Z

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/hf;->f()V

    :cond_1
    return-void

    :cond_2
    iput-boolean v1, p0, Lcom/nd/commplatform/d/c/hf;->e:Z

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf;->g:Landroid/view/View;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf;->b:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/hf;->n:Lcom/nd/commplatform/d/c/hm;

    invoke-interface {v1, v0}, Lcom/nd/commplatform/d/c/hm;->b(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/hf;->g:Landroid/view/View;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/hf;->k()V

    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf;->c:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/nd/commplatform/d/c/hf;->g:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf;->g:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf;->c:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final b(ILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf;->k:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf;->l:Lcom/nd/commplatform/d/c/hl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf;->l:Lcom/nd/commplatform/d/c/hl;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/hf;->k:Landroid/view/View;

    invoke-interface {v0, v1, p1, p2}, Lcom/nd/commplatform/d/c/hl;->a(Landroid/view/View;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/hf;->h()V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/hf;->m()V

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/hf;->b()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf;->n:Lcom/nd/commplatform/d/c/hm;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/nd/commplatform/d/c/hm;->b(I)V

    return-void
.end method

.method public final d()Z
    .locals 8

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/nd/commplatform/d/c/hf;->d:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/hf;->f:Lcom/nd/commplatform/d/c/hk;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/nd/commplatform/d/c/hf;->c:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_3

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    iget-object v6, p0, Lcom/nd/commplatform/d/c/hf;->o:Lcom/nd/commplatform/d/c/hj;

    invoke-virtual {v6, v5}, Lcom/nd/commplatform/d/c/hj;->b(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    new-instance v7, Lcom/nd/commplatform/d/c/hk$a;

    invoke-direct {v7}, Lcom/nd/commplatform/d/c/hk$a;-><init>()V

    iput v5, v7, Lcom/nd/commplatform/d/c/hk$a;->a:I

    iput-object v6, v7, Lcom/nd/commplatform/d/c/hk$a;->b:Ljava/lang/Object;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/nd/commplatform/d/c/hk$a;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/hf;->f:Lcom/nd/commplatform/d/c/hk;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nd/commplatform/d/c/hk$a;

    invoke-interface {v1, v0}, Lcom/nd/commplatform/d/c/hk;->a([Lcom/nd/commplatform/d/c/hk$a;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final e()Z
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf;->m:Landroid/widget/ArrayAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf;->c:Landroid/widget/ListView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf;->m:Landroid/widget/ArrayAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf;->m:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method protected final g()Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/hf;->o:Lcom/nd/commplatform/d/c/hj;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/nd/commplatform/d/c/hf;->o:Lcom/nd/commplatform/d/c/hj;

    invoke-virtual {v2}, Lcom/nd/commplatform/d/c/hj;->b()I

    move-result v2

    iget-object v3, p0, Lcom/nd/commplatform/d/c/hf;->o:Lcom/nd/commplatform/d/c/hj;

    invoke-virtual {v3}, Lcom/nd/commplatform/d/c/hj;->a()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    if-eq v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .local p0, "this":Lcom/nd/commplatform/d/c/hf;, "Lcom/nd/commplatform/d/c/hf<TK;TV;>;"
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/hh;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/hh;->e()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/nd/commplatform/d/c/hf;->o:Lcom/nd/commplatform/d/c/hj;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/hh;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nd/commplatform/d/c/hj;->b(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/nd/commplatform/d/c/hf;->n:Lcom/nd/commplatform/d/c/hm;

    invoke-interface {v2, v1, v0}, Lcom/nd/commplatform/d/c/hm;->a(Ljava/lang/Object;Lcom/nd/commplatform/d/c/hh;)V

    goto :goto_0
.end method
