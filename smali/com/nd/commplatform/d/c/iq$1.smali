.class final Lcom/nd/commplatform/d/c/iq$1;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/iq;->b(I)V
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
        "Lcom/nd/commplatform/entry/NdReChargingRecord;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/iq;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/iq;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/iq$1;->a:Lcom/nd/commplatform/d/c/iq;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/nd/commplatform/entry/NdPageList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<",
            "Lcom/nd/commplatform/entry/NdReChargingRecord;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/nd/commplatform/d/c/iq$1;->a:Lcom/nd/commplatform/d/c/iq;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/iq;->a(Lcom/nd/commplatform/d/c/iq;)Lcom/nd/commplatform/d/c/hf;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/nd/commplatform/d/c/hf;->a(Lcom/nd/commplatform/NdCallbackListener;ILjava/lang/Object;)V

    return-void
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p2, Lcom/nd/commplatform/entry/NdPageList;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/iq$1;->a(ILcom/nd/commplatform/entry/NdPageList;)V

    return-void
.end method
