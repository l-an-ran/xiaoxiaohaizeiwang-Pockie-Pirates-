.class final Lcom/nd/commplatform/d/c/b$7;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/b;->b(Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/NdCallbackListener",
        "<",
        "Lcom/nd/commplatform/d/c/fv;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/nd/commplatform/NdCallbackListener;

.field final synthetic c:Lcom/nd/commplatform/d/c/b;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/b;Ljava/lang/String;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/b$7;->c:Lcom/nd/commplatform/d/c/b;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/b$7;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/nd/commplatform/d/c/b$7;->b:Lcom/nd/commplatform/NdCallbackListener;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/nd/commplatform/d/c/fv;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-instance v0, Lcom/nd/commplatform/entry/NdPayResultInfo;

    invoke-direct {v0}, Lcom/nd/commplatform/entry/NdPayResultInfo;-><init>()V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/b$7;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/entry/NdPayResultInfo;->setOrderSerial(Ljava/lang/String;)V

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/nd/commplatform/d/c/fv;->d()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/entry/NdPayResultInfo;->setGoodsCount(D)V

    invoke-virtual {p2}, Lcom/nd/commplatform/d/c/fv;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/entry/NdPayResultInfo;->setGoodsId(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/nd/commplatform/d/c/fv;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/entry/NdPayResultInfo;->setGoodsName(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/nd/commplatform/d/c/fv;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/entry/NdPayResultInfo;->setPayDescription(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/nd/commplatform/d/c/fv;->a()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-virtual {v0, v4}, Lcom/nd/commplatform/entry/NdPayResultInfo;->setSuccess(Z)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/b$7;->b:Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {v1, p1, v0}, Lcom/nd/commplatform/NdCallbackListener;->callback(ILjava/lang/Object;)V

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {v0, v3}, Lcom/nd/commplatform/entry/NdPayResultInfo;->setSuccess(Z)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/b$7;->b:Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {v1, p1, v0}, Lcom/nd/commplatform/NdCallbackListener;->callback(ILjava/lang/Object;)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {v0, v3}, Lcom/nd/commplatform/entry/NdPayResultInfo;->setSuccess(Z)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/b$7;->b:Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {v1, p1, v0}, Lcom/nd/commplatform/NdCallbackListener;->callback(ILjava/lang/Object;)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {v0, v3}, Lcom/nd/commplatform/entry/NdPayResultInfo;->setSuccess(Z)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/b$7;->b:Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {v1, p1, v0}, Lcom/nd/commplatform/NdCallbackListener;->callback(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v4}, Lcom/nd/commplatform/entry/NdPayResultInfo;->setSuccess(Z)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/b$7;->b:Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {v1, p1, v0}, Lcom/nd/commplatform/NdCallbackListener;->callback(ILjava/lang/Object;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0xb -> :sswitch_1
        0x15 -> :sswitch_2
    .end sparse-switch
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p2, Lcom/nd/commplatform/d/c/fv;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/b$7;->a(ILcom/nd/commplatform/d/c/fv;)V

    return-void
.end method
