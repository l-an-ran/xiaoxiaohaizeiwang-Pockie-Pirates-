.class public Lcom/nd/commplatform/entry/NdRankInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/nd/commplatform/entry/NdRankInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private checkSum:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private leaderBoardId:Ljava/lang/String;

.field private leaderBoardName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nd/commplatform/d/c/dc;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/dc;-><init>()V

    sput-object v0, Lcom/nd/commplatform/entry/NdRankInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$0(Lcom/nd/commplatform/entry/NdRankInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdRankInfo;->leaderBoardId:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$1(Lcom/nd/commplatform/entry/NdRankInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdRankInfo;->leaderBoardName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$2(Lcom/nd/commplatform/entry/NdRankInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdRankInfo;->description:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$3(Lcom/nd/commplatform/entry/NdRankInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/entry/NdRankInfo;->checkSum:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCheckSum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdRankInfo;->checkSum:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdRankInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getLeaderBoardId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdRankInfo;->leaderBoardId:Ljava/lang/String;

    return-object v0
.end method

.method public getLeaderBoardName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdRankInfo;->leaderBoardName:Ljava/lang/String;

    return-object v0
.end method

.method public setCheckSum(Ljava/lang/String;)V
    .locals 0
    .param p1, "checkSum"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdRankInfo;->checkSum:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdRankInfo;->description:Ljava/lang/String;

    return-void
.end method

.method public setLeaderBoardId(Ljava/lang/String;)V
    .locals 0
    .param p1, "leaderBoardId"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdRankInfo;->leaderBoardId:Ljava/lang/String;

    return-void
.end method

.method public setLeaderBoardName(Ljava/lang/String;)V
    .locals 0
    .param p1, "leaderBoardName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdRankInfo;->leaderBoardName:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/entry/NdRankInfo;->leaderBoardId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdRankInfo;->leaderBoardName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdRankInfo;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdRankInfo;->checkSum:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
