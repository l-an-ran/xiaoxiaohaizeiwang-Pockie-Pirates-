.class public Lcom/nd/commplatform/entry/NdRedeemGoodsInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/nd/commplatform/entry/NdRedeemGoodsInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private code:Ljava/lang/String;

.field private goodsCount:I

.field private goodsId:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nd/commplatform/d/c/de;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/de;-><init>()V

    sput-object v0, Lcom/nd/commplatform/entry/NdRedeemGoodsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

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

.method public getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdRedeemGoodsInfo;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsCount()I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/entry/NdRedeemGoodsInfo;->goodsCount:I

    return v0
.end method

.method public getGoodsId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdRedeemGoodsInfo;->goodsId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdRedeemGoodsInfo;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdRedeemGoodsInfo;->code:Ljava/lang/String;

    return-void
.end method

.method public setGoodsCount(I)V
    .locals 0
    .param p1, "goodsCount"    # I

    .prologue
    iput p1, p0, Lcom/nd/commplatform/entry/NdRedeemGoodsInfo;->goodsCount:I

    return-void
.end method

.method public setGoodsId(Ljava/lang/String;)V
    .locals 0
    .param p1, "goodsId"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdRedeemGoodsInfo;->goodsId:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdRedeemGoodsInfo;->userId:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-virtual {p0}, Lcom/nd/commplatform/entry/NdRedeemGoodsInfo;->getGoodsId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nd/commplatform/entry/NdRedeemGoodsInfo;->getGoodsCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
