.class final Lcom/nd/commplatform/d/c/ov;
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
        "<",
        "Lcom/nd/commplatform/entry/NdNewAppCount;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/os;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/os;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ov;->a:Lcom/nd/commplatform/d/c/os;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/nd/commplatform/entry/NdNewAppCount;)V
    .locals 3

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ov;->a:Lcom/nd/commplatform/d/c/os;

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdNewAppCount;->getCount()I

    move-result v1

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdNewAppCount;->getUpToTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/nd/commplatform/d/c/os;->a(Lcom/nd/commplatform/d/c/os;ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, -0x4

    if-ne p1, v0, :cond_0

    const-string v0, "New App Count"

    const-string v1, "Session Invalid."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p2, Lcom/nd/commplatform/entry/NdNewAppCount;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/ov;->a(ILcom/nd/commplatform/entry/NdNewAppCount;)V

    return-void
.end method
