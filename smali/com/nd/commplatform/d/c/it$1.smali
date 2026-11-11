.class final Lcom/nd/commplatform/d/c/it$1;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/it;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/NdCallbackListener",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/it;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/it;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/it$1;->a:Lcom/nd/commplatform/d/c/it;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/nd/commplatform/d/c/it$1;->a:Lcom/nd/commplatform/d/c/it;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/it;->b(Z)V

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/it$1;->a:Lcom/nd/commplatform/d/c/it;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/it;->a(Lcom/nd/commplatform/d/c/it;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;->getAccountType()I

    move-result v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/it$1;->a:Lcom/nd/commplatform/d/c/it;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/it;->a(Lcom/nd/commplatform/d/c/it;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/it$1;->a:Lcom/nd/commplatform/d/c/it;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/it$1;->a:Lcom/nd/commplatform/d/c/it;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/it;->b(Lcom/nd/commplatform/d/c/it;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/it;->a(Lcom/nd/commplatform/d/c/it;Ljava/util/List;)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/nd/commplatform/d/c/it$1;->a:Lcom/nd/commplatform/d/c/it;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/it;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/nd/commplatform/d/c/nt;->a(Lcom/nd/commplatform/NdCallbackListener;Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p2, Ljava/lang/String;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/it$1;->a(ILjava/lang/String;)V

    return-void
.end method
