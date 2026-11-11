.class final Lcom/nd/commplatform/d/c/io$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/io;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/nd/commplatform/d/c/io;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/io;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/io$6;->b:Lcom/nd/commplatform/d/c/io;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/io$6;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->m()Ljava/lang/String;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/io$6;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/io$6;->b:Lcom/nd/commplatform/d/c/io;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/io;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/io$6;->b:Lcom/nd/commplatform/d/c/io;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/io;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->mF:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/nd/commplatform/d/c/io$6$1;

    invoke-direct {v1, p0, p1}, Lcom/nd/commplatform/d/c/io$6$1;-><init>(Lcom/nd/commplatform/d/c/io$6;Landroid/content/DialogInterface;)V

    iget-object v2, p0, Lcom/nd/commplatform/d/c/io$6;->b:Lcom/nd/commplatform/d/c/io;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/nd/commplatform/d/c/io;->b(Z)V

    iget-object v2, p0, Lcom/nd/commplatform/d/c/io$6;->b:Lcom/nd/commplatform/d/c/io;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/nd/commplatform/d/c/io;->b(Z)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v2

    iget-object v3, p0, Lcom/nd/commplatform/d/c/io$6;->b:Lcom/nd/commplatform/d/c/io;

    invoke-virtual {v3}, Lcom/nd/commplatform/d/c/io;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v0, v3, v1}, Lcom/nd/commplatform/d/c/a;->d(Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    goto :goto_0
.end method
