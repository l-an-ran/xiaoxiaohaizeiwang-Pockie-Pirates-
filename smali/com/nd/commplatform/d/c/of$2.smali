.class final Lcom/nd/commplatform/d/c/of$2;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/of;->a(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/NdCallbackListener",
        "<",
        "Lcom/nd/commplatform/entry/NdVirtualCurrencyBalance;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/NdCallbackListener;

.field final synthetic b:Lcom/nd/commplatform/d/c/of;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/of;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/of$2;->b:Lcom/nd/commplatform/d/c/of;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/of$2;->a:Lcom/nd/commplatform/NdCallbackListener;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/nd/commplatform/entry/NdVirtualCurrencyBalance;)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/of$2;->a:Lcom/nd/commplatform/NdCallbackListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/of$2;->a:Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {v0, p1, p2}, Lcom/nd/commplatform/NdCallbackListener;->callback(ILjava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/of$2;->b:Lcom/nd/commplatform/d/c/of;

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/a;->t()Z

    move-result v1

    iput-boolean v1, v0, Lcom/nd/commplatform/d/c/of;->a:Z

    iget-object v0, p0, Lcom/nd/commplatform/d/c/of$2;->b:Lcom/nd/commplatform/d/c/of;

    invoke-static {v0, p2}, Lcom/nd/commplatform/d/c/of;->a(Lcom/nd/commplatform/d/c/of;Lcom/nd/commplatform/entry/NdVirtualCurrencyBalance;)Lcom/nd/commplatform/entry/NdVirtualCurrencyBalance;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/of$2;->a:Lcom/nd/commplatform/NdCallbackListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/of$2;->a:Lcom/nd/commplatform/NdCallbackListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/nd/commplatform/NdCallbackListener;->callback(ILjava/lang/Object;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p2, Lcom/nd/commplatform/entry/NdVirtualCurrencyBalance;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/of$2;->a(ILcom/nd/commplatform/entry/NdVirtualCurrencyBalance;)V

    return-void
.end method
