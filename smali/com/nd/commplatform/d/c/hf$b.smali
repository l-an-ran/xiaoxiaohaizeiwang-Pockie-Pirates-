.class final Lcom/nd/commplatform/d/c/hf$b;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/d/c/hf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/hf;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/nd/commplatform/d/c/hf;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/nd/commplatform/d/c/hf$b;->a:Lcom/nd/commplatform/d/c/hf;

    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nd/commplatform/d/c/hf$b;->b:Z

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nd/commplatform/d/c/hf$b;->b:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 4
    .param p1, "checked"    # Z

    .prologue
    .local p0, "this":Lcom/nd/commplatform/d/c/hf$b;, "Lcom/nd/commplatform/d/c/hf<TK;TV;>.b;"
    iput-boolean p1, p0, Lcom/nd/commplatform/d/c/hf$b;->b:Z

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/hf$b;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/nd/commplatform/d/c/hf$b;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Landroid/widget/Checkable;

    if-eqz v3, :cond_0

    check-cast v0, Landroid/widget/Checkable;

    iget-boolean v3, p0, Lcom/nd/commplatform/d/c/hf$b;->b:Z

    invoke-interface {v0, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public toggle()V
    .locals 1

    iget-boolean v0, p0, Lcom/nd/commplatform/d/c/hf$b;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/hf$b;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
