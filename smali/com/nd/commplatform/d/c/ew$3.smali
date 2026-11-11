.class final Lcom/nd/commplatform/d/c/ew$3;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/ew;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/NdCallbackListener",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/ew;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/ew;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ew$3;->a:Lcom/nd/commplatform/d/c/ew;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ew$3;->a:Lcom/nd/commplatform/d/c/ew;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/ew;->b(Z)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ew$3;->a:Lcom/nd/commplatform/d/c/ew;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/ew;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/nd/commplatform/d/c/nt;->a(Lcom/nd/commplatform/NdCallbackListener;Landroid/content/Context;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ew$3;->a:Lcom/nd/commplatform/d/c/ew;

    invoke-static {v0, p2}, Lcom/nd/commplatform/d/c/ew;->a(Lcom/nd/commplatform/d/c/ew;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p2, Ljava/lang/String;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/ew$3;->a(ILjava/lang/String;)V

    return-void
.end method
