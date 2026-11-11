.class public Lcom/nd/commplatform/d/c/hu;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/nd/commplatform/entry/NdReChargingRecord;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()D
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hu;->a:Lcom/nd/commplatform/entry/NdReChargingRecord;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdReChargingRecord;->getBeanAmount()D

    move-result-wide v0

    return-wide v0
.end method

.method public a(Lcom/nd/commplatform/entry/NdReChargingRecord;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/hu;->a:Lcom/nd/commplatform/entry/NdReChargingRecord;

    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hu;->a:Lcom/nd/commplatform/entry/NdReChargingRecord;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdReChargingRecord;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hu;->a:Lcom/nd/commplatform/entry/NdReChargingRecord;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdReChargingRecord;->getTime()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
