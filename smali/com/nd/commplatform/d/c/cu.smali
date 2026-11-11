.class public Lcom/nd/commplatform/d/c/cu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/entry/NdPagination;
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
        "Lcom/nd/commplatform/entry/NdPagination;",
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
.method public a(Landroid/os/Parcel;)Lcom/nd/commplatform/entry/NdPagination;
    .locals 2

    new-instance v0, Lcom/nd/commplatform/entry/NdPagination;

    invoke-direct {v0}, Lcom/nd/commplatform/entry/NdPagination;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/nd/commplatform/entry/NdPagination;->access$0(Lcom/nd/commplatform/entry/NdPagination;I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/nd/commplatform/entry/NdPagination;->access$1(Lcom/nd/commplatform/entry/NdPagination;I)V

    return-object v0
.end method

.method public a(I)[Lcom/nd/commplatform/entry/NdPagination;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/nd/commplatform/d/c/cu;->a(Landroid/os/Parcel;)Lcom/nd/commplatform/entry/NdPagination;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/nd/commplatform/d/c/cu;->a(I)[Lcom/nd/commplatform/entry/NdPagination;

    move-result-object v0

    return-object v0
.end method
