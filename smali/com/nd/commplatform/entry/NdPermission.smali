.class public Lcom/nd/commplatform/entry/NdPermission;
.super Ljava/lang/Object;


# instance fields
.field private addFriendPermission:Lcom/nd/commplatform/entry/NdAddFriendPermission;

.field private mCanPassword:I

.field private mCanPayPassword:Lcom/nd/commplatform/entry/NDCanPayPassword;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/nd/commplatform/entry/NdPermission;->mCanPassword:I

    return-void
.end method


# virtual methods
.method public getAddFriendPermission()Lcom/nd/commplatform/entry/NdAddFriendPermission;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdPermission;->addFriendPermission:Lcom/nd/commplatform/entry/NdAddFriendPermission;

    return-object v0
.end method

.method public getCanPassword()I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/entry/NdPermission;->mCanPassword:I

    return v0
.end method

.method public getCanPayPassword()Lcom/nd/commplatform/entry/NDCanPayPassword;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdPermission;->mCanPayPassword:Lcom/nd/commplatform/entry/NDCanPayPassword;

    return-object v0
.end method

.method public setAddFriendPermission(Lcom/nd/commplatform/entry/NdAddFriendPermission;)V
    .locals 0
    .param p1, "addFriendPermission"    # Lcom/nd/commplatform/entry/NdAddFriendPermission;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdPermission;->addFriendPermission:Lcom/nd/commplatform/entry/NdAddFriendPermission;

    return-void
.end method

.method public setCanPassword(I)V
    .locals 0
    .param p1, "aPwd"    # I

    .prologue
    iput p1, p0, Lcom/nd/commplatform/entry/NdPermission;->mCanPassword:I

    return-void
.end method

.method public setCanPayPassword(Lcom/nd/commplatform/entry/NDCanPayPassword;)V
    .locals 0
    .param p1, "aPwd"    # Lcom/nd/commplatform/entry/NDCanPayPassword;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdPermission;->mCanPayPassword:Lcom/nd/commplatform/entry/NDCanPayPassword;

    return-void
.end method
