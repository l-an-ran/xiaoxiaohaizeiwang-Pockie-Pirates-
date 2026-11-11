.class final Lcom/nd/commplatform/d/c/o$2;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/o;->b(Lcom/nd/commplatform/widget/NdFrameInnerContent;Lcom/nd/commplatform/entry/NdThirdPartyPlatform;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
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
.field final synthetic a:Lcom/nd/commplatform/widget/NdFrameInnerContent;

.field final synthetic b:Lcom/nd/commplatform/entry/NdThirdPartyPlatform;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/widget/NdFrameInnerContent;Lcom/nd/commplatform/entry/NdThirdPartyPlatform;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/o$2;->a:Lcom/nd/commplatform/widget/NdFrameInnerContent;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/o$2;->b:Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

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

    iget-object v0, p0, Lcom/nd/commplatform/d/c/o$2;->a:Lcom/nd/commplatform/widget/NdFrameInnerContent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->b(Z)V

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/nd/commplatform/d/c/oh;->a(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/o$2;->b:Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/o;->a(Ljava/util/HashMap;Lcom/nd/commplatform/entry/NdThirdPartyPlatform;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/o$2;->b:Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/o;->a(Lcom/nd/commplatform/entry/NdThirdPartyPlatform;)V

    goto :goto_0
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p2, Ljava/util/List;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/o$2;->a(ILjava/util/List;)V

    return-void
.end method
