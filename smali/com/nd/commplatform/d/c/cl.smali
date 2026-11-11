.class public Lcom/nd/commplatform/d/c/cl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/entry/NdCustomEvent;
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
        "Lcom/nd/commplatform/entry/NdCustomEvent;",
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
.method public a(Landroid/os/Parcel;)Lcom/nd/commplatform/entry/NdCustomEvent;
    .locals 3

    new-instance v0, Lcom/nd/commplatform/entry/NdCustomEvent;

    invoke-direct {v0}, Lcom/nd/commplatform/entry/NdCustomEvent;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/nd/commplatform/entry/NdCustomEvent;->access$0(Lcom/nd/commplatform/entry/NdCustomEvent;J)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nd/commplatform/entry/NdCustomEvent;->access$1(Lcom/nd/commplatform/entry/NdCustomEvent;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nd/commplatform/entry/NdCustomEvent;->access$2(Lcom/nd/commplatform/entry/NdCustomEvent;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nd/commplatform/entry/NdCustomEvent;->access$3(Lcom/nd/commplatform/entry/NdCustomEvent;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/nd/commplatform/entry/NdCustomEvent;->access$4(Lcom/nd/commplatform/entry/NdCustomEvent;I)V

    return-object v0
.end method

.method public a(I)[Lcom/nd/commplatform/entry/NdCustomEvent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/nd/commplatform/d/c/cl;->a(Landroid/os/Parcel;)Lcom/nd/commplatform/entry/NdCustomEvent;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/nd/commplatform/d/c/cl;->a(I)[Lcom/nd/commplatform/entry/NdCustomEvent;

    move-result-object v0

    return-object v0
.end method
