.class public Lcom/nd/commplatform/entry/NdVirtualCurrency;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nd/commplatform/entry/NdVirtualCurrency$NdVirtualCurrencyType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/nd/commplatform/entry/NdVirtualCurrency;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private currencyType:Lcom/nd/commplatform/entry/NdVirtualCurrency$NdVirtualCurrencyType;

.field private name:Ljava/lang/String;

.field private ratio:I

.field private unit:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nd/commplatform/d/c/di;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/di;-><init>()V

    sput-object v0, Lcom/nd/commplatform/entry/NdVirtualCurrency;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$0(Lcom/nd/commplatform/entry/NdVirtualCurrency;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdVirtualCurrency;->name:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$1(Lcom/nd/commplatform/entry/NdVirtualCurrency;I)V
    .locals 0

    iput p1, p0, Lcom/nd/commplatform/entry/NdVirtualCurrency;->ratio:I

    return-void
.end method

.method public static synthetic access$2(Lcom/nd/commplatform/entry/NdVirtualCurrency;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdVirtualCurrency;->unit:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$3(Lcom/nd/commplatform/entry/NdVirtualCurrency;Lcom/nd/commplatform/entry/NdVirtualCurrency$NdVirtualCurrencyType;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdVirtualCurrency;->currencyType:Lcom/nd/commplatform/entry/NdVirtualCurrency$NdVirtualCurrencyType;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdVirtualCurrency;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRatio()I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/entry/NdVirtualCurrency;->ratio:I

    return v0
.end method

.method public getType()Lcom/nd/commplatform/entry/NdVirtualCurrency$NdVirtualCurrencyType;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdVirtualCurrency;->currencyType:Lcom/nd/commplatform/entry/NdVirtualCurrency$NdVirtualCurrencyType;

    return-object v0
.end method

.method public getUnit()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdVirtualCurrency;->unit:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdVirtualCurrency;->name:Ljava/lang/String;

    return-void
.end method

.method public setRatio(I)V
    .locals 0
    .param p1, "ratio"    # I

    .prologue
    iput p1, p0, Lcom/nd/commplatform/entry/NdVirtualCurrency;->ratio:I

    return-void
.end method

.method public setType(Lcom/nd/commplatform/entry/NdVirtualCurrency$NdVirtualCurrencyType;)V
    .locals 0
    .param p1, "currencyType"    # Lcom/nd/commplatform/entry/NdVirtualCurrency$NdVirtualCurrencyType;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdVirtualCurrency;->currencyType:Lcom/nd/commplatform/entry/NdVirtualCurrency$NdVirtualCurrencyType;

    return-void
.end method

.method public setUnit(Ljava/lang/String;)V
    .locals 0
    .param p1, "unit"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdVirtualCurrency;->unit:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/entry/NdVirtualCurrency;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/nd/commplatform/entry/NdVirtualCurrency;->ratio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdVirtualCurrency;->unit:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdVirtualCurrency;->currencyType:Lcom/nd/commplatform/entry/NdVirtualCurrency$NdVirtualCurrencyType;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
