.class public Lcom/nd/commplatform/d/c/ms;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "NdActivityHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/nd/commplatform/d/c/gt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nd/commplatform/d/c/gt",
            "<",
            "Lcom/nd/commplatform/d/c/my;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/nd/commplatform/d/c/ms$1;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/ms$1;-><init>()V

    return-object v0
.end method

.method private static a(Lcom/nd/commplatform/entry/DynamicInfo;)Lcom/nd/commplatform/d/c/my;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/nd/commplatform/entry/DynamicInfo;->getType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const v0, 0xffffff

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/entry/DynamicInfo;->setType(I)V

    invoke-static {p0}, Lcom/nd/commplatform/d/c/ms;->b(Lcom/nd/commplatform/entry/DynamicInfo;)Lcom/nd/commplatform/d/c/my;

    move-result-object v0

    goto :goto_0

    :sswitch_0
    invoke-static {p0}, Lcom/nd/commplatform/d/c/ms;->b(Lcom/nd/commplatform/entry/DynamicInfo;)Lcom/nd/commplatform/d/c/my;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    invoke-static {p0}, Lcom/nd/commplatform/d/c/ms;->c(Lcom/nd/commplatform/entry/DynamicInfo;)Lcom/nd/commplatform/d/c/mx;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    invoke-static {p0}, Lcom/nd/commplatform/d/c/ms;->d(Lcom/nd/commplatform/entry/DynamicInfo;)Lcom/nd/commplatform/d/c/na;

    move-result-object v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x2711 -> :sswitch_2
        0x2712 -> :sswitch_0
        0x2713 -> :sswitch_2
        0x2714 -> :sswitch_0
        0x2715 -> :sswitch_2
        0x2716 -> :sswitch_0
        0x2717 -> :sswitch_2
        0x2718 -> :sswitch_0
        0x2719 -> :sswitch_2
        0x271a -> :sswitch_0
    .end sparse-switch
.end method

