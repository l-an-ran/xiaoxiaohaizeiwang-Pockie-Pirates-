.class public Lcom/nd/commplatform/entry/NdBaseAppInfo;
.super Ljava/lang/Object;


# instance fields
.field private appId:I

.field private appName:Ljava/lang/String;

.field private iconCheckSum:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/nd/commplatform/entry/NdBaseAppInfo;->appId:I

    return-void
.end method


# virtual methods
.method public getAppId()I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/entry/NdBaseAppInfo;->appId:I

    return v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdBaseAppInfo;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckSum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdBaseAppInfo;->iconCheckSum:Ljava/lang/String;

    return-object v0
.end method

.method public setAppId(I)V
    .locals 0
    .param p1, "appId"    # I

    .prologue
    iput p1, p0, Lcom/nd/commplatform/entry/NdBaseAppInfo;->appId:I

    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdBaseAppInfo;->appName:Ljava/lang/String;

    return-void
.end method

.method public setCheckSum(Ljava/lang/String;)V
    .locals 0
    .param p1, "iconCheckSum"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdBaseAppInfo;->iconCheckSum:Ljava/lang/String;

    return-void
.end method
