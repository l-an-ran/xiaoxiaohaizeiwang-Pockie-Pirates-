.class public Lcom/nd/commplatform/entry/DynamicInfo;
.super Ljava/lang/Object;


# instance fields
.field private checksum:Ljava/lang/String;

.field private msgContent:Lcom/nd/commplatform/entry/NdMsgContent;

.field private msgId:Ljava/lang/String;

.field private nickName:Ljava/lang/String;

.field private sendTime:Ljava/lang/String;

.field private type:I

.field private uin:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChecksum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/DynamicInfo;->checksum:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgContent()Lcom/nd/commplatform/entry/NdMsgContent;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/DynamicInfo;->msgContent:Lcom/nd/commplatform/entry/NdMsgContent;

    return-object v0
.end method

.method public getMsgId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/DynamicInfo;->msgId:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/DynamicInfo;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getSendTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/DynamicInfo;->sendTime:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/entry/DynamicInfo;->type:I

    return v0
.end method

.method public getUin()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/DynamicInfo;->uin:Ljava/lang/String;

    return-object v0
.end method

.method public setChecksum(Ljava/lang/String;)V
    .locals 0
    .param p1, "checksum"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/DynamicInfo;->checksum:Ljava/lang/String;

    return-void
.end method

.method public setMsgContent(Lcom/nd/commplatform/entry/NdMsgContent;)V
    .locals 0
    .param p1, "msgContent"    # Lcom/nd/commplatform/entry/NdMsgContent;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/DynamicInfo;->msgContent:Lcom/nd/commplatform/entry/NdMsgContent;

    return-void
.end method

.method public setMsgId(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/DynamicInfo;->msgId:Ljava/lang/String;

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0
    .param p1, "nickName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/DynamicInfo;->nickName:Ljava/lang/String;

    return-void
.end method

.method public setSendTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "sendTime"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/DynamicInfo;->sendTime:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    iput p1, p0, Lcom/nd/commplatform/entry/DynamicInfo;->type:I

    return-void
.end method

.method public setUin(Ljava/lang/String;)V
    .locals 0
    .param p1, "uin"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/DynamicInfo;->uin:Ljava/lang/String;

    return-void
.end method
