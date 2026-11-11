.class public Lcom/nd/commplatform/entry/NdPayResultInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/nd/commplatform/entry/NdPayResultInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public goodsCount:D

.field public goodsId:Ljava/lang/String;

.field public goodsName:Ljava/lang/String;

.field public isSuccess:Z

.field public orderSerial:Ljava/lang/String;

.field public payDescription:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nd/commplatform/d/c/cw;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/cw;-><init>()V

    sput-object v0, Lcom/nd/commplatform/entry/NdPayResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

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

.method public getGoodsCount()D
    .locals 2

    iget-wide v0, p0, Lcom/nd/commplatform/entry/NdPayResultInfo;->goodsCount:D

    return-wide v0
.end method

.method public getGoodsId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdPayResultInfo;->goodsId:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdPayResultInfo;->goodsName:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderSerial()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdPayResultInfo;->orderSerial:Ljava/lang/String;

    return-object v0
.end method

.method public getPayDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdPayResultInfo;->payDescription:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nd/commplatform/entry/NdPayResultInfo;->isSuccess:Z

    return v0
.end method

.method public setGoodsCount(D)V
    .locals 0
    .param p1, "goodsCount"    # D

    .prologue
    iput-wide p1, p0, Lcom/nd/commplatform/entry/NdPayResultInfo;->goodsCount:D

    return-void
.end method

.method public setGoodsId(Ljava/lang/String;)V
    .locals 0
    .param p1, "goodsId"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdPayResultInfo;->goodsId:Ljava/lang/String;

    return-void
.end method

.method public setGoodsName(Ljava/lang/String;)V
    .locals 0
    .param p1, "goodsName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdPayResultInfo;->goodsName:Ljava/lang/String;

    return-void
.end method

.method public setOrderSerial(Ljava/lang/String;)V
    .locals 0
    .param p1, "orderSerial"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdPayResultInfo;->orderSerial:Ljava/lang/String;

    return-void
.end method

.method public setPayDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "payDescription"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdPayResultInfo;->payDescription:Ljava/lang/String;

    return-void
.end method

.method public setSuccess(Z)V
    .locals 0
    .param p1, "isSuccess"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/nd/commplatform/entry/NdPayResultInfo;->isSuccess:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget-boolean v0, p0, Lcom/nd/commplatform/entry/NdPayResultInfo;->isSuccess:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdPayResultInfo;->orderSerial:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdPayResultInfo;->goodsId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdPayResultInfo;->goodsName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/nd/commplatform/entry/NdPayResultInfo;->goodsCount:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdPayResultInfo;->payDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
