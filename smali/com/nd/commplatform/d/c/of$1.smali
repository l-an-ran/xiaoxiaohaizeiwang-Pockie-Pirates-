.class final Lcom/nd/commplatform/d/c/of$1;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/of;->b(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/NdCallbackListener",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/nd/commplatform/entry/NdModuleSwitchInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/NdCallbackListener;

.field final synthetic b:Lcom/nd/commplatform/d/c/of;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/of;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/of$1;->b:Lcom/nd/commplatform/d/c/of;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/of$1;->a:Lcom/nd/commplatform/NdCallbackListener;

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
            "Lcom/nd/commplatform/entry/NdModuleSwitchInfo;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/of$1;->b:Lcom/nd/commplatform/d/c/of;

    invoke-static {v0, p2}, Lcom/nd/commplatform/d/c/of;->a(Lcom/nd/commplatform/d/c/of;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/of$1;->a:Lcom/nd/commplatform/NdCallbackListener;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nd/commplatform/d/c/of$1;->b:Lcom/nd/commplatform/d/c/of;

    invoke-static {v2}, Lcom/nd/commplatform/d/c/of;->a(Lcom/nd/commplatform/d/c/of;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/NdCallbackListener;->callback(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p2, Ljava/util/List;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/of$1;->a(ILjava/util/List;)V

    return-void
.end method
