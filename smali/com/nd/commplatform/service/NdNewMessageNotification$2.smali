.class final Lcom/nd/commplatform/service/NdNewMessageNotification$2;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/service/NdNewMessageNotification;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/NdCallbackListener",
        "<[I>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/service/NdNewMessageNotification;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/service/NdNewMessageNotification;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/service/NdNewMessageNotification$2;->a:Lcom/nd/commplatform/service/NdNewMessageNotification;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[I)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nd/commplatform/service/NdNewMessageNotification$2;->a:Lcom/nd/commplatform/service/NdNewMessageNotification;

    invoke-static {v2}, Lcom/nd/commplatform/service/NdNewMessageNotification;->b(Lcom/nd/commplatform/service/NdNewMessageNotification;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/b;->k()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nd/commplatform/d/c/b;->g()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/b;->k()V

    goto :goto_0

    :cond_2
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    array-length v2, p2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    const-string v2, "NdNewMessageNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Receive message:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p2, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/nd/commplatform/service/NdNewMessageNotification;->a([I)[I

    iget-object v2, p0, Lcom/nd/commplatform/service/NdNewMessageNotification$2;->a:Lcom/nd/commplatform/service/NdNewMessageNotification;

    invoke-static {v2}, Lcom/nd/commplatform/service/NdNewMessageNotification;->c(Lcom/nd/commplatform/service/NdNewMessageNotification;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/nd/commplatform/service/NdNewMessageNotification;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    aget v2, p2, v1

    aget v3, p2, v0

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/nd/commplatform/service/NdNewMessageNotification$2;->a:Lcom/nd/commplatform/service/NdNewMessageNotification;

    invoke-static {v3}, Lcom/nd/commplatform/service/NdNewMessageNotification;->d(Lcom/nd/commplatform/service/NdNewMessageNotification;)I

    move-result v3

    if-eq v2, v3, :cond_3

    :goto_1
    iget-object v1, p0, Lcom/nd/commplatform/service/NdNewMessageNotification$2;->a:Lcom/nd/commplatform/service/NdNewMessageNotification;

    invoke-static {v1, v2}, Lcom/nd/commplatform/service/NdNewMessageNotification;->a(Lcom/nd/commplatform/service/NdNewMessageNotification;I)I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/service/NdNewMessageNotification$2;->a:Lcom/nd/commplatform/service/NdNewMessageNotification;

    invoke-static {v0}, Lcom/nd/commplatform/service/NdNewMessageNotification;->e(Lcom/nd/commplatform/service/NdNewMessageNotification;)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p2, [I

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/service/NdNewMessageNotification$2;->a(I[I)V

    return-void
.end method
