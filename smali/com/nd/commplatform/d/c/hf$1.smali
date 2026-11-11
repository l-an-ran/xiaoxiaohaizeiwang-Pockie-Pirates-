.class final Lcom/nd/commplatform/d/c/hf$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/hf;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/hf;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/hf;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/hf$1;->a:Lcom/nd/commplatform/d/c/hf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .local p0, "this":Lcom/nd/commplatform/d/c/hf$1;, "Lcom/nd/commplatform/d/c/hf.1;"
    if-nez p4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    add-int v0, p2, p3

    if-lt v0, p4, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf$1;->a:Lcom/nd/commplatform/d/c/hf;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/hf;->a(Lcom/nd/commplatform/d/c/hf;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf$1;->a:Lcom/nd/commplatform/d/c/hf;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/hf;->b(Lcom/nd/commplatform/d/c/hf;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf$1;->a:Lcom/nd/commplatform/d/c/hf;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/hf;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf$1;->a:Lcom/nd/commplatform/d/c/hf;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/hf;->a(Lcom/nd/commplatform/d/c/hf;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .local p0, "this":Lcom/nd/commplatform/d/c/hf$1;, "Lcom/nd/commplatform/d/c/hf.1;"
    return-void
.end method
