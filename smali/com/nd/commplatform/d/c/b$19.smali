.class final Lcom/nd/commplatform/d/c/b$19;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/b;->a(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/NdCallbackListener",
        "<",
        "Lcom/nd/commplatform/entry/NdNewAppVersionInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/nd/commplatform/NdCallbackListener;

.field final synthetic c:Lcom/nd/commplatform/d/c/b;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/b;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/b$19;->c:Lcom/nd/commplatform/d/c/b;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/b$19;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/nd/commplatform/d/c/b$19;->b:Lcom/nd/commplatform/NdCallbackListener;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/nd/commplatform/entry/NdNewAppVersionInfo;)V
    .locals 3

    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdNewAppVersionInfo;->getNotify()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/b$19;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->fV:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdNewAppVersionInfo;->getNotify()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->kD:I

    new-instance v2, Lcom/nd/commplatform/d/c/b$19$1;

    invoke-direct {v2, p0, p2}, Lcom/nd/commplatform/d/c/b$19$1;-><init>(Lcom/nd/commplatform/d/c/b$19;Lcom/nd/commplatform/entry/NdNewAppVersionInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/nd/commplatform/d/c/b$19$2;

    invoke-direct {v1, p0, p2}, Lcom/nd/commplatform/d/c/b$19$2;-><init>(Lcom/nd/commplatform/d/c/b$19;Lcom/nd/commplatform/entry/NdNewAppVersionInfo;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/b$19;->c:Lcom/nd/commplatform/d/c/b;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/b$19;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/b$19;->b:Lcom/nd/commplatform/NdCallbackListener;

    invoke-static {v0, p2, v1, v2}, Lcom/nd/commplatform/d/c/b;->a(Lcom/nd/commplatform/d/c/b;Lcom/nd/commplatform/entry/NdNewAppVersionInfo;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/b$19;->b:Lcom/nd/commplatform/NdCallbackListener;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/nd/commplatform/NdCallbackListener;->callback(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p2, Lcom/nd/commplatform/entry/NdNewAppVersionInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/b$19;->a(ILcom/nd/commplatform/entry/NdNewAppVersionInfo;)V

    return-void
.end method
