.class final Lcom/nd/commplatform/d/c/dt$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/dt;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lcom/nd/commplatform/d/c/dt;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/dt;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/dt$6;->b:Lcom/nd/commplatform/d/c/dt;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/dt$6;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dt$6;->a:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dt$6;->b:Lcom/nd/commplatform/d/c/dt;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/dt;->d(Lcom/nd/commplatform/d/c/dt;Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/dt$6;->b:Lcom/nd/commplatform/d/c/dt;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/dt;->b(Lcom/nd/commplatform/d/c/dt;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nd/commplatform/d/c/dt$6;->b:Lcom/nd/commplatform/d/c/dt;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/dt;->b(Lcom/nd/commplatform/d/c/dt;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/dt$6;->b:Lcom/nd/commplatform/d/c/dt;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/dt;->d(Lcom/nd/commplatform/d/c/dt;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nd/commplatform/d/c/dt$6;->b:Lcom/nd/commplatform/d/c/dt;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/dt;->d(Lcom/nd/commplatform/d/c/dt;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    iget-object v1, p0, Lcom/nd/commplatform/d/c/dt$6;->b:Lcom/nd/commplatform/d/c/dt;

    iget-object v1, v1, Lcom/nd/commplatform/d/c/dt;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/dt$6;->b:Lcom/nd/commplatform/d/c/dt;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/dt$6;->a:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/dt;->d(Lcom/nd/commplatform/d/c/dt;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/nd/commplatform/d/c/dt$6;->b:Lcom/nd/commplatform/d/c/dt;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/dt;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->fz:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/nd/commplatform/d/c/dt$6;->b:Lcom/nd/commplatform/d/c/dt;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/dt;->d(Lcom/nd/commplatform/d/c/dt;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/nd/commplatform/d/c/dt$6;->b:Lcom/nd/commplatform/d/c/dt;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/dt;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->fz:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/dt$6;->b:Lcom/nd/commplatform/d/c/dt;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/dt;->d(Lcom/nd/commplatform/d/c/dt;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/nd/commplatform/d/c/dt$6;->b:Lcom/nd/commplatform/d/c/dt;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/dt;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->fz:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
