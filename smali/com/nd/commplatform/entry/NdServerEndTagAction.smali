.class public Lcom/nd/commplatform/entry/NdServerEndTagAction;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nd/commplatform/entry/NdServerEndTagAction$OnServerEndResultListener;
    }
.end annotation


# instance fields
.field private ctx:Landroid/content/Context;

.field private mListener:Lcom/nd/commplatform/entry/NdServerEndTagAction$OnServerEndResultListener;

.field private tag:Lcom/nd/commplatform/entry/NdTag;


# direct methods
.method public constructor <init>(Lcom/nd/commplatform/entry/NdTag;Landroid/content/Context;)V
    .locals 0
    .param p1, "tag"    # Lcom/nd/commplatform/entry/NdTag;
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdServerEndTagAction;->tag:Lcom/nd/commplatform/entry/NdTag;

    iput-object p2, p0, Lcom/nd/commplatform/entry/NdServerEndTagAction;->ctx:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$0(Lcom/nd/commplatform/entry/NdServerEndTagAction;ILcom/nd/commplatform/entry/NdMsgTagResp;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nd/commplatform/entry/NdServerEndTagAction;->syncFriendList(ILcom/nd/commplatform/entry/NdMsgTagResp;)V

    return-void
.end method

.method static synthetic access$1(Lcom/nd/commplatform/entry/NdServerEndTagAction;ILcom/nd/commplatform/entry/NdMsgTagResp;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nd/commplatform/entry/NdServerEndTagAction;->updateRetText(ILcom/nd/commplatform/entry/NdMsgTagResp;)V

    return-void
.end method

.method private getReplyText()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdServerEndTagAction;->tag:Lcom/nd/commplatform/entry/NdTag;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdTag;->getCmdId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdServerEndTagAction;->tag:Lcom/nd/commplatform/entry/NdTag;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdTag;->getParams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private syncFriendList(ILcom/nd/commplatform/entry/NdMsgTagResp;)V
    .locals 3
    .param p1, "responseCode"    # I
    .param p2, "t"    # Lcom/nd/commplatform/entry/NdMsgTagResp;

    .prologue
    const-string v0, "1"

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdServerEndTagAction;->tag:Lcom/nd/commplatform/entry/NdTag;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdTag;->getParams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_0

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdMsgTagResp;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/nd/commplatform/d/c/ef;->a()Lcom/nd/commplatform/d/c/ef;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/entry/NdServerEndTagAction;->ctx:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/nd/commplatform/d/c/ef;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private updateRetText(ILcom/nd/commplatform/entry/NdMsgTagResp;)V
    .locals 7
    .param p1, "responseCode"    # I
    .param p2, "t"    # Lcom/nd/commplatform/entry/NdMsgTagResp;

    .prologue
    const/4 v2, 0x2

    const/16 v6, 0x20

    const/16 v5, 0x10

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "1"

    const-string v0, "2"

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdServerEndTagAction;->tag:Lcom/nd/commplatform/entry/NdTag;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdTag;->getParams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    packed-switch p1, :pswitch_data_0

    iget-object v1, p0, Lcom/nd/commplatform/entry/NdServerEndTagAction;->mListener:Lcom/nd/commplatform/entry/NdServerEndTagAction$OnServerEndResultListener;

    if-eqz v1, :cond_5

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdServerEndTagAction;->mListener:Lcom/nd/commplatform/entry/NdServerEndTagAction$OnServerEndResultListener;

    invoke-interface {v0, v5, v2}, Lcom/nd/commplatform/entry/NdServerEndTagAction$OnServerEndResultListener;->onServerEndResult(II)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdMsgTagResp;->getErrorText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/nd/commplatform/entry/NdServerEndTagAction;->ctx:Landroid/content/Context;

    invoke-static {v2, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_1
    iget-object v1, p0, Lcom/nd/commplatform/entry/NdServerEndTagAction;->tag:Lcom/nd/commplatform/entry/NdTag;

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdTag;->getCmdId()I

    move-result v1

    const/16 v2, 0x65

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/nd/commplatform/entry/NdServerEndTagAction;->tag:Lcom/nd/commplatform/entry/NdTag;

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdTag;->getParams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdMsgTagResp;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/nd/commplatform/entry/NdServerEndTagAction;->mListener:Lcom/nd/commplatform/entry/NdServerEndTagAction$OnServerEndResultListener;

    if-eqz v1, :cond_2

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdServerEndTagAction;->mListener:Lcom/nd/commplatform/entry/NdServerEndTagAction$OnServerEndResultListener;

    invoke-interface {v0, v5, v3}, Lcom/nd/commplatform/entry/NdServerEndTagAction$OnServerEndResultListener;->onServerEndResult(II)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/nd/commplatform/entry/NdServerEndTagAction;->mListener:Lcom/nd/commplatform/entry/NdServerEndTagAction$OnServerEndResultListener;

    if-eqz v1, :cond_0

    const-string v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdServerEndTagAction;->mListener:Lcom/nd/commplatform/entry/NdServerEndTagAction$OnServerEndResultListener;

    invoke-interface {v0, v6, v3}, Lcom/nd/commplatform/entry/NdServerEndTagAction$OnServerEndResultListener;->onServerEndResult(II)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/nd/commplatform/entry/NdServerEndTagAction;->mListener:Lcom/nd/commplatform/entry/NdServerEndTagAction$OnServerEndResultListener;

    if-eqz v1, :cond_4

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdServerEndTagAction;->mListener:Lcom/nd/commplatform/entry/NdServerEndTagAction$OnServerEndResultListener;

    invoke-interface {v0, v5, v4}, Lcom/nd/commplatform/entry/NdServerEndTagAction$OnServerEndResultListener;->onServerEndResult(II)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/nd/commplatform/entry/NdServerEndTagAction;->mListener:Lcom/nd/commplatform/entry/NdServerEndTagAction$OnServerEndResultListener;

    if-eqz v1, :cond_0

    const-string v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdServerEndTagAction;->mListener:Lcom/nd/commplatform/entry/NdServerEndTagAction$OnServerEndResultListener;

    invoke-interface {v0, v6, v4}, Lcom/nd/commplatform/entry/NdServerEndTagAction$OnServerEndResultListener;->onServerEndResult(II)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/nd/commplatform/entry/NdServerEndTagAction;->mListener:Lcom/nd/commplatform/entry/NdServerEndTagAction$OnServerEndResultListener;

    if-eqz v1, :cond_0

    const-string v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdServerEndTagAction;->mListener:Lcom/nd/commplatform/entry/NdServerEndTagAction$OnServerEndResultListener;

    invoke-interface {v0, v6, v2}, Lcom/nd/commplatform/entry/NdServerEndTagAction$OnServerEndResultListener;->onServerEndResult(II)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public doAction()V
    .locals 4

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdServerEndTagAction;->tag:Lcom/nd/commplatform/entry/NdTag;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdTag;->getCmdId()I

    move-result v0

    const/16 v1, 0x65

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/nd/commplatform/entry/NdServerEndTagAction$1;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/entry/NdServerEndTagAction$1;-><init>(Lcom/nd/commplatform/entry/NdServerEndTagAction;)V

    new-instance v1, Lcom/nd/commplatform/d/c/lh;

    invoke-direct {v1}, Lcom/nd/commplatform/d/c/lh;-><init>()V

    invoke-direct {p0}, Lcom/nd/commplatform/entry/NdServerEndTagAction;->getReplyText()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nd/commplatform/entry/NdServerEndTagAction;->ctx:Landroid/content/Context;

    invoke-virtual {v1, v2, v3, v0}, Lcom/nd/commplatform/d/c/lh;->a(Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    goto :goto_0
.end method

.method public setOnUpdateTextListener(Lcom/nd/commplatform/entry/NdServerEndTagAction$OnServerEndResultListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/nd/commplatform/entry/NdServerEndTagAction$OnServerEndResultListener;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdServerEndTagAction;->mListener:Lcom/nd/commplatform/entry/NdServerEndTagAction$OnServerEndResultListener;

    return-void
.end method
