.class public Lcom/nd/commplatform/entry/NdBaseUserInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/nd/commplatform/entry/NdBaseUserInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private checkSum:Ljava/lang/String;

.field private nickName:Ljava/lang/String;

.field private uin:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nd/commplatform/d/c/ci;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/ci;-><init>()V

    sput-object v0, Lcom/nd/commplatform/entry/NdBaseUserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$0(Lcom/nd/commplatform/entry/NdBaseUserInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdBaseUserInfo;->uin:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$1(Lcom/nd/commplatform/entry/NdBaseUserInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdBaseUserInfo;->nickName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$2(Lcom/nd/commplatform/entry/NdBaseUserInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdBaseUserInfo;->checkSum:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCheckSum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdBaseUserInfo;->checkSum:Ljava/lang/String;

    return-object v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdBaseUserInfo;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getUin()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdBaseUserInfo;->uin:Ljava/lang/String;

    return-object v0
.end method

.method public isMyFriend()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/a;->i()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/nd/commplatform/entry/NdBaseUserInfo;->uin:Ljava/lang/String;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/bs;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setCheckSum(Ljava/lang/String;)V
    .locals 0
    .param p1, "checkSum"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdBaseUserInfo;->checkSum:Ljava/lang/String;

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0
    .param p1, "nickName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdBaseUserInfo;->nickName:Ljava/lang/String;

    return-void
.end method

.method public setUin(Ljava/lang/String;)V
    .locals 0
    .param p1, "uin"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdBaseUserInfo;->uin:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/entry/NdBaseUserInfo;->uin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdBaseUserInfo;->nickName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdBaseUserInfo;->checkSum:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
