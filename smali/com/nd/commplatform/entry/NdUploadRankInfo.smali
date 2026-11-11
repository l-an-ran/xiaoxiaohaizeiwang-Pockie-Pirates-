.class public Lcom/nd/commplatform/entry/NdUploadRankInfo;
.super Ljava/lang/Object;


# instance fields
.field private currentScore:I

.field private displayText:Ljava/lang/String;

.field private highScore:I

.field private leaderBoardId:Ljava/lang/String;

.field private lowScore:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentScore()I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/entry/NdUploadRankInfo;->currentScore:I

    return v0
.end method

.method public getDisplayText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdUploadRankInfo;->displayText:Ljava/lang/String;

    return-object v0
.end method

.method public getHighScore()I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/entry/NdUploadRankInfo;->highScore:I

    return v0
.end method

.method public getLeaderBoardId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdUploadRankInfo;->leaderBoardId:Ljava/lang/String;

    return-object v0
.end method

.method public getLowScore()I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/entry/NdUploadRankInfo;->lowScore:I

    return v0
.end method

.method public setCurrentScore(I)V
    .locals 0
    .param p1, "currentScore"    # I

    .prologue
    iput p1, p0, Lcom/nd/commplatform/entry/NdUploadRankInfo;->currentScore:I

    return-void
.end method

.method public setDisplayText(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayText"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdUploadRankInfo;->displayText:Ljava/lang/String;

    return-void
.end method

.method public setHighScore(I)V
    .locals 0
    .param p1, "highScore"    # I

    .prologue
    iput p1, p0, Lcom/nd/commplatform/entry/NdUploadRankInfo;->highScore:I

    return-void
.end method

.method public setLeaderBoardId(Ljava/lang/String;)V
    .locals 0
    .param p1, "leaderBoardId"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdUploadRankInfo;->leaderBoardId:Ljava/lang/String;

    return-void
.end method

.method public setLowScore(I)V
    .locals 0
    .param p1, "lowScore"    # I

    .prologue
    iput p1, p0, Lcom/nd/commplatform/entry/NdUploadRankInfo;->lowScore:I

    return-void
.end method
