.class final Lcom/nd/commplatform/d/c/pg$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/pg;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/nd/commplatform/d/c/pg;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/pg;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/pg$3;->b:Lcom/nd/commplatform/d/c/pg;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/pg$3;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pg$3;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/pg$3;->b:Lcom/nd/commplatform/d/c/pg;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/pg;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/pg$3;->b:Lcom/nd/commplatform/d/c/pg;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/pg;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->gM:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/nd/commplatform/d/c/pg$3$1;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/pg$3$1;-><init>(Lcom/nd/commplatform/d/c/pg$3;)V

    iget-object v2, p0, Lcom/nd/commplatform/d/c/pg$3;->b:Lcom/nd/commplatform/d/c/pg;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/nd/commplatform/d/c/pg;->b(Z)V

    iget-object v2, p0, Lcom/nd/commplatform/d/c/pg$3;->b:Lcom/nd/commplatform/d/c/pg;

    invoke-virtual {v2, v4, v1, v4}, Lcom/nd/commplatform/d/c/pg;->a(ILcom/nd/commplatform/NdCallbackListener;Z)Lcom/nd/commplatform/NdCallbackListener;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/pg$3;->b:Lcom/nd/commplatform/d/c/pg;

    invoke-virtual {v2, v4}, Lcom/nd/commplatform/d/c/pg;->b(Z)V

    new-instance v2, Lcom/nd/commplatform/d/c/y;

    invoke-direct {v2}, Lcom/nd/commplatform/d/c/y;-><init>()V

    iget-object v3, p0, Lcom/nd/commplatform/d/c/pg$3;->b:Lcom/nd/commplatform/d/c/pg;

    invoke-virtual {v3}, Lcom/nd/commplatform/d/c/pg;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v0, v3, v1}, Lcom/nd/commplatform/d/c/y;->a(Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    goto :goto_0
.end method
