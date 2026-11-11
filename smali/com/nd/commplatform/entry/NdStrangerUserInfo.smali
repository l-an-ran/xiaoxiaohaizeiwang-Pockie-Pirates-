.class public Lcom/nd/commplatform/entry/NdStrangerUserInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/nd/commplatform/entry/NdStrangerUserInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private age:I

.field private baseUserInfo:Lcom/nd/commplatform/entry/NdBaseUserInfo;

.field private city:Ljava/lang/String;

.field private onlineStatus:I

.field private province:Ljava/lang/String;

.field private sex:Lcom/nd/commplatform/entry/NdSex;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nd/commplatform/d/c/df;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/df;-><init>()V

    sput-object v0, Lcom/nd/commplatform/entry/NdStrangerUserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$0(Lcom/nd/commplatform/entry/NdStrangerUserInfo;Lcom/nd/commplatform/entry/NdBaseUserInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdStrangerUserInfo;->baseUserInfo:Lcom/nd/commplatform/entry/NdBaseUserInfo;

    return-void
.end method

.method public static synthetic access$1(Lcom/nd/commplatform/entry/NdStrangerUserInfo;Lcom/nd/commplatform/entry/NdSex;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdStrangerUserInfo;->sex:Lcom/nd/commplatform/entry/NdSex;

    return-void
.end method

.method public static synthetic access$2(Lcom/nd/commplatform/entry/NdStrangerUserInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdStrangerUserInfo;->province:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$3(Lcom/nd/commplatform/entry/NdStrangerUserInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdStrangerUserInfo;->city:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$4(Lcom/nd/commplatform/entry/NdStrangerUserInfo;I)V
    .locals 0

    iput p1, p0, Lcom/nd/commplatform/entry/NdStrangerUserInfo;->age:I

    return-void
.end method

.method public static synthetic access$5(Lcom/nd/commplatform/entry/NdStrangerUserInfo;I)V
    .locals 0

    iput p1, p0, Lcom/nd/commplatform/entry/NdStrangerUserInfo;->onlineStatus:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAge()I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/entry/NdStrangerUserInfo;->age:I

    return v0
.end method

.method public getBaseUserInfo()Lcom/nd/commplatform/entry/NdBaseUserInfo;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdStrangerUserInfo;->baseUserInfo:Lcom/nd/commplatform/entry/NdBaseUserInfo;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdStrangerUserInfo;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCityName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    invoke-static {p1}, Lcom/nd/commplatform/widget/AreaCsv;->a(Landroid/content/Context;)Lcom/nd/commplatform/widget/AreaCsv;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/entry/NdStrangerUserInfo;->province:Ljava/lang/String;

    iget-object v2, p0, Lcom/nd/commplatform/entry/NdStrangerUserInfo;->city:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/widget/AreaCsv;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOnlineStatus()I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/entry/NdStrangerUserInfo;->onlineStatus:I

    return v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdStrangerUserInfo;->province:Ljava/lang/String;

    return-object v0
.end method

.method public getProvinceName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    invoke-static {p1}, Lcom/nd/commplatform/widget/AreaCsv;->a(Landroid/content/Context;)Lcom/nd/commplatform/widget/AreaCsv;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/entry/NdStrangerUserInfo;->province:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/widget/AreaCsv;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSex()Lcom/nd/commplatform/entry/NdSex;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdStrangerUserInfo;->sex:Lcom/nd/commplatform/entry/NdSex;

    return-object v0
.end method

.method public setAge(I)V
    .locals 0
    .param p1, "age"    # I

    .prologue
    iput p1, p0, Lcom/nd/commplatform/entry/NdStrangerUserInfo;->age:I

    return-void
.end method

.method public setBaseUserInfo(Lcom/nd/commplatform/entry/NdBaseUserInfo;)V
    .locals 0
    .param p1, "baseUserInfo"    # Lcom/nd/commplatform/entry/NdBaseUserInfo;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdStrangerUserInfo;->baseUserInfo:Lcom/nd/commplatform/entry/NdBaseUserInfo;

    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0
    .param p1, "city"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdStrangerUserInfo;->city:Ljava/lang/String;

    return-void
.end method

.method public setOnlineStatus(I)V
    .locals 0
    .param p1, "onlineStatus"    # I

    .prologue
    iput p1, p0, Lcom/nd/commplatform/entry/NdStrangerUserInfo;->onlineStatus:I

    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0
    .param p1, "province"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdStrangerUserInfo;->province:Ljava/lang/String;

    return-void
.end method

.method public setSex(Lcom/nd/commplatform/entry/NdSex;)V
    .locals 0
    .param p1, "sex"    # Lcom/nd/commplatform/entry/NdSex;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdStrangerUserInfo;->sex:Lcom/nd/commplatform/entry/NdSex;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/entry/NdStrangerUserInfo;->baseUserInfo:Lcom/nd/commplatform/entry/NdBaseUserInfo;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdStrangerUserInfo;->sex:Lcom/nd/commplatform/entry/NdSex;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdStrangerUserInfo;->province:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdStrangerUserInfo;->city:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/nd/commplatform/entry/NdStrangerUserInfo;->age:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/nd/commplatform/entry/NdStrangerUserInfo;->onlineStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
