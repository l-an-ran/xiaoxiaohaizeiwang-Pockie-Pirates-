.class final Lcom/nd/commplatform/d/c/ia$3;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/ia;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/NdCallbackListener",
        "<",
        "Lcom/nd/commplatform/entry/NdAppServProInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/ia;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/ia;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ia$3;->a:Lcom/nd/commplatform/d/c/ia;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/nd/commplatform/entry/NdAppServProInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ia$3;->a:Lcom/nd/commplatform/d/c/ia;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/ia;->b(Z)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ia$3;->a:Lcom/nd/commplatform/d/c/ia;

    invoke-static {v0, p2}, Lcom/nd/commplatform/d/c/ia;->a(Lcom/nd/commplatform/d/c/ia;Lcom/nd/commplatform/entry/NdAppServProInfo;)V

    goto :goto_0

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
    check-cast p2, Lcom/nd/commplatform/entry/NdAppServProInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/ia$3;->a(ILcom/nd/commplatform/entry/NdAppServProInfo;)V

    return-void
.end method
