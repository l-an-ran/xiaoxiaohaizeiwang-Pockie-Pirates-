.class public Lcom/nd/commplatform/entry/NdNewAppCount;
.super Ljava/lang/Object;


# instance fields
.field private mCount:I

.field private mUpToTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/nd/commplatform/entry/NdNewAppCount;->mCount:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/entry/NdNewAppCount;->mCount:I

    return v0
.end method

.method public getUpToTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdNewAppCount;->mUpToTime:Ljava/lang/String;

    return-object v0
.end method

.method public setCount(I)V
    .locals 0
    .param p1, "mCount"    # I

    .prologue
    iput p1, p0, Lcom/nd/commplatform/entry/NdNewAppCount;->mCount:I

    return-void
.end method

.method public setUpToTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "mUpToTime"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdNewAppCount;->mUpToTime:Ljava/lang/String;

    return-void
.end method
