.class public Lcom/nd/commplatform/entry/NdVirtualPayResult;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/nd/commplatform/entry/NdVirtualPayResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private canBuy:Z

.field private errDesc:Ljava/lang/String;

.field private errorCode:I

.field private orderSerial:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nd/commplatform/d/c/dj;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/dj;-><init>()V

    sput-object v0, Lcom/nd/commplatform/entry/NdVirtualPayResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/nd/commplatform/entry/NdVirtualPayResult;->errorCode:I

    return-void
.end method

.method public static synthetic access$0(Lcom/nd/commplatform/entry/NdVirtualPayResult;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nd/commplatform/entry/NdVirtualPayResult;->canBuy:Z

    return-void
.end method

.method public static synthetic access$1(Lcom/nd/commplatform/entry/NdVirtualPayResult;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdVirtualPayResult;->errDesc:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$2(Lcom/nd/commplatform/entry/NdVirtualPayResult;I)V
    .locals 0

    iput p1, p0, Lcom/nd/commplatform/entry/NdVirtualPayResult;->errorCode:I

    return-void
.end method

.method public static synthetic access$3(Lcom/nd/commplatform/entry/NdVirtualPayResult;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdVirtualPayResult;->orderSerial:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getErrDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdVirtualPayResult;->errDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/entry/NdVirtualPayResult;->errorCode:I

    return v0
.end method

.method public getOrderSerial()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdVirtualPayResult;->orderSerial:Ljava/lang/String;

    return-object v0
.end method

.method public isCanBuy()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nd/commplatform/entry/NdVirtualPayResult;->canBuy:Z

    return v0
.end method

.method public setCanBuy(Z)V
    .locals 0
    .param p1, "canBuy"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/nd/commplatform/entry/NdVirtualPayResult;->canBuy:Z

    return-void
.end method

.method public setErrDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "errDesc"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdVirtualPayResult;->errDesc:Ljava/lang/String;

    return-void
.end method

.method public setErrorCode(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    iput p1, p0, Lcom/nd/commplatform/entry/NdVirtualPayResult;->errorCode:I

    return-void
.end method

.method public setOrderSerial(Ljava/lang/String;)V
    .locals 0
    .param p1, "orderSerial"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdVirtualPayResult;->orderSerial:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget-boolean v0, p0, Lcom/nd/commplatform/entry/NdVirtualPayResult;->canBuy:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdVirtualPayResult;->errDesc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/nd/commplatform/entry/NdVirtualPayResult;->errorCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdVirtualPayResult;->orderSerial:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
