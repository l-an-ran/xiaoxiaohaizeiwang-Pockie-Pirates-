.class final Lcom/nd/commplatform/d/c/fb$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/fb;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/fb;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/fb;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/fb$1;->a:Lcom/nd/commplatform/d/c/fb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fb$1;->a:Lcom/nd/commplatform/d/c/fb;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/fb;->a(Lcom/nd/commplatform/d/c/fb;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fb$1;->a:Lcom/nd/commplatform/d/c/fb;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/fb;->b(Lcom/nd/commplatform/d/c/fb;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fb$1;->a:Lcom/nd/commplatform/d/c/fb;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/fb;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->jR:I

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;I)V

    :goto_0
    return-void

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fb$1;->a:Lcom/nd/commplatform/d/c/fb;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/fb;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->jS:I

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    new-instance v6, Lcom/nd/commplatform/d/c/fb$1$1;

    invoke-direct {v6, p0}, Lcom/nd/commplatform/d/c/fb$1$1;-><init>(Lcom/nd/commplatform/d/c/fb$1;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fb$1;->a:Lcom/nd/commplatform/d/c/fb;

    invoke-virtual {v0, v6}, Lcom/nd/commplatform/d/c/fb;->a(Lcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/nd/commplatform/d/c/fb$1;->a:Lcom/nd/commplatform/d/c/fb;

    invoke-virtual {v5}, Lcom/nd/commplatform/d/c/fb;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual/range {v0 .. v6}, Lcom/nd/commplatform/d/c/a;->a(ILjava/lang/String;Ljava/lang/String;ZLandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    goto :goto_0
.end method
