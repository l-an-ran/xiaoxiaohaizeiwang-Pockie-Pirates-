.class final Lcom/nd/commplatform/d/c/ga$1;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/ga;->a(Lcom/nd/commplatform/widget/NdFrameInnerContent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/NdCallbackListener",
        "<",
        "Lcom/nd/commplatform/entry/NdMsgTagResp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/widget/NdFrameInnerContent;

.field final synthetic b:I

.field final synthetic c:Lcom/nd/commplatform/d/c/ga;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/ga;Lcom/nd/commplatform/widget/NdFrameInnerContent;I)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ga$1;->c:Lcom/nd/commplatform/d/c/ga;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/ga$1;->a:Lcom/nd/commplatform/widget/NdFrameInnerContent;

    iput p3, p0, Lcom/nd/commplatform/d/c/ga$1;->b:I

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/nd/commplatform/entry/NdMsgTagResp;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ga$1;->a:Lcom/nd/commplatform/widget/NdFrameInnerContent;

    invoke-virtual {v0, v3}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->b(Z)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ga$1;->c:Lcom/nd/commplatform/d/c/ga;

    invoke-virtual {v0, v3}, Lcom/nd/commplatform/d/c/ga;->a(Z)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ga$1;->a:Lcom/nd/commplatform/widget/NdFrameInnerContent;

    invoke-virtual {v0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->getContext()Landroid/content/Context;

    move-result-object v4

    if-nez p1, :cond_3

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdMsgTagResp;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdMsgTagResp;->getErrorText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v4, v1}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const-string v1, ""

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ga$1;->c:Lcom/nd/commplatform/d/c/ga;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/ga;->a:Lcom/nd/commplatform/d/c/gf;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/gf;->k()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    move v2, v3

    :goto_0
    if-ge v2, v6, :cond_4

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/entry/NdTag;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdTag;->getCmdId()I

    move-result v7

    if-ne v7, v8, :cond_2

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdTag;->getDisplayText()Ljava/lang/String;

    move-result-object v0

    :goto_1
    sget v1, Lcom/nd/commplatform/d/c/jo$h;->hs:I

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {v4, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ga$1;->c:Lcom/nd/commplatform/d/c/ga;

    iget-object v1, v1, Lcom/nd/commplatform/d/c/ga;->a:Lcom/nd/commplatform/d/c/gf;

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/gf;->b(Ljava/lang/String;)V

    iget v0, p0, Lcom/nd/commplatform/d/c/ga$1;->b:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/cb;->c(ILcom/nd/commplatform/d/c/bx;)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    invoke-static {p0, v4, p1}, Lcom/nd/commplatform/d/c/nt;->a(Lcom/nd/commplatform/NdCallbackListener;Landroid/content/Context;I)V

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p2, Lcom/nd/commplatform/entry/NdMsgTagResp;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/ga$1;->a(ILcom/nd/commplatform/entry/NdMsgTagResp;)V

    return-void
.end method
