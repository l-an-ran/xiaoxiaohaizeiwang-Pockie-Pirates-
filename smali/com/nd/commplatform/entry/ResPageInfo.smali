.class public Lcom/nd/commplatform/entry/ResPageInfo;
.super Ljava/lang/Object;


# instance fields
.field private appInfo:Ljava/lang/String;

.field private appUrl:Ljava/lang/String;

.field private dateTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/ResPageInfo;->appInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getAppUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/ResPageInfo;->appUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDateTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/ResPageInfo;->dateTime:Ljava/lang/String;

    return-object v0
.end method

.method public setAppInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "appInfo"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/ResPageInfo;->appInfo:Ljava/lang/String;

    return-void
.end method

.method public setAppUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "appUrl"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/ResPageInfo;->appUrl:Ljava/lang/String;

    return-void
.end method

.method public setDateTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "dateTime"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/ResPageInfo;->dateTime:Ljava/lang/String;

    return-void
.end method
