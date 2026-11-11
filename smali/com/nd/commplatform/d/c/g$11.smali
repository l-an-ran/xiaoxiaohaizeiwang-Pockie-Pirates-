.class final Lcom/nd/commplatform/d/c/g$11;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/g;->n()V
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
.field final synthetic a:Lcom/nd/commplatform/d/c/g;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/g;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/g$11;->a:Lcom/nd/commplatform/d/c/g;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g$11;->a:Lcom/nd/commplatform/d/c/g;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/g;->c(Lcom/nd/commplatform/d/c/g;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g$11;->a:Lcom/nd/commplatform/d/c/g;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/g;->d(Lcom/nd/commplatform/d/c/g;)V

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g$11;->a:Lcom/nd/commplatform/d/c/g;

    invoke-static {v0, p2}, Lcom/nd/commplatform/d/c/g;->a(Lcom/nd/commplatform/d/c/g;Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p2, Ljava/util/ArrayList;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/g$11;->a(ILjava/util/ArrayList;)V

    return-void
.end method
