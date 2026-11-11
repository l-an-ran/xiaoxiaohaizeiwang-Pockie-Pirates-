.class final Lcom/nd/commplatform/d/c/ix$5;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/ix;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/NdCallbackListener",
        "<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/ix;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/ix;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ix$5;->a:Lcom/nd/commplatform/d/c/ix;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Double;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ix$5;->a:Lcom/nd/commplatform/d/c/ix;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/ix;->a(Lcom/nd/commplatform/d/c/ix;Z)Z

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ix$5;->a:Lcom/nd/commplatform/d/c/ix;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ix;->b(Lcom/nd/commplatform/d/c/ix;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ix$5;->a:Lcom/nd/commplatform/d/c/ix;

    invoke-virtual {v0, v2}, Lcom/nd/commplatform/d/c/ix;->b(Z)V

    invoke-static {}, Lcom/nd/commplatform/d/c/of;->a()Lcom/nd/commplatform/d/c/of;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/nd/commplatform/d/c/of;->a(Ljava/lang/Double;)V

    if-nez p1, :cond_1

    invoke-static {}, Lcom/nd/commplatform/d/c/bz;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v2}, Lcom/nd/commplatform/d/c/bz;->a(I)V

    :goto_0
    const/16 v0, 0x4b3

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    :goto_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ix$5;->a:Lcom/nd/commplatform/d/c/ix;

    invoke-virtual {v0, v3}, Lcom/nd/commplatform/d/c/ix;->e(I)Lcom/nd/commplatform/NdCallbackListener;

    return-void

    :cond_0
    invoke-static {v3, p1}, Lcom/nd/commplatform/d/c/ol;->a(II)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/nd/commplatform/d/c/bz;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x2

    invoke-static {v0}, Lcom/nd/commplatform/d/c/bz;->a(I)V

    :goto_2
    const/16 v0, -0xfa3

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ix$5;->a:Lcom/nd/commplatform/d/c/ix;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/ix;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->gQ:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/ix$5;->a:Lcom/nd/commplatform/d/c/ix;

    invoke-virtual {v2}, Lcom/nd/commplatform/d/c/ix;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget v0, Lcom/nd/commplatform/d/c/jo$h;->kD:I

    new-instance v2, Lcom/nd/commplatform/d/c/ix$5$1;

    invoke-direct {v2, p0}, Lcom/nd/commplatform/d/c/ix$5$1;-><init>(Lcom/nd/commplatform/d/c/ix$5;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    :cond_2
    const/16 v0, -0x4653

    invoke-static {v3, v0}, Lcom/nd/commplatform/d/c/ol;->a(II)V

    goto :goto_2

    :cond_3
    const/16 v0, -0x59da

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ix$5;->a:Lcom/nd/commplatform/d/c/ix;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/ix;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->gS:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ix$5;->a:Lcom/nd/commplatform/d/c/ix;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/ix;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->gr:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p2, Ljava/lang/Double;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/ix$5;->a(ILjava/lang/Double;)V

    return-void
.end method
