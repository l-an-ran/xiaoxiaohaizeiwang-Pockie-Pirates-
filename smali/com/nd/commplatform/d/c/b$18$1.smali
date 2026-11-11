.class final Lcom/nd/commplatform/d/c/b$18$1;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/b$18;->callback(ILjava/lang/Object;)V
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
.field final synthetic a:Lcom/nd/commplatform/d/c/b$18;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/b$18;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/b$18$1;->a:Lcom/nd/commplatform/d/c/b$18;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/util/ArrayList;)V
    .locals 4
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

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/b$18$1;->a:Lcom/nd/commplatform/d/c/b$18;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/b$18;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/b$18$1;->a:Lcom/nd/commplatform/d/c/b$18;

    iget-boolean v1, v1, Lcom/nd/commplatform/d/c/b$18;->b:Z

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/nd/commplatform/d/c/cb;->a(Landroid/content/Context;ZLjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/b$18$1;->a:Lcom/nd/commplatform/d/c/b$18;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/b$18;->c:Lcom/nd/commplatform/d/c/b;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/b$18$1;->a:Lcom/nd/commplatform/d/c/b$18;

    iget-object v1, v1, Lcom/nd/commplatform/d/c/b$18;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/nr;->b(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/b$18$1;->a:Lcom/nd/commplatform/d/c/b$18;

    iget-object v2, v2, Lcom/nd/commplatform/d/c/b$18;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/nd/commplatform/d/c/b$18$1;->a:Lcom/nd/commplatform/d/c/b$18;

    iget-boolean v3, v3, Lcom/nd/commplatform/d/c/b$18;->b:Z

    invoke-static {v0, v1, v2, v3}, Lcom/nd/commplatform/d/c/b;->a(Lcom/nd/commplatform/d/c/b;ILandroid/content/Context;Z)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/nd/commplatform/NdMiscCallbackListener;->b(I)V

    goto :goto_0
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p2, Ljava/util/ArrayList;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/b$18$1;->a(ILjava/util/ArrayList;)V

    return-void
.end method
