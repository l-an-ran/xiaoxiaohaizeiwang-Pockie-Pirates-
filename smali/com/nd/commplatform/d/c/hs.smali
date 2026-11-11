.class public Lcom/nd/commplatform/d/c/hs;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/nd/commplatform/entry/NdPayRecord;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()D
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hs;->a:Lcom/nd/commplatform/entry/NdPayRecord;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdPayRecord;->getPay91Bean()D

    move-result-wide v0

    return-wide v0
.end method

.method public a(Lcom/nd/commplatform/entry/NdPayRecord;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/hs;->a:Lcom/nd/commplatform/entry/NdPayRecord;

    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hs;->a:Lcom/nd/commplatform/entry/NdPayRecord;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdPayRecord;->getProductName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hs;->a:Lcom/nd/commplatform/entry/NdPayRecord;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdPayRecord;->getTime()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
