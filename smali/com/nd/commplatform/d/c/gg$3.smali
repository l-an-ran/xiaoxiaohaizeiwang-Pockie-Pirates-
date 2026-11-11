.class final Lcom/nd/commplatform/d/c/gg$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/gg;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/gg;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/gg;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/gg$3;->a:Lcom/nd/commplatform/d/c/gg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/d/c/gg$3;->a:Lcom/nd/commplatform/d/c/gg;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/gg;->c(Lcom/nd/commplatform/d/c/gg;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gg$3;->a:Lcom/nd/commplatform/d/c/gg;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/gg;->c(Lcom/nd/commplatform/d/c/gg;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gg$3;->a:Lcom/nd/commplatform/d/c/gg;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/gg;->c(Lcom/nd/commplatform/d/c/gg;)Landroid/widget/RadioButton;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/gg$3;->a:Lcom/nd/commplatform/d/c/gg;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/gg;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$b;->A:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gg$3;->a:Lcom/nd/commplatform/d/c/gg;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/gg;->d(Lcom/nd/commplatform/d/c/gg;)Landroid/widget/RadioButton;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/gg$3;->a:Lcom/nd/commplatform/d/c/gg;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/gg;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$b;->k:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gg$3;->a:Lcom/nd/commplatform/d/c/gg;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/gg;->e(Lcom/nd/commplatform/d/c/gg;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/gg$3;->a:Lcom/nd/commplatform/d/c/gg;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/gg;->d(Lcom/nd/commplatform/d/c/gg;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gg$3;->a:Lcom/nd/commplatform/d/c/gg;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/gg;->d(Lcom/nd/commplatform/d/c/gg;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gg$3;->a:Lcom/nd/commplatform/d/c/gg;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/gg;->c(Lcom/nd/commplatform/d/c/gg;)Landroid/widget/RadioButton;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/gg$3;->a:Lcom/nd/commplatform/d/c/gg;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/gg;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$b;->k:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gg$3;->a:Lcom/nd/commplatform/d/c/gg;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/gg;->d(Lcom/nd/commplatform/d/c/gg;)Landroid/widget/RadioButton;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/gg$3;->a:Lcom/nd/commplatform/d/c/gg;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/gg;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$b;->A:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gg$3;->a:Lcom/nd/commplatform/d/c/gg;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/gg;->f(Lcom/nd/commplatform/d/c/gg;)V

    goto :goto_0
.end method
