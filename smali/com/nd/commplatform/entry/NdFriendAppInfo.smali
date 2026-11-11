.class public Lcom/nd/commplatform/entry/NdFriendAppInfo;
.super Ljava/lang/Object;


# instance fields
.field private appInfo:Lcom/nd/commplatform/entry/NdBaseAppInfo;

.field private desc:Ljava/lang/String;

.field private grade:I

.field private opinion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/nd/commplatform/entry/NdFriendAppInfo;->grade:I

    return-void
.end method


# virtual methods
.method public getAppInfo()Lcom/nd/commplatform/entry/NdBaseAppInfo;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdFriendAppInfo;->appInfo:Lcom/nd/commplatform/entry/NdBaseAppInfo;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdFriendAppInfo;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getGrade()I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/entry/NdFriendAppInfo;->grade:I

    return v0
.end method

.method public getOpinion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdFriendAppInfo;->opinion:Ljava/lang/String;

    return-object v0
.end method

.method public setAppInfo(Lcom/nd/commplatform/entry/NdBaseAppInfo;)V
    .locals 0
    .param p1, "appInfo"    # Lcom/nd/commplatform/entry/NdBaseAppInfo;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdFriendAppInfo;->appInfo:Lcom/nd/commplatform/entry/NdBaseAppInfo;

    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdFriendAppInfo;->desc:Ljava/lang/String;

    return-void
.end method

.method public setGrade(I)V
    .locals 0
    .param p1, "grade"    # I

    .prologue
    iput p1, p0, Lcom/nd/commplatform/entry/NdFriendAppInfo;->grade:I

    return-void
.end method

.method public setOpinion(Ljava/lang/String;)V
    .locals 0
    .param p1, "opinion"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdFriendAppInfo;->opinion:Ljava/lang/String;

    return-void
.end method
