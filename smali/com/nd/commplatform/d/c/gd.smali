.class public Lcom/nd/commplatform/d/c/gd;
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

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gd;->b:Lcom/nd/commplatform/entry/NdTag;

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

    iput-object v0, p0, Lcom/nd/commplatform/d/c/gd;->c:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/nd/commplatform/widget/NdFrameInnerContent;)V
    .locals 1

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/gd;->c()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gd;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/gd;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/id;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
