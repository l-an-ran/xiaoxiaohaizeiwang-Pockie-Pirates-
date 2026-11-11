.class final Lcom/nd/commplatform/d/c/fe$2;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/fe;->b(I)V
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
        "Lcom/nd/commplatform/entry/NdFriendUserInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/fe;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/fe;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/fe$2;->a:Lcom/nd/commplatform/d/c/fe;

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
            "Lcom/nd/commplatform/entry/NdFriendUserInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fe$2;->a:Lcom/nd/commplatform/d/c/fe;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/fe;->a(Lcom/nd/commplatform/d/c/fe;)Lcom/nd/commplatform/d/c/hf;

    move-result-object v0

    invoke-static {p2}, Lcom/nd/commplatform/d/c/fe;->a(Lcom/nd/commplatform/entry/NdPageList;)Lcom/nd/commplatform/entry/NdPageList;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/nd/commplatform/d/c/hf;->a(Lcom/nd/commplatform/NdCallbackListener;ILjava/lang/Object;)V

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdPageList;->getTotalCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fe$2;->a:Lcom/nd/commplatform/d/c/fe;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/fe;->b(Lcom/nd/commplatform/d/c/fe;)V

    :cond_0
    return-void
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p2, Lcom/nd/commplatform/entry/NdPageList;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/fe$2;->a(ILcom/nd/commplatform/entry/NdPageList;)V

    return-void
.end method
