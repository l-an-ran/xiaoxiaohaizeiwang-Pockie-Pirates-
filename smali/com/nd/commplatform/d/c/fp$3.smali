.class final Lcom/nd/commplatform/d/c/fp$3;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/fp;->p()V
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
        "Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/fp;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/fp;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/fp$3;->a:Lcom/nd/commplatform/d/c/fp;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp$3;->a:Lcom/nd/commplatform/d/c/fp;

    invoke-virtual {v0, v2}, Lcom/nd/commplatform/d/c/fp;->b(Z)V

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp$3;->a:Lcom/nd/commplatform/d/c/fp;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/fp;->a(Lcom/nd/commplatform/d/c/fp;Ljava/util/List;)Ljava/util/List;

    :goto_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp$3;->a:Lcom/nd/commplatform/d/c/fp;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/fp;->m(Lcom/nd/commplatform/d/c/fp;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp$3;->a:Lcom/nd/commplatform/d/c/fp;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fp$3;->a:Lcom/nd/commplatform/d/c/fp;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/fp;->n(Lcom/nd/commplatform/d/c/fp;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/fp;->a(Lcom/nd/commplatform/d/c/fp;I)I

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp$3;->a:Lcom/nd/commplatform/d/c/fp;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/fp;->o(Lcom/nd/commplatform/d/c/fp;)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp$3;->a:Lcom/nd/commplatform/d/c/fp;

    invoke-static {v0, p2}, Lcom/nd/commplatform/d/c/fp;->a(Lcom/nd/commplatform/d/c/fp;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp$3;->a:Lcom/nd/commplatform/d/c/fp;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/fp;->a(Lcom/nd/commplatform/d/c/fp;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp$3;->a:Lcom/nd/commplatform/d/c/fp;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/fp;->b(Lcom/nd/commplatform/d/c/fp;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp$3;->a:Lcom/nd/commplatform/d/c/fp;

    invoke-static {v0, v2}, Lcom/nd/commplatform/d/c/fp;->a(Lcom/nd/commplatform/d/c/fp;I)I

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp$3;->a:Lcom/nd/commplatform/d/c/fp;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/fp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/nd/commplatform/d/c/nt;->a(Lcom/nd/commplatform/NdCallbackListener;Landroid/content/Context;I)V

    goto :goto_1
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p2, Ljava/util/List;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/fp$3;->a(ILjava/util/List;)V

    return-void
.end method
