.class final Lcom/nd/commplatform/d/c/f$c$1;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/f$c;->onClick(Landroid/view/View;)V
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

.field final synthetic b:Lcom/nd/commplatform/d/c/f$c;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/f$c;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/f$c$1;->b:Lcom/nd/commplatform/d/c/f$c;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/f$c$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/Object;)V
    .locals 7
    .param p1, "responseCode"    # I
    .param p2, "t"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/f$c$1;->b:Lcom/nd/commplatform/d/c/f$c;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/f$c;->a:Lcom/nd/commplatform/d/c/f;

    invoke-virtual {v0, v6}, Lcom/nd/commplatform/d/c/f;->b(Z)V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/f;->a(Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/f$c$1;->b:Lcom/nd/commplatform/d/c/f$c;

    iget-object v1, v1, Lcom/nd/commplatform/d/c/f$c;->a:Lcom/nd/commplatform/d/c/f;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/f;->a(Lcom/nd/commplatform/d/c/f;)Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/f$c$1;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v5}, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;-><init>(ILjava/lang/String;Z)V

    invoke-static {}, Lcom/nd/commplatform/d/c/of;->a()Lcom/nd/commplatform/d/c/of;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/of;->a(Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;)V

    new-instance v0, Lcom/nd/commplatform/d/c/oj;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/f$c$1;->b:Lcom/nd/commplatform/d/c/f$c;

    iget-object v1, v1, Lcom/nd/commplatform/d/c/f$c;->a:Lcom/nd/commplatform/d/c/f;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/f;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/oj;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/f$c$1;->b:Lcom/nd/commplatform/d/c/f$c;

    iget-object v1, v1, Lcom/nd/commplatform/d/c/f$c;->a:Lcom/nd/commplatform/d/c/f;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/f;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/f$c$1;->b:Lcom/nd/commplatform/d/c/f$c;

    iget-object v2, v2, Lcom/nd/commplatform/d/c/f$c;->a:Lcom/nd/commplatform/d/c/f;

    invoke-static {v2}, Lcom/nd/commplatform/d/c/f;->a(Lcom/nd/commplatform/d/c/f;)Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/oj;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v5, p1}, Lcom/nd/commplatform/d/c/ol;->a(II)V

    const/4 v0, 0x3

    invoke-static {v0, p1}, Lcom/nd/commplatform/d/c/ol;->a(II)V

    invoke-static {}, Lcom/nd/commplatform/d/c/cb;->e()V

    :goto_0
    return-void

    :cond_0
    const/16 v0, -0x4a63

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/f$c$1;->b:Lcom/nd/commplatform/d/c/f$c;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/f$c;->a:Lcom/nd/commplatform/d/c/f;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/f;->a(Lcom/nd/commplatform/d/c/f;)Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/f$c$1;->b:Lcom/nd/commplatform/d/c/f$c;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/f$c;->a:Lcom/nd/commplatform/d/c/f;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/f;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/f$c$1;->b:Lcom/nd/commplatform/d/c/f$c;

    iget-object v1, v1, Lcom/nd/commplatform/d/c/f$c;->a:Lcom/nd/commplatform/d/c/f;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/f;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->t:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/nd/commplatform/d/c/f$c$1;->b:Lcom/nd/commplatform/d/c/f$c;

    iget-object v4, v4, Lcom/nd/commplatform/d/c/f$c;->a:Lcom/nd/commplatform/d/c/f;

    iget-object v4, v4, Lcom/nd/commplatform/d/c/f;->a:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/nd/commplatform/d/c/f$c$1;->b:Lcom/nd/commplatform/d/c/f$c;

    iget-object v4, v4, Lcom/nd/commplatform/d/c/f$c;->a:Lcom/nd/commplatform/d/c/f;

    invoke-static {v4}, Lcom/nd/commplatform/d/c/f;->a(Lcom/nd/commplatform/d/c/f;)Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/f$c$1;->b:Lcom/nd/commplatform/d/c/f$c;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/f$c;->a:Lcom/nd/commplatform/d/c/f;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/f;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/nd/commplatform/d/c/nt;->a(Lcom/nd/commplatform/NdCallbackListener;Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nd/commplatform/d/c/f$c$1;->b:Lcom/nd/commplatform/d/c/f$c;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/f$c;->a:Lcom/nd/commplatform/d/c/f;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/f;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/nd/commplatform/d/c/nt;->a(Lcom/nd/commplatform/NdCallbackListener;Landroid/content/Context;I)V

    goto :goto_0
.end method
