.class public Lcom/nd/commplatform/entry/NdLoginConfig;
.super Ljava/lang/Object;


# instance fields
.field private mAutoLogin:Z

.field private mPassword:Ljava/lang/String;

.field private mSavePassword:Z

.field private mUserName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/nd/commplatform/entry/NdLoginConfig;->mSavePassword:Z

    iput-boolean v0, p0, Lcom/nd/commplatform/entry/NdLoginConfig;->mAutoLogin:Z

    return-void
.end method


# virtual methods
.method public getPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdLoginConfig;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdLoginConfig;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method public isAutoLogin()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nd/commplatform/entry/NdLoginConfig;->mAutoLogin:Z

    return v0
.end method

.method public isSavePassword()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nd/commplatform/entry/NdLoginConfig;->mSavePassword:Z

    return v0
.end method

.method public isValid()Z
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdLoginConfig;->mUserName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdLoginConfig;->mPassword:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdLoginConfig;->mUserName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdLoginConfig;->mPassword:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAutoLogin(Z)V
    .locals 0
    .param p1, "autoLogin"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/nd/commplatform/entry/NdLoginConfig;->mAutoLogin:Z

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdLoginConfig;->mPassword:Ljava/lang/String;

    return-void
.end method

.method public setSavePassword(Z)V
    .locals 0
    .param p1, "savePassword"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/nd/commplatform/entry/NdLoginConfig;->mSavePassword:Z

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .param p1, "userName"    # Ljava/lang/String;

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    :cond_0
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdLoginConfig;->mUserName:Ljava/lang/String;

    return-void
.end method
