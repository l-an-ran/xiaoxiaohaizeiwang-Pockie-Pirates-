.class public Lcom/nd/commplatform/d/c/ek;
.super Lcom/nd/commplatform/entry/NdUserInfo;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/nd/commplatform/entry/NdUserInfo;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ek;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ek;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ek;->a:Ljava/lang/String;

    return-void
.end method

.method protected clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/nd/commplatform/d/c/ek;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/ek;-><init>()V

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ek;->getBornDay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/ek;->setBornDay(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ek;->getBornMonth()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/ek;->setBornMonth(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ek;->getBornYear()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/ek;->setBornYear(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ek;->getCheckSum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/ek;->setCheckSum(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ek;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/ek;->setCity(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ek;->getEmotion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/ek;->setEmotion(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ek;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/ek;->setNickName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ek;->getPoint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/ek;->setPoint(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ek;->getProvince()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/ek;->setProvince(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ek;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/ek;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ek;->getSex()Lcom/nd/commplatform/entry/NdSex;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/ek;->setSex(Lcom/nd/commplatform/entry/NdSex;)V

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ek;->getTrueName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/ek;->setTrueName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ek;->getUin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/ek;->setUin(Ljava/lang/String;)V

    return-object v0
.end method
