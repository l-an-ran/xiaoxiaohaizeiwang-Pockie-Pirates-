.class public abstract Lcom/nd/commplatform/d/c/gc;
.super Lcom/nd/commplatform/d/c/fw;


# instance fields
.field protected c:Ljava/lang/String;

.field protected d:Z


# direct methods
.method public constructor <init>(Lcom/nd/commplatform/d/c/gf;Lcom/nd/commplatform/entry/NdTag;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/nd/commplatform/d/c/fw;-><init>(Lcom/nd/commplatform/d/c/gf;Lcom/nd/commplatform/entry/NdTag;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nd/commplatform/d/c/gc;->d:Z

    return-void
.end method


# virtual methods
.method protected a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nd/commplatform/d/c/gc;->d:Z

    return-void
.end method

.method protected c()V
    .locals 4

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gc;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gc;->b:Lcom/nd/commplatform/entry/NdTag;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdTag;->getCmdId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gc;->b:Lcom/nd/commplatform/entry/NdTag;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdTag;->getParams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/gc;->c:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method protected d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nd/commplatform/d/c/gc;->d:Z

    return v0
.end method
