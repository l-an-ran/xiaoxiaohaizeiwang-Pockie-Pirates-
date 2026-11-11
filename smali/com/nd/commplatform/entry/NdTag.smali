.class public Lcom/nd/commplatform/entry/NdTag;
.super Ljava/lang/Object;


# static fields
.field public static final TAG_CMD_APP_INFO:I = 0x2

.field public static final TAG_CMD_CANCEL_SUBSTITUTE_PAY:I = 0x67

.field public static final TAG_CMD_REFUSE_SUBSTITUTE_PAY:I = 0x66

.field public static final TAG_CMD_REPLT_ADD_FRIEND_REQUEST:I = 0x65

.field public static final TAG_CMD_REPLT_ADD_FRIEND_REQUEST_PARAM_AGREE:I = 0x1

.field public static final TAG_CMD_REPLT_ADD_FRIEND_REQUEST_PARAM_REFUSE:I = 0x2

.field public static final TAG_CMD_SUBSTITUTE_PAY:I = 0x4

.field public static final TAG_CMD_USER_INFO:I = 0x1

.field private static TAG_INVALID_CMD:I

.field private static TAG_NULL_CMD:I


# instance fields
.field private cmdId:I

.field private params:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private userTxt:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/nd/commplatform/entry/NdTag;->TAG_NULL_CMD:I

    const/4 v0, -0x1

    sput v0, Lcom/nd/commplatform/entry/NdTag;->TAG_INVALID_CMD:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/nd/commplatform/entry/NdTag;->TAG_INVALID_CMD:I

    iput v0, p0, Lcom/nd/commplatform/entry/NdTag;->cmdId:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/entry/NdTag;->params:Ljava/util/List;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/entry/NdTag;->userTxt:Ljava/lang/String;

    return-void
.end method

.method private static createNullTag(Ljava/lang/String;)Lcom/nd/commplatform/entry/NdTag;
    .locals 2
    .param p0, "txt"    # Ljava/lang/String;

    .prologue
    new-instance v0, Lcom/nd/commplatform/entry/NdTag;

    invoke-direct {v0}, Lcom/nd/commplatform/entry/NdTag;-><init>()V

    sget v1, Lcom/nd/commplatform/entry/NdTag;->TAG_NULL_CMD:I

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/entry/NdTag;->setCmdId(I)V

    invoke-virtual {v0, p0}, Lcom/nd/commplatform/entry/NdTag;->setDisplayText(Ljava/lang/String;)V

    return-object v0
.end method

.method private static createValidTag(Ljava/lang/String;)Lcom/nd/commplatform/entry/NdTag;
    .locals 9
    .param p0, "txt"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    const-string v0, ">"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "<U"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\|"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v6, v2

    move v0, v3

    :goto_1
    if-lt v0, v6, :cond_4

    new-instance v2, Lcom/nd/commplatform/entry/NdTag;

    invoke-direct {v2}, Lcom/nd/commplatform/entry/NdTag;-><init>()V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/nd/commplatform/entry/NdTag;->setCmdId(I)V

    if-le v6, v8, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5, v8, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2, v0}, Lcom/nd/commplatform/entry/NdTag;->setParams(Ljava/util/List;)V

    :cond_2
    add-int/lit8 v0, v4, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_6

    :cond_3
    move-object v0, v1

    goto :goto_0

    :cond_4
    aget-object v7, v2, v0

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_0

    :cond_6
    invoke-virtual {v2, v0}, Lcom/nd/commplatform/entry/NdTag;->setDisplayText(Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0
.end method

.method public static parse(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/entry/NdTag;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "</U>"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_0
    if-lt v0, v4, :cond_0

    return-object v2

    :cond_0
    aget-object v5, v3, v0

    const-string v6, "<U"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_2

    invoke-static {v5}, Lcom/nd/commplatform/entry/NdTag;->createNullTag(Ljava/lang/String;)Lcom/nd/commplatform/entry/NdTag;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v5, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/nd/commplatform/entry/NdTag;->createNullTag(Ljava/lang/String;)Lcom/nd/commplatform/entry/NdTag;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/nd/commplatform/entry/NdTag;->createValidTag(Ljava/lang/String;)Lcom/nd/commplatform/entry/NdTag;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public getCmdId()I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/entry/NdTag;->cmdId:I

    return v0
.end method

.method public getDisplayText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdTag;->userTxt:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdTag;->params:Ljava/util/List;

    return-object v0
.end method

.method public isAction()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/nd/commplatform/entry/NdTag;->cmdId:I

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_0
        0x65 -> :sswitch_0
        0x66 -> :sswitch_0
        0x67 -> :sswitch_0
    .end sparse-switch
.end method

.method public setCmdId(I)V
    .locals 0
    .param p1, "cmdId"    # I

    .prologue
    iput p1, p0, Lcom/nd/commplatform/entry/NdTag;->cmdId:I

    return-void
.end method

.method public setDisplayText(Ljava/lang/String;)V
    .locals 0
    .param p1, "userTxt"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdTag;->userTxt:Ljava/lang/String;

    return-void
.end method

.method public setParams(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdTag;->params:Ljava/util/List;

    return-void
.end method
