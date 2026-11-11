.class public Lcom/nd/commplatform/entry/NdAppInfo;
.super Ljava/lang/Object;


# instance fields
.field public appId:I

.field public appKey:Ljava/lang/String;

.field public ctx:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppId()I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/entry/NdAppInfo;->appId:I

    return v0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdAppInfo;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public getCtx()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdAppInfo;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method public setAppId(I)V
    .locals 0
    .param p1, "appId"    # I

    .prologue
    iput p1, p0, Lcom/nd/commplatform/entry/NdAppInfo;->appId:I

    return-void
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdAppInfo;->appKey:Ljava/lang/String;

    return-void
.end method

.method public setCtx(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdAppInfo;->ctx:Landroid/content/Context;

    return-void
.end method
