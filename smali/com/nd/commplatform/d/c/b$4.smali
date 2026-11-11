.class final Lcom/nd/commplatform/d/c/b$4;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/b;->e(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I
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
.field final synthetic a:Lcom/nd/commplatform/NdCallbackListener;

.field final synthetic b:Lcom/nd/commplatform/d/c/b;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/b;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/b$4;->b:Lcom/nd/commplatform/d/c/b;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/b$4;->a:Lcom/nd/commplatform/NdCallbackListener;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/nd/commplatform/entry/NdUserInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/b$4;->a:Lcom/nd/commplatform/NdCallbackListener;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/nd/commplatform/entry/NdMyUserInfoDetail;

    invoke-direct {v0}, Lcom/nd/commplatform/entry/NdMyUserInfoDetail;-><init>()V

    invoke-virtual {v0, p2}, Lcom/nd/commplatform/entry/NdMyUserInfoDetail;->setUserInfo(Lcom/nd/commplatform/entry/NdUserInfo;)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/b$4;->a:Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {v1, p1, v0}, Lcom/nd/commplatform/NdCallbackListener;->callback(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p2, Lcom/nd/commplatform/entry/NdUserInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/b$4;->a(ILcom/nd/commplatform/entry/NdUserInfo;)V

    return-void
.end method
