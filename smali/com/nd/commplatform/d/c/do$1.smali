.class final Lcom/nd/commplatform/d/c/do$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/do;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/do;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/do;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/do$1;->a:Lcom/nd/commplatform/d/c/do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/d/c/do$1;->a:Lcom/nd/commplatform/d/c/do;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/do;->a(Lcom/nd/commplatform/d/c/do;)Lcom/nd/commplatform/d/c/bx;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/do$1;->a:Lcom/nd/commplatform/d/c/do;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/do;->a(Lcom/nd/commplatform/d/c/do;)Lcom/nd/commplatform/d/c/bx;

    move-result-object v0

    const-string v1, "uin"

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/do$1;->a:Lcom/nd/commplatform/d/c/do;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/do;->b(Z)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/do$1;->a:Lcom/nd/commplatform/d/c/do;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/do;->a(Lcom/nd/commplatform/d/c/do;)Lcom/nd/commplatform/d/c/bx;

    move-result-object v0

    const-string v1, "uin"

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lcom/nd/commplatform/d/c/do$1$1;

    invoke-direct {v1, p0, v0}, Lcom/nd/commplatform/d/c/do$1$1;-><init>(Lcom/nd/commplatform/d/c/do$1;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nd/commplatform/d/c/do$1;->a:Lcom/nd/commplatform/d/c/do;

    invoke-virtual {v2, v1}, Lcom/nd/commplatform/d/c/do;->a(Lcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/do$1;->a:Lcom/nd/commplatform/d/c/do;

    invoke-static {v2}, Lcom/nd/commplatform/d/c/do;->c(Lcom/nd/commplatform/d/c/do;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v3

    iget-object v4, p0, Lcom/nd/commplatform/d/c/do$1;->a:Lcom/nd/commplatform/d/c/do;

    invoke-virtual {v4}, Lcom/nd/commplatform/d/c/do;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v0, v2, v4, v1}, Lcom/nd/commplatform/d/c/a;->c(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    :cond_0
    return-void
.end method
