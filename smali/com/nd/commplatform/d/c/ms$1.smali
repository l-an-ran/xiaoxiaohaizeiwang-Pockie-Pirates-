.class final Lcom/nd/commplatform/d/c/ms$1;
.super Lcom/nd/commplatform/d/c/gt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/ms;->a()Lcom/nd/commplatform/d/c/gt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/d/c/gt",
        "<",
        "Lcom/nd/commplatform/d/c/my;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/gt;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ms$1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/d/c/my;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/my;->c()Lcom/nd/commplatform/d/c/nb;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/nb;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/nd/commplatform/d/c/gt$a;)V
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ms$1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/d/c/my;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/my;->b()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ms$1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/d/c/mx;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/mx;->a()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p1, Lcom/nd/commplatform/d/c/gt$a;->d:Ljava/lang/String;

    iget-object v5, p1, Lcom/nd/commplatform/d/c/gt$a;->e:Ljava/lang/String;

    :goto_1
    if-ge v1, v3, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/nb;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/nb;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v0, v5}, Lcom/nd/commplatform/d/c/nb;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :sswitch_2
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ms$1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/d/c/na;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/na;->a()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p1, Lcom/nd/commplatform/d/c/gt$a;->d:Ljava/lang/String;

    iget-object v5, p1, Lcom/nd/commplatform/d/c/gt$a;->e:Ljava/lang/String;

    :goto_2
    if-ge v1, v3, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/mz;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/mz;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v0, v5}, Lcom/nd/commplatform/d/c/mz;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x2711 -> :sswitch_2
        0x2712 -> :sswitch_0
        0x2713 -> :sswitch_2
        0x2714 -> :sswitch_0
        0x2715 -> :sswitch_2
        0x2716 -> :sswitch_0
        0x2717 -> :sswitch_2
        0x2718 -> :sswitch_0
        0x2719 -> :sswitch_2
        0x271a -> :sswitch_0
    .end sparse-switch
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ms$1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/d/c/my;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/my;->c()Lcom/nd/commplatform/d/c/nb;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/d/c/nb;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ms$1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/d/c/my;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/my;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ms$1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/d/c/my;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/my;->c()Lcom/nd/commplatform/d/c/nb;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/nb;->c()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ms$1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/d/c/my;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/my;->c()Lcom/nd/commplatform/d/c/nb;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/nb;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ms$1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/d/c/my;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/my;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()[Lcom/nd/commplatform/d/c/gt$a;
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ms$1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/d/c/my;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/my;->b()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return-object v1

    :sswitch_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ms$1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/d/c/mx;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/mx;->a()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v1, v5, [Lcom/nd/commplatform/d/c/gt$a;

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_1

    new-instance v6, Lcom/nd/commplatform/d/c/gt$a;

    invoke-direct {v6}, Lcom/nd/commplatform/d/c/gt$a;-><init>()V

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/nb;

    iput v2, v6, Lcom/nd/commplatform/d/c/gt$a;->c:I

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/nb;->a()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/nd/commplatform/d/c/gt$a;->d:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/nb;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/nd/commplatform/d/c/gt$a;->e:Ljava/lang/String;

    aput-object v6, v1, v3

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_2
    move-object v1, v0

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ms$1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/d/c/na;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/na;->a()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v1, v4, [Lcom/nd/commplatform/d/c/gt$a;

    :goto_3
    if-ge v2, v4, :cond_0

    new-instance v5, Lcom/nd/commplatform/d/c/gt$a;

    invoke-direct {v5}, Lcom/nd/commplatform/d/c/gt$a;-><init>()V

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/mz;

    const/4 v6, 0x1

    iput v6, v5, Lcom/nd/commplatform/d/c/gt$a;->c:I

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/mz;->a()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/nd/commplatform/d/c/gt$a;->d:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/mz;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/nd/commplatform/d/c/gt$a;->e:Ljava/lang/String;

    aput-object v5, v1, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_2
    move-object v0, v1

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x2711 -> :sswitch_2
        0x2712 -> :sswitch_0
        0x2713 -> :sswitch_2
        0x2714 -> :sswitch_0
        0x2715 -> :sswitch_2
        0x2716 -> :sswitch_0
        0x2717 -> :sswitch_2
        0x2718 -> :sswitch_0
        0x2719 -> :sswitch_2
        0x271a -> :sswitch_0
    .end sparse-switch
.end method
