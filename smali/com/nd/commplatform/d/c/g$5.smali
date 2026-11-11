.class final Lcom/nd/commplatform/d/c/g$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/g;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Vector;

.field final synthetic b:Lcom/nd/commplatform/d/c/g;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/g;Ljava/util/Vector;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/g$5;->b:Lcom/nd/commplatform/d/c/g;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/g$5;->a:Ljava/util/Vector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/d/c/g$5;->b:Lcom/nd/commplatform/d/c/g;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/g;->a(Lcom/nd/commplatform/d/c/g;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g$5;->a:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/nd/commplatform/d/c/g$5;->b:Lcom/nd/commplatform/d/c/g;

    invoke-static {v2}, Lcom/nd/commplatform/d/c/g;->e(Lcom/nd/commplatform/d/c/g;)Lcom/nd/commplatform/entry/NdLoginConfig;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/nd/commplatform/d/c/g$5;->b:Lcom/nd/commplatform/d/c/g;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/g;->e(Lcom/nd/commplatform/d/c/g;)Lcom/nd/commplatform/entry/NdLoginConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdLoginConfig;->getUserName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/g$5;->b:Lcom/nd/commplatform/d/c/g;

    invoke-static {v2}, Lcom/nd/commplatform/d/c/g;->e(Lcom/nd/commplatform/d/c/g;)Lcom/nd/commplatform/entry/NdLoginConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nd/commplatform/entry/NdLoginConfig;->getPassword()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nd/commplatform/d/c/g$5;->b:Lcom/nd/commplatform/d/c/g;

    invoke-static {v3}, Lcom/nd/commplatform/d/c/g;->e(Lcom/nd/commplatform/d/c/g;)Lcom/nd/commplatform/entry/NdLoginConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nd/commplatform/entry/NdLoginConfig;->isSavePassword()Z

    move-result v3

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/nd/commplatform/d/c/g$5;->b:Lcom/nd/commplatform/d/c/g;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/g;->f(Lcom/nd/commplatform/d/c/g;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/nd/commplatform/d/c/g$5;->b:Lcom/nd/commplatform/d/c/g;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/g;->a(Lcom/nd/commplatform/d/c/g;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/nd/commplatform/d/c/g$5;->b:Lcom/nd/commplatform/d/c/g;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/g;->f(Lcom/nd/commplatform/d/c/g;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
