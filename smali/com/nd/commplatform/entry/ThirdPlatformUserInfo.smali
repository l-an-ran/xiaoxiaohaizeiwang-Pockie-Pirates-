.class public Lcom/nd/commplatform/entry/ThirdPlatformUserInfo;
.super Ljava/lang/Object;


# instance fields
.field private iconUrl:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private isInvite:Z

.field private nickName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIconUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/ThirdPlatformUserInfo;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/ThirdPlatformUserInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/ThirdPlatformUserInfo;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public isInvite()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nd/commplatform/entry/ThirdPlatformUserInfo;->isInvite:Z

    return v0
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "iconUrl"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/ThirdPlatformUserInfo;->iconUrl:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/ThirdPlatformUserInfo;->id:Ljava/lang/String;

    return-void
.end method

.method public setInvite(Z)V
    .locals 0
    .param p1, "isInvite"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/nd/commplatform/entry/ThirdPlatformUserInfo;->isInvite:Z

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0
    .param p1, "nickName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/ThirdPlatformUserInfo;->nickName:Ljava/lang/String;

    return-void
.end method
