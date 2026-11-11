.class public Lcom/nd/commplatform/d/c/da;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/entry/NdProductUseResult;
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
        "Lcom/nd/commplatform/entry/NdProductUseResult;",
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
.method public a(Landroid/os/Parcel;)Lcom/nd/commplatform/entry/NdProductUseResult;
    .locals 2

    new-instance v1, Lcom/nd/commplatform/entry/NdProductUseResult;

    invoke-direct {v1}, Lcom/nd/commplatform/entry/NdProductUseResult;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Lcom/nd/commplatform/entry/NdProductUseResult;->access$0(Lcom/nd/commplatform/entry/NdProductUseResult;Z)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/nd/commplatform/entry/NdProductUseResult;->access$1(Lcom/nd/commplatform/entry/NdProductUseResult;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v1, v0}, Lcom/nd/commplatform/entry/NdProductUseResult;->access$2(Lcom/nd/commplatform/entry/NdProductUseResult;I)V

    const-class v0, Lcom/nd/commplatform/entry/NdProductAuthInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/entry/NdProductAuthInfo;

    invoke-static {v1, v0}, Lcom/nd/commplatform/entry/NdProductUseResult;->access$3(Lcom/nd/commplatform/entry/NdProductUseResult;Lcom/nd/commplatform/entry/NdProductAuthInfo;)V

    return-object v1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(I)[Lcom/nd/commplatform/entry/NdProductUseResult;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/nd/commplatform/d/c/da;->a(Landroid/os/Parcel;)Lcom/nd/commplatform/entry/NdProductUseResult;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/nd/commplatform/d/c/da;->a(I)[Lcom/nd/commplatform/entry/NdProductUseResult;

    move-result-object v0

    return-object v0
.end method
