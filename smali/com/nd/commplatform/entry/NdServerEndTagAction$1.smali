.class Lcom/nd/commplatform/entry/NdServerEndTagAction$1;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/entry/NdServerEndTagAction;->doAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/NdCallbackListener",
        "<",
        "Lcom/nd/commplatform/entry/NdMsgTagResp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/entry/NdServerEndTagAction;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/entry/NdServerEndTagAction;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdServerEndTagAction$1;->a:Lcom/nd/commplatform/entry/NdServerEndTagAction;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/nd/commplatform/entry/NdMsgTagResp;)V
    .locals 1

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/entry/NdServerEndTagAction$1;->a:Lcom/nd/commplatform/entry/NdServerEndTagAction;

    invoke-static {v0, p1, p2}, Lcom/nd/commplatform/entry/NdServerEndTagAction;->access$0(Lcom/nd/commplatform/entry/NdServerEndTagAction;ILcom/nd/commplatform/entry/NdMsgTagResp;)V

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdServerEndTagAction$1;->a:Lcom/nd/commplatform/entry/NdServerEndTagAction;

    invoke-static {v0, p1, p2}, Lcom/nd/commplatform/entry/NdServerEndTagAction;->access$1(Lcom/nd/commplatform/entry/NdServerEndTagAction;ILcom/nd/commplatform/entry/NdMsgTagResp;)V

    goto :goto_0
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/nd/commplatform/entry/NdMsgTagResp;

    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/entry/NdServerEndTagAction$1;->a(ILcom/nd/commplatform/entry/NdMsgTagResp;)V

    return-void
.end method
