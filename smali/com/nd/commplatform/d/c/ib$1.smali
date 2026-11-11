.class final Lcom/nd/commplatform/d/c/ib$1;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/ib;->c()V
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
.field final synthetic a:Lcom/nd/commplatform/d/c/ib;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/ib;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ib$1;->a:Lcom/nd/commplatform/d/c/ib;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/nd/commplatform/entry/NdAppServProInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ib$1;->a:Lcom/nd/commplatform/d/c/ib;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/ib;->b(Z)V

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ib$1;->a:Lcom/nd/commplatform/d/c/ib;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ib;->a(Lcom/nd/commplatform/d/c/ib;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdAppServProInfo;->getMerchant()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ib$1;->a:Lcom/nd/commplatform/d/c/ib;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/ib;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/nd/commplatform/d/c/nt;->a(Lcom/nd/commplatform/NdCallbackListener;Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p2, Lcom/nd/commplatform/entry/NdAppServProInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/ib$1;->a(ILcom/nd/commplatform/entry/NdAppServProInfo;)V

    return-void
.end method
