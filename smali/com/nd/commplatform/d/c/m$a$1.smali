.class final Lcom/nd/commplatform/d/c/m$a$1;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/m$a;->onClick(Landroid/view/View;)V
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/nd/commplatform/d/c/m$a;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/m$a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/m$a$1;->b:Lcom/nd/commplatform/d/c/m$a;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/m$a$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/Object;)V
    .locals 4
    .param p1, "responseCode"    # I
    .param p2, "t"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/m$a$1;->b:Lcom/nd/commplatform/d/c/m$a;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/m$a;->a:Lcom/nd/commplatform/d/c/m;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/m;->b(Z)V

    if-nez p1, :cond_1

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->q()Z

    move-result v0

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/a;->o()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->D()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/m$a$1;->b:Lcom/nd/commplatform/d/c/m$a;

    iget-object v1, v1, Lcom/nd/commplatform/d/c/m$a;->a:Lcom/nd/commplatform/d/c/m;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/m;->c(Lcom/nd/commplatform/d/c/m;)Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/m$a$1;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;-><init>(ILjava/lang/String;Z)V

    invoke-static {}, Lcom/nd/commplatform/d/c/of;->a()Lcom/nd/commplatform/d/c/of;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/of;->a(Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;)V

    new-instance v0, Lcom/nd/commplatform/d/c/oj;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/m$a$1;->b:Lcom/nd/commplatform/d/c/m$a;

    iget-object v1, v1, Lcom/nd/commplatform/d/c/m$a;->a:Lcom/nd/commplatform/d/c/m;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/m;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/oj;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/m$a$1;->b:Lcom/nd/commplatform/d/c/m$a;

    iget-object v1, v1, Lcom/nd/commplatform/d/c/m$a;->a:Lcom/nd/commplatform/d/c/m;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/m;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/m$a$1;->b:Lcom/nd/commplatform/d/c/m$a;

    iget-object v2, v2, Lcom/nd/commplatform/d/c/m$a;->a:Lcom/nd/commplatform/d/c/m;

    invoke-static {v2}, Lcom/nd/commplatform/d/c/m;->c(Lcom/nd/commplatform/d/c/m;)Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/oj;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v3, p1}, Lcom/nd/commplatform/d/c/ol;->a(II)V

    invoke-static {}, Lcom/nd/commplatform/d/c/cb;->e()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/m$a$1;->b:Lcom/nd/commplatform/d/c/m$a;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/m$a;->a:Lcom/nd/commplatform/d/c/m;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/m;->d(Lcom/nd/commplatform/d/c/m;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/m$a$1;->b:Lcom/nd/commplatform/d/c/m$a;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/m$a;->a:Lcom/nd/commplatform/d/c/m;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/m;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/nd/commplatform/d/c/nt;->a(Lcom/nd/commplatform/NdCallbackListener;Landroid/content/Context;I)V

    goto :goto_0
.end method
