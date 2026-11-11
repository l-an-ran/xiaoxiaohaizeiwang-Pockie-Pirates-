.class final Lcom/nd/commplatform/d/c/dt$10;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/dt;->b(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/nd/commplatform/d/c/dt;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/dt;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/dt$10;->c:Lcom/nd/commplatform/d/c/dt;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/dt$10;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/nd/commplatform/d/c/dt$10;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/d/c/dt$10;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dt$10;->c:Lcom/nd/commplatform/d/c/dt;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/dt;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/dt$10;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dt$10;->c:Lcom/nd/commplatform/d/c/dt;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/dt;->f(Lcom/nd/commplatform/d/c/dt;Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/dt$10;->c:Lcom/nd/commplatform/d/c/dt;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/dt;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nd/commplatform/widget/AreaCsv;->a(Landroid/content/Context;)Lcom/nd/commplatform/widget/AreaCsv;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/dt$10;->c:Lcom/nd/commplatform/d/c/dt;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dt$10;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/widget/AreaCsv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/nd/commplatform/d/c/dt;->f(Lcom/nd/commplatform/d/c/dt;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dt$10;->c:Lcom/nd/commplatform/d/c/dt;

    iget-object v1, v0, Lcom/nd/commplatform/d/c/dt;->c:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/nd/commplatform/d/c/dt$10;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dt$10;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
