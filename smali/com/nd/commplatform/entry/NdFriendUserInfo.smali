.class public Lcom/nd/commplatform/entry/NdFriendUserInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/nd/commplatform/entry/NdFriendUserInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public baseUserInfo:Lcom/nd/commplatform/entry/NdBaseUserInfo;

.field public emotion:Ljava/lang/String;

.field public onlineStatus:I

.field public point:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nd/commplatform/d/c/cp;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/cp;-><init>()V

    sput-object v0, Lcom/nd/commplatform/entry/NdFriendUserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBaseUserInfo()Lcom/nd/commplatform/entry/NdBaseUserInfo;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdFriendUserInfo;->baseUserInfo:Lcom/nd/commplatform/entry/NdBaseUserInfo;

    return-object v0
.end method

.method public getEmotion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdFriendUserInfo;->emotion:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlineStatus()I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/entry/NdFriendUserInfo;->onlineStatus:I

    return v0
.end method

.method public getPoint()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdFriendUserInfo;->point:Ljava/lang/String;

    return-object v0
.end method

.method public setBaseUserInfo(Lcom/nd/commplatform/entry/NdBaseUserInfo;)V
    .locals 0
    .param p1, "baseUserInfo"    # Lcom/nd/commplatform/entry/NdBaseUserInfo;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdFriendUserInfo;->baseUserInfo:Lcom/nd/commplatform/entry/NdBaseUserInfo;

    return-void
.end method

.method public setEmotion(Ljava/lang/String;)V
    .locals 0
    .param p1, "emotion"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdFriendUserInfo;->emotion:Ljava/lang/String;

    return-void
.end method

.method public setOnlineStatus(I)V
    .locals 0
    .param p1, "onlineStatus"    # I

    .prologue
    iput p1, p0, Lcom/nd/commplatform/entry/NdFriendUserInfo;->onlineStatus:I

    return-void
.end method

.method public setPoint(Ljava/lang/String;)V
    .locals 0
    .param p1, "point"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdFriendUserInfo;->point:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/entry/NdFriendUserInfo;->baseUserInfo:Lcom/nd/commplatform/entry/NdBaseUserInfo;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdFriendUserInfo;->point:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdFriendUserInfo;->emotion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/nd/commplatform/entry/NdFriendUserInfo;->onlineStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
