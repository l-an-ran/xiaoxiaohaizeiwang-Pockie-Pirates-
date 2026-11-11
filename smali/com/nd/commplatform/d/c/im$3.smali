.class final Lcom/nd/commplatform/d/c/im$3;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/im;->a(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/NdCallbackListener",
        "<",
        "Lcom/nd/commplatform/entry/NdThirdPlatformConfig;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/im;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/im;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/im$3;->a:Lcom/nd/commplatform/d/c/im;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/nd/commplatform/entry/NdThirdPlatformConfig;)V
    .locals 5

    iget-object v0, p0, Lcom/nd/commplatform/d/c/im$3;->a:Lcom/nd/commplatform/d/c/im;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/im;->b(Z)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/im$3;->a:Lcom/nd/commplatform/d/c/im;

    invoke-static {v0, p2}, Lcom/nd/commplatform/d/c/im;->a(Lcom/nd/commplatform/d/c/im;Lcom/nd/commplatform/entry/NdThirdPlatformConfig;)Lcom/nd/commplatform/entry/NdThirdPlatformConfig;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/im$3;->a:Lcom/nd/commplatform/d/c/im;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/im;->a(Lcom/nd/commplatform/d/c/im;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/im$3;->a:Lcom/nd/commplatform/d/c/im;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/im;->b(Lcom/nd/commplatform/d/c/im;)Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v2

    iget-object v3, p0, Lcom/nd/commplatform/d/c/im$3;->a:Lcom/nd/commplatform/d/c/im;

    invoke-virtual {v3}, Lcom/nd/commplatform/d/c/im;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/nd/commplatform/d/c/im$3;->a:Lcom/nd/commplatform/d/c/im;

    invoke-static {v4}, Lcom/nd/commplatform/d/c/im;->b(Lcom/nd/commplatform/d/c/im;)Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/nd/commplatform/d/c/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/nd/commplatform/entry/NdThirdPlatformConfig;->getUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/im$3;->a:Lcom/nd/commplatform/d/c/im;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/im;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/nd/commplatform/d/c/nt;->a(Lcom/nd/commplatform/NdCallbackListener;Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p2, Lcom/nd/commplatform/entry/NdThirdPlatformConfig;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/im$3;->a(ILcom/nd/commplatform/entry/NdThirdPlatformConfig;)V

    return-void
.end method
