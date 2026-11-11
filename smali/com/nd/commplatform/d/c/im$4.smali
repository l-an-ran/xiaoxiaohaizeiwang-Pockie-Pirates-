.class final Lcom/nd/commplatform/d/c/im$4;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/im;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/NdCallbackListener",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/im;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/im;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/im$4;->a:Lcom/nd/commplatform/d/c/im;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/Object;)V
    .locals 4
    .param p1, "responseCode"    # I
    .param p2, "t"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/im$4;->a:Lcom/nd/commplatform/d/c/im;

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/im;->b(Z)V

    if-nez p1, :cond_2

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/im$4;->a:Lcom/nd/commplatform/d/c/im;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/im;->c(Lcom/nd/commplatform/d/c/im;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/im$4;->a:Lcom/nd/commplatform/d/c/im;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/im;->c(Lcom/nd/commplatform/d/c/im;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;->getAccountType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/nd/commplatform/d/c/im$4;->a:Lcom/nd/commplatform/d/c/im;

    invoke-static {v2}, Lcom/nd/commplatform/d/c/im;->b(Lcom/nd/commplatform/d/c/im;)Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/im$4;->a:Lcom/nd/commplatform/d/c/im;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/im;->c(Lcom/nd/commplatform/d/c/im;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;->setValidated(Z)V

    :cond_0
    invoke-static {v3}, Lcom/nd/commplatform/d/c/cb;->a(Lcom/nd/commplatform/d/c/bx;)V

    :goto_1
    return-void

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nd/commplatform/d/c/im$4;->a:Lcom/nd/commplatform/d/c/im;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/im;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/nd/commplatform/d/c/nt;->a(Lcom/nd/commplatform/NdCallbackListener;Landroid/content/Context;I)V

    invoke-static {v3}, Lcom/nd/commplatform/d/c/cb;->a(Lcom/nd/commplatform/d/c/bx;)V

    goto :goto_1
.end method
