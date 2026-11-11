.class final Lcom/nd/commplatform/d/c/dq$1;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/dq;->a(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/NdCallbackListener",
        "<",
        "Lcom/nd/commplatform/entry/NdUserInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/dq;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/dq$1;->a:Lcom/nd/commplatform/d/c/dq;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/nd/commplatform/entry/NdUserInfo;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dq$1;->a:Lcom/nd/commplatform/d/c/dq;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/dq;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/nd/commplatform/d/c/nt;->a(Lcom/nd/commplatform/NdCallbackListener;Landroid/content/Context;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dq$1;->a:Lcom/nd/commplatform/d/c/dq;

    invoke-static {v0, p2}, Lcom/nd/commplatform/d/c/dq;->a(Lcom/nd/commplatform/d/c/dq;Lcom/nd/commplatform/entry/NdUserInfo;)V

    goto :goto_0
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p2, Lcom/nd/commplatform/entry/NdUserInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/dq$1;->a(ILcom/nd/commplatform/entry/NdUserInfo;)V

    return-void
.end method
