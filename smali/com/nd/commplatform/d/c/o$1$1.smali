.class final Lcom/nd/commplatform/d/c/o$1$1;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/o$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/nd/commplatform/d/c/o$1;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/o$1;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/o$1$1;->b:Lcom/nd/commplatform/d/c/o$1;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/o$1$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/Object;)V
    .locals 5
    .param p1, "responseCode"    # I
    .param p2, "t"    # Ljava/lang/Object;

    .prologue
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/o$1$1;->b:Lcom/nd/commplatform/d/c/o$1;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/o$1;->a:Lcom/nd/commplatform/d/c/o;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/o;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->dv:I

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/nd/commplatform/d/c/o$1$1;->b:Lcom/nd/commplatform/d/c/o$1;

    iget-object v4, v4, Lcom/nd/commplatform/d/c/o$1;->a:Lcom/nd/commplatform/d/c/o;

    invoke-static {v4}, Lcom/nd/commplatform/d/c/o;->c(Lcom/nd/commplatform/d/c/o;)Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/nd/commplatform/d/c/o$1$1;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nd/commplatform/d/c/a;->m()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/o$1$1;->b:Lcom/nd/commplatform/d/c/o$1;

    iget-object v1, v1, Lcom/nd/commplatform/d/c/o$1;->a:Lcom/nd/commplatform/d/c/o;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/o;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/o$1$1;->b:Lcom/nd/commplatform/d/c/o$1;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/o$1;->a:Lcom/nd/commplatform/d/c/o;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/o;->c(Lcom/nd/commplatform/d/c/o;)Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    move-result-object v0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/fg;->a(Lcom/nd/commplatform/entry/NdThirdPartyPlatform;)V

    const/16 v0, 0x3f1

    invoke-static {v0}, Lcom/nd/commplatform/d/c/cb;->a(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/o$1$1;->b:Lcom/nd/commplatform/d/c/o$1;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/o$1;->a:Lcom/nd/commplatform/d/c/o;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/o;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/nd/commplatform/d/c/nt;->a(Lcom/nd/commplatform/NdCallbackListener;Landroid/content/Context;I)V

    goto :goto_0
.end method
