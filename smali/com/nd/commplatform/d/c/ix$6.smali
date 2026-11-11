.class final Lcom/nd/commplatform/d/c/ix$6;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/ix;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/NdCallbackListener",
        "<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/ix;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/ix;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ix$6;->a:Lcom/nd/commplatform/d/c/ix;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Double;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ix$6;->a:Lcom/nd/commplatform/d/c/ix;

    invoke-virtual {v0, v6}, Lcom/nd/commplatform/d/c/ix;->b(Z)V

    invoke-static {}, Lcom/nd/commplatform/d/c/of;->a()Lcom/nd/commplatform/d/c/of;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/nd/commplatform/d/c/of;->a(Ljava/lang/Double;)V

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ix$6;->a:Lcom/nd/commplatform/d/c/ix;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ix;->c(Lcom/nd/commplatform/d/c/ix;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ix$6;->a:Lcom/nd/commplatform/d/c/ix;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/ix;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->gX:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ix$6;->a:Lcom/nd/commplatform/d/c/ix;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ix$6;->a:Lcom/nd/commplatform/d/c/ix;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/ix;->c(Lcom/nd/commplatform/d/c/ix;)Landroid/widget/TextView;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$b;->D:I

    invoke-static {v0, v1, v2}, Lcom/nd/commplatform/d/c/ix;->a(Lcom/nd/commplatform/d/c/ix;Landroid/widget/TextView;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ix$6;->a:Lcom/nd/commplatform/d/c/ix;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/ix;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/nd/commplatform/d/c/nt;->a(Lcom/nd/commplatform/NdCallbackListener;Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p2, Ljava/lang/Double;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/ix$6;->a(ILjava/lang/Double;)V

    return-void
.end method
