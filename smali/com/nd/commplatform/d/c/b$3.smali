.class final Lcom/nd/commplatform/d/c/b$3;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/b;->a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/NdCallbackListener",
        "<",
        "Lcom/nd/commplatform/entry/NdIcon;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/NdCallbackListener;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:I

.field final synthetic d:Lcom/nd/commplatform/d/c/b;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/b;Lcom/nd/commplatform/NdCallbackListener;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/b$3;->d:Lcom/nd/commplatform/d/c/b;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/b$3;->a:Lcom/nd/commplatform/NdCallbackListener;

    iput-object p3, p0, Lcom/nd/commplatform/d/c/b$3;->b:Landroid/content/Context;

    iput p4, p0, Lcom/nd/commplatform/d/c/b$3;->c:I

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/nd/commplatform/entry/NdIcon;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/16 v3, -0x7d4

    iget-object v0, p0, Lcom/nd/commplatform/d/c/b$3;->a:Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {v0}, Lcom/nd/commplatform/NdCallbackListener;->isDestroy()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/b$3;->a:Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {v0, v3, v4}, Lcom/nd/commplatform/NdCallbackListener;->callback(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdIcon;->getCheckSum()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdIcon;->getImg()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_4

    if-eqz v0, :cond_3

    const-string v1, "ffffffffffffffffffffffffffffffff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/b$3;->b:Landroid/content/Context;

    iget v1, p0, Lcom/nd/commplatform/d/c/b$3;->c:I

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/b;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/b$3;->a:Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {v0, v3, v4}, Lcom/nd/commplatform/NdCallbackListener;->callback(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/nd/commplatform/d/c/b$3;->a:Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {v1, v5, v0}, Lcom/nd/commplatform/NdCallbackListener;->callback(ILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/nd/commplatform/d/c/b$3;->a:Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {v0, v3, v4}, Lcom/nd/commplatform/NdCallbackListener;->callback(ILjava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdIcon;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdIcon;->getDimension()I

    move-result v2

    if-nez v0, :cond_5

    const-string v0, ""

    :cond_5
    invoke-static {v1, v2, v0}, Lcom/nd/commplatform/d/c/b;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/nd/commplatform/d/c/b$3;->a:Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {v0, v3, v4}, Lcom/nd/commplatform/NdCallbackListener;->callback(ILjava/lang/Object;)V

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/nd/commplatform/d/c/b$3;->a:Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {v1, v5, v0}, Lcom/nd/commplatform/NdCallbackListener;->callback(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p2, Lcom/nd/commplatform/entry/NdIcon;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/b$3;->a(ILcom/nd/commplatform/entry/NdIcon;)V

    return-void
.end method
