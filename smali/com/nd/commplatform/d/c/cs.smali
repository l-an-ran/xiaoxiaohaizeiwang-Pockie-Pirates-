.class public Lcom/nd/commplatform/d/c/cs;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/entry/NdMyUserInfo;
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
        "Lcom/nd/commplatform/entry/NdMyUserInfo;",
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
.method public a(Landroid/os/Parcel;)Lcom/nd/commplatform/entry/NdMyUserInfo;
    .locals 2

    new-instance v1, Lcom/nd/commplatform/entry/NdMyUserInfo;

    invoke-direct {v1}, Lcom/nd/commplatform/entry/NdMyUserInfo;-><init>()V

    const-class v0, Lcom/nd/commplatform/entry/NdMyBaseInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/entry/NdMyBaseInfo;

    invoke-static {v1, v0}, Lcom/nd/commplatform/entry/NdMyUserInfo;->access$0(Lcom/nd/commplatform/entry/NdMyUserInfo;Lcom/nd/commplatform/entry/NdMyBaseInfo;)V

    return-object v1
.end method

.method public a(I)[Lcom/nd/commplatform/entry/NdMyUserInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/nd/commplatform/d/c/cs;->a(Landroid/os/Parcel;)Lcom/nd/commplatform/entry/NdMyUserInfo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/nd/commplatform/d/c/cs;->a(I)[Lcom/nd/commplatform/entry/NdMyUserInfo;

    move-result-object v0

    return-object v0
.end method
