.class public Lcom/nd/commplatform/entry/NdProductAuthInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/nd/commplatform/entry/NdProductAuthInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private endTime:Ljava/lang/String;

.field private mUsableOnCurrentDevice:Z

.field private remainCnt:I

.field private startTime:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nd/commplatform/d/c/cx;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/cx;-><init>()V

    sput-object v0, Lcom/nd/commplatform/entry/NdProductAuthInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nd/commplatform/entry/NdProductAuthInfo;->mUsableOnCurrentDevice:Z

    return-void
.end method

.method public static synthetic access$0(Lcom/nd/commplatform/entry/NdProductAuthInfo;I)V
    .locals 0

    iput p1, p0, Lcom/nd/commplatform/entry/NdProductAuthInfo;->remainCnt:I

    return-void
.end method

.method public static synthetic access$1(Lcom/nd/commplatform/entry/NdProductAuthInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdProductAuthInfo;->startTime:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$2(Lcom/nd/commplatform/entry/NdProductAuthInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdProductAuthInfo;->endTime:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$3(Lcom/nd/commplatform/entry/NdProductAuthInfo;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nd/commplatform/entry/NdProductAuthInfo;->mUsableOnCurrentDevice:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEndTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdProductAuthInfo;->endTime:Ljava/lang/String;

    return-object v0
.end method

.method public getRemainCnt()I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/entry/NdProductAuthInfo;->remainCnt:I

    return v0
.end method

.method public getStartTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdProductAuthInfo;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public isUsableOnCurrentDevice()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nd/commplatform/entry/NdProductAuthInfo;->mUsableOnCurrentDevice:Z

    return v0
.end method

.method public setEndTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "endTime"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdProductAuthInfo;->endTime:Ljava/lang/String;

    return-void
.end method

.method public setRemainCnt(I)V
    .locals 0
    .param p1, "remainCnt"    # I

    .prologue
    iput p1, p0, Lcom/nd/commplatform/entry/NdProductAuthInfo;->remainCnt:I

    return-void
.end method

.method public setStartTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "startTime"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdProductAuthInfo;->startTime:Ljava/lang/String;

    return-void
.end method

.method public setUsableOnCurrentDevice(Z)V
    .locals 0
    .param p1, "usableOnCurrentDevice"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/nd/commplatform/entry/NdProductAuthInfo;->mUsableOnCurrentDevice:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget v0, p0, Lcom/nd/commplatform/entry/NdProductAuthInfo;->remainCnt:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdProductAuthInfo;->startTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdProductAuthInfo;->endTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/nd/commplatform/entry/NdProductAuthInfo;->mUsableOnCurrentDevice:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
