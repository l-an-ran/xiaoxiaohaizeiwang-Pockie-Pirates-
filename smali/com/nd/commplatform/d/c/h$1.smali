.class final Lcom/nd/commplatform/d/c/h$1;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/h;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/NdCallbackListener",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/h;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/h;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/h$1;->a:Lcom/nd/commplatform/d/c/h;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/nd/commplatform/d/c/h$1;->a:Lcom/nd/commplatform/d/c/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/h;->b(Z)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/h$1;->a:Lcom/nd/commplatform/d/c/h;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/h;->a(Lcom/nd/commplatform/d/c/h;)Lcom/nd/commplatform/d/c/h$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/h$a;->a(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/h$1;->a:Lcom/nd/commplatform/d/c/h;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/h;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/nd/commplatform/d/c/nt;->a(Lcom/nd/commplatform/NdCallbackListener;Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p2, Ljava/util/ArrayList;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/h$1;->a(ILjava/util/ArrayList;)V

    return-void
.end method
