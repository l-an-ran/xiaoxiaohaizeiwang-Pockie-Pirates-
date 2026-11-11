.class final Lcom/nd/commplatform/d/c/np$1;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/np;-><init>(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/NdCallbackListener",
        "<[I>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/np;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/np;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/np$1;->a:Lcom/nd/commplatform/d/c/np;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[I)V
    .locals 1

    if-eqz p2, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/np$1;->a:Lcom/nd/commplatform/d/c/np;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/np;->b:Lcom/nd/commplatform/NdCallbackListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/np$1;->a:Lcom/nd/commplatform/d/c/np;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/np;->b:Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {v0}, Lcom/nd/commplatform/NdCallbackListener;->isDestroy()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/np$1;->a:Lcom/nd/commplatform/d/c/np;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/np;->b:Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {v0, p1, p2}, Lcom/nd/commplatform/NdCallbackListener;->callback(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p2, [I

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/np$1;->a(I[I)V

    return-void
.end method
