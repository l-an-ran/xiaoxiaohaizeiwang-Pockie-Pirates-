.class final Lcom/nd/commplatform/d/c/b$11;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/b;->d(ILcom/nd/commplatform/entry/NdBaseProductInfo;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/NdCallbackListener",
        "<",
        "Lcom/nd/commplatform/entry/NdProductInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/NdCallbackListener;

.field final synthetic b:I

.field final synthetic c:Lcom/nd/commplatform/entry/NdBaseProductInfo;

.field final synthetic d:I

.field final synthetic e:Landroid/content/Context;

.field final synthetic f:Lcom/nd/commplatform/d/c/b;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/b;Lcom/nd/commplatform/NdCallbackListener;ILcom/nd/commplatform/entry/NdBaseProductInfo;ILandroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/b$11;->f:Lcom/nd/commplatform/d/c/b;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/b$11;->a:Lcom/nd/commplatform/NdCallbackListener;

    iput p3, p0, Lcom/nd/commplatform/d/c/b$11;->b:I

    iput-object p4, p0, Lcom/nd/commplatform/d/c/b$11;->c:Lcom/nd/commplatform/entry/NdBaseProductInfo;

    iput p5, p0, Lcom/nd/commplatform/d/c/b$11;->d:I

    iput-object p6, p0, Lcom/nd/commplatform/d/c/b$11;->e:Landroid/content/Context;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/nd/commplatform/entry/NdProductInfo;)V
    .locals 7

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/b$11;->a:Lcom/nd/commplatform/NdCallbackListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/b$11;->a:Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {v0}, Lcom/nd/commplatform/NdCallbackListener;->isDestroy()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    new-instance v6, Lcom/nd/commplatform/d/c/b$11$1;

    invoke-direct {v6, p0, p2}, Lcom/nd/commplatform/d/c/b$11$1;-><init>(Lcom/nd/commplatform/d/c/b$11;Lcom/nd/commplatform/entry/NdProductInfo;)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/a;->b()I

    move-result v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/b$11;->c:Lcom/nd/commplatform/entry/NdBaseProductInfo;

    invoke-virtual {v2}, Lcom/nd/commplatform/entry/NdBaseProductInfo;->getProductId()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/nd/commplatform/d/c/b$11;->b:I

    iget-object v5, p0, Lcom/nd/commplatform/d/c/b$11;->e:Landroid/content/Context;

    invoke-virtual/range {v0 .. v6}, Lcom/nd/commplatform/d/c/a;->a(ILjava/lang/String;ILjava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/nd/commplatform/d/c/b$11;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/b$11;->a:Lcom/nd/commplatform/NdCallbackListener;

    const/16 v3, -0x5dc2

    sget v5, Lcom/nd/commplatform/d/c/jo$h;->hu:I

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/nd/commplatform/d/c/b;->a(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;ILcom/nd/commplatform/entry/NdVirtualPayResult;IZ)V

    goto :goto_0
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p2, Lcom/nd/commplatform/entry/NdProductInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/b$11;->a(ILcom/nd/commplatform/entry/NdProductInfo;)V

    return-void
.end method
