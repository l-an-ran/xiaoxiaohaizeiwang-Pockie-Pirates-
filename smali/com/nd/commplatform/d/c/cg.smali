.class public Lcom/nd/commplatform/d/c/cg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/entry/NdAppPromotionAward;
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
        "Lcom/nd/commplatform/entry/NdAppPromotionAward;",
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
.method public a(Landroid/os/Parcel;)Lcom/nd/commplatform/entry/NdAppPromotionAward;
    .locals 2

    new-instance v1, Lcom/nd/commplatform/entry/NdAppPromotionAward;

    invoke-direct {v1}, Lcom/nd/commplatform/entry/NdAppPromotionAward;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v1, v0}, Lcom/nd/commplatform/entry/NdAppPromotionAward;->access$0(Lcom/nd/commplatform/entry/NdAppPromotionAward;I)V

    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/nd/commplatform/entry/NdAppPromotionAward;->access$1(Lcom/nd/commplatform/entry/NdAppPromotionAward;Ljava/lang/String;)V

    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/nd/commplatform/entry/NdAppPromotionAward;->access$2(Lcom/nd/commplatform/entry/NdAppPromotionAward;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v1, v0}, Lcom/nd/commplatform/entry/NdAppPromotionAward;->access$3(Lcom/nd/commplatform/entry/NdAppPromotionAward;I)V

    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/nd/commplatform/entry/NdAppPromotionAward;->access$4(Lcom/nd/commplatform/entry/NdAppPromotionAward;Ljava/lang/String;)V

    return-object v1
.end method

.method public a(I)[Lcom/nd/commplatform/entry/NdAppPromotionAward;
    .locals 1

    new-array v0, p1, [Lcom/nd/commplatform/entry/NdAppPromotionAward;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/nd/commplatform/d/c/cg;->a(Landroid/os/Parcel;)Lcom/nd/commplatform/entry/NdAppPromotionAward;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/nd/commplatform/d/c/cg;->a(I)[Lcom/nd/commplatform/entry/NdAppPromotionAward;

    move-result-object v0

    return-object v0
.end method
