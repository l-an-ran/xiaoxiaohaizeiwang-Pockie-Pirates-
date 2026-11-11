.class public Lcom/nd/commplatform/entry/NdActivityMsgInfo;
.super Ljava/lang/Object;


# instance fields
.field private type:I

.field private userMsg:Lcom/nd/commplatform/entry/NdUserMsgInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/entry/NdActivityMsgInfo;->type:I

    return v0
.end method

.method public getUserMsg()Lcom/nd/commplatform/entry/NdUserMsgInfo;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdActivityMsgInfo;->userMsg:Lcom/nd/commplatform/entry/NdUserMsgInfo;

    return-object v0
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    iput p1, p0, Lcom/nd/commplatform/entry/NdActivityMsgInfo;->type:I

    return-void
.end method

.method public setUserMsg(Lcom/nd/commplatform/entry/NdUserMsgInfo;)V
    .locals 0
    .param p1, "userMsg"    # Lcom/nd/commplatform/entry/NdUserMsgInfo;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdActivityMsgInfo;->userMsg:Lcom/nd/commplatform/entry/NdUserMsgInfo;

    return-void
.end method
