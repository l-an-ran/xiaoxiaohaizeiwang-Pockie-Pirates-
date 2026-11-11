.class public Lcom/nd/commplatform/entry/NdProductInfo;
.super Lcom/nd/commplatform/entry/NdBaseProductInfo;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/nd/commplatform/entry/NdProductInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cateId:Ljava/lang/String;

.field private checkSum:Ljava/lang/String;

.field private feeInfo:Lcom/nd/commplatform/entry/NdFeeInfo;

.field private orignPrice:D

.field private productName:Ljava/lang/String;

.field private salePrice:D

.field private unit:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nd/commplatform/d/c/cy;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/cy;-><init>()V

    sput-object v0, Lcom/nd/commplatform/entry/NdProductInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/entry/NdBaseProductInfo;-><init>()V

    return-void
.end method

.method public static synthetic access$0(Lcom/nd/commplatform/entry/NdProductInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdProductInfo;->productName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$1(Lcom/nd/commplatform/entry/NdProductInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdProductInfo;->cateId:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$2(Lcom/nd/commplatform/entry/NdProductInfo;D)V
    .locals 0

    iput-wide p1, p0, Lcom/nd/commplatform/entry/NdProductInfo;->orignPrice:D

    return-void
.end method

.method public static synthetic access$3(Lcom/nd/commplatform/entry/NdProductInfo;D)V
    .locals 0

    iput-wide p1, p0, Lcom/nd/commplatform/entry/NdProductInfo;->salePrice:D

    return-void
.end method

.method public static synthetic access$4(Lcom/nd/commplatform/entry/NdProductInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdProductInfo;->checkSum:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$5(Lcom/nd/commplatform/entry/NdProductInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdProductInfo;->unit:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$6(Lcom/nd/commplatform/entry/NdProductInfo;Lcom/nd/commplatform/entry/NdFeeInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdProductInfo;->feeInfo:Lcom/nd/commplatform/entry/NdFeeInfo;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCateId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdProductInfo;->cateId:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckSum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdProductInfo;->checkSum:Ljava/lang/String;

    return-object v0
.end method

.method public getFeeInfo()Lcom/nd/commplatform/entry/NdFeeInfo;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdProductInfo;->feeInfo:Lcom/nd/commplatform/entry/NdFeeInfo;

    return-object v0
.end method

.method public getOrignPrice()D
    .locals 2

    iget-wide v0, p0, Lcom/nd/commplatform/entry/NdProductInfo;->orignPrice:D

    return-wide v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdProductInfo;->productName:Ljava/lang/String;

    return-object v0
.end method

.method public getSalePrice()D
    .locals 2

    iget-wide v0, p0, Lcom/nd/commplatform/entry/NdProductInfo;->salePrice:D

    return-wide v0
.end method

.method public getUnit()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdProductInfo;->unit:Ljava/lang/String;

    return-object v0
.end method

.method public setCateId(Ljava/lang/String;)V
    .locals 0
    .param p1, "cateId"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdProductInfo;->cateId:Ljava/lang/String;

    return-void
.end method

.method public setCheckSum(Ljava/lang/String;)V
    .locals 0
    .param p1, "checkSum"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdProductInfo;->checkSum:Ljava/lang/String;

    return-void
.end method

.method public setFeeInfo(Lcom/nd/commplatform/entry/NdFeeInfo;)V
    .locals 0
    .param p1, "feeInfo"    # Lcom/nd/commplatform/entry/NdFeeInfo;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdProductInfo;->feeInfo:Lcom/nd/commplatform/entry/NdFeeInfo;

    return-void
.end method

.method public setOrignPrice(D)V
    .locals 0
    .param p1, "orignPrice"    # D

    .prologue
    iput-wide p1, p0, Lcom/nd/commplatform/entry/NdProductInfo;->orignPrice:D

    return-void
.end method

.method public setProductName(Ljava/lang/String;)V
    .locals 0
    .param p1, "productName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdProductInfo;->productName:Ljava/lang/String;

    return-void
.end method

.method public setSalePrice(D)V
    .locals 0
    .param p1, "salePrice"    # D

    .prologue
    iput-wide p1, p0, Lcom/nd/commplatform/entry/NdProductInfo;->salePrice:D

    return-void
.end method

.method public setUnit(Ljava/lang/String;)V
    .locals 0
    .param p1, "unit"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdProductInfo;->unit:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-virtual {p0}, Lcom/nd/commplatform/entry/NdProductInfo;->getProductId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nd/commplatform/entry/NdProductInfo;->getDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdProductInfo;->productName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdProductInfo;->cateId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/nd/commplatform/entry/NdProductInfo;->orignPrice:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/nd/commplatform/entry/NdProductInfo;->salePrice:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdProductInfo;->checkSum:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdProductInfo;->unit:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdProductInfo;->feeInfo:Lcom/nd/commplatform/entry/NdFeeInfo;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
