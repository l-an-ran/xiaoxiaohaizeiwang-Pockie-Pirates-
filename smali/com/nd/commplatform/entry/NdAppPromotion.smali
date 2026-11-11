.class public Lcom/nd/commplatform/entry/NdAppPromotion;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/nd/commplatform/entry/NdAppPromotion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppId:I

.field private mAppName:Ljava/lang/String;

.field private mAward:Ljava/lang/String;

.field private mAwardCount:I

.field private mChecksum:Ljava/lang/String;

.field private mDesc:Ljava/lang/String;

.field private mExt:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nd/commplatform/d/c/cf;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/cf;-><init>()V

    sput-object v0, Lcom/nd/commplatform/entry/NdAppPromotion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$0(Lcom/nd/commplatform/entry/NdAppPromotion;I)V
    .locals 0

    iput p1, p0, Lcom/nd/commplatform/entry/NdAppPromotion;->mAppId:I

    return-void
.end method

.method public static synthetic access$1(Lcom/nd/commplatform/entry/NdAppPromotion;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdAppPromotion;->mAppName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$2(Lcom/nd/commplatform/entry/NdAppPromotion;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdAppPromotion;->mChecksum:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$3(Lcom/nd/commplatform/entry/NdAppPromotion;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdAppPromotion;->mAward:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$4(Lcom/nd/commplatform/entry/NdAppPromotion;I)V
    .locals 0

    iput p1, p0, Lcom/nd/commplatform/entry/NdAppPromotion;->mAwardCount:I

    return-void
.end method

.method public static synthetic access$5(Lcom/nd/commplatform/entry/NdAppPromotion;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdAppPromotion;->mDesc:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$6(Lcom/nd/commplatform/entry/NdAppPromotion;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdAppPromotion;->mExt:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAppId()I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/entry/NdAppPromotion;->mAppId:I

    return v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdAppPromotion;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getAwardCount()I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/entry/NdAppPromotion;->mAwardCount:I

    return v0
.end method

.method public getAwardName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdAppPromotion;->mAward:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdAppPromotion;->mDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getExt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdAppPromotion;->mExt:Ljava/lang/String;

    return-object v0
.end method

.method public getIconChecksum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdAppPromotion;->mChecksum:Ljava/lang/String;

    return-object v0
.end method

.method public setAppId(I)V
    .locals 0
    .param p1, "appId"    # I

    .prologue
    iput p1, p0, Lcom/nd/commplatform/entry/NdAppPromotion;->mAppId:I

    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdAppPromotion;->mAppName:Ljava/lang/String;

    return-void
.end method

.method public setAwardCount(I)V
    .locals 0
    .param p1, "awardCount"    # I

    .prologue
    iput p1, p0, Lcom/nd/commplatform/entry/NdAppPromotion;->mAwardCount:I

    return-void
.end method

.method public setAwardName(Ljava/lang/String;)V
    .locals 0
    .param p1, "award"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdAppPromotion;->mAward:Ljava/lang/String;

    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdAppPromotion;->mDesc:Ljava/lang/String;

    return-void
.end method

.method public setExt(Ljava/lang/String;)V
    .locals 0
    .param p1, "mExt"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdAppPromotion;->mExt:Ljava/lang/String;

    return-void
.end method

.method public setIconChecksum(Ljava/lang/String;)V
    .locals 0
    .param p1, "checksum"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdAppPromotion;->mChecksum:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget v0, p0, Lcom/nd/commplatform/entry/NdAppPromotion;->mAppId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdAppPromotion;->mAppName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdAppPromotion;->mChecksum:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdAppPromotion;->mAward:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget v0, p0, Lcom/nd/commplatform/entry/NdAppPromotion;->mAwardCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdAppPromotion;->mDesc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdAppPromotion;->mExt:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    return-void
.end method
