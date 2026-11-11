.class public Lcom/nd/commplatform/d/c/eh;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nd/commplatform/d/c/eh$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/d/c/eg;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/d/c/eh$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/nd/commplatform/d/c/en;


# direct methods
.method public constructor <init>(Lcom/nd/commplatform/d/c/en;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/eh;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/eh;->c:Ljava/util/List;

    iput-object p1, p0, Lcom/nd/commplatform/d/c/eh;->d:Lcom/nd/commplatform/d/c/en;

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/eh;Lcom/nd/commplatform/entry/NdUserInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/eh;->a(Lcom/nd/commplatform/entry/NdUserInfo;)V

    return-void
.end method

.method private static a(Lcom/nd/commplatform/d/c/ek;Lcom/nd/commplatform/entry/NdUserInfo;)V
    .locals 1

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdUserInfo;->getUin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ek;->setUin(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdUserInfo;->getBornDay()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ek;->setBornDay(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdUserInfo;->getBornMonth()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ek;->setBornMonth(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdUserInfo;->getBornYear()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ek;->setBornYear(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdUserInfo;->getCheckSum()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ek;->setCheckSum(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdUserInfo;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ek;->setCity(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdUserInfo;->getEmotion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ek;->setEmotion(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdUserInfo;->getNickName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ek;->setNickName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdUserInfo;->getPoint()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ek;->setPoint(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdUserInfo;->getProvince()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ek;->setProvince(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdUserInfo;->getSex()Lcom/nd/commplatform/entry/NdSex;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ek;->setSex(Lcom/nd/commplatform/entry/NdSex;)V

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdUserInfo;->getTrueName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ek;->setTrueName(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/nd/commplatform/entry/NdUserInfo;)V
    .locals 7

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nd/commplatform/d/c/eh;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdUserInfo;->getUin()Ljava/lang/String;

    move-result-object v5

    move v1, v2

    :goto_0
    if-lt v1, v4, :cond_0

    :goto_1
    return-void

    :cond_0
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/eg;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/eg;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/eg;->c()Lcom/nd/commplatform/d/c/ek;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/nd/commplatform/d/c/ek;

    invoke-direct {v1}, Lcom/nd/commplatform/d/c/ek;-><init>()V

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/eg;->a(Lcom/nd/commplatform/d/c/ek;)V

    :cond_1
    invoke-static {v1, p1}, Lcom/nd/commplatform/d/c/eh;->a(Lcom/nd/commplatform/d/c/ek;Lcom/nd/commplatform/entry/NdUserInfo;)V

    invoke-virtual {v0, v2}, Lcom/nd/commplatform/d/c/eg;->a(I)V

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/eh;)Z
    .locals 1

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/eh;->e()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/eh;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eh;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/nd/commplatform/d/c/eh;)Lcom/nd/commplatform/d/c/en;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eh;->d:Lcom/nd/commplatform/d/c/en;

    return-object v0
.end method

.method private e()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/eh;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v1, v0

    :goto_1
    if-lt v1, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/eh;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/eh$a;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/eh$a;->b()Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method private f()V
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eh;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eh;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/eh;->b()V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/eh;->f()V

    iput-object p1, p0, Lcom/nd/commplatform/d/c/eh;->b:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/nd/commplatform/d/c/eg;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/eg;-><init>()V

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/eg;->b(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/eg;->a(Lcom/nd/commplatform/d/c/ek;)V

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/d/c/eg;->a(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/eg;->a(I)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/eh;->a:Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nd/commplatform/d/c/eh;->a:Ljava/util/List;

    :cond_0
    iget-object v1, p0, Lcom/nd/commplatform/d/c/eh;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eh;->c:Ljava/util/List;

    new-instance v1, Lcom/nd/commplatform/d/c/eh$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/nd/commplatform/d/c/eh$a;-><init>(Lcom/nd/commplatform/d/c/eh;Ljava/lang/String;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/eh;->e()Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eh;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/eh;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/eg;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/eg;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/eg;->c()Lcom/nd/commplatform/d/c/ek;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Lcom/nd/commplatform/d/c/ek;->a(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/eh;->d:Lcom/nd/commplatform/d/c/en;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/en;->a(I)V

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/d/c/eg;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/nd/commplatform/d/c/eh;->a:Ljava/util/List;

    return-void
.end method

.method public a(Lcom/nd/commplatform/d/c/em;Ljava/util/List;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nd/commplatform/d/c/em;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/nd/commplatform/d/c/eh;->a:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    move v3, v2

    :goto_0
    if-lt v3, v7, :cond_0

    invoke-virtual {p1}, Lcom/nd/commplatform/d/c/em;->a()[Lcom/nd/commplatform/d/c/el;

    move-result-object v3

    array-length v6, v3

    move v0, v2

    :goto_1
    if-lt v0, v6, :cond_3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eh;->a:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eh;->a:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    move v0, v1

    :goto_2
    return v0

    :cond_0
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/eg;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/eg;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/nd/commplatform/d/c/em;->a(Ljava/lang/String;)Lcom/nd/commplatform/d/c/el;

    move-result-object v9

    if-nez v9, :cond_1

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Lcom/nd/commplatform/d/c/eg;->a(I)V

    :goto_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/eg;->c()Lcom/nd/commplatform/d/c/ek;

    move-result-object v10

    invoke-virtual {v9}, Lcom/nd/commplatform/d/c/el;->b()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/nd/commplatform/d/c/ek;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/eg;->b()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lcom/nd/commplatform/d/c/el;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {v0, v9}, Lcom/nd/commplatform/d/c/eg;->b(Ljava/lang/String;)V

    const/4 v9, 0x3

    invoke-virtual {v0, v9}, Lcom/nd/commplatform/d/c/eg;->a(I)V

    invoke-interface {p2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p1, v8}, Lcom/nd/commplatform/d/c/em;->b(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    aget-object v7, v3, v0

    if-nez v7, :cond_4

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    new-instance v8, Lcom/nd/commplatform/d/c/ek;

    invoke-direct {v8}, Lcom/nd/commplatform/d/c/ek;-><init>()V

    invoke-virtual {v7}, Lcom/nd/commplatform/d/c/el;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/nd/commplatform/d/c/ek;->setUin(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/nd/commplatform/d/c/el;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/nd/commplatform/d/c/ek;->a(Ljava/lang/String;)V

    new-instance v9, Lcom/nd/commplatform/d/c/eg;

    invoke-direct {v9}, Lcom/nd/commplatform/d/c/eg;-><init>()V

    invoke-virtual {v7}, Lcom/nd/commplatform/d/c/el;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/nd/commplatform/d/c/eg;->a(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/nd/commplatform/d/c/el;->c()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/nd/commplatform/d/c/eg;->b(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Lcom/nd/commplatform/d/c/eg;->a(I)V

    invoke-virtual {v9, v8}, Lcom/nd/commplatform/d/c/eg;->a(Lcom/nd/commplatform/d/c/ek;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Lcom/nd/commplatform/d/c/el;->a()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    move v0, v2

    goto/16 :goto_2
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eh;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eh;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/eh;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/eh$a;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/eh$a;->a()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eh;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    :goto_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/eh;->d:Lcom/nd/commplatform/d/c/en;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/en;->a(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/eh;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/eg;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/eg;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eh;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eh;->a:Ljava/util/List;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/eh;->c:Ljava/util/List;

    new-instance v1, Lcom/nd/commplatform/d/c/eh$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/nd/commplatform/d/c/eh$a;-><init>(Lcom/nd/commplatform/d/c/eh;Ljava/lang/String;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/eh;->e()Z

    goto :goto_0
.end method

.method public b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/entry/NdUserInfo;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/entry/NdUserInfo;

    invoke-direct {p0, v0}, Lcom/nd/commplatform/d/c/eh;->a(Lcom/nd/commplatform/entry/NdUserInfo;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/d/c/eg;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eh;->a:Ljava/util/List;

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/d/c/ek;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/eh;->a:Ljava/util/List;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/eh;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-lt v2, v3, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/eh;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/eg;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/eg;->d()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/eg;->c()Lcom/nd/commplatform/d/c/ek;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/ek;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/ek;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method
