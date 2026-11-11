.class final Lcom/nd/commplatform/d/c/g$12;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/g;->o()V
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
        "Lcom/nd/commplatform/entry/NdThirdPartyPlatform;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/g;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/g;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/g$12;->a:Lcom/nd/commplatform/d/c/g;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/entry/NdThirdPartyPlatform;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g$12;->a:Lcom/nd/commplatform/d/c/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/g;->b(Z)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g$12;->a:Lcom/nd/commplatform/d/c/g;

    invoke-static {v0, p2}, Lcom/nd/commplatform/d/c/g;->b(Lcom/nd/commplatform/d/c/g;Ljava/util/List;)Ljava/util/List;

    new-instance v0, Lcom/nd/commplatform/d/c/oj;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/g$12;->a:Lcom/nd/commplatform/d/c/g;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/g;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/oj;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/g$12;->a:Lcom/nd/commplatform/d/c/g;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/g$12;->a:Lcom/nd/commplatform/d/c/g;

    invoke-virtual {v2}, Lcom/nd/commplatform/d/c/g;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/nd/commplatform/d/c/g$12;->a:Lcom/nd/commplatform/d/c/g;

    invoke-static {v3}, Lcom/nd/commplatform/d/c/g;->c(Lcom/nd/commplatform/d/c/g;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/nd/commplatform/d/c/oj;->a(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/nd/commplatform/d/c/g;->b(Lcom/nd/commplatform/d/c/g;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g$12;->a:Lcom/nd/commplatform/d/c/g;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/g$12;->a:Lcom/nd/commplatform/d/c/g;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/g;->c(Lcom/nd/commplatform/d/c/g;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/g;->c(Lcom/nd/commplatform/d/c/g;Ljava/util/List;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/g$12;->a:Lcom/nd/commplatform/d/c/g;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/g;->b(Lcom/nd/commplatform/d/c/g;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g$12;->a:Lcom/nd/commplatform/d/c/g;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/g;->getContext()Landroid/content/Context;

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
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/g$12;->a(ILjava/util/List;)V

    return-void
.end method