.method public static a(Lcom/nd/commplatform/entry/NdPageList;Landroid/content/Context;)Lcom/nd/commplatform/entry/NdPageList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<",
            "Lcom/nd/commplatform/entry/DynamicInfo;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<",
            "Lcom/nd/commplatform/d/c/my;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/nd/commplatform/entry/NdPageList;

    invoke-direct {v1}, Lcom/nd/commplatform/entry/NdPageList;-><init>()V

    invoke-virtual {p0}, Lcom/nd/commplatform/entry/NdPageList;->getTotalCount()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/entry/NdPageList;->setTotalCount(I)V

    invoke-virtual {p0}, Lcom/nd/commplatform/entry/NdPageList;->getPagination()Lcom/nd/commplatform/entry/NdPagination;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/entry/NdPageList;->setPagination(Lcom/nd/commplatform/entry/NdPagination;)V

    invoke-virtual {p0}, Lcom/nd/commplatform/entry/NdPageList;->getList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v5, :cond_2

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/entry/DynamicInfo;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ms;->a(Lcom/nd/commplatform/entry/DynamicInfo;)Lcom/nd/commplatform/d/c/my;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    const-string v6, "NdActivityHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Activity Translate null Error, msgId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/DynamicInfo;->getMsgId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    invoke-virtual {v1, v4}, Lcom/nd/commplatform/entry/NdPageList;->setList(Ljava/util/List;)V

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method private static a(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/entry/NdTag;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/entry/NdTag;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdTag;->getDisplayText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcom/nd/commplatform/d/c/my;)V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/my;->b()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p0}, Lcom/nd/commplatform/d/c/ne;->a(Lcom/nd/commplatform/d/c/my;)V

    :goto_0
    return-void

    :sswitch_0
    invoke-static {p0}, Lcom/nd/commplatform/d/c/ne;->a(Lcom/nd/commplatform/d/c/my;)V

    goto :goto_0

    :sswitch_1
    move-object v0, p0

    check-cast v0, Lcom/nd/commplatform/d/c/mx;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/mx;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/nd/commplatform/d/c/nc;->a(Lcom/nd/commplatform/d/c/my;)V

    goto :goto_0

    :cond_0
    if-le v0, v1, :cond_1

    invoke-static {p0}, Lcom/nd/commplatform/d/c/nd;->a(Lcom/nd/commplatform/d/c/my;)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/nd/commplatform/d/c/ne;->a(Lcom/nd/commplatform/d/c/my;)V

    goto :goto_0

    :sswitch_2
    invoke-static {p0}, Lcom/nd/commplatform/d/c/nc;->a(Lcom/nd/commplatform/d/c/my;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x2711 -> :sswitch_2
        0x2712 -> :sswitch_0
        0x2713 -> :sswitch_2
        0x2714 -> :sswitch_0
        0x2715 -> :sswitch_2
        0x2716 -> :sswitch_0
        0x2717 -> :sswitch_2
        0x2718 -> :sswitch_0
        0x2719 -> :sswitch_2
        0x271a -> :sswitch_0
    .end sparse-switch
.end method

.method private static a(Lcom/nd/commplatform/entry/DynamicInfo;Lcom/nd/commplatform/d/c/my;)V
    .locals 2

    invoke-virtual {p0}, Lcom/nd/commplatform/entry/DynamicInfo;->getType()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/nd/commplatform/d/c/my;->a(I)V

    new-instance v0, Lcom/nd/commplatform/d/c/nb;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/nb;-><init>()V

    invoke-virtual {p0}, Lcom/nd/commplatform/entry/DynamicInfo;->getUin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/nb;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nd/commplatform/entry/DynamicInfo;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/nb;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nd/commplatform/entry/DynamicInfo;->getChecksum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/nb;->b(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/nd/commplatform/d/c/my;->a(Lcom/nd/commplatform/d/c/nb;)V

    invoke-virtual {p0}, Lcom/nd/commplatform/entry/DynamicInfo;->getSendTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nd/commplatform/d/c/my;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nd/commplatform/entry/DynamicInfo;->getMsgContent()Lcom/nd/commplatform/entry/NdMsgContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdMsgContent;->getTagList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ms;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nd/commplatform/d/c/my;->b(Ljava/lang/String;)V

    return-void
.end method

.method private static b(Lcom/nd/commplatform/entry/DynamicInfo;)Lcom/nd/commplatform/d/c/my;
    .locals 1

    new-instance v0, Lcom/nd/commplatform/d/c/my;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/my;-><init>()V

    invoke-static {p0, v0}, Lcom/nd/commplatform/d/c/ms;->a(Lcom/nd/commplatform/entry/DynamicInfo;Lcom/nd/commplatform/d/c/my;)V

    return-object v0
.end method

.method private static c(Lcom/nd/commplatform/entry/DynamicInfo;)Lcom/nd/commplatform/d/c/mx;
    .locals 11

    const/4 v10, 0x1

    const/4 v3, 0x0

    new-instance v4, Lcom/nd/commplatform/d/c/mx;

    invoke-direct {v4}, Lcom/nd/commplatform/d/c/mx;-><init>()V

    invoke-static {p0, v4}, Lcom/nd/commplatform/d/c/ms;->a(Lcom/nd/commplatform/entry/DynamicInfo;Lcom/nd/commplatform/d/c/my;)V

    invoke-virtual {p0}, Lcom/nd/commplatform/entry/DynamicInfo;->getMsgContent()Lcom/nd/commplatform/entry/NdMsgContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdMsgContent;->getTagList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v2, v3

    :goto_0
    if-ge v2, v6, :cond_1

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/entry/NdTag;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdTag;->getCmdId()I

    move-result v1

    if-ne v1, v10, :cond_0

    new-instance v8, Lcom/nd/commplatform/d/c/nb;

    invoke-direct {v8}, Lcom/nd/commplatform/d/c/nb;-><init>()V

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdTag;->getParams()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    if-lt v9, v10, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v8, v1}, Lcom/nd/commplatform/d/c/nb;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdTag;->getDisplayText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/nd/commplatform/d/c/nb;->c(Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v4, v7}, Lcom/nd/commplatform/d/c/mx;->a(Ljava/util/List;)V

    return-object v4
.end method

.method private static d(Lcom/nd/commplatform/entry/DynamicInfo;)Lcom/nd/commplatform/d/c/na;
    .locals 11

    const/4 v3, 0x0

    new-instance v4, Lcom/nd/commplatform/d/c/na;

    invoke-direct {v4}, Lcom/nd/commplatform/d/c/na;-><init>()V

    invoke-static {p0, v4}, Lcom/nd/commplatform/d/c/ms;->a(Lcom/nd/commplatform/entry/DynamicInfo;Lcom/nd/commplatform/d/c/my;)V

    invoke-virtual {p0}, Lcom/nd/commplatform/entry/DynamicInfo;->getMsgContent()Lcom/nd/commplatform/entry/NdMsgContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdMsgContent;->getTagList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v2, v3

    :goto_0
    if-ge v2, v6, :cond_1

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/entry/NdTag;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdTag;->getCmdId()I

    move-result v1

    const/4 v8, 0x2

    if-ne v1, v8, :cond_0

    new-instance v8, Lcom/nd/commplatform/d/c/mz;

    invoke-direct {v8}, Lcom/nd/commplatform/d/c/mz;-><init>()V

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdTag;->getParams()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    if-lt v9, v10, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v8, v1}, Lcom/nd/commplatform/d/c/mz;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdTag;->getDisplayText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/nd/commplatform/d/c/mz;->c(Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v4, v7}, Lcom/nd/commplatform/d/c/na;->a(Ljava/util/List;)V

    return-object v4
.end method
