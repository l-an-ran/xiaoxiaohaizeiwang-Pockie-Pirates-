.class public Lcom/nd/commplatform/entry/NdProductOwnershipInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/nd/commplatform/entry/NdProductOwnershipInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final Error_None:I = 0x0

.field public static final Error_Other:I = 0x3

.field public static final Error_Product_Not_Exist:I = 0x1

.field public static final Error_Product_Not_Own_Or_Expired:I = 0x2


# instance fields
.field private mAuthInfo:Lcom/nd/commplatform/entry/NdProductAuthInfo;

.field private mCanUse:Z

.field private mErrorCode:I

.field private mErrorDesc:Ljava/lang/String;

.field private mFeeType:I

.field private mProductId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nd/commplatform/d/c/cz;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/cz;-><init>()V

    sput-object v0, Lcom/nd/commplatform/entry/NdProductOwnershipInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/nd/commplatform/entry/NdProductOwnershipInfo;->mCanUse:Z

    iput v0, p0, Lcom/nd/commplatform/entry/NdProductOwnershipInfo;->mFeeType:I

    iput v0, p0, Lcom/nd/commplatform/entry/NdProductOwnershipInfo;->mErrorCode:I

    const-string v0, ""

    iput-object v0, p0, Lcom/nd/commplatform/entry/NdProductOwnershipInfo;->mErrorDesc:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$0(Lcom/nd/commplatform/entry/NdProductOwnershipInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdProductOwnershipInfo;->mProductId:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$1(Lcom/nd/commplatform/entry/NdProductOwnershipInfo;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nd/commplatform/entry/NdProductOwnershipInfo;->mCanUse:Z

    return-void
.end method

.method public static synthetic access$2(Lcom/nd/commplatform/entry/NdProductOwnershipInfo;I)V
    .locals 0

    iput p1, p0, Lcom/nd/commplatform/entry/NdProductOwnershipInfo;->mFeeType:I

    return-void
.end method

.method public static synthetic access$3(Lcom/nd/commplatform/entry/NdProductOwnershipInfo;I)V
    .locals 0

    iput p1, p0, Lcom/nd/commplatform/entry/NdProductOwnershipInfo;->mErrorCode:I

    return-void
.end method

.method public static synthetic access$4(Lcom/nd/commplatform/entry/NdProductOwnershipInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdProductOwnershipInfo;->mErrorDesc:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$5(Lcom/nd/commplatform/entry/NdProductOwnershipInfo;Lcom/nd/commplatform/entry/NdProductAuthInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdProductOwnershipInfo;->mAuthInfo:Lcom/nd/commplatform/entry/NdProductAuthInfo;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAuthInfo()Lcom/nd/commplatform/entry/NdProductAuthInfo;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdProductOwnershipInfo;->mAuthInfo:Lcom/nd/commplatform/entry/NdProductAuthInfo;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/entry/NdProductOwnershipInfo;->mErrorCode:I

    return v0
.end method

.method public getErrorDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdProductOwnershipInfo;->mErrorDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getFeeType()I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/entry/NdProductOwnershipInfo;->mFeeType:I

    return v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdProductOwnershipInfo;->mProductId:Ljava/lang/String;

    return-object v0
.end method

.method public hasOwnership()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nd/commplatform/entry/NdProductOwnershipInfo;->mCanUse:Z

    return v0
.end method

.method public setAuthInfo(Lcom/nd/commplatform/entry/NdProductAuthInfo;)V
    .locals 0
    .param p1, "authInfo"    # Lcom/nd/commplatform/entry/NdProductAuthInfo;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdProductOwnershipInfo;->mAuthInfo:Lcom/nd/commplatform/entry/NdProductAuthInfo;

    return-void
.end method

.method public setErrorCode(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x3

    :pswitch_0
    iput p1, p0, Lcom/nd/commplatform/entry/NdProductOwnershipInfo;->mErrorCode:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setErrorDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorDesc"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdProductOwnershipInfo;->mErrorDesc:Ljava/lang/String;

    return-void
.end method

.method public setFeeType(I)V
    .locals 0
    .param p1, "feeType"    # I

    .prologue
    iput p1, p0, Lcom/nd/commplatform/entry/NdProductOwnershipInfo;->mFeeType:I

    return-void
.end method

.method public setOwnership(Z)V
    .locals 0
    .param p1, "isOwn"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/nd/commplatform/entry/NdProductOwnershipInfo;->mCanUse:Z

    return-void
.end method

.method public setProductId(Ljava/lang/String;)V
    .locals 0
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdProductOwnershipInfo;->mProductId:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdProductOwnershipInfo;->mProductId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/nd/commplatform/entry/NdProductOwnershipInfo;->mCanUse:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/nd/commplatform/entry/NdProductOwnershipInfo;->mFeeType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/nd/commplatform/entry/NdProductOwnershipInfo;->mErrorCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdProductOwnershipInfo;->mErrorDesc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdProductOwnershipInfo;->mAuthInfo:Lcom/nd/commplatform/entry/NdProductAuthInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method
