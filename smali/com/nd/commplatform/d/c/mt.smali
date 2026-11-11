.class public Lcom/nd/commplatform/d/c/mt;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nd/commplatform/d/c/mt$a;
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
            "Lcom/nd/commplatform/d/c/mt$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/ListView;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ListView;",
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/d/c/nb;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/mt;->d:Ljava/util/List;

    iput-object p1, p0, Lcom/nd/commplatform/d/c/mt;->b:Landroid/widget/ListView;

    invoke-direct {p0, p2}, Lcom/nd/commplatform/d/c/mt;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(I)Lcom/nd/commplatform/d/c/mt$a;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mt;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/mt$a;

    return-object v0
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/mt;I)Lcom/nd/commplatform/d/c/mt$a;
    .locals 1

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/mt;->a(I)Lcom/nd/commplatform/d/c/mt$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/mt;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mt;->d:Ljava/util/List;

    return-object v0
.end method

.method private a(Lcom/nd/commplatform/d/c/mt$a;)V
    .locals 5

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    new-instance v1, Lcom/nd/commplatform/d/c/mt$2;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/mt$2;-><init>(Lcom/nd/commplatform/d/c/mt;)V

    iget-object v2, p1, Lcom/nd/commplatform/d/c/mt$a;->e:Lcom/nd/commplatform/d/c/nb;

    invoke-virtual {v2}, Lcom/nd/commplatform/d/c/nb;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/nd/commplatform/d/c/mt;->b:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/nd/commplatform/d/c/a;->a(Ljava/lang/String;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/mt;Lcom/nd/commplatform/d/c/mt$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/mt;->a(Lcom/nd/commplatform/d/c/mt$a;)V

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

    iput-object p1, p0, Lcom/nd/commplatform/d/c/mt;->c:Ljava/util/List;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mt;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mt;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    new-instance v3, Lcom/nd/commplatform/d/c/mt$a;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Lcom/nd/commplatform/d/c/mt$a;-><init>(Lcom/nd/commplatform/d/c/mt$1;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mt;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/nb;

    iput-object v0, v3, Lcom/nd/commplatform/d/c/mt$a;->e:Lcom/nd/commplatform/d/c/nb;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mt;->d:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/mt;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mt;->b:Landroid/widget/ListView;

    return-object v0
.end method

.method private b()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mt;->e:Landroid/widget/ArrayAdapter;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/nd/commplatform/d/c/mt$1;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/mt;->b:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2, v2}, Lcom/nd/commplatform/d/c/mt$1;-><init>(Lcom/nd/commplatform/d/c/mt;Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/mt;->e:Landroid/widget/ArrayAdapter;

    goto :goto_0
.end method

.method static synthetic c(Lcom/nd/commplatform/d/c/mt;)Landroid/widget/ArrayAdapter;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mt;->e:Landroid/widget/ArrayAdapter;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/mt;->b()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mt;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/mt;->e:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

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

    iget-object v1, p0, Lcom/nd/commplatform/d/c/mt;->d:Ljava/util/List;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/hx;->d()I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/mt$a;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/mt$a;->e:Lcom/nd/commplatform/d/c/nb;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/nb;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ed;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
