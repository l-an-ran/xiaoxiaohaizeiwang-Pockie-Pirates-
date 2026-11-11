.class final Lcom/nd/commplatform/d/c/g$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/g;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/g$a;

.field final synthetic b:Lcom/nd/commplatform/d/c/g;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/g;Lcom/nd/commplatform/d/c/g$a;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/g$2;->b:Lcom/nd/commplatform/d/c/g;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/g$2;->a:Lcom/nd/commplatform/d/c/g$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/d/c/g$2;->a:Lcom/nd/commplatform/d/c/g$a;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/g$a;->getCount()I

    move-result v0

    if-lt p2, v0, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/g$2;->b:Lcom/nd/commplatform/d/c/g;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/g;->a(Lcom/nd/commplatform/d/c/g;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/g$2;->a:Lcom/nd/commplatform/d/c/g$a;

    invoke-virtual {v1, p2}, Lcom/nd/commplatform/d/c/g$a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/g$2;->b:Lcom/nd/commplatform/d/c/g;

    invoke-static {v2}, Lcom/nd/commplatform/d/c/g;->e(Lcom/nd/commplatform/d/c/g;)Lcom/nd/commplatform/entry/NdLoginConfig;

    move-result-object v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/g$2;->b:Lcom/nd/commplatform/d/c/g;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/g;->e(Lcom/nd/commplatform/d/c/g;)Lcom/nd/commplatform/entry/NdLoginConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdLoginConfig;->getUserName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/nd/commplatform/d/c/g$2;->b:Lcom/nd/commplatform/d/c/g;

    invoke-static {v2}, Lcom/nd/commplatform/d/c/g;->e(Lcom/nd/commplatform/d/c/g;)Lcom/nd/commplatform/entry/NdLoginConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nd/commplatform/entry/NdLoginConfig;->getPassword()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nd/commplatform/d/c/g$2;->b:Lcom/nd/commplatform/d/c/g;

    invoke-static {v3}, Lcom/nd/commplatform/d/c/g;->e(Lcom/nd/commplatform/d/c/g;)Lcom/nd/commplatform/entry/NdLoginConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nd/commplatform/entry/NdLoginConfig;->isSavePassword()Z

    move-result v3

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g$2;->b:Lcom/nd/commplatform/d/c/g;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/g;->f(Lcom/nd/commplatform/d/c/g;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/g$2;->b:Lcom/nd/commplatform/d/c/g;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/g;->a(Lcom/nd/commplatform/d/c/g;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ok;->b(Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g$2;->b:Lcom/nd/commplatform/d/c/g;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/g;->a(Lcom/nd/commplatform/d/c/g;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g$2;->b:Lcom/nd/commplatform/d/c/g;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/g;->a(Lcom/nd/commplatform/d/c/g;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v2, p0, Lcom/nd/commplatform/d/c/g$2;->b:Lcom/nd/commplatform/d/c/g;

    invoke-static {v2}, Lcom/nd/commplatform/d/c/g;->a(Lcom/nd/commplatform/d/c/g;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g$2;->b:Lcom/nd/commplatform/d/c/g;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/g;->a(Lcom/nd/commplatform/d/c/g;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ok;->a(Landroid/widget/EditText;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g$2;->b:Lcom/nd/commplatform/d/c/g;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/g;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/e;->a(Landroid/content/Context;)Lcom/nd/commplatform/d/c/d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/d;->a(Ljava/lang/String;)Lcom/nd/commplatform/d/c/c;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g$2;->b:Lcom/nd/commplatform/d/c/g;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/g;->f(Lcom/nd/commplatform/d/c/g;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, "********"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/nd/commplatform/d/c/g$2;->b:Lcom/nd/commplatform/d/c/g;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/g;->f(Lcom/nd/commplatform/d/c/g;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/nd/commplatform/d/c/g$2;->b:Lcom/nd/commplatform/d/c/g;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/g;->f(Lcom/nd/commplatform/d/c/g;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method
