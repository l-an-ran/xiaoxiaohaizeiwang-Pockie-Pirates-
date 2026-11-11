.class public Lcom/nd/commplatform/entry/NdIcon;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CHECKSUM_null:Ljava/lang/String; = "ffffffffffffffffffffffffffffffff"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/nd/commplatform/entry/NdIcon;",
            ">;"
        }
    .end annotation
.end field

.field public static final ICON_DIMENSION_BIG:I = 0x3

.field public static final ICON_DIMENSION_MIDDLE:I = 0x2

.field public static final ICON_DIMENSION_SMALL:I = 0x1

.field public static final ICON_DIMENSION_TINY:I


# instance fields
.field private cached:Z

.field private checkSum:Ljava/lang/String;

.field private dimension:I

.field private iconId:Ljava/lang/String;

.field private img:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nd/commplatform/d/c/cq;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/cq;-><init>()V

    sput-object v0, Lcom/nd/commplatform/entry/NdIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/nd/commplatform/entry/NdIcon;->dimension:I

    iput-boolean v0, p0, Lcom/nd/commplatform/entry/NdIcon;->cached:Z

    return-void
.end method

.method public static synthetic access$0(Lcom/nd/commplatform/entry/NdIcon;I)V
    .locals 0

    iput p1, p0, Lcom/nd/commplatform/entry/NdIcon;->dimension:I

    return-void
.end method

.method public static synthetic access$1(Lcom/nd/commplatform/entry/NdIcon;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdIcon;->iconId:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$2(Lcom/nd/commplatform/entry/NdIcon;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdIcon;->checkSum:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$3(Lcom/nd/commplatform/entry/NdIcon;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdIcon;->img:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static synthetic access$4(Lcom/nd/commplatform/entry/NdIcon;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nd/commplatform/entry/NdIcon;->cached:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCheckSum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdIcon;->checkSum:Ljava/lang/String;

    return-object v0
.end method

.method public getDimension()I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/entry/NdIcon;->dimension:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdIcon;->iconId:Ljava/lang/String;

    return-object v0
.end method

.method public getImg()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdIcon;->img:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public isCached()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nd/commplatform/entry/NdIcon;->cached:Z

    return v0
.end method

.method public setCached(Z)V
    .locals 0
    .param p1, "cached"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/nd/commplatform/entry/NdIcon;->cached:Z

    return-void
.end method

.method public setCheckSum(Ljava/lang/String;)V
    .locals 0
    .param p1, "checkSum"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdIcon;->checkSum:Ljava/lang/String;

    return-void
.end method

.method public setDimension(I)V
    .locals 0
    .param p1, "dimension"    # I

    .prologue
    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iput p1, p0, Lcom/nd/commplatform/entry/NdIcon;->dimension:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "iconId"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdIcon;->iconId:Ljava/lang/String;

    return-void
.end method

.method public setImg(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "img"    # Landroid/graphics/Bitmap;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdIcon;->img:Landroid/graphics/Bitmap;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v0, 0x0

    iget v1, p0, Lcom/nd/commplatform/entry/NdIcon;->dimension:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/nd/commplatform/entry/NdIcon;->iconId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nd/commplatform/entry/NdIcon;->checkSum:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nd/commplatform/entry/NdIcon;->img:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-boolean v1, p0, Lcom/nd/commplatform/entry/NdIcon;->cached:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
