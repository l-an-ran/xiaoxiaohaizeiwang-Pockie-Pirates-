.class public Lcom/nd/commplatform/d/c/ca;
.super Ljava/lang/Object;


# instance fields
.field protected a:Landroid/app/Activity;

.field protected b:Lcom/nd/commplatform/widget/NdPlatformPanelHelper;

.field protected c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Stack",
            "<",
            "Lcom/nd/commplatform/d/c/by;",
            ">;>;"
        }
    .end annotation
.end field

.field protected e:I

.field protected f:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/nd/commplatform/d/c/by;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/nd/commplatform/widget/NdPlatformPanelHelper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/nd/commplatform/d/c/ca;->e:I

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ca;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/ca;->b:Lcom/nd/commplatform/widget/NdPlatformPanelHelper;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ca;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ca;->d:Ljava/util/HashMap;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ca;->f:Ljava/util/Stack;

    return-void
.end method

.method private a(Lcom/nd/commplatform/d/c/by;)Lcom/nd/commplatform/d/c/by;
    .locals 5

    const/4 v4, -0x1

    invoke-static {}, Lcom/nd/commplatform/d/c/cb;->g()Z

    move-result v0

    invoke-virtual {p1}, Lcom/nd/commplatform/d/c/by;->b()Lcom/nd/commplatform/widget/NdFrameInnerContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/nd/commplatform/d/c/by;->f:Lcom/nd/commplatform/widget/NdFrameInnerContent;

    invoke-virtual {v1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->h()Lcom/nd/commplatform/widget/NdFrameInnerContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->f()V

    iget-object v2, p1, Lcom/nd/commplatform/d/c/by;->f:Lcom/nd/commplatform/widget/NdFrameInnerContent;

    invoke-virtual {v2}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->setId(I)V

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->a(Z)V

    iget-object v0, p1, Lcom/nd/commplatform/d/c/by;->f:Lcom/nd/commplatform/widget/NdFrameInnerContent;

    if-eq v1, v0, :cond_0

    iget v0, p0, Lcom/nd/commplatform/d/c/ca;->e:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ca;->h(I)Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/Stack;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v4, v3, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/Stack;->remove(I)Ljava/lang/Object;

    new-instance v0, Lcom/nd/commplatform/d/c/by;

    iget v4, p1, Lcom/nd/commplatform/d/c/by;->d:I

    invoke-direct {v0, v4, v1}, Lcom/nd/commplatform/d/c/by;-><init>(ILcom/nd/commplatform/widget/NdFrameInnerContent;)V

    iget v1, p1, Lcom/nd/commplatform/d/c/by;->e:I

    iput v1, v0, Lcom/nd/commplatform/d/c/by;->e:I

    invoke-virtual {v2, v3, v0}, Ljava/util/Stack;->add(ILjava/lang/Object;)V

    move-object p1, v0

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    iget-object v1, p1, Lcom/nd/commplatform/d/c/by;->f:Lcom/nd/commplatform/widget/NdFrameInnerContent;

    invoke-virtual {v1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->e()Z

    move-result v1

    xor-int/2addr v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/nd/commplatform/d/c/by;->f:Lcom/nd/commplatform/widget/NdFrameInnerContent;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->a(I)Lcom/nd/commplatform/widget/NdFrameInnerContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->f()V

    iget-object v2, p1, Lcom/nd/commplatform/d/c/by;->f:Lcom/nd/commplatform/widget/NdFrameInnerContent;

    invoke-virtual {v2}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->setId(I)V

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->a(Z)V

    iget-object v0, p1, Lcom/nd/commplatform/d/c/by;->f:Lcom/nd/commplatform/widget/NdFrameInnerContent;

    if-eq v1, v0, :cond_0

    iget v0, p0, Lcom/nd/commplatform/d/c/ca;->e:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ca;->h(I)Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/Stack;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v4, v3, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/Stack;->remove(I)Ljava/lang/Object;

    new-instance v0, Lcom/nd/commplatform/d/c/by;

    iget v4, p1, Lcom/nd/commplatform/d/c/by;->d:I

    invoke-direct {v0, v4, v1}, Lcom/nd/commplatform/d/c/by;-><init>(ILcom/nd/commplatform/widget/NdFrameInnerContent;)V

    iget v1, p1, Lcom/nd/commplatform/d/c/by;->e:I

    iput v1, v0, Lcom/nd/commplatform/d/c/by;->e:I

    invoke-virtual {v2, v3, v0}, Ljava/util/Stack;->add(ILjava/lang/Object;)V

    move-object p1, v0

    goto :goto_0
.end method

.method private h()V
    .locals 3

    const/4 v2, 0x3

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/nd/commplatform/d/c/ol;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1}, Lcom/nd/commplatform/d/c/ol;->d(I)I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v2}, Lcom/nd/commplatform/d/c/ol;->c(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ca;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;)V

    :cond_0
    invoke-static {v2}, Lcom/nd/commplatform/d/c/ol;->b(I)V

    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/b;->j()V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lcom/nd/commplatform/widget/NdFrameInnerContent;)I
    .locals 4

    const/4 v2, -0x1

    iget v0, p0, Lcom/nd/commplatform/d/c/ca;->e:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ca;->h(I)Ljava/util/Stack;

    move-result-object v3

    if-nez v3, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {v3, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/by;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/by;->f:Lcom/nd/commplatform/widget/NdFrameInnerContent;

    if-eq v0, p1, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public a(I)Lcom/nd/commplatform/d/c/by;
    .locals 5

    const/4 v1, 0x0

    iget v0, p0, Lcom/nd/commplatform/d/c/ca;->e:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ca;->h(I)Ljava/util/Stack;

    move-result-object v3

    if-nez v3, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v4

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_2

    invoke-virtual {v3, v2}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/by;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/by;->a()I

    move-result v0

    if-ne v0, p1, :cond_1

    invoke-virtual {v3, v2}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/by;

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public a()Lcom/nd/commplatform/widget/NdPlatformPanelHelper;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ca;->b:Lcom/nd/commplatform/widget/NdPlatformPanelHelper;

    return-object v0
.end method

.method public a(II)V
    .locals 3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ca;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ca;->d:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(IIZ)V
    .locals 0

    iput p1, p0, Lcom/nd/commplatform/d/c/ca;->e:I

    invoke-virtual {p0, p2, p3}, Lcom/nd/commplatform/d/c/ca;->a(IZ)V

    return-void
.end method

.method public a(IZ)V
    .locals 7

    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/nd/commplatform/d/c/ca;->e:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ca;->h(I)Ljava/util/Stack;

    move-result-object v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/nd/commplatform/d/c/ca;->a(I)Lcom/nd/commplatform/d/c/by;

    move-result-object v4

    if-nez v4, :cond_5

    invoke-virtual {p0, p1}, Lcom/nd/commplatform/d/c/ca;->i(I)Lcom/nd/commplatform/d/c/by;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v5}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_3

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/by;

    :goto_1
    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/by;->a()I

    move-result v3

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/by;->b()Lcom/nd/commplatform/widget/NdFrameInnerContent;

    move-result-object v6

    if-eqz p2, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {v6, v0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->d(I)V

    :cond_2
    move v0, v3

    invoke-virtual {v5, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v4, v0, v2, v1}, Lcom/nd/commplatform/d/c/ca;->a(Lcom/nd/commplatform/d/c/by;IZI)V

    goto :goto_0

    :cond_3
    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/by;

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Lcom/nd/commplatform/d/c/by;->c()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    if-eqz p2, :cond_6

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/by;

    :goto_3
    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/by;->a()I

    move-result v3

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/by;->b()Lcom/nd/commplatform/widget/NdFrameInnerContent;

    move-result-object v4

    if-eqz p2, :cond_7

    move v0, v1

    :goto_4
    invoke-virtual {v4, v0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->d(I)V

    invoke-virtual {p0, p1}, Lcom/nd/commplatform/d/c/ca;->i(I)Lcom/nd/commplatform/d/c/by;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0, v3, v2, v1}, Lcom/nd/commplatform/d/c/ca;->a(Lcom/nd/commplatform/d/c/by;IZI)V

    goto :goto_0

    :cond_6
    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/by;

    goto :goto_3

    :cond_7
    move v0, v2

    goto :goto_4

    :cond_8
    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/by;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/by;->a()I

    move-result v0

    if-ne p1, v0, :cond_9

    invoke-virtual {v4}, Lcom/nd/commplatform/d/c/by;->c()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/nd/commplatform/d/c/ca;->i(I)Lcom/nd/commplatform/d/c/by;

    move-result-object v4

    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/by;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/by;->b()Lcom/nd/commplatform/widget/NdFrameInnerContent;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->d(I)V

    invoke-virtual {v5, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v4, v3, v2, v1}, Lcom/nd/commplatform/d/c/ca;->a(Lcom/nd/commplatform/d/c/by;IZI)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0, p1}, Lcom/nd/commplatform/d/c/ca;->b(I)Lcom/nd/commplatform/d/c/by;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/by;->c()I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_e

    invoke-virtual {p0, p1}, Lcom/nd/commplatform/d/c/ca;->i(I)Lcom/nd/commplatform/d/c/by;

    move-result-object v0

    move-object v4, v0

    :goto_5
    invoke-virtual {v5}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    if-eqz p2, :cond_b

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/by;

    :goto_6
    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/by;->a()I

    move-result v3

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/by;->b()Lcom/nd/commplatform/widget/NdFrameInnerContent;

    move-result-object v6

    if-eqz p2, :cond_c

    move v0, v1

    :goto_7
    invoke-virtual {v6, v0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->d(I)V

    :cond_a
    invoke-virtual {v5, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/nd/commplatform/d/c/by;->c()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_d

    :goto_8
    invoke-virtual {p0, v4, v3, v2, v1}, Lcom/nd/commplatform/d/c/ca;->a(Lcom/nd/commplatform/d/c/by;IZI)V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/by;

    goto :goto_6

    :cond_c
    move v0, v2

    goto :goto_7

    :cond_d
    move v2, v1

    goto :goto_8

    :cond_e
    move-object v4, v0

    goto :goto_5
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/nd/commplatform/d/c/ca;->e:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ca;->h(I)Ljava/util/Stack;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/by;

    invoke-direct {p0, v0}, Lcom/nd/commplatform/d/c/ca;->a(Lcom/nd/commplatform/d/c/by;)Lcom/nd/commplatform/d/c/by;

    move-result-object v1

    if-eq v1, v0, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p0, v1, v0, v2, v2}, Lcom/nd/commplatform/d/c/ca;->a(Lcom/nd/commplatform/d/c/by;IZI)V

    :cond_0
    return-void
.end method

.method protected a(Lcom/nd/commplatform/d/c/by;IZI)V
    .locals 4

    invoke-static {}, Lcom/nd/commplatform/d/c/cb;->b()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ca;->b:Lcom/nd/commplatform/widget/NdPlatformPanelHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ca;->b:Lcom/nd/commplatform/widget/NdPlatformPanelHelper;

    invoke-virtual {v0}, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->d()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/nd/commplatform/d/c/by;->b()Lcom/nd/commplatform/widget/NdFrameInnerContent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ca;->b:Lcom/nd/commplatform/widget/NdPlatformPanelHelper;

    invoke-virtual {v0}, Lcom/nd/commplatform/widget/NdPlatformPanelHelper;->d()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/nd/commplatform/d/c/ca$1;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/nd/commplatform/d/c/ca$1;-><init>(Lcom/nd/commplatform/d/c/ca;Lcom/nd/commplatform/d/c/by;ZI)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ca;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public b()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ca;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public b(I)Lcom/nd/commplatform/d/c/by;
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v0, p0, Lcom/nd/commplatform/d/c/ca;->e:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ca;->h(I)Ljava/util/Stack;

    move-result-object v3

    if-nez v3, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/by;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/by;->a()I

    move-result v0

    if-ne v0, p1, :cond_1

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/by;

    invoke-virtual {p0, v2}, Lcom/nd/commplatform/d/c/ca;->b(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v4

    :goto_1
    if-ge v2, v4, :cond_3

    invoke-virtual {v3, v2}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/by;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/by;->a()I

    move-result v0

    if-ne v0, p1, :cond_2

    invoke-virtual {v3, v2}, Ljava/util/Stack;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/by;

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public b(II)V
    .locals 0

    iput p1, p0, Lcom/nd/commplatform/d/c/ca;->e:I

    invoke-virtual {p0, p2}, Lcom/nd/commplatform/d/c/ca;->d(I)V

    return-void
.end method

.method public b(Z)V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p0, Lcom/nd/commplatform/d/c/ca;->e:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ca;->h(I)Ljava/util/Stack;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v0

    if-gt v0, v1, :cond_2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ca;->g()V

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/by;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/by;->a()I

    move-result v4

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/by;->b()Lcom/nd/commplatform/widget/NdFrameInnerContent;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->d(I)V

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/by;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/by;->c()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/by;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ca;->i(I)Lcom/nd/commplatform/d/c/by;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/by;

    :goto_1
    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/by;

    invoke-direct {p0, v0}, Lcom/nd/commplatform/d/c/ca;->a(Lcom/nd/commplatform/d/c/by;)Lcom/nd/commplatform/d/c/by;

    move-result-object v0

    invoke-virtual {p0, v0, v4, v1, v2}, Lcom/nd/commplatform/d/c/ca;->a(Lcom/nd/commplatform/d/c/by;IZI)V

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public c()Lcom/nd/commplatform/widget/NdFrameInnerContent;
    .locals 2

    iget v0, p0, Lcom/nd/commplatform/d/c/ca;->e:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ca;->h(I)Ljava/util/Stack;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/by;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/by;->b()Lcom/nd/commplatform/widget/NdFrameInnerContent;

    move-result-object v0

    goto :goto_0
.end method

.method public c(I)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/nd/commplatform/d/c/ca;->e:I

    iput p1, p0, Lcom/nd/commplatform/d/c/ca;->e:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/nd/commplatform/d/c/ca;->e:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ca;->h(I)Ljava/util/Stack;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ca;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ca;->d(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/by;

    invoke-direct {p0, v0}, Lcom/nd/commplatform/d/c/ca;->a(Lcom/nd/commplatform/d/c/by;)Lcom/nd/commplatform/d/c/by;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/nd/commplatform/d/c/ca;->a(Lcom/nd/commplatform/d/c/by;IZI)V

    goto :goto_0
.end method

.method public d()V
    .locals 5

    iget v0, p0, Lcom/nd/commplatform/d/c/ca;->e:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ca;->h(I)Ljava/util/Stack;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/by;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_0
    if-ltz v2, :cond_0

    invoke-virtual {v3, v2}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nd/commplatform/d/c/by;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/by;->a()I

    move-result v1

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/by;->a()I

    move-result v4

    if-eq v1, v4, :cond_2

    invoke-virtual {v3, v2}, Ljava/util/Stack;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_0
.end method

.method public d(I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v0, -0x1

    iget v1, p0, Lcom/nd/commplatform/d/c/ca;->e:I

    invoke-virtual {p0, v1}, Lcom/nd/commplatform/d/c/ca;->h(I)Ljava/util/Stack;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/nd/commplatform/d/c/ca;->i(I)Lcom/nd/commplatform/d/c/by;

    move-result-object v3

    if-eqz v3, :cond_0

    :goto_1
    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/by;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/by;->a()I

    move-result v1

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/by;->b()Lcom/nd/commplatform/widget/NdFrameInnerContent;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->d(I)V

    move v0, v1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/util/Stack;->clear()V

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0, v3, v0, v4, v1}, Lcom/nd/commplatform/d/c/ca;->a(Lcom/nd/commplatform/d/c/by;IZI)V

    goto :goto_0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/d/c/ca;->e:I

    return v0
.end method

.method public e(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/nd/commplatform/d/c/ca;->a(IZ)V

    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ca;->b(Z)V

    return-void
.end method

.method public f(I)V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, -0x1

    iget v0, p0, Lcom/nd/commplatform/d/c/ca;->e:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ca;->h(I)Ljava/util/Stack;

    move-result-object v5

    if-nez v5, :cond_5

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/by;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/by;->b()Lcom/nd/commplatform/widget/NdFrameInnerContent;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->d(I)V

    :goto_1
    invoke-virtual {v5}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/by;

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/by;->a()I

    move-result v1

    :cond_1
    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/by;->a()I

    move-result v0

    if-ne v0, p1, :cond_0

    :cond_2
    invoke-virtual {v5}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/nd/commplatform/d/c/ca;->d(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/by;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/by;->c()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_4

    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/by;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ca;->i(I)Lcom/nd/commplatform/d/c/by;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/by;

    move v2, v3

    :goto_2
    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/by;

    invoke-direct {p0, v0}, Lcom/nd/commplatform/d/c/ca;->a(Lcom/nd/commplatform/d/c/by;)Lcom/nd/commplatform/d/c/by;

    move-result-object v0

    invoke-virtual {p0, v0, v1, v2, v4}, Lcom/nd/commplatform/d/c/ca;->a(Lcom/nd/commplatform/d/c/by;IZI)V

    goto :goto_0

    :cond_4
    move v2, v4

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_1
.end method

.method public g()V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/nd/commplatform/d/c/ca;->e:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ca;->h(I)Ljava/util/Stack;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/by;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/by;->b()Lcom/nd/commplatform/widget/NdFrameInnerContent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->d(I)V

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ca;->c:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ca;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_1
    iput-object v2, p0, Lcom/nd/commplatform/d/c/ca;->c:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ca;->d:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ca;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_2
    iput-object v2, p0, Lcom/nd/commplatform/d/c/ca;->d:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ca;->f:Ljava/util/Stack;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ca;->f:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    :cond_3
    iput-object v2, p0, Lcom/nd/commplatform/d/c/ca;->f:Ljava/util/Stack;

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/ca;->h()V

    invoke-static {}, Lcom/nd/commplatform/d/c/bz;->e()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ca;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public g(I)V
    .locals 2

    iget v0, p0, Lcom/nd/commplatform/d/c/ca;->e:I

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ca;->f()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/nd/commplatform/d/c/ca;->e:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ca;->h(I)Ljava/util/Stack;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_0
.end method

.method protected h(I)Ljava/util/Stack;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Stack",
            "<",
            "Lcom/nd/commplatform/d/c/by;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ca;->d:Ljava/util/HashMap;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ca;->f:Ljava/util/Stack;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ca;->d:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ca;->f:Ljava/util/Stack;

    goto :goto_0
.end method

.method protected i(I)Lcom/nd/commplatform/d/c/by;
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ca;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/nd/commplatform/d/c/bw;->c(Landroid/app/Activity;I)Lcom/nd/commplatform/widget/NdFrameInnerContent;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/nd/commplatform/d/c/by;

    invoke-direct {v0, p1, v1}, Lcom/nd/commplatform/d/c/by;-><init>(ILcom/nd/commplatform/widget/NdFrameInnerContent;)V

    goto :goto_0
.end method
