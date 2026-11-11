.class public Lcom/nd/commplatform/entry/NdMsgContent;
.super Ljava/lang/Object;


# instance fields
.field private content:Ljava/lang/String;

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/entry/NdTag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdMsgContent;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getTagList()Ljava/util/List;
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

    iget-object v0, p0, Lcom/nd/commplatform/entry/NdMsgContent;->tags:Ljava/util/List;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/entry/NdMsgContent;->content:Ljava/lang/String;

    invoke-static {p1}, Lcom/nd/commplatform/entry/NdTag;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/entry/NdMsgContent;->tags:Ljava/util/List;

    return-void
.end method
