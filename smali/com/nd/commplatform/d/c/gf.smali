.class public Lcom/nd/commplatform/d/c/gf;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/d/c/fw;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/nd/commplatform/entry/NdSysMsgInfo;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/nd/commplatform/entry/NdSysMsgInfo;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nd/commplatform/d/c/gf;->c:Lcom/nd/commplatform/entry/NdSysMsgInfo;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/gf;->d:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/gf;->h()V

    return-void
.end method

.method private static a(Lcom/nd/commplatform/d/c/gf;Lcom/nd/commplatform/entry/NdTag;)Lcom/nd/commplatform/d/c/fw;
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdTag;->isAction()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdTag;->getCmdId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_1
    move-object v0, v1

    :goto_1
    move-object v1, v0

    goto :goto_0

    :sswitch_0
    new-instance v0, Lcom/nd/commplatform/d/c/ge;

    invoke-direct {v0, p0, p1}, Lcom/nd/commplatform/d/c/ge;-><init>(Lcom/nd/commplatform/d/c/gf;Lcom/nd/commplatform/entry/NdTag;)V

    goto :goto_1

    :sswitch_1
    new-instance v0, Lcom/nd/commplatform/d/c/fy;

    invoke-direct {v0, p0, p1}, Lcom/nd/commplatform/d/c/fy;-><init>(Lcom/nd/commplatform/d/c/gf;Lcom/nd/commplatform/entry/NdTag;)V

    goto :goto_1

    :sswitch_2
    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdTag;->getParams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_2

    move-object v0, v1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    new-instance v0, Lcom/nd/commplatform/d/c/fx;

    invoke-direct {v0, p0, p1}, Lcom/nd/commplatform/d/c/fx;-><init>(Lcom/nd/commplatform/d/c/gf;Lcom/nd/commplatform/entry/NdTag;)V

    goto :goto_1

    :cond_3
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    new-instance v0, Lcom/nd/commplatform/d/c/ga;

    invoke-direct {v0, p0, p1}, Lcom/nd/commplatform/d/c/ga;-><init>(Lcom/nd/commplatform/d/c/gf;Lcom/nd/commplatform/entry/NdTag;)V

    goto :goto_1

    :sswitch_3
    new-instance v0, Lcom/nd/commplatform/d/c/gd;

    invoke-direct {v0, p0, p1}, Lcom/nd/commplatform/d/c/gd;-><init>(Lcom/nd/commplatform/d/c/gf;Lcom/nd/commplatform/entry/NdTag;)V

    goto :goto_1

    :sswitch_4
    new-instance v0, Lcom/nd/commplatform/d/c/gb;

    invoke-direct {v0, p0, p1}, Lcom/nd/commplatform/d/c/gb;-><init>(Lcom/nd/commplatform/d/c/gf;Lcom/nd/commplatform/entry/NdTag;)V

    goto :goto_1

    :sswitch_5
    new-instance v0, Lcom/nd/commplatform/d/c/fz;

    invoke-direct {v0, p0, p1}, Lcom/nd/commplatform/d/c/fz;-><init>(Lcom/nd/commplatform/d/c/gf;Lcom/nd/commplatform/entry/NdTag;)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_3
        0x65 -> :sswitch_2
        0x66 -> :sswitch_4
        0x67 -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gf;->c:Lcom/nd/commplatform/entry/NdSysMsgInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdSysMsgInfo;->getAppInfo()Lcom/nd/commplatform/entry/NdBaseAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdBaseAppInfo;->getAppName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gf;->c:Lcom/nd/commplatform/entry/NdSysMsgInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdSysMsgInfo;->getAppInfo()Lcom/nd/commplatform/entry/NdBaseAppInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/entry/NdBaseAppInfo;->setCheckSum(Ljava/lang/String;)V

    return-void
.end method

.method public b()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gf;->d:Landroid/content/Context;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/gf;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gf;->c:Lcom/nd/commplatform/entry/NdSysMsgInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdSysMsgInfo;->getMsgContent()Lcom/nd/commplatform/entry/NdMsgContent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/entry/NdMsgContent;->setContent(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/gf;->h()V

    return-void
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gf;->c:Lcom/nd/commplatform/entry/NdSysMsgInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdSysMsgInfo;->isStatus()Z

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gf;->c:Lcom/nd/commplatform/entry/NdSysMsgInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdSysMsgInfo;->getSendTime()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gf;->c:Lcom/nd/commplatform/entry/NdSysMsgInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/entry/NdSysMsgInfo;->setStatus(Z)V

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gf;->c:Lcom/nd/commplatform/entry/NdSysMsgInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdSysMsgInfo;->getAppInfo()Lcom/nd/commplatform/entry/NdBaseAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdBaseAppInfo;->getAppId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gf;->c:Lcom/nd/commplatform/entry/NdSysMsgInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdSysMsgInfo;->getAppInfo()Lcom/nd/commplatform/entry/NdBaseAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdBaseAppInfo;->getCheckSum()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 6

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gf;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gf;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/gf;->a:Ljava/lang/String;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gf;->c:Lcom/nd/commplatform/entry/NdSysMsgInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdSysMsgInfo;->getMsgContent()Lcom/nd/commplatform/entry/NdMsgContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdMsgContent;->getTagList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_3

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/entry/NdTag;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdTag;->getDisplayText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, v0}, Lcom/nd/commplatform/d/c/gf;->a(Lcom/nd/commplatform/d/c/gf;Lcom/nd/commplatform/entry/NdTag;)Lcom/nd/commplatform/d/c/fw;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/nd/commplatform/d/c/gf;->b:Ljava/util/List;

    if-nez v5, :cond_1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/nd/commplatform/d/c/gf;->b:Ljava/util/List;

    :cond_1
    iget-object v5, p0, Lcom/nd/commplatform/d/c/gf;->b:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/gf;->a:Ljava/lang/String;

    :cond_4
    iget-object v0, p0, Lcom/nd/commplatform/d/c/gf;->a:Ljava/lang/String;

    if-nez v0, :cond_5

    const-string v0, ""

    iput-object v0, p0, Lcom/nd/commplatform/d/c/gf;->a:Ljava/lang/String;

    :cond_5
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gf;->a:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/d/c/fw;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gf;->b:Ljava/util/List;

    return-object v0
.end method

.method public k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/entry/NdTag;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gf;->c:Lcom/nd/commplatform/entry/NdSysMsgInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdSysMsgInfo;->getMsgContent()Lcom/nd/commplatform/entry/NdMsgContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdMsgContent;->getTagList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public l()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/gf;->b:Ljava/util/List;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/nd/commplatform/d/c/gf;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
