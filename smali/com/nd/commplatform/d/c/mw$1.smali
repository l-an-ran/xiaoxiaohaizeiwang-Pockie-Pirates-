.class final Lcom/nd/commplatform/d/c/mw$1;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/mw;->a()V
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
.field final synthetic a:Lcom/nd/commplatform/d/c/mw;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/mw;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/mw$1;->a:Lcom/nd/commplatform/d/c/mw;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/nd/commplatform/entry/NdUserInfo;)V
    .locals 2

    if-eqz p2, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    const-string v0, "NdActivityUserViewHolder"

    const-string v1, "get user info fail."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/mw$1;->a:Lcom/nd/commplatform/d/c/mw;

    invoke-static {v0, p2}, Lcom/nd/commplatform/d/c/mw;->a(Lcom/nd/commplatform/d/c/mw;Lcom/nd/commplatform/entry/NdUserInfo;)Lcom/nd/commplatform/entry/NdUserInfo;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mw$1;->a:Lcom/nd/commplatform/d/c/mw;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/mw;->a(Lcom/nd/commplatform/d/c/mw;)Lcom/nd/commplatform/uap/widget/NdActivityUserView;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/mw$1;->a:Lcom/nd/commplatform/d/c/mw;

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/uap/widget/NdActivityUserView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mw$1;->a:Lcom/nd/commplatform/d/c/mw;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/mw;->b(Lcom/nd/commplatform/d/c/mw;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mw$1;->a:Lcom/nd/commplatform/d/c/mw;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/mw;->c(Lcom/nd/commplatform/d/c/mw;)V

    goto :goto_0
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p2, Lcom/nd/commplatform/entry/NdUserInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/mw$1;->a(ILcom/nd/commplatform/entry/NdUserInfo;)V

    return-void
.end method
