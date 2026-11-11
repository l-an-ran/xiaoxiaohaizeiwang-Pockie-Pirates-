.class final Lcom/nd/commplatform/d/c/og$1;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/og;->a(ZZLjava/lang/String;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Lcom/nd/commplatform/NdCallbackListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/NdCallbackListener",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/nd/commplatform/NdCallbackListener;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/nd/commplatform/NdCallbackListener;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/og$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/og$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/nd/commplatform/d/c/og$1;->c:Lcom/nd/commplatform/NdCallbackListener;

    iput-object p4, p0, Lcom/nd/commplatform/d/c/og$1;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/nd/commplatform/d/c/og$1;->e:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/nd/commplatform/d/c/og$1;->f:Z

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    if-nez p1, :cond_3

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/og$1;->a:Landroid/content/Context;

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->cf:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nd/commplatform/d/c/og$1;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/og$1;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->cg:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->cD:I

    new-instance v2, Lcom/nd/commplatform/d/c/og$1$2;

    invoke-direct {v2, p0, p2}, Lcom/nd/commplatform/d/c/og$1$2;-><init>(Lcom/nd/commplatform/d/c/og$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->bG:I

    new-instance v2, Lcom/nd/commplatform/d/c/og$1$1;

    invoke-direct {v2, p0, p2}, Lcom/nd/commplatform/d/c/og$1$1;-><init>(Lcom/nd/commplatform/d/c/og$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/og$1;->c:Lcom/nd/commplatform/NdCallbackListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/og$1;->c:Lcom/nd/commplatform/NdCallbackListener;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/nd/commplatform/NdCallbackListener;->callback(ILjava/lang/Object;)V

    :cond_1
    :goto_1
    invoke-static {}, Lcom/nd/commplatform/d/c/og;->b()Lcom/nd/commplatform/d/c/cc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/cc;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/nd/commplatform/d/c/og;->b()Lcom/nd/commplatform/d/c/cc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/cc;->cancel()V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/nd/commplatform/d/c/og$1;->c:Lcom/nd/commplatform/NdCallbackListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/og$1;->c:Lcom/nd/commplatform/NdCallbackListener;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/nd/commplatform/NdCallbackListener;->callback(ILjava/lang/Object;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p2, Ljava/lang/String;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/og$1;->a(ILjava/lang/String;)V

    return-void
.end method
