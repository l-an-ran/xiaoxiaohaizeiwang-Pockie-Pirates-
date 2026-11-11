.class public Lcom/nd/commplatform/entry/NdAppServProInfo;
.super Ljava/lang/Object;


# instance fields
.field private merchant:Ljava/lang/String;

.field private servicePhone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMerchant()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdAppServProInfo;->merchant:Ljava/lang/String;

    return-object v0
.end method

.method public getServicePhone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdAppServProInfo;->servicePhone:Ljava/lang/String;

    return-object v0
.end method

.method public setMerchant(Ljava/lang/String;)V
    .locals 0
    .param p1, "merchant"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdAppServProInfo;->merchant:Ljava/lang/String;

    return-void
.end method

.method public setServicePhone(Ljava/lang/String;)V
    .locals 0
    .param p1, "servicePhone"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdAppServProInfo;->servicePhone:Ljava/lang/String;

    return-void
.end method
