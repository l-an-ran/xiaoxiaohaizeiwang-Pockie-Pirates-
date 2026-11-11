.class public Lcom/nd/commplatform/d/c/pt;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:Lcom/nd/commplatform/NdCallbackListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nd/commplatform/NdCallbackListener",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/nd/commplatform/NdCallbackListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/nd/commplatform/d/c/pt;->a:I

    iput-object p2, p0, Lcom/nd/commplatform/d/c/pt;->b:Lcom/nd/commplatform/NdCallbackListener;

    return-void
.end method
