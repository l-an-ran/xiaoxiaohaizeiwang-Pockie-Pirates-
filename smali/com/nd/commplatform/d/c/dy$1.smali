.class final Lcom/nd/commplatform/d/c/dy$1;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/dy;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/NdCallbackListener",
        "<",
        "Lcom/nd/commplatform/entry/NdPageList",
        "<",
        "Lcom/nd/commplatform/entry/DynamicInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/dy;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/dy;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/dy$1;->a:Lcom/nd/commplatform/d/c/dy;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/nd/commplatform/entry/NdPageList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<",
            "Lcom/nd/commplatform/entry/DynamicInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dy$1;->a:Lcom/nd/commplatform/d/c/dy;

    invoke-static {v0, p2}, Lcom/nd/commplatform/d/c/dy;->a(Lcom/nd/commplatform/d/c/dy;Lcom/nd/commplatform/entry/NdPageList;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dy$1;->a:Lcom/nd/commplatform/d/c/dy;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/dy;->a:Lcom/nd/commplatform/d/c/hf;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/dy$1;->a:Lcom/nd/commplatform/d/c/dy;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/dy;->a(Lcom/nd/commplatform/d/c/dy;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/nd/commplatform/d/c/ms;->a(Lcom/nd/commplatform/entry/NdPageList;Landroid/content/Context;)Lcom/nd/commplatform/entry/NdPageList;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/nd/commplatform/d/c/hf;->a(Lcom/nd/commplatform/NdCallbackListener;ILjava/lang/Object;)V

    return-void
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p2, Lcom/nd/commplatform/entry/NdPageList;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/dy$1;->a(ILcom/nd/commplatform/entry/NdPageList;)V

    return-void
.end method
