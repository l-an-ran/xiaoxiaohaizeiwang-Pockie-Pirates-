.class final Lcom/nd/commplatform/d/c/ic$4;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/ic;->m()V
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
.field final synthetic a:Lcom/nd/commplatform/d/c/ic;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/ic;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ic$4;->a:Lcom/nd/commplatform/d/c/ic;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ic$4;->a:Lcom/nd/commplatform/d/c/ic;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/ic;->b(Z)V

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ic$4;->a:Lcom/nd/commplatform/d/c/ic;

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/Vector;

    invoke-direct {p2}, Ljava/util/Vector;-><init>()V

    :cond_0
    invoke-static {v0, p2}, Lcom/nd/commplatform/d/c/ic;->c(Lcom/nd/commplatform/d/c/ic;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ic$4;->a:Lcom/nd/commplatform/d/c/ic;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ic;->c(Lcom/nd/commplatform/d/c/ic;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ic$4;->a:Lcom/nd/commplatform/d/c/ic;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/ic;->c(Lcom/nd/commplatform/d/c/ic;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ic$4;->a:Lcom/nd/commplatform/d/c/ic;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/ic;->a(Lcom/nd/commplatform/d/c/ic;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ic$4;->a:Lcom/nd/commplatform/d/c/ic;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ic;->d(Lcom/nd/commplatform/d/c/ic;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ic$4;->a:Lcom/nd/commplatform/d/c/ic;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/ic;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/nd/commplatform/d/c/nt;->a(Lcom/nd/commplatform/NdCallbackListener;Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p2, Ljava/util/List;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/ic$4;->a(ILjava/util/List;)V

    return-void
.end method
