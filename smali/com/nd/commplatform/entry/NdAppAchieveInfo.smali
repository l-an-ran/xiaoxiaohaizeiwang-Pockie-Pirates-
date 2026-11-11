.class public Lcom/nd/commplatform/entry/NdAppAchieveInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/nd/commplatform/entry/NdAppAchieveInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private UpdateTime:Ljava/lang/String;

.field private achievementId:Ljava/lang/String;

.field private achievementName:Ljava/lang/String;

.field private checkSum:Ljava/lang/String;

.field private completValue:Ljava/lang/String;

.field private currentValue:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private displayText:Ljava/lang/String;

.field private isUnlock:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nd/commplatform/d/c/ce;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/ce;-><init>()V

    sput-object v0, Lcom/nd/commplatform/entry/NdAppAchieveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$0(Lcom/nd/commplatform/entry/NdAppAchieveInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdAppAchieveInfo;->achievementId:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$1(Lcom/nd/commplatform/entry/NdAppAchieveInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdAppAchieveInfo;->achievementName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$2(Lcom/nd/commplatform/entry/NdAppAchieveInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdAppAchieveInfo;->description:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$3(Lcom/nd/commplatform/entry/NdAppAchieveInfo;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nd/commplatform/entry/NdAppAchieveInfo;->isUnlock:Z

    return-void
.end method

.method public static synthetic access$4(Lcom/nd/commplatform/entry/NdAppAchieveInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdAppAchieveInfo;->displayText:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$5(Lcom/nd/commplatform/entry/NdAppAchieveInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdAppAchieveInfo;->UpdateTime:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$6(Lcom/nd/commplatform/entry/NdAppAchieveInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdAppAchieveInfo;->checkSum:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$7(Lcom/nd/commplatform/entry/NdAppAchieveInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdAppAchieveInfo;->currentValue:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$8(Lcom/nd/commplatform/entry/NdAppAchieveInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdAppAchieveInfo;->completValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAchievementId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdAppAchieveInfo;->achievementId:Ljava/lang/String;

    return-object v0
.end method

.method public getAchievementName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdAppAchieveInfo;->achievementName:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckSum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdAppAchieveInfo;->checkSum:Ljava/lang/String;

    return-object v0
.end method

.method public getCompletValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdAppAchieveInfo;->completValue:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdAppAchieveInfo;->currentValue:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdAppAchieveInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdAppAchieveInfo;->displayText:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdAppAchieveInfo;->UpdateTime:Ljava/lang/String;

    return-object v0
.end method

.method public isUnlock()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nd/commplatform/entry/NdAppAchieveInfo;->isUnlock:Z

    return v0
.end method

.method public setAchievementId(Ljava/lang/String;)V
    .locals 0
    .param p1, "achievementId"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdAppAchieveInfo;->achievementId:Ljava/lang/String;

    return-void
.end method

.method public setAchievementName(Ljava/lang/String;)V
    .locals 0
    .param p1, "achievementName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdAppAchieveInfo;->achievementName:Ljava/lang/String;

    return-void
.end method

.method public setCheckSum(Ljava/lang/String;)V
    .locals 0
    .param p1, "checkSum"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdAppAchieveInfo;->checkSum:Ljava/lang/String;

    return-void
.end method

.method public setCompletValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "completValue"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdAppAchieveInfo;->completValue:Ljava/lang/String;

    return-void
.end method

.method public setCurrentValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "currentValue"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdAppAchieveInfo;->currentValue:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdAppAchieveInfo;->description:Ljava/lang/String;

    return-void
.end method

.method public setDisplayText(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayText"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdAppAchieveInfo;->displayText:Ljava/lang/String;

    return-void
.end method

.method public setIsUnlock(Z)V
    .locals 0
    .param p1, "isUnlock"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/nd/commplatform/entry/NdAppAchieveInfo;->isUnlock:Z

    return-void
.end method

.method public setUpdateTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "updateTime"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdAppAchieveInfo;->UpdateTime:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/entry/NdAppAchieveInfo;->achievementId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdAppAchieveInfo;->achievementName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdAppAchieveInfo;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/nd/commplatform/entry/NdAppAchieveInfo;->isUnlock:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdAppAchieveInfo;->displayText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdAppAchieveInfo;->UpdateTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdAppAchieveInfo;->checkSum:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdAppAchieveInfo;->currentValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdAppAchieveInfo;->completValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
