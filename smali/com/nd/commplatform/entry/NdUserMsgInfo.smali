.class public Lcom/nd/commplatform/entry/NdUserMsgInfo;
.super Ljava/lang/Object;


# instance fields
.field private msgContent:Lcom/nd/commplatform/entry/NdMsgContent;

.field private msgId:Ljava/lang/String;

.field private newCount:I

.field private sendTime:Ljava/lang/String;

.field private status:Z

.field private userInfo:Lcom/nd/commplatform/entry/NdBaseUserInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/nd/commplatform/entry/NdUserMsgInfo;->status:Z

    iput v0, p0, Lcom/nd/commplatform/entry/NdUserMsgInfo;->newCount:I

    return-void
.end method


# virtual methods
.method public getMsgContent()Lcom/nd/commplatform/entry/NdMsgContent;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdUserMsgInfo;->msgContent:Lcom/nd/commplatform/entry/NdMsgContent;

    return-object v0
.end method

.method public getMsgId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdUserMsgInfo;->msgId:Ljava/lang/String;

    return-object v0
.end method

.method public getNewCount()I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/entry/NdUserMsgInfo;->newCount:I

    return v0
.end method

.method public getSendTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdUserMsgInfo;->sendTime:Ljava/lang/String;

    return-object v0
.end method

.method public getUserInfo()Lcom/nd/commplatform/entry/NdBaseUserInfo;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdUserMsgInfo;->userInfo:Lcom/nd/commplatform/entry/NdBaseUserInfo;

    return-object v0
.end method

.method public isStatus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nd/commplatform/entry/NdUserMsgInfo;->status:Z

    return v0
.end method

.method public setMsgContent(Lcom/nd/commplatform/entry/NdMsgContent;)V
    .locals 0
    .param p1, "msgContent"    # Lcom/nd/commplatform/entry/NdMsgContent;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdUserMsgInfo;->msgContent:Lcom/nd/commplatform/entry/NdMsgContent;

    return-void
.end method

.method public setMsgId(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdUserMsgInfo;->msgId:Ljava/lang/String;

    return-void
.end method

.method public setNewCount(I)V
    .locals 0
    .param p1, "newCount"    # I

    .prologue
    iput p1, p0, Lcom/nd/commplatform/entry/NdUserMsgInfo;->newCount:I

    return-void
.end method

.method public setSendTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "sendTime"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdUserMsgInfo;->sendTime:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Z)V
    .locals 0
    .param p1, "status"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/nd/commplatform/entry/NdUserMsgInfo;->status:Z

    return-void
.end method

.method public setUserInfo(Lcom/nd/commplatform/entry/NdBaseUserInfo;)V
    .locals 0
    .param p1, "userInfo"    # Lcom/nd/commplatform/entry/NdBaseUserInfo;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdUserMsgInfo;->userInfo:Lcom/nd/commplatform/entry/NdBaseUserInfo;

    return-void
.end method
