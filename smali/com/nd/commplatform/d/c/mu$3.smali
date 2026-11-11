.class final Lcom/nd/commplatform/d/c/mu$3;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/mu;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/NdCallbackListener",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/nd/commplatform/entry/NdUserInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/mu;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/mu;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/mu$3;->a:Lcom/nd/commplatform/d/c/mu;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/entry/NdUserInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v10, 0x2

    const/4 v4, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/mu$3;->a:Lcom/nd/commplatform/d/c/mu;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/mu;->b(Lcom/nd/commplatform/d/c/mu;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/nd/commplatform/d/c/nt;->a(Lcom/nd/commplatform/NdCallbackListener;Landroid/content/Context;I)V

    :goto_0
    return-void

    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    move v5, v4

    move v2, v4

    :goto_1
    if-ge v5, v6, :cond_3

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/entry/NdUserInfo;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/mu$3;->a:Lcom/nd/commplatform/d/c/mu;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/mu;->a(Lcom/nd/commplatform/d/c/mu;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    move v3, v4

    :goto_2
    if-ge v3, v7, :cond_2

    iget-object v1, p0, Lcom/nd/commplatform/d/c/mu$3;->a:Lcom/nd/commplatform/d/c/mu;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/mu;->a(Lcom/nd/commplatform/d/c/mu;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nd/commplatform/d/c/mu$a;

    iget v8, v1, Lcom/nd/commplatform/d/c/mu$a;->f:I

    if-eq v8, v10, :cond_5

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdUserInfo;->getUin()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    iget-object v9, v1, Lcom/nd/commplatform/d/c/mu$a;->e:Lcom/nd/commplatform/d/c/nb;

    invoke-virtual {v9}, Lcom/nd/commplatform/d/c/nb;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    iput-object v0, v1, Lcom/nd/commplatform/d/c/mu$a;->d:Lcom/nd/commplatform/entry/NdUserInfo;

    iput v10, v1, Lcom/nd/commplatform/d/c/mu$a;->f:I

    add-int/lit8 v1, v2, 0x1

    :goto_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    :cond_3
    if-lez v2, :cond_4

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mu$3;->a:Lcom/nd/commplatform/d/c/mu;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/mu;->d(Lcom/nd/commplatform/d/c/mu;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :cond_4
    iget-object v0, p0, Lcom/nd/commplatform/d/c/mu$3;->a:Lcom/nd/commplatform/d/c/mu;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/mu;->b(Lcom/nd/commplatform/d/c/mu;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/nd/commplatform/d/c/mu$3$1;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/mu$3$1;-><init>(Lcom/nd/commplatform/d/c/mu$3;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_3
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p2, Ljava/util/List;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/mu$3;->a(ILjava/util/List;)V

    return-void
.end method
