.class final Lcom/nd/commplatform/d/c/dp$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/dp;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/dp;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/dp;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/dp$2;->a:Lcom/nd/commplatform/d/c/dp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/d/c/dp$2;->a:Lcom/nd/commplatform/d/c/dp;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/dp;->b(Lcom/nd/commplatform/d/c/dp;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/dp$2;->a:Lcom/nd/commplatform/d/c/dp;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/dp;->c(Lcom/nd/commplatform/d/c/dp;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/nd/commplatform/d/c/dp$2$1;

    invoke-direct {v1, p0, v0}, Lcom/nd/commplatform/d/c/dp$2$1;-><init>(Lcom/nd/commplatform/d/c/dp$2;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nd/commplatform/d/c/dp$2;->a:Lcom/nd/commplatform/d/c/dp;

    invoke-virtual {v2, v1}, Lcom/nd/commplatform/d/c/dp;->a(Lcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/dp$2;->a:Lcom/nd/commplatform/d/c/dp;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/nd/commplatform/d/c/dp;->b(Z)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v2

    iget-object v3, p0, Lcom/nd/commplatform/d/c/dp$2;->a:Lcom/nd/commplatform/d/c/dp;

    invoke-static {v3}, Lcom/nd/commplatform/d/c/dp;->d(Lcom/nd/commplatform/d/c/dp;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/nd/commplatform/d/c/dp$2;->a:Lcom/nd/commplatform/d/c/dp;

    invoke-virtual {v4}, Lcom/nd/commplatform/d/c/dp;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v4, v1}, Lcom/nd/commplatform/d/c/a;->d(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    goto :goto_0
.end method
