.class public Lcom/nd/commplatform/entry/NdMyUserInfoDetail;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/nd/commplatform/entry/NdMyUserInfoDetail;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private userInfo:Lcom/nd/commplatform/entry/NdUserInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nd/commplatform/d/c/ct;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/ct;-><init>()V

    sput-object v0, Lcom/nd/commplatform/entry/NdMyUserInfoDetail;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$0(Lcom/nd/commplatform/entry/NdMyUserInfoDetail;Lcom/nd/commplatform/entry/NdUserInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdMyUserInfoDetail;->userInfo:Lcom/nd/commplatform/entry/NdUserInfo;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getUserInfo()Lcom/nd/commplatform/entry/NdUserInfo;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdMyUserInfoDetail;->userInfo:Lcom/nd/commplatform/entry/NdUserInfo;

    return-object v0
.end method

.method public setUserInfo(Lcom/nd/commplatform/entry/NdUserInfo;)V
    .locals 0
    .param p1, "userInfo"    # Lcom/nd/commplatform/entry/NdUserInfo;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdMyUserInfoDetail;->userInfo:Lcom/nd/commplatform/entry/NdUserInfo;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/entry/NdMyUserInfoDetail;->userInfo:Lcom/nd/commplatform/entry/NdUserInfo;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
