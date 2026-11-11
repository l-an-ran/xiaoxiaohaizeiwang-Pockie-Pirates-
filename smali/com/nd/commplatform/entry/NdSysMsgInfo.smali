.class public Lcom/nd/commplatform/entry/NdSysMsgInfo;
.super Ljava/lang/Object;


# static fields
.field public static final SYS_APP_ID:Ljava/lang/String; = "110000"


# instance fields
.field private appInfo:Lcom/nd/commplatform/entry/NdBaseAppInfo;

.field private msgContent:Lcom/nd/commplatform/entry/NdMsgContent;

.field private msgId:Ljava/lang/String;

.field private sendTime:Ljava/lang/String;

.field private status:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppInfo()Lcom/nd/commplatform/entry/NdBaseAppInfo;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdSysMsgInfo;->appInfo:Lcom/nd/commplatform/entry/NdBaseAppInfo;

    return-object v0
.end method

.method public getMsgContent()Lcom/nd/commplatform/entry/NdMsgContent;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdSysMsgInfo;->msgContent:Lcom/nd/commplatform/entry/NdMsgContent;

    return-object v0
.end method

.method public getMsgId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdSysMsgInfo;->msgId:Ljava/lang/String;

    return-object v0
.end method

.method public getSendTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdSysMsgInfo;->sendTime:Ljava/lang/String;

    return-object v0
.end method

.method public isStatus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nd/commplatform/entry/NdSysMsgInfo;->status:Z

    return v0
.end method

.method public setAppInfo(Lcom/nd/commplatform/entry/NdBaseAppInfo;)V
    .locals 0
    .param p1, "appInfo"    # Lcom/nd/commplatform/entry/NdBaseAppInfo;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdSysMsgInfo;->appInfo:Lcom/nd/commplatform/entry/NdBaseAppInfo;

    return-void
.end method

.method public setMsgContent(Lcom/nd/commplatform/entry/NdMsgContent;)V
    .locals 0
    .param p1, "msgContent"    # Lcom/nd/commplatform/entry/NdMsgContent;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdSysMsgInfo;->msgContent:Lcom/nd/commplatform/entry/NdMsgContent;

    return-void
.end method

.method public setMsgId(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdSysMsgInfo;->msgId:Ljava/lang/String;

    return-void
.end method

.method public setSendTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "sendTime"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdSysMsgInfo;->sendTime:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Z)V
    .locals 0
    .param p1, "status"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/nd/commplatform/entry/NdSysMsgInfo;->status:Z

    return-void
.end method
