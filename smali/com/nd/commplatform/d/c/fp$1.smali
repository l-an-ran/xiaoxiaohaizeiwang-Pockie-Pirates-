.class final Lcom/nd/commplatform/d/c/fp$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/fp;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/fp;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/fp;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/fp$1;->a:Lcom/nd/commplatform/d/c/fp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fp$1;->a:Lcom/nd/commplatform/d/c/fp;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/fp$1;->a:Lcom/nd/commplatform/d/c/fp;

    invoke-static {v2}, Lcom/nd/commplatform/d/c/fp;->e(Lcom/nd/commplatform/d/c/fp;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nd/commplatform/d/c/fp;->a(Lcom/nd/commplatform/d/c/fp;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fp$1;->a:Lcom/nd/commplatform/d/c/fp;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/fp;->f(Lcom/nd/commplatform/d/c/fp;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fp$1;->a:Lcom/nd/commplatform/d/c/fp;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/fp;->f(Lcom/nd/commplatform/d/c/fp;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp$1;->a:Lcom/nd/commplatform/d/c/fp;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/fp;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->fX:I

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/nd/commplatform/d/c/fp$1;->a:Lcom/nd/commplatform/d/c/fp;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/fp;->g(Lcom/nd/commplatform/d/c/fp;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fp$1;->a:Lcom/nd/commplatform/d/c/fp;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/nd/commplatform/d/c/fp;->b(Z)V

    new-instance v5, Lcom/nd/commplatform/d/c/fp$1$1;

    invoke-direct {v5, p0, p1}, Lcom/nd/commplatform/d/c/fp$1$1;-><init>(Lcom/nd/commplatform/d/c/fp$1;Landroid/view/View;)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fp$1;->a:Lcom/nd/commplatform/d/c/fp;

    invoke-virtual {v1, v5}, Lcom/nd/commplatform/d/c/fp;->a(Lcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fp$1;->a:Lcom/nd/commplatform/d/c/fp;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/fp;->h(Lcom/nd/commplatform/d/c/fp;)[B

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fp$1;->a:Lcom/nd/commplatform/d/c/fp;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/fp;->h(Lcom/nd/commplatform/d/c/fp;)[B

    move-result-object v1

    array-length v1, v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/fp$1;->a:Lcom/nd/commplatform/d/c/fp;

    invoke-static {v2}, Lcom/nd/commplatform/d/c/fp;->l(Lcom/nd/commplatform/d/c/fp;)I

    move-result v2

    if-le v1, v2, :cond_3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp$1;->a:Lcom/nd/commplatform/d/c/fp;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/fp;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->mQ:I

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp$1;->a:Lcom/nd/commplatform/d/c/fp;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/fp;->g(Lcom/nd/commplatform/d/c/fp;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    if-lez v1, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp$1;->a:Lcom/nd/commplatform/d/c/fp;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/fp;->g(Lcom/nd/commplatform/d/c/fp;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp$1;->a:Lcom/nd/commplatform/d/c/fp;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/fp;->g(Lcom/nd/commplatform/d/c/fp;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fp$1;->a:Lcom/nd/commplatform/d/c/fp;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/fp;->f(Lcom/nd/commplatform/d/c/fp;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nd/commplatform/d/c/fp$1;->a:Lcom/nd/commplatform/d/c/fp;

    invoke-static {v3}, Lcom/nd/commplatform/d/c/fp;->h(Lcom/nd/commplatform/d/c/fp;)[B

    move-result-object v3

    iget-object v4, p0, Lcom/nd/commplatform/d/c/fp$1;->a:Lcom/nd/commplatform/d/c/fp;

    invoke-virtual {v4}, Lcom/nd/commplatform/d/c/fp;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/a;->a(Ljava/lang/String;Ljava/lang/String;[BLandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    goto/16 :goto_0
.end method
