.class final Lcom/nd/commplatform/d/c/fo$1$1;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/fo$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/nd/commplatform/d/c/fo$1;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/fo$1;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/fo$1$1;->b:Lcom/nd/commplatform/d/c/fo$1;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/fo$1$1;->a:Landroid/view/View;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/Object;)V
    .locals 3
    .param p1, "responseCode"    # I
    .param p2, "t"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fo$1$1;->b:Lcom/nd/commplatform/d/c/fo$1;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/fo$1;->a:Lcom/nd/commplatform/d/c/fo;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/fo;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->jV:I

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fo$1$1;->b:Lcom/nd/commplatform/d/c/fo$1;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/fo$1;->a:Lcom/nd/commplatform/d/c/fo;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/fo;->b(Lcom/nd/commplatform/d/c/fo;)Lcom/nd/commplatform/entry/ThirdPlatformUserInfo;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nd/commplatform/entry/ThirdPlatformUserInfo;->setInvite(Z)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fo$1$1;->b:Lcom/nd/commplatform/d/c/fo$1;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/fo$1;->a:Lcom/nd/commplatform/d/c/fo;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/fo;->c(Lcom/nd/commplatform/d/c/fo;)Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    move-result-object v0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/fg;->b(Lcom/nd/commplatform/entry/NdThirdPartyPlatform;)V

    :goto_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fo$1$1;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fo$1$1;->b:Lcom/nd/commplatform/d/c/fo$1;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/fo$1;->a:Lcom/nd/commplatform/d/c/fo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/fo;->b(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fo$1$1;->b:Lcom/nd/commplatform/d/c/fo$1;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/fo$1;->a:Lcom/nd/commplatform/d/c/fo;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/fo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/nd/commplatform/d/c/nt;->a(Lcom/nd/commplatform/NdCallbackListener;Landroid/content/Context;I)V

    goto :goto_0
.end method
