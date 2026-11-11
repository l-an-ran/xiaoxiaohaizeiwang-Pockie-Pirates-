.class final Lcom/nd/commplatform/d/c/io$6$1;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/io$6;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/NdCallbackListener",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/DialogInterface;

.field final synthetic b:Lcom/nd/commplatform/d/c/io$6;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/io$6;Landroid/content/DialogInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/io$6$1;->b:Lcom/nd/commplatform/d/c/io$6;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/io$6$1;->a:Landroid/content/DialogInterface;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/Object;)V
    .locals 3
    .param p1, "responseCode"    # I
    .param p2, "t"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/io$6$1;->b:Lcom/nd/commplatform/d/c/io$6;

    iget-object v1, v1, Lcom/nd/commplatform/d/c/io$6;->b:Lcom/nd/commplatform/d/c/io;

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/io;->b(Z)V

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/nd/commplatform/d/c/io$6$1;->b:Lcom/nd/commplatform/d/c/io$6;

    iget-object v1, v1, Lcom/nd/commplatform/d/c/io$6;->b:Lcom/nd/commplatform/d/c/io;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/io;->a(Lcom/nd/commplatform/d/c/io;)Landroid/widget/CompoundButton;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/io$6$1;->b:Lcom/nd/commplatform/d/c/io$6;

    iget-object v2, v2, Lcom/nd/commplatform/d/c/io$6;->b:Lcom/nd/commplatform/d/c/io;

    invoke-static {v2}, Lcom/nd/commplatform/d/c/io;->a(Lcom/nd/commplatform/d/c/io;)Landroid/widget/CompoundButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/io$6$1;->b:Lcom/nd/commplatform/d/c/io$6;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/io$6;->b:Lcom/nd/commplatform/d/c/io;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/io$6$1;->b:Lcom/nd/commplatform/d/c/io$6;

    iget-object v1, v1, Lcom/nd/commplatform/d/c/io$6;->b:Lcom/nd/commplatform/d/c/io;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/io;->a(Lcom/nd/commplatform/d/c/io;)Landroid/widget/CompoundButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/io;->a(Lcom/nd/commplatform/d/c/io;Z)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/io$6$1;->a:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->cancel()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/io$6$1;->b:Lcom/nd/commplatform/d/c/io$6;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/io$6;->b:Lcom/nd/commplatform/d/c/io;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/io;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/nd/commplatform/d/c/nt;->a(Lcom/nd/commplatform/NdCallbackListener;Landroid/content/Context;I)V

    goto :goto_0
.end method
