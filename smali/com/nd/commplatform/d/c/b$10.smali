.class final Lcom/nd/commplatform/d/c/b$10;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/b;->b(ILcom/nd/commplatform/entry/NdBaseProductInfo;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/NdCallbackListener",
        "<",
        "Lcom/nd/commplatform/entry/NdVirtualPayResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/nd/commplatform/NdCallbackListener;

.field final synthetic c:I

.field final synthetic d:Lcom/nd/commplatform/d/c/b;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/b;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;I)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/b$10;->d:Lcom/nd/commplatform/d/c/b;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/b$10;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/nd/commplatform/d/c/b$10;->b:Lcom/nd/commplatform/NdCallbackListener;

    iput p4, p0, Lcom/nd/commplatform/d/c/b$10;->c:I

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/nd/commplatform/entry/NdVirtualPayResult;)V
    .locals 12

    const/16 v3, -0x4653

    const/4 v5, 0x0

    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdVirtualPayResult;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/b$10;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/b$10;->b:Lcom/nd/commplatform/NdCallbackListener;

    sget v4, Lcom/nd/commplatform/d/c/jo$h;->gR:I

    move v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/nd/commplatform/d/c/b;->a(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;ILcom/nd/commplatform/entry/NdVirtualPayResult;IZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/b$10;->b:Lcom/nd/commplatform/NdCallbackListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/b$10;->b:Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {v0}, Lcom/nd/commplatform/NdCallbackListener;->isDestroy()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdVirtualPayResult;->getErrorCode()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/b$10;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->br:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->bq:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->gi:I

    new-instance v2, Lcom/nd/commplatform/d/c/b$10$1;

    invoke-direct {v2, p0}, Lcom/nd/commplatform/d/c/b$10$1;-><init>(Lcom/nd/commplatform/d/c/b$10;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->bG:I

    new-instance v2, Lcom/nd/commplatform/d/c/b$10$2;

    invoke-direct {v2, p0, p2}, Lcom/nd/commplatform/d/c/b$10$2;-><init>(Lcom/nd/commplatform/d/c/b$10;Lcom/nd/commplatform/entry/NdVirtualPayResult;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/nd/commplatform/d/c/b$10$3;

    invoke-direct {v1, p0, p2}, Lcom/nd/commplatform/d/c/b$10$3;-><init>(Lcom/nd/commplatform/d/c/b$10;Lcom/nd/commplatform/entry/NdVirtualPayResult;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdVirtualPayResult;->getErrDesc()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/nd/commplatform/d/c/b$10;->a:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdVirtualPayResult;->getErrDesc()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/b$10;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/b$10;->b:Lcom/nd/commplatform/NdCallbackListener;

    move-object v4, p2

    move v6, v5

    invoke-static/range {v1 .. v6}, Lcom/nd/commplatform/d/c/b;->a(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;ILcom/nd/commplatform/entry/NdVirtualPayResult;IZ)V

    goto :goto_0

    :cond_4
    iget-object v6, p0, Lcom/nd/commplatform/d/c/b$10;->a:Landroid/content/Context;

    iget-object v7, p0, Lcom/nd/commplatform/d/c/b$10;->b:Lcom/nd/commplatform/NdCallbackListener;

    sget v10, Lcom/nd/commplatform/d/c/jo$h;->gr:I

    move v8, v3

    move-object v9, p2

    move v11, v5

    invoke-static/range {v6 .. v11}, Lcom/nd/commplatform/d/c/b;->a(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;ILcom/nd/commplatform/entry/NdVirtualPayResult;IZ)V

    goto :goto_0
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p2, Lcom/nd/commplatform/entry/NdVirtualPayResult;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/b$10;->a(ILcom/nd/commplatform/entry/NdVirtualPayResult;)V

    return-void
.end method
