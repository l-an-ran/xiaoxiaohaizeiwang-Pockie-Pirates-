.class final Lcom/nd/commplatform/d/c/im$b$1;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/im$b;->a(Landroid/webkit/WebView;Ljava/lang/String;)Z
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
.field final synthetic a:Lcom/nd/commplatform/d/c/im$b;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/im$b;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/im$b$1;->a:Lcom/nd/commplatform/d/c/im$b;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/nd/commplatform/entry/NdThirdAccountTypeInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/im$b$1;->a:Lcom/nd/commplatform/d/c/im$b;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/im$b;->a:Lcom/nd/commplatform/d/c/im;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/im;->b(Z)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/im$b$1;->a:Lcom/nd/commplatform/d/c/im$b;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/im$b;->a:Lcom/nd/commplatform/d/c/im;

    invoke-static {v0, p2}, Lcom/nd/commplatform/d/c/im;->a(Lcom/nd/commplatform/d/c/im;Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/cb;->a(Lcom/nd/commplatform/d/c/bx;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/im$b$1;->a:Lcom/nd/commplatform/d/c/im$b;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/im$b;->a:Lcom/nd/commplatform/d/c/im;

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
    check-cast p2, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/im$b$1;->a(ILcom/nd/commplatform/entry/NdThirdAccountTypeInfo;)V

    return-void
.end method
