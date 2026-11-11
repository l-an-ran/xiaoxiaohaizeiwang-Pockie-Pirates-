.class public Lcom/nd/commplatform/entry/NdUserInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/nd/commplatform/entry/NdUserInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final MASK_BASE_INFO:I = 0x1

.field public static final MASK_EMOTION:I = 0x4

.field public static final MASK_POINT:I = 0x2


# instance fields
.field private bornDay:Ljava/lang/String;

.field private bornMonth:Ljava/lang/String;

.field private bornYear:Ljava/lang/String;

.field private checkSum:Ljava/lang/String;

.field private city:Ljava/lang/String;

.field private emotion:Ljava/lang/String;

.field private mask:I

.field private nickName:Ljava/lang/String;

.field private point:Ljava/lang/String;

.field private province:Ljava/lang/String;

.field private sex:Lcom/nd/commplatform/entry/NdSex;

.field private trueName:Ljava/lang/String;

.field private uin:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nd/commplatform/d/c/dg;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/dg;-><init>()V

    sput-object v0, Lcom/nd/commplatform/entry/NdUserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/nd/commplatform/entry/NdUserInfo;->mask:I

    return-void
.end method

.method public static synthetic access$0(Lcom/nd/commplatform/entry/NdUserInfo;I)V
    .locals 0

    iput p1, p0, Lcom/nd/commplatform/entry/NdUserInfo;->mask:I

    return-void
.end method

.method public static synthetic access$1(Lcom/nd/commplatform/entry/NdUserInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdUserInfo;->uin:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$10(Lcom/nd/commplatform/entry/NdUserInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdUserInfo;->checkSum:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$11(Lcom/nd/commplatform/entry/NdUserInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdUserInfo;->point:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$12(Lcom/nd/commplatform/entry/NdUserInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdUserInfo;->emotion:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$2(Lcom/nd/commplatform/entry/NdUserInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdUserInfo;->nickName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$3(Lcom/nd/commplatform/entry/NdUserInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdUserInfo;->bornYear:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$4(Lcom/nd/commplatform/entry/NdUserInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdUserInfo;->bornMonth:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$5(Lcom/nd/commplatform/entry/NdUserInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdUserInfo;->bornDay:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$6(Lcom/nd/commplatform/entry/NdUserInfo;Lcom/nd/commplatform/entry/NdSex;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdUserInfo;->sex:Lcom/nd/commplatform/entry/NdSex;

    return-void
.end method

.method public static synthetic access$7(Lcom/nd/commplatform/entry/NdUserInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdUserInfo;->trueName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$8(Lcom/nd/commplatform/entry/NdUserInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdUserInfo;->province:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$9(Lcom/nd/commplatform/entry/NdUserInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdUserInfo;->city:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBornDay()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdUserInfo;->bornDay:Ljava/lang/String;

    return-object v0
.end method

.method public getBornMonth()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdUserInfo;->bornMonth:Ljava/lang/String;

    return-object v0
.end method

.method public getBornYear()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdUserInfo;->bornYear:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckSum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdUserInfo;->checkSum:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdUserInfo;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCityName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    invoke-static {p1}, Lcom/nd/commplatform/widget/AreaCsv;->a(Landroid/content/Context;)Lcom/nd/commplatform/widget/AreaCsv;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/entry/NdUserInfo;->province:Ljava/lang/String;

    iget-object v2, p0, Lcom/nd/commplatform/entry/NdUserInfo;->city:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/widget/AreaCsv;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmotion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdUserInfo;->emotion:Ljava/lang/String;

    return-object v0
.end method

.method public getMask()I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/entry/NdUserInfo;->mask:I

    return v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdUserInfo;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getPoint()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdUserInfo;->point:Ljava/lang/String;

    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdUserInfo;->province:Ljava/lang/String;

    return-object v0
.end method

.method public getProvinceName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    invoke-static {p1}, Lcom/nd/commplatform/widget/AreaCsv;->a(Landroid/content/Context;)Lcom/nd/commplatform/widget/AreaCsv;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/entry/NdUserInfo;->province:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/widget/AreaCsv;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSex()Lcom/nd/commplatform/entry/NdSex;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdUserInfo;->sex:Lcom/nd/commplatform/entry/NdSex;

    return-object v0
.end method

.method public getTrueName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdUserInfo;->trueName:Ljava/lang/String;

    return-object v0
.end method

.method public getUin()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdUserInfo;->uin:Ljava/lang/String;

    return-object v0
.end method

.method public setBornDay(Ljava/lang/String;)V
    .locals 0
    .param p1, "bornDay"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdUserInfo;->bornDay:Ljava/lang/String;

    return-void
.end method

.method public setBornMonth(Ljava/lang/String;)V
    .locals 0
    .param p1, "bornMonth"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdUserInfo;->bornMonth:Ljava/lang/String;

    return-void
.end method

.method public setBornYear(Ljava/lang/String;)V
    .locals 0
    .param p1, "bornYear"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdUserInfo;->bornYear:Ljava/lang/String;

    return-void
.end method

.method public setCheckSum(Ljava/lang/String;)V
    .locals 0
    .param p1, "checkSum"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdUserInfo;->checkSum:Ljava/lang/String;

    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0
    .param p1, "city"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdUserInfo;->city:Ljava/lang/String;

    return-void
.end method

.method public setEmotion(Ljava/lang/String;)V
    .locals 1
    .param p1, "emotion"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdUserInfo;->emotion:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/entry/NdUserInfo;->setMask(I)V

    :cond_0
    return-void
.end method

.method public setMask(I)V
    .locals 1
    .param p1, "mask"    # I

    .prologue
    iget v0, p0, Lcom/nd/commplatform/entry/NdUserInfo;->mask:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/nd/commplatform/entry/NdUserInfo;->mask:I

    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 3
    .param p1, "nickName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    if-eqz p1, :cond_0

    const/16 v0, 0x14

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v0, :cond_0

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdUserInfo;->nickName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/nd/commplatform/entry/NdUserInfo;->setMask(I)V

    :cond_0
    return-void
.end method

.method public setPoint(Ljava/lang/String;)V
    .locals 1
    .param p1, "point"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdUserInfo;->point:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/entry/NdUserInfo;->setMask(I)V

    :cond_0
    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0
    .param p1, "province"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdUserInfo;->province:Ljava/lang/String;

    return-void
.end method

.method public setSex(Lcom/nd/commplatform/entry/NdSex;)V
    .locals 0
    .param p1, "sex"    # Lcom/nd/commplatform/entry/NdSex;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdUserInfo;->sex:Lcom/nd/commplatform/entry/NdSex;

    return-void
.end method

.method public setTrueName(Ljava/lang/String;)V
    .locals 0
    .param p1, "trueName"    # Ljava/lang/String;

    .prologue
    if-nez p1, :cond_0

    const-string p1, ""

    .end local p1    # "trueName":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdUserInfo;->trueName:Ljava/lang/String;

    return-void
.end method

.method public setUin(Ljava/lang/String;)V
    .locals 0
    .param p1, "uin"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdUserInfo;->uin:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget v0, p0, Lcom/nd/commplatform/entry/NdUserInfo;->mask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdUserInfo;->uin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdUserInfo;->nickName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdUserInfo;->bornYear:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdUserInfo;->bornMonth:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdUserInfo;->bornDay:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdUserInfo;->sex:Lcom/nd/commplatform/entry/NdSex;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdUserInfo;->trueName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdUserInfo;->province:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdUserInfo;->city:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdUserInfo;->checkSum:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdUserInfo;->point:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdUserInfo;->emotion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
