.class public Lcom/nd/commplatform/entry/NdTinyActivityMsgInfo;
.super Ljava/lang/Object;


# instance fields
.field private msgContent:Lcom/nd/commplatform/entry/NdMsgContent;

.field private msgId:Ljava/lang/String;

.field private sendTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMsgContent()Lcom/nd/commplatform/entry/NdMsgContent;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdTinyActivityMsgInfo;->msgContent:Lcom/nd/commplatform/entry/NdMsgContent;

    return-object v0
.end method

.method public getMsgId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdTinyActivityMsgInfo;->msgId:Ljava/lang/String;

    return-object v0
.end method

.method public getSendTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdTinyActivityMsgInfo;->sendTime:Ljava/lang/String;

    return-object v0
.end method

.method public setMsgContent(Lcom/nd/commplatform/entry/NdMsgContent;)V
    .locals 0
    .param p1, "msgContent"    # Lcom/nd/commplatform/entry/NdMsgContent;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdTinyActivityMsgInfo;->msgContent:Lcom/nd/commplatform/entry/NdMsgContent;

    return-void
.end method

.method public setMsgId(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdTinyActivityMsgInfo;->msgId:Ljava/lang/String;

    return-void
.end method

.method public setSendTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "sendTime"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdTinyActivityMsgInfo;->sendTime:Ljava/lang/String;

    return-void
.end method
