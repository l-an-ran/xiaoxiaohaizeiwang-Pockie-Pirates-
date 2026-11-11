.class final Lcom/nd/commplatform/d/c/ic$2;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/ic;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/NdCallbackListener",
        "<",
        "Lcom/nd/commplatform/entry/NdPermission;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/ic;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/ic;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ic$2;->a:Lcom/nd/commplatform/d/c/ic;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/nd/commplatform/entry/NdPermission;)V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ic$2;->a:Lcom/nd/commplatform/d/c/ic;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/ic;->e(I)Lcom/nd/commplatform/NdCallbackListener;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ic$2;->a:Lcom/nd/commplatform/d/c/ic;

    sget v1, Lcom/nd/commplatform/d/c/jo$e;->eq:I

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/ic;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_1

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ic$2;->a:Lcom/nd/commplatform/d/c/ic;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/ic;->d:Landroid/widget/TextView;

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->dq:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ic$2;->a:Lcom/nd/commplatform/d/c/ic;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/ic;->d:Landroid/widget/TextView;

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->dk:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ic$2;->a:Lcom/nd/commplatform/d/c/ic;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/ic;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/nd/commplatform/d/c/nt;->a(Lcom/nd/commplatform/NdCallbackListener;Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p2, Lcom/nd/commplatform/entry/NdPermission;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/ic$2;->a(ILcom/nd/commplatform/entry/NdPermission;)V

    return-void
.end method
