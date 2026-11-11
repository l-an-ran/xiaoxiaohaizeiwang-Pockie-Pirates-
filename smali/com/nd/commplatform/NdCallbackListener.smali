.class public abstract Lcom/nd/commplatform/NdCallbackListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private destroy:Z

.field private mResult:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nd/commplatform/NdCallbackListener;->destroy:Z

    return-void
.end method


# virtual methods
.method public abstract callback(ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nd/commplatform/NdCallbackListener;->destroy:Z

    return-void
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/NdCallbackListener;->mResult:Ljava/lang/String;

    return-object v0
.end method

.method public isDestroy()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nd/commplatform/NdCallbackListener;->destroy:Z

    return v0
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/nd/commplatform/NdCallbackListener;, "Lcom/nd/commplatform/NdCallbackListener<TT;>;"
    iput-object p1, p0, Lcom/nd/commplatform/NdCallbackListener;->mResult:Ljava/lang/String;

    return-void
.end method
