.class public Lcom/nd/commplatform/d/c/cj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/entry/NdBuyInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/nd/commplatform/entry/NdBuyInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/nd/commplatform/entry/NdBuyInfo;
    .locals 3

    new-instance v0, Lcom/nd/commplatform/entry/NdBuyInfo;

    invoke-direct {v0}, Lcom/nd/commplatform/entry/NdBuyInfo;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/entry/NdBuyInfo;->setSerial(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/entry/NdBuyInfo;->setProductId(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/entry/NdBuyInfo;->setProductName(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/entry/NdBuyInfo;->setProductPrice(D)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/entry/NdBuyInfo;->setProductOrginalPrice(D)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/entry/NdBuyInfo;->setCount(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/entry/NdBuyInfo;->setPayDescription(Ljava/lang/String;)V

    return-object v0
.end method

.method public a(I)[Lcom/nd/commplatform/entry/NdBuyInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/nd/commplatform/d/c/cj;->a(Landroid/os/Parcel;)Lcom/nd/commplatform/entry/NdBuyInfo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/nd/commplatform/d/c/cj;->a(I)[Lcom/nd/commplatform/entry/NdBuyInfo;

    move-result-object v0

    return-object v0
.end method
