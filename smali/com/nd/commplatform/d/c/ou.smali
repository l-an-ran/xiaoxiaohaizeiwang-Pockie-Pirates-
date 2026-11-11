.class final Lcom/nd/commplatform/d/c/ou;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/d/c/os;
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
.field final synthetic a:Lcom/nd/commplatform/d/c/os;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/os;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ou;->a:Lcom/nd/commplatform/d/c/os;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[I)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ou;->a:Lcom/nd/commplatform/d/c/os;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/os;->b(Lcom/nd/commplatform/d/c/os;)Lcom/nd/commplatform/d/c/os$a;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    array-length v0, p2

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ou;->a:Lcom/nd/commplatform/d/c/os;

    aget v1, p2, v2

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/os;->a(Lcom/nd/commplatform/d/c/os;I)I

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ou;->a:Lcom/nd/commplatform/d/c/os;

    const/4 v1, 0x1

    aget v1, p2, v1

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/os;->b(Lcom/nd/commplatform/d/c/os;I)I

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ou;->a:Lcom/nd/commplatform/d/c/os;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/os;->c(Lcom/nd/commplatform/d/c/os;)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ou;->a:Lcom/nd/commplatform/d/c/os;

    invoke-static {v0, v2}, Lcom/nd/commplatform/d/c/os;->a(Lcom/nd/commplatform/d/c/os;I)I

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ou;->a:Lcom/nd/commplatform/d/c/os;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/os;->d(Lcom/nd/commplatform/d/c/os;)I

    move-result v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ou;->a:Lcom/nd/commplatform/d/c/os;

    invoke-static {v0, v2}, Lcom/nd/commplatform/d/c/os;->b(Lcom/nd/commplatform/d/c/os;I)I

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ou;->a:Lcom/nd/commplatform/d/c/os;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/os;->b(Lcom/nd/commplatform/d/c/os;)Lcom/nd/commplatform/d/c/os$a;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ou;->a:Lcom/nd/commplatform/d/c/os;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/os;->c(Lcom/nd/commplatform/d/c/os;)I

    move-result v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/ou;->a:Lcom/nd/commplatform/d/c/os;

    invoke-static {v2}, Lcom/nd/commplatform/d/c/os;->d(Lcom/nd/commplatform/d/c/os;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/nd/commplatform/d/c/os$a;->a(II)V

    :cond_2
    return-void
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p2, [I

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/ou;->a(I[I)V

    return-void
.end method
