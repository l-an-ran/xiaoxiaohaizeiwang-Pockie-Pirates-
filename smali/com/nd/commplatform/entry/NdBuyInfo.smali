.class public Lcom/nd/commplatform/entry/NdBuyInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/nd/commplatform/entry/NdBuyInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private count:I

.field private payDescription:Ljava/lang/String;

.field private productId:Ljava/lang/String;

.field private productName:Ljava/lang/String;

.field private productOrginalPrice:D

.field private productPrice:D

.field private serial:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nd/commplatform/d/c/cj;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/cj;-><init>()V

    sput-object v0, Lcom/nd/commplatform/entry/NdBuyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

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

.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/entry/NdBuyInfo;->count:I

    return v0
.end method

.method public getPayDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdBuyInfo;->payDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdBuyInfo;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdBuyInfo;->productName:Ljava/lang/String;

    return-object v0
.end method

.method public getProductOrginalPrice()D
    .locals 2

    iget-wide v0, p0, Lcom/nd/commplatform/entry/NdBuyInfo;->productOrginalPrice:D

    return-wide v0
.end method

.method public getProductPrice()D
    .locals 2

    iget-wide v0, p0, Lcom/nd/commplatform/entry/NdBuyInfo;->productPrice:D

    return-wide v0
.end method

.method public getSerial()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdBuyInfo;->serial:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    iput p1, p0, Lcom/nd/commplatform/entry/NdBuyInfo;->count:I

    return-void
.end method

.method public setPayDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "payDescription"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdBuyInfo;->payDescription:Ljava/lang/String;

    return-void
.end method

.method public setProductId(Ljava/lang/String;)V
    .locals 0
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdBuyInfo;->productId:Ljava/lang/String;

    return-void
.end method

.method public setProductName(Ljava/lang/String;)V
    .locals 0
    .param p1, "productName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdBuyInfo;->productName:Ljava/lang/String;

    return-void
.end method

.method public setProductOrginalPrice(D)V
    .locals 0
    .param p1, "productOrginalPrice"    # D

    .prologue
    iput-wide p1, p0, Lcom/nd/commplatform/entry/NdBuyInfo;->productOrginalPrice:D

    return-void
.end method

.method public setProductPrice(D)V
    .locals 0
    .param p1, "productPrice"    # D

    .prologue
    iput-wide p1, p0, Lcom/nd/commplatform/entry/NdBuyInfo;->productPrice:D

    return-void
.end method

.method public setSerial(Ljava/lang/String;)V
    .locals 0
    .param p1, "serial"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdBuyInfo;->serial:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-virtual {p0}, Lcom/nd/commplatform/entry/NdBuyInfo;->getSerial()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nd/commplatform/entry/NdBuyInfo;->getProductId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nd/commplatform/entry/NdBuyInfo;->getProductName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nd/commplatform/entry/NdBuyInfo;->getProductPrice()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    invoke-virtual {p0}, Lcom/nd/commplatform/entry/NdBuyInfo;->getProductOrginalPrice()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    invoke-virtual {p0}, Lcom/nd/commplatform/entry/NdBuyInfo;->getCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lcom/nd/commplatform/entry/NdBuyInfo;->getPayDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
