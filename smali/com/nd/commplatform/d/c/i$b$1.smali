.class final Lcom/nd/commplatform/d/c/i$b$1;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/i$b;->a(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/NdCallbackListener",
        "<",
        "Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/i$b;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/i$b;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/i$b$1;->a:Lcom/nd/commplatform/d/c/i$b;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/nd/commplatform/entry/NdThirdAccountTypeInfo;)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/i$b$1;->a:Lcom/nd/commplatform/d/c/i$b;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/i$b;->a:Lcom/nd/commplatform/d/c/i;

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/i;->b(Z)V

    invoke-static {v1}, Lcom/nd/commplatform/d/c/jb;->b(Z)V

    if-nez p1, :cond_1

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->o()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->D()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/ol;->a(II)V

    new-instance v0, Lcom/nd/commplatform/d/c/oj;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/i$b$1;->a:Lcom/nd/commplatform/d/c/i$b;

    iget-object v1, v1, Lcom/nd/commplatform/d/c/i$b;->a:Lcom/nd/commplatform/d/c/i;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/i;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/oj;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/i$b$1;->a:Lcom/nd/commplatform/d/c/i$b;

    iget-object v1, v1, Lcom/nd/commplatform/d/c/i$b;->a:Lcom/nd/commplatform/d/c/i;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/i;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;->getAccountType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/oj;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/nd/commplatform/d/c/of;->a()Lcom/nd/commplatform/d/c/of;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/nd/commplatform/d/c/of;->a(Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;)V

    invoke-static {}, Lcom/nd/commplatform/d/c/cb;->e()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/i$b$1;->a:Lcom/nd/commplatform/d/c/i$b;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/i$b;->a:Lcom/nd/commplatform/d/c/i;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/i;->d(Lcom/nd/commplatform/d/c/i;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/cb;->a(Lcom/nd/commplatform/d/c/bx;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/i$b$1;->a:Lcom/nd/commplatform/d/c/i$b;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/i$b;->a:Lcom/nd/commplatform/d/c/i;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/i;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/nd/commplatform/d/c/nt;->a(Lcom/nd/commplatform/NdCallbackListener;Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p2, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/i$b$1;->a(ILcom/nd/commplatform/entry/NdThirdAccountTypeInfo;)V

    return-void
.end method
