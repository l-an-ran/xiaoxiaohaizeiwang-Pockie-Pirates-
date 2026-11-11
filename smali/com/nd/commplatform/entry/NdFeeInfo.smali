.class public Lcom/nd/commplatform/entry/NdFeeInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/nd/commplatform/entry/NdFeeInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FEE_TYPE_CONSUMABLE:I = 0x4

.field public static final FEE_TYPE_NONE:I = 0x0

.field public static final FEE_TYPE_NON_CONSUMABLE:I = 0x1

.field public static final FEE_TYPE_SUBSCRIBE:I = 0x2


# instance fields
.field private feeInfoConsumer:Lcom/nd/commplatform/entry/NdFeeInfoConsumer;

.field private feeInfoSubscribe:Lcom/nd/commplatform/entry/NdFeeInfoSubscribe;

.field private feeType:I

.field private limited:Z

.field private virtualCurrencyType:Lcom/nd/commplatform/entry/NdVirtualCurrency$NdVirtualCurrencyType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nd/commplatform/d/c/cm;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/cm;-><init>()V

    sput-object v0, Lcom/nd/commplatform/entry/NdFeeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/nd/commplatform/entry/NdVirtualCurrency$NdVirtualCurrencyType;->BEAN91:Lcom/nd/commplatform/entry/NdVirtualCurrency$NdVirtualCurrencyType;

    iput-object v0, p0, Lcom/nd/commplatform/entry/NdFeeInfo;->virtualCurrencyType:Lcom/nd/commplatform/entry/NdVirtualCurrency$NdVirtualCurrencyType;

    iput-boolean v1, p0, Lcom/nd/commplatform/entry/NdFeeInfo;->limited:Z

    iput v1, p0, Lcom/nd/commplatform/entry/NdFeeInfo;->feeType:I

    return-void
.end method

.method public static synthetic access$0(Lcom/nd/commplatform/entry/NdFeeInfo;Lcom/nd/commplatform/entry/NdVirtualCurrency$NdVirtualCurrencyType;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdFeeInfo;->virtualCurrencyType:Lcom/nd/commplatform/entry/NdVirtualCurrency$NdVirtualCurrencyType;

    return-void
.end method

.method public static synthetic access$1(Lcom/nd/commplatform/entry/NdFeeInfo;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nd/commplatform/entry/NdFeeInfo;->limited:Z

    return-void
.end method

.method public static synthetic access$2(Lcom/nd/commplatform/entry/NdFeeInfo;Lcom/nd/commplatform/entry/NdFeeInfoConsumer;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdFeeInfo;->feeInfoConsumer:Lcom/nd/commplatform/entry/NdFeeInfoConsumer;

    return-void
.end method

.method public static synthetic access$3(Lcom/nd/commplatform/entry/NdFeeInfo;Lcom/nd/commplatform/entry/NdFeeInfoSubscribe;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdFeeInfo;->feeInfoSubscribe:Lcom/nd/commplatform/entry/NdFeeInfoSubscribe;

    return-void
.end method

.method public static synthetic access$4(Lcom/nd/commplatform/entry/NdFeeInfo;I)V
    .locals 0

    iput p1, p0, Lcom/nd/commplatform/entry/NdFeeInfo;->feeType:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrencyType()Lcom/nd/commplatform/entry/NdVirtualCurrency$NdVirtualCurrencyType;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdFeeInfo;->virtualCurrencyType:Lcom/nd/commplatform/entry/NdVirtualCurrency$NdVirtualCurrencyType;

    return-object v0
.end method

.method public getFeeInfoConsumer()Lcom/nd/commplatform/entry/NdFeeInfoConsumer;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdFeeInfo;->feeInfoConsumer:Lcom/nd/commplatform/entry/NdFeeInfoConsumer;

    return-object v0
.end method

.method public getFeeInfoSubscribe()Lcom/nd/commplatform/entry/NdFeeInfoSubscribe;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdFeeInfo;->feeInfoSubscribe:Lcom/nd/commplatform/entry/NdFeeInfoSubscribe;

    return-object v0
.end method

.method public getFeeType()I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/entry/NdFeeInfo;->feeType:I

    return v0
.end method

.method public isUsableOnlyOnPurchasedDevice()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nd/commplatform/entry/NdFeeInfo;->limited:Z

    return v0
.end method

.method public setFeeInfoConsumer(Lcom/nd/commplatform/entry/NdFeeInfoConsumer;)V
    .locals 0
    .param p1, "feeInfoConsumer"    # Lcom/nd/commplatform/entry/NdFeeInfoConsumer;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdFeeInfo;->feeInfoConsumer:Lcom/nd/commplatform/entry/NdFeeInfoConsumer;

    return-void
.end method

.method public setFeeInfoSubscribe(Lcom/nd/commplatform/entry/NdFeeInfoSubscribe;)V
    .locals 0
    .param p1, "feeInfoSubscribe"    # Lcom/nd/commplatform/entry/NdFeeInfoSubscribe;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdFeeInfo;->feeInfoSubscribe:Lcom/nd/commplatform/entry/NdFeeInfoSubscribe;

    return-void
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
    iput v0, p0, Lcom/nd/commplatform/entry/NdFeeInfo;->feeType:I

    return-void
.end method

.method public setUsableOnlyOnPurchasedDevice(Z)V
    .locals 0
    .param p1, "usableOnlyOnPurchasedDevice"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/nd/commplatform/entry/NdFeeInfo;->limited:Z

    return-void
.end method

.method public setVirtualCurrencyType(Lcom/nd/commplatform/entry/NdVirtualCurrency$NdVirtualCurrencyType;)V
    .locals 0
    .param p1, "virtualCurrencyType"    # Lcom/nd/commplatform/entry/NdVirtualCurrency$NdVirtualCurrencyType;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdFeeInfo;->virtualCurrencyType:Lcom/nd/commplatform/entry/NdVirtualCurrency$NdVirtualCurrencyType;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdFeeInfo;->virtualCurrencyType:Lcom/nd/commplatform/entry/NdVirtualCurrency$NdVirtualCurrencyType;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-boolean v0, p0, Lcom/nd/commplatform/entry/NdFeeInfo;->limited:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdFeeInfo;->feeInfoConsumer:Lcom/nd/commplatform/entry/NdFeeInfoConsumer;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdFeeInfo;->feeInfoSubscribe:Lcom/nd/commplatform/entry/NdFeeInfoSubscribe;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/nd/commplatform/entry/NdFeeInfo;->feeType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method
