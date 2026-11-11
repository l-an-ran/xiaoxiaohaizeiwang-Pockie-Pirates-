.class final Lcom/nd/commplatform/d/c/g$a$1;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/g$a;->onClick(Landroid/view/View;)V
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/nd/commplatform/d/c/g$a;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/g$a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/g$a$1;->b:Lcom/nd/commplatform/d/c/g$a;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/g$a$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/Object;)V
    .locals 2
    .param p1, "responseCode"    # I
    .param p2, "t"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/d/c/g$a$1;->b:Lcom/nd/commplatform/d/c/g$a;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/g$a;->a:Lcom/nd/commplatform/d/c/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/g;->b(Z)V

    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g$a$1;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/g$a$1;->b:Lcom/nd/commplatform/d/c/g$a;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/g$a;->a(Lcom/nd/commplatform/d/c/g$a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g$a$1;->b:Lcom/nd/commplatform/d/c/g$a;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/g$a;->a(Lcom/nd/commplatform/d/c/g$a;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/g$a$1;->b:Lcom/nd/commplatform/d/c/g$a;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/g$a;->b(Lcom/nd/commplatform/d/c/g$a;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/g$a$1;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g$a$1;->b:Lcom/nd/commplatform/d/c/g$a;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/g$a;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g$a$1;->b:Lcom/nd/commplatform/d/c/g$a;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/g$a;->a:Lcom/nd/commplatform/d/c/g;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/g;->a(Lcom/nd/commplatform/d/c/g;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g$a$1;->b:Lcom/nd/commplatform/d/c/g$a;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/g$a;->a:Lcom/nd/commplatform/d/c/g;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/g;->a(Lcom/nd/commplatform/d/c/g;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/g$a$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g$a$1;->b:Lcom/nd/commplatform/d/c/g$a;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/g$a;->a:Lcom/nd/commplatform/d/c/g;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/g;->a(Lcom/nd/commplatform/d/c/g;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g$a$1;->b:Lcom/nd/commplatform/d/c/g$a;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/g$a;->a:Lcom/nd/commplatform/d/c/g;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/g;->f(Lcom/nd/commplatform/d/c/g;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/g$a$1;->b:Lcom/nd/commplatform/d/c/g$a;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/g$a;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g$a$1;->b:Lcom/nd/commplatform/d/c/g$a;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/g$a;->a:Lcom/nd/commplatform/d/c/g;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/g;->a(Lcom/nd/commplatform/d/c/g;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g$a$1;->b:Lcom/nd/commplatform/d/c/g$a;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/g$a;->a:Lcom/nd/commplatform/d/c/g;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/g;->f(Lcom/nd/commplatform/d/c/g;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/nd/commplatform/d/c/g$a$1;->b:Lcom/nd/commplatform/d/c/g$a;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/g$a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/nd/commplatform/d/c/nt;->a(Lcom/nd/commplatform/NdCallbackListener;Landroid/content/Context;I)V

    goto :goto_0
.end method
