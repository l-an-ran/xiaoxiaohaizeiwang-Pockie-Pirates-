.class final Lcom/nd/commplatform/d/c/dp$2$1;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/dp$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/nd/commplatform/d/c/dp$2;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/dp$2;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/dp$2$1;->b:Lcom/nd/commplatform/d/c/dp$2;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/dp$2$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/Object;)V
    .locals 2
    .param p1, "responseCode"    # I
    .param p2, "t"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/d/c/dp$2$1;->b:Lcom/nd/commplatform/d/c/dp$2;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/dp$2;->a:Lcom/nd/commplatform/d/c/dp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/dp;->b(Z)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dp$2$1;->b:Lcom/nd/commplatform/d/c/dp$2;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/dp$2;->a:Lcom/nd/commplatform/d/c/dp;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/dp$2$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/dp;->a(Lcom/nd/commplatform/d/c/dp;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dp$2$1;->b:Lcom/nd/commplatform/d/c/dp$2;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/dp$2;->a:Lcom/nd/commplatform/d/c/dp;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/dp;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->jV:I

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;I)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/cb;->a(Lcom/nd/commplatform/d/c/bx;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/dp$2$1;->b:Lcom/nd/commplatform/d/c/dp$2;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/dp$2;->a:Lcom/nd/commplatform/d/c/dp;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/dp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/nd/commplatform/d/c/nt;->a(Lcom/nd/commplatform/NdCallbackListener;Landroid/content/Context;I)V

    goto :goto_0
.end method
