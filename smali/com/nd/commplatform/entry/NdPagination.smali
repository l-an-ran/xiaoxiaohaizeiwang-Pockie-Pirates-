.class public Lcom/nd/commplatform/entry/NdPagination;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/nd/commplatform/entry/NdPagination;",
            ">;"
        }
    .end annotation
.end field

.field public static final PAGE_SIZE_FACTOR:I = 0x5

.field public static final PAGE_START_INEDX:I = 0x1


# instance fields
.field private pageIndex:I

.field private pageSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nd/commplatform/d/c/cu;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/cu;-><init>()V

    sput-object v0, Lcom/nd/commplatform/entry/NdPagination;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/nd/commplatform/entry/NdPagination;->pageIndex:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/nd/commplatform/entry/NdPagination;->pageSize:I

    return-void
.end method

.method public static synthetic access$0(Lcom/nd/commplatform/entry/NdPagination;I)V
    .locals 0

    iput p1, p0, Lcom/nd/commplatform/entry/NdPagination;->pageIndex:I

    return-void
.end method

.method public static synthetic access$1(Lcom/nd/commplatform/entry/NdPagination;I)V
    .locals 0

    iput p1, p0, Lcom/nd/commplatform/entry/NdPagination;->pageSize:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPageIndex()I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/entry/NdPagination;->pageIndex:I

    return v0
.end method

.method public getPageSize()I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/entry/NdPagination;->pageSize:I

    return v0
.end method

.method public setPageIndex(I)V
    .locals 2
    .param p1, "pageIndex"    # I

    .prologue
    const/4 v1, 0x1

    iput p1, p0, Lcom/nd/commplatform/entry/NdPagination;->pageIndex:I

    iget v0, p0, Lcom/nd/commplatform/entry/NdPagination;->pageIndex:I

    if-ge v0, v1, :cond_0

    iput v1, p0, Lcom/nd/commplatform/entry/NdPagination;->pageIndex:I

    :cond_0
    return-void
.end method

.method public setPageSize(I)V
    .locals 2
    .param p1, "pageSize"    # I

    .prologue
    iput p1, p0, Lcom/nd/commplatform/entry/NdPagination;->pageSize:I

    iget v0, p0, Lcom/nd/commplatform/entry/NdPagination;->pageSize:I

    if-gtz v0, :cond_0

    const/4 v0, 0x5

    iput v0, p0, Lcom/nd/commplatform/entry/NdPagination;->pageSize:I

    :cond_0
    iget v0, p0, Lcom/nd/commplatform/entry/NdPagination;->pageSize:I

    rem-int/lit8 v0, v0, 0x5

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/nd/commplatform/entry/NdPagination;->pageSize:I

    iget v1, p0, Lcom/nd/commplatform/entry/NdPagination;->pageSize:I

    rem-int/lit8 v1, v1, 0x5

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/nd/commplatform/entry/NdPagination;->pageSize:I

    :cond_1
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget v0, p0, Lcom/nd/commplatform/entry/NdPagination;->pageIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/nd/commplatform/entry/NdPagination;->pageSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
