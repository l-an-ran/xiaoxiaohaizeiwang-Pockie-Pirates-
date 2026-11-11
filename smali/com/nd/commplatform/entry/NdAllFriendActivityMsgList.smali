.class public Lcom/nd/commplatform/entry/NdAllFriendActivityMsgList;
.super Ljava/lang/Object;


# instance fields
.field private newMsgCount:I

.field private newSysMsgCount:I

.field private pageList:Lcom/nd/commplatform/entry/NdPageList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nd/commplatform/entry/NdPageList",
            "<",
            "Lcom/nd/commplatform/entry/NdActivityMsgInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/nd/commplatform/entry/NdAllFriendActivityMsgList;->newMsgCount:I

    iput v0, p0, Lcom/nd/commplatform/entry/NdAllFriendActivityMsgList;->newSysMsgCount:I

    return-void
.end method


# virtual methods
.method public getNewMsgCount()I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/entry/NdAllFriendActivityMsgList;->newMsgCount:I

    return v0
.end method

.method public getNewSysMsgCount()I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/entry/NdAllFriendActivityMsgList;->newSysMsgCount:I

    return v0
.end method

.method public getPageList()Lcom/nd/commplatform/entry/NdPageList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<",
            "Lcom/nd/commplatform/entry/NdActivityMsgInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdAllFriendActivityMsgList;->pageList:Lcom/nd/commplatform/entry/NdPageList;

    return-object v0
.end method

.method public setNewMsgCount(I)V
    .locals 0
    .param p1, "newMsgCount"    # I

    .prologue
    iput p1, p0, Lcom/nd/commplatform/entry/NdAllFriendActivityMsgList;->newMsgCount:I

    return-void
.end method

.method public setNewSysMsgCount(I)V
    .locals 0
    .param p1, "newSysMsgCount"    # I

    .prologue
    iput p1, p0, Lcom/nd/commplatform/entry/NdAllFriendActivityMsgList;->newSysMsgCount:I

    return-void
.end method

.method public setPageList(Lcom/nd/commplatform/entry/NdPageList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<",
            "Lcom/nd/commplatform/entry/NdActivityMsgInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "pageList":Lcom/nd/commplatform/entry/NdPageList;, "Lcom/nd/commplatform/entry/NdPageList<Lcom/nd/commplatform/entry/NdActivityMsgInfo;>;"
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdAllFriendActivityMsgList;->pageList:Lcom/nd/commplatform/entry/NdPageList;

    return-void
.end method
