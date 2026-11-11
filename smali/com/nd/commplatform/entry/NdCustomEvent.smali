.class public Lcom/nd/commplatform/entry/NdCustomEvent;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/nd/commplatform/entry/NdCustomEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAction:Ljava/lang/String;

.field private mId:Ljava/lang/String;

.field private mLabel:Ljava/lang/String;

.field private mTime:J

.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nd/commplatform/d/c/cl;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/cl;-><init>()V

    sput-object v0, Lcom/nd/commplatform/entry/NdCustomEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$0(Lcom/nd/commplatform/entry/NdCustomEvent;J)V
    .locals 0

    iput-wide p1, p0, Lcom/nd/commplatform/entry/NdCustomEvent;->mTime:J

    return-void
.end method

.method public static synthetic access$1(Lcom/nd/commplatform/entry/NdCustomEvent;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdCustomEvent;->mId:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$2(Lcom/nd/commplatform/entry/NdCustomEvent;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdCustomEvent;->mAction:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$3(Lcom/nd/commplatform/entry/NdCustomEvent;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdCustomEvent;->mLabel:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$4(Lcom/nd/commplatform/entry/NdCustomEvent;I)V
    .locals 0

    iput p1, p0, Lcom/nd/commplatform/entry/NdCustomEvent;->mValue:I

    return-void
.end method

.method private static isLegalCh(Ljava/lang/String;)Z
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    move v2, v0

    :goto_0
    if-lt v2, v3, :cond_1

    move v0, v1

    :cond_0
    return v0

    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-lt v4, v5, :cond_3

    const/16 v5, 0x39

    if-gt v4, v5, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/16 v5, 0x61

    if-lt v4, v5, :cond_4

    const/16 v5, 0x7a

    if-le v4, v5, :cond_2

    :cond_4
    const/16 v5, 0x41

    if-lt v4, v5, :cond_0

    const/16 v5, 0x5a

    if-gt v4, v5, :cond_0

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdCustomEvent;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method public getFormatTime()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/nd/commplatform/entry/NdCustomEvent;->mTime:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdCustomEvent;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdCustomEvent;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    iget-wide v0, p0, Lcom/nd/commplatform/entry/NdCustomEvent;->mTime:J

    return-wide v0
.end method

.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/entry/NdCustomEvent;->mValue:I

    return v0
.end method

.method public isLegal()Z
    .locals 5

    const/16 v4, 0xf

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nd/commplatform/entry/NdCustomEvent;->mId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nd/commplatform/entry/NdCustomEvent;->mId:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nd/commplatform/entry/NdCustomEvent;->mId:Ljava/lang/String;

    const-string v2, ",;"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/nd/commplatform/entry/NdCustomEvent;->mAction:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nd/commplatform/entry/NdCustomEvent;->mAction:Ljava/lang/String;

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nd/commplatform/entry/NdCustomEvent;->mAction:Ljava/lang/String;

    iget-object v1, p0, Lcom/nd/commplatform/entry/NdCustomEvent;->mAction:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v4, :cond_0

    iget-object v1, p0, Lcom/nd/commplatform/entry/NdCustomEvent;->mAction:Ljava/lang/String;

    invoke-static {v1}, Lcom/nd/commplatform/entry/NdCustomEvent;->isLegalCh(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/nd/commplatform/entry/NdCustomEvent;->mLabel:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/nd/commplatform/entry/NdCustomEvent;->mLabel:Ljava/lang/String;

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nd/commplatform/entry/NdCustomEvent;->mLabel:Ljava/lang/String;

    iget-object v1, p0, Lcom/nd/commplatform/entry/NdCustomEvent;->mLabel:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v4, :cond_0

    iget-object v1, p0, Lcom/nd/commplatform/entry/NdCustomEvent;->mLabel:Ljava/lang/String;

    invoke-static {v1}, Lcom/nd/commplatform/entry/NdCustomEvent;->isLegalCh(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdCustomEvent;->mAction:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdCustomEvent;->mId:Ljava/lang/String;

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdCustomEvent;->mLabel:Ljava/lang/String;

    return-void
.end method

.method public setTime(J)V
    .locals 0
    .param p1, "time"    # J

    .prologue
    iput-wide p1, p0, Lcom/nd/commplatform/entry/NdCustomEvent;->mTime:J

    return-void
.end method

.method public setValue(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    iput p1, p0, Lcom/nd/commplatform/entry/NdCustomEvent;->mValue:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget-wide v0, p0, Lcom/nd/commplatform/entry/NdCustomEvent;->mTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdCustomEvent;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdCustomEvent;->mAction:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdCustomEvent;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/nd/commplatform/entry/NdCustomEvent;->mValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
