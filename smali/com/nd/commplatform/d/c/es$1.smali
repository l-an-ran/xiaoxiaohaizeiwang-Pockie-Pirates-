.class final Lcom/nd/commplatform/d/c/es$1;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/es;->c(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/nd/commplatform/d/c/es;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/es;I)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/es$1;->b:Lcom/nd/commplatform/d/c/es;

    iput p2, p0, Lcom/nd/commplatform/d/c/es$1;->a:I

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/Object;)V
    .locals 2
    .param p1, "responseCode"    # I
    .param p2, "t"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/es$1;->b:Lcom/nd/commplatform/d/c/es;

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/es;->b(Z)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/es$1;->b:Lcom/nd/commplatform/d/c/es;

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/es;->a(Lcom/nd/commplatform/d/c/es;I)I

    iget-object v0, p0, Lcom/nd/commplatform/d/c/es$1;->b:Lcom/nd/commplatform/d/c/es;

    iget v1, p0, Lcom/nd/commplatform/d/c/es$1;->a:I

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/es;->b(Lcom/nd/commplatform/d/c/es;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/es$1;->b:Lcom/nd/commplatform/d/c/es;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/es;->a(Lcom/nd/commplatform/d/c/es;)I

    iget-object v0, p0, Lcom/nd/commplatform/d/c/es$1;->b:Lcom/nd/commplatform/d/c/es;

    iget v1, p0, Lcom/nd/commplatform/d/c/es$1;->a:I

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/es;->c(Lcom/nd/commplatform/d/c/es;I)V

    goto :goto_0
.end method
