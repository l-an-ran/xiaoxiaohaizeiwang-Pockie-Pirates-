.class public Lcom/nd/commplatform/entry/NdFeeInfoSubscribe;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/nd/commplatform/entry/NdFeeInfoSubscribe;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private authCntPerGoods:I

.field private timeLong:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nd/commplatform/d/c/co;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/co;-><init>()V

    sput-object v0, Lcom/nd/commplatform/entry/NdFeeInfoSubscribe;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$0(Lcom/nd/commplatform/entry/NdFeeInfoSubscribe;I)V
    .locals 0

    iput p1, p0, Lcom/nd/commplatform/entry/NdFeeInfoSubscribe;->authCntPerGoods:I

    return-void
.end method

.method public static synthetic access$1(Lcom/nd/commplatform/entry/NdFeeInfoSubscribe;I)V
    .locals 0

    iput p1, p0, Lcom/nd/commplatform/entry/NdFeeInfoSubscribe;->timeLong:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAuthCntPerGoods()I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/entry/NdFeeInfoSubscribe;->authCntPerGoods:I

    return v0
.end method

.method public getTimeLong()I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/entry/NdFeeInfoSubscribe;->timeLong:I

    return v0
.end method

.method public setAuthCntPerGoods(I)V
    .locals 0
    .param p1, "authCntPerGoods"    # I

    .prologue
    iput p1, p0, Lcom/nd/commplatform/entry/NdFeeInfoSubscribe;->authCntPerGoods:I

    return-void
.end method

.method public setTimeLong(I)V
    .locals 0
    .param p1, "timeLong"    # I

    .prologue
    iput p1, p0, Lcom/nd/commplatform/entry/NdFeeInfoSubscribe;->timeLong:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget v0, p0, Lcom/nd/commplatform/entry/NdFeeInfoSubscribe;->authCntPerGoods:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/nd/commplatform/entry/NdFeeInfoSubscribe;->timeLong:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
