.class final Lcom/nd/commplatform/d/c/fz$1;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/fz;->a(Lcom/nd/commplatform/widget/NdFrameInnerContent;)V
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

.field final synthetic c:Lcom/nd/commplatform/d/c/fz;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/fz;Lcom/nd/commplatform/widget/NdFrameInnerContent;I)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/fz$1;->c:Lcom/nd/commplatform/d/c/fz;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/fz$1;->a:Lcom/nd/commplatform/widget/NdFrameInnerContent;

    iput p3, p0, Lcom/nd/commplatform/d/c/fz$1;->b:I

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/nd/commplatform/entry/NdMsgTagResp;)V
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fz$1;->a:Lcom/nd/commplatform/widget/NdFrameInnerContent;

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->b(Z)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fz$1;->c:Lcom/nd/commplatform/d/c/fz;

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/fz;->a(Z)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fz$1;->a:Lcom/nd/commplatform/widget/NdFrameInnerContent;

    invoke-virtual {v1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez p1, :cond_4

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdMsgTagResp;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdMsgTagResp;->getErrorText()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v2, v3}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    if-eqz v1, :cond_3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fz$1;->c:Lcom/nd/commplatform/d/c/fz;

    iget-object v1, v1, Lcom/nd/commplatform/d/c/fz;->a:Lcom/nd/commplatform/d/c/gf;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/gf;->k()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_2

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/entry/NdTag;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdTag;->getCmdId()I

    move-result v6

    const/16 v7, 0x67

    if-ne v6, v7, :cond_1

    sget v0, Lcom/nd/commplatform/d/c/jo$h;->bH:I

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdTag;->getDisplayText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fz$1;->c:Lcom/nd/commplatform/d/c/fz;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/fz;->a:Lcom/nd/commplatform/d/c/gf;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/gf;->b(Ljava/lang/String;)V

    iget v0, p0, Lcom/nd/commplatform/d/c/fz$1;->b:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/cb;->c(ILcom/nd/commplatform/d/c/bx;)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    invoke-static {p0, v2, p1}, Lcom/nd/commplatform/d/c/nt;->a(Lcom/nd/commplatform/NdCallbackListener;Landroid/content/Context;I)V

    goto :goto_2
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p2, Lcom/nd/commplatform/entry/NdMsgTagResp;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/fz$1;->a(ILcom/nd/commplatform/entry/NdMsgTagResp;)V

    return-void
.end method
