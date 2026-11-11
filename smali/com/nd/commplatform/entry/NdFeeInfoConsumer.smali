.class public Lcom/nd/commplatform/entry/NdFeeInfoConsumer;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final BuyLimitPerUser_Infinity:I = -0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/nd/commplatform/entry/NdFeeInfoConsumer;",
            ">;"
        }
    .end annotation
.end field

.field public static final StockCount_Infinity:I = -0x1


# instance fields
.field private buyLimitPerUser:I

.field private limitTimePeriod:[Ljava/lang/String;

.field private stockCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nd/commplatform/d/c/cn;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/cn;-><init>()V

    sput-object v0, Lcom/nd/commplatform/entry/NdFeeInfoConsumer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$0(Lcom/nd/commplatform/entry/NdFeeInfoConsumer;I)V
    .locals 0

    iput p1, p0, Lcom/nd/commplatform/entry/NdFeeInfoConsumer;->buyLimitPerUser:I

    return-void
.end method

.method public static synthetic access$1(Lcom/nd/commplatform/entry/NdFeeInfoConsumer;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdFeeInfoConsumer;->limitTimePeriod:[Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$2(Lcom/nd/commplatform/entry/NdFeeInfoConsumer;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdFeeInfoConsumer;->limitTimePeriod:[Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$3(Lcom/nd/commplatform/entry/NdFeeInfoConsumer;I)V
    .locals 0

    iput p1, p0, Lcom/nd/commplatform/entry/NdFeeInfoConsumer;->stockCount:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBuyLimitPerUser()I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/entry/NdFeeInfoConsumer;->buyLimitPerUser:I

    return v0
.end method

.method public getLimitTimePeriod()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdFeeInfoConsumer;->limitTimePeriod:[Ljava/lang/String;

    return-object v0
.end method

.method public getStockCount()I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/entry/NdFeeInfoConsumer;->stockCount:I

    return v0
.end method

.method public setBuyLimitPerUser(I)V
    .locals 0
    .param p1, "buyLimitPerUser"    # I

    .prologue
    iput p1, p0, Lcom/nd/commplatform/entry/NdFeeInfoConsumer;->buyLimitPerUser:I

    return-void
.end method

.method public setLimitTimePeriod([Ljava/lang/String;)V
    .locals 0
    .param p1, "limitTimePeriod"    # [Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdFeeInfoConsumer;->limitTimePeriod:[Ljava/lang/String;

    return-void
.end method

.method public setStockCount(I)V
    .locals 0
    .param p1, "stockCount"    # I

    .prologue
    iput p1, p0, Lcom/nd/commplatform/entry/NdFeeInfoConsumer;->stockCount:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget v0, p0, Lcom/nd/commplatform/entry/NdFeeInfoConsumer;->buyLimitPerUser:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdFeeInfoConsumer;->limitTimePeriod:[Ljava/lang/String;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdFeeInfoConsumer;->limitTimePeriod:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget v0, p0, Lcom/nd/commplatform/entry/NdFeeInfoConsumer;->stockCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
