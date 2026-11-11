.class final Lcom/nd/commplatform/d/c/dl$a;
.super Landroid/widget/Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/d/c/dl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/Filter$FilterResults;

.field final synthetic b:Lcom/nd/commplatform/d/c/dl;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/dl;)V
    .locals 1

    iput-object p1, p0, Lcom/nd/commplatform/d/c/dl$a;->b:Lcom/nd/commplatform/d/c/dl;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dl$a;->a:Landroid/widget/Filter$FilterResults;

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 13
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .local p0, "this":Lcom/nd/commplatform/d/c/dl$a;, "Lcom/nd/commplatform/d/c/dl<TT;>.a;"
    iget-object v0, p0, Lcom/nd/commplatform/d/c/dl$a;->b:Lcom/nd/commplatform/d/c/dl;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/dl;->a(Lcom/nd/commplatform/d/c/dl;)Lcom/nd/commplatform/d/c/dn;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dl$a;->a:Landroid/widget/Filter$FilterResults;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dl$a;->a:Landroid/widget/Filter$FilterResults;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dl$a;->a:Landroid/widget/Filter$FilterResults;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/dl$a;->b:Lcom/nd/commplatform/d/c/dl;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/dl;->a(Lcom/nd/commplatform/d/c/dl;)Lcom/nd/commplatform/d/c/dn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/dn;->g()V

    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    iget-object v5, p0, Lcom/nd/commplatform/d/c/dl$a;->a:Landroid/widget/Filter$FilterResults;

    monitor-enter v5

    :try_start_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/dl$a;->b:Lcom/nd/commplatform/d/c/dl;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/dl;->a(Lcom/nd/commplatform/d/c/dl;)Lcom/nd/commplatform/d/c/dn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/dn;->c()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/dl$a;->b:Lcom/nd/commplatform/d/c/dl;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/dl;->a(Lcom/nd/commplatform/d/c/dl;)Lcom/nd/commplatform/d/c/dn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/dn;->d()[Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_8

    const-string v6, ""

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/dl$a;->b:Lcom/nd/commplatform/d/c/dl;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/dl;->b(Lcom/nd/commplatform/d/c/dl;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/nd/commplatform/d/c/no;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    iget-object v1, p0, Lcom/nd/commplatform/d/c/dl$a;->b:Lcom/nd/commplatform/d/c/dl;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/dl;->a(Lcom/nd/commplatform/d/c/dl;)Lcom/nd/commplatform/d/c/dn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/dn;->a()Lcom/nd/commplatform/d/c/dk;

    move-result-object v9

    const/4 v1, 0x0

    :goto_1
    array-length v10, v0

    if-ge v1, v10, :cond_5

    aget-object v10, v0, v1

    invoke-interface {v9, v10}, Lcom/nd/commplatform/d/c/dk;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    aget-object v11, v3, v1

    if-eqz v8, :cond_4

    if-eqz v11, :cond_4

    invoke-virtual {v11, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-ltz v11, :cond_4

    aget-object v10, v0, v1

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    :try_start_1
    invoke-virtual {v10, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-ltz v10, :cond_2

    aget-object v10, v0, v1

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_7

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-array v2, v3, [I

    const/4 v1, 0x0

    move v4, v1

    :goto_3
    if-ge v4, v3, :cond_6

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, v2, v4

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_3

    :cond_6
    move-object v1, v0

    move-object v0, v2

    :goto_4
    move-object v2, v1

    move-object v1, v0

    move v0, v3

    :goto_5
    iget-object v3, p0, Lcom/nd/commplatform/d/c/dl$a;->a:Landroid/widget/Filter$FilterResults;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v4, v6

    const/4 v2, 0x1

    aput-object v1, v4, v2

    iput-object v4, v3, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/dl$a;->a:Landroid/widget/Filter$FilterResults;

    iput v0, v1, Landroid/widget/Filter$FilterResults;->count:I

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dl$a;->a:Landroid/widget/Filter$FilterResults;

    goto/16 :goto_0

    :cond_7
    const/4 v1, 0x0

    const/4 v0, 0x0

    goto :goto_4

    :cond_8
    if-eqz v0, :cond_a

    :try_start_2
    array-length v1, v0

    new-array v2, v1, [I

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v1, :cond_9

    aput v3, v2, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_9
    move v12, v1

    move-object v1, v2

    move-object v2, v0

    move v0, v12

    goto :goto_5

    :cond_a
    move v12, v1

    move-object v1, v2

    move-object v2, v0

    move v0, v12

    goto :goto_5
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 4
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .prologue
    .local p0, "this":Lcom/nd/commplatform/d/c/dl$a;, "Lcom/nd/commplatform/d/c/dl<TT;>.a;"
    iget-object v0, p0, Lcom/nd/commplatform/d/c/dl$a;->b:Lcom/nd/commplatform/d/c/dl;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/dl;->a(Lcom/nd/commplatform/d/c/dl;)Lcom/nd/commplatform/d/c/dn;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_2

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/dl$a;->b:Lcom/nd/commplatform/d/c/dl;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/dl;->a(Lcom/nd/commplatform/d/c/dl;)Lcom/nd/commplatform/d/c/dn;

    move-result-object v2

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    check-cast v0, [I

    check-cast v0, [I

    invoke-virtual {v2, v1, v0}, Lcom/nd/commplatform/d/c/dn;->a([Ljava/lang/Object;[I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/dl$a;->b:Lcom/nd/commplatform/d/c/dl;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/dl;->c(Lcom/nd/commplatform/d/c/dl;)Lcom/nd/commplatform/d/c/dl$c;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dl$a;->b:Lcom/nd/commplatform/d/c/dl;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/dl;->c(Lcom/nd/commplatform/d/c/dl;)Lcom/nd/commplatform/d/c/dl$c;

    move-result-object v0

    invoke-static {p1}, Lcom/nd/commplatform/d/c/dl;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/nd/commplatform/d/c/dl$c;->a(Z)V

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/dl$a;->b:Lcom/nd/commplatform/d/c/dl;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/dl;->notifyDataSetChanged()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/nd/commplatform/d/c/dl$a;->b:Lcom/nd/commplatform/d/c/dl;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/dl;->a(Lcom/nd/commplatform/d/c/dl;)Lcom/nd/commplatform/d/c/dn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/dn;->g()V

    goto :goto_0
.end method
