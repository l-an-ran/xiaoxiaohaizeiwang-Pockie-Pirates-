.class Lcom/nd/commplatform/d/c/en$1;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/en;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/NdCallbackListener",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/nd/commplatform/entry/BaseFriendInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/en;

.field private final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/en;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/en$1;->a:Lcom/nd/commplatform/d/c/en;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/en$1;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/entry/BaseFriendInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/en$1;->a:Lcom/nd/commplatform/d/c/en;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/en;->c(Lcom/nd/commplatform/d/c/en;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/en$1;->a:Lcom/nd/commplatform/d/c/en;

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/en;->a(Lcom/nd/commplatform/d/c/en;Z)V

    :goto_0
    return-void

    :cond_0
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/en$1;->a:Lcom/nd/commplatform/d/c/en;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/en;->c(Lcom/nd/commplatform/d/c/en;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/en$1;->a:Lcom/nd/commplatform/d/c/en;

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/en;->a(Lcom/nd/commplatform/d/c/en;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/en$1;->a:Lcom/nd/commplatform/d/c/en;

    invoke-static {v0, p2}, Lcom/nd/commplatform/d/c/en;->a(Lcom/nd/commplatform/d/c/en;Ljava/util/List;)Lcom/nd/commplatform/d/c/em;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/en$1;->a:Lcom/nd/commplatform/d/c/en;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/en$1;->b:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Lcom/nd/commplatform/d/c/en;->a(Lcom/nd/commplatform/d/c/en;Lcom/nd/commplatform/d/c/em;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/en$1;->a(ILjava/util/List;)V

    return-void
.end method
