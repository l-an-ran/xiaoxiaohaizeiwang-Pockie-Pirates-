.class public Lcom/nd/commplatform/d/c/df;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/entry/NdStrangerUserInfo;
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
        "Lcom/nd/commplatform/entry/NdStrangerUserInfo;",
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
.method public a(Landroid/os/Parcel;)Lcom/nd/commplatform/entry/NdStrangerUserInfo;
    .locals 2

    new-instance v1, Lcom/nd/commplatform/entry/NdStrangerUserInfo;

    invoke-direct {v1}, Lcom/nd/commplatform/entry/NdStrangerUserInfo;-><init>()V

    const-class v0, Lcom/nd/commplatform/entry/NdBaseUserInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/entry/NdBaseUserInfo;

    invoke-static {v1, v0}, Lcom/nd/commplatform/entry/NdStrangerUserInfo;->access$0(Lcom/nd/commplatform/entry/NdStrangerUserInfo;Lcom/nd/commplatform/entry/NdBaseUserInfo;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/entry/NdSex;

    invoke-static {v1, v0}, Lcom/nd/commplatform/entry/NdStrangerUserInfo;->access$1(Lcom/nd/commplatform/entry/NdStrangerUserInfo;Lcom/nd/commplatform/entry/NdSex;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/nd/commplatform/entry/NdStrangerUserInfo;->access$2(Lcom/nd/commplatform/entry/NdStrangerUserInfo;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/nd/commplatform/entry/NdStrangerUserInfo;->access$3(Lcom/nd/commplatform/entry/NdStrangerUserInfo;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v1, v0}, Lcom/nd/commplatform/entry/NdStrangerUserInfo;->access$4(Lcom/nd/commplatform/entry/NdStrangerUserInfo;I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v1, v0}, Lcom/nd/commplatform/entry/NdStrangerUserInfo;->access$5(Lcom/nd/commplatform/entry/NdStrangerUserInfo;I)V

    return-object v1
.end method

.method public a(I)[Lcom/nd/commplatform/entry/NdStrangerUserInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/nd/commplatform/d/c/df;->a(Landroid/os/Parcel;)Lcom/nd/commplatform/entry/NdStrangerUserInfo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/nd/commplatform/d/c/df;->a(I)[Lcom/nd/commplatform/entry/NdStrangerUserInfo;

    move-result-object v0

    return-object v0
.end method
