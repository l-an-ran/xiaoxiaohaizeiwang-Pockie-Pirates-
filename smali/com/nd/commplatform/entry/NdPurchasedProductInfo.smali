.class public Lcom/nd/commplatform/entry/NdPurchasedProductInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/nd/commplatform/entry/NdPurchasedProductInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private feeType:I

.field private productAuthInfo:Lcom/nd/commplatform/entry/NdProductAuthInfo;

.field private productId:Ljava/lang/String;

.field private productName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nd/commplatform/d/c/db;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/db;-><init>()V

    sput-object v0, Lcom/nd/commplatform/entry/NdPurchasedProductInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/nd/commplatform/entry/NdPurchasedProductInfo;->feeType:I

    return-void
.end method

.method public static synthetic access$0(Lcom/nd/commplatform/entry/NdPurchasedProductInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdPurchasedProductInfo;->productId:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$1(Lcom/nd/commplatform/entry/NdPurchasedProductInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdPurchasedProductInfo;->productName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$2(Lcom/nd/commplatform/entry/NdPurchasedProductInfo;I)V
    .locals 0

    iput p1, p0, Lcom/nd/commplatform/entry/NdPurchasedProductInfo;->feeType:I

    return-void
.end method

.method public static synthetic access$3(Lcom/nd/commplatform/entry/NdPurchasedProductInfo;Lcom/nd/commplatform/entry/NdProductAuthInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdPurchasedProductInfo;->productAuthInfo:Lcom/nd/commplatform/entry/NdProductAuthInfo;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFeeType()I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/entry/NdPurchasedProductInfo;->feeType:I

    return v0
.end method

.method public getProductAuthInfo()Lcom/nd/commplatform/entry/NdProductAuthInfo;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdPurchasedProductInfo;->productAuthInfo:Lcom/nd/commplatform/entry/NdProductAuthInfo;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdPurchasedProductInfo;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdPurchasedProductInfo;->productName:Ljava/lang/String;

    return-object v0
.end method

.method public setFeeType(I)V
    .locals 2
    .param p1, "feeType"    # I

    .prologue
    const/4 v0, 0x0

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    :cond_2
    iput v0, p0, Lcom/nd/commplatform/entry/NdPurchasedProductInfo;->feeType:I

    return-void
.end method

.method public setProductAuthInfo(Lcom/nd/commplatform/entry/NdProductAuthInfo;)V
    .locals 0
    .param p1, "productAuthInfo"    # Lcom/nd/commplatform/entry/NdProductAuthInfo;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdPurchasedProductInfo;->productAuthInfo:Lcom/nd/commplatform/entry/NdProductAuthInfo;

    return-void
.end method

.method public setProductId(Ljava/lang/String;)V
    .locals 0
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdPurchasedProductInfo;->productId:Ljava/lang/String;

    return-void
.end method

.method public setProductName(Ljava/lang/String;)V
    .locals 0
    .param p1, "productName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdPurchasedProductInfo;->productName:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/entry/NdPurchasedProductInfo;->productId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdPurchasedProductInfo;->productName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/nd/commplatform/entry/NdPurchasedProductInfo;->feeType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdPurchasedProductInfo;->productAuthInfo:Lcom/nd/commplatform/entry/NdProductAuthInfo;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
