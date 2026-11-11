.class public Lcom/nd/commplatform/d/c/ge;
.super Lcom/nd/commplatform/d/c/fw;


# instance fields
.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/nd/commplatform/d/c/gf;Lcom/nd/commplatform/entry/NdTag;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nd/commplatform/d/c/fw;-><init>(Lcom/nd/commplatform/d/c/gf;Lcom/nd/commplatform/entry/NdTag;)V

    return-void
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ge;->b:Lcom/nd/commplatform/entry/NdTag;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdTag;->getParams()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ge;->c:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 5

    invoke-super {p0}, Lcom/nd/commplatform/d/c/fw;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ge;->a:Lcom/nd/commplatform/d/c/gf;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/gf;->b()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->aI:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/nd/commplatform/widget/NdFrameInnerContent;)V
    .locals 1

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/ge;->c()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ge;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ge;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ed;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
