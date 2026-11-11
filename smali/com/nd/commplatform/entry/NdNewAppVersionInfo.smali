.class public Lcom/nd/commplatform/entry/NdNewAppVersionInfo;
.super Ljava/lang/Object;


# static fields
.field public static final FORCE_UPDATE:I = 0x1

.field public static final UN_FORCE_UPDATE:I = 0x2

.field public static final VERSION_SAME:I


# instance fields
.field private appName:Ljava/lang/String;

.field private newVersion:Ljava/lang/String;

.field private newVersionUrl:Ljava/lang/String;

.field private notify:Ljava/lang/String;

.field private softSize:I

.field private updateLog:Ljava/lang/String;

.field private updateType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/nd/commplatform/entry/NdNewAppVersionInfo;->softSize:I

    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdNewAppVersionInfo;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getNewVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdNewAppVersionInfo;->newVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getNewVersionUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdNewAppVersionInfo;->newVersionUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getNotify()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdNewAppVersionInfo;->notify:Ljava/lang/String;

    return-object v0
.end method

.method public getSoftSize()I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/entry/NdNewAppVersionInfo;->softSize:I

    return v0
.end method

.method public getUpdateLog()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdNewAppVersionInfo;->updateLog:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateType()I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/entry/NdNewAppVersionInfo;->updateType:I

    return v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdNewAppVersionInfo;->appName:Ljava/lang/String;

    return-void
.end method

.method public setNewVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "newVersion"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdNewAppVersionInfo;->newVersion:Ljava/lang/String;

    return-void
.end method

.method public setNewVersionUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "newVersionUrl"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdNewAppVersionInfo;->newVersionUrl:Ljava/lang/String;

    return-void
.end method

.method public setNotify(Ljava/lang/String;)V
    .locals 0
    .param p1, "notify"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdNewAppVersionInfo;->notify:Ljava/lang/String;

    return-void
.end method

.method public setSoftSize(I)V
    .locals 0
    .param p1, "aSize"    # I

    .prologue
    iput p1, p0, Lcom/nd/commplatform/entry/NdNewAppVersionInfo;->softSize:I

    return-void
.end method

.method public setUpdateLog(Ljava/lang/String;)V
    .locals 0
    .param p1, "updateLog"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdNewAppVersionInfo;->updateLog:Ljava/lang/String;

    return-void
.end method

.method public setUpdateType(I)V
    .locals 0
    .param p1, "updateType"    # I

    .prologue
    iput p1, p0, Lcom/nd/commplatform/entry/NdNewAppVersionInfo;->updateType:I

    return-void
.end method
