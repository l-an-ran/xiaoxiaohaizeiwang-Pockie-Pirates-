.class public Lcom/nd/commplatform/d/c/hq;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/nd/commplatform/d/c/ek;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hq;->a:Lcom/nd/commplatform/d/c/ek;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/ek;->getUin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/nd/commplatform/d/c/ek;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/hq;->a:Lcom/nd/commplatform/d/c/ek;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hq;->a:Lcom/nd/commplatform/d/c/ek;

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/d/c/ek;->setCheckSum(Ljava/lang/String;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hq;->a:Lcom/nd/commplatform/d/c/ek;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/ek;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/hq;->a:Lcom/nd/commplatform/d/c/ek;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/ek;->getNickName()Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const-string v0, ""

    :cond_3
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hq;->a:Lcom/nd/commplatform/d/c/ek;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/ek;->getEmotion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hq;->a:Lcom/nd/commplatform/d/c/ek;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/ek;->getCheckSum()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
