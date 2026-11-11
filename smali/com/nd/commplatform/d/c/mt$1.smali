.class final Lcom/nd/commplatform/d/c/mt$1;
.super Landroid/widget/ArrayAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/mt;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/mt;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/mt;Landroid/content/Context;II)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/mt$1;->a:Lcom/nd/commplatform/d/c/mt;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mt$1;->a:Lcom/nd/commplatform/d/c/mt;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/mt;->a(Lcom/nd/commplatform/d/c/mt;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mt$1;->a:Lcom/nd/commplatform/d/c/mt;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/mt;->a(Lcom/nd/commplatform/d/c/mt;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mt$1;->a:Lcom/nd/commplatform/d/c/mt;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/mt;->b(Lcom/nd/commplatform/d/c/mt;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez p2, :cond_0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/nd/commplatform/d/c/jo$f;->bk:I

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/widget/NdUserListItem;

    new-instance v2, Lcom/nd/commplatform/d/c/hx;

    move-object v1, v0

    check-cast v1, Lcom/nd/commplatform/widget/NdUserListItem;

    new-instance v3, Lcom/nd/commplatform/d/c/mt$1$1;

    invoke-direct {v3, p0}, Lcom/nd/commplatform/d/c/mt$1$1;-><init>(Lcom/nd/commplatform/d/c/mt$1;)V

    invoke-direct {v2, v1, v3}, Lcom/nd/commplatform/d/c/hx;-><init>(Lcom/nd/commplatform/widget/NdUserListItem;Lcom/nd/commplatform/d/c/hg;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object p2, v0

    .end local p2    # "convertView":Landroid/view/View;
    :cond_0
    invoke-virtual {p2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/hx;

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/d/c/hx;->a(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/hx;->b(Z)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/mt$1;->a:Lcom/nd/commplatform/d/c/mt;

    invoke-static {v1, p1}, Lcom/nd/commplatform/d/c/mt;->a(Lcom/nd/commplatform/d/c/mt;I)Lcom/nd/commplatform/d/c/mt$a;

    move-result-object v2

    iget v1, v2, Lcom/nd/commplatform/d/c/mt$a;->f:I

    if-nez v1, :cond_2

    iget-object v3, p0, Lcom/nd/commplatform/d/c/mt$1;->a:Lcom/nd/commplatform/d/c/mt;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/mt$1;->a:Lcom/nd/commplatform/d/c/mt;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/mt;->a(Lcom/nd/commplatform/d/c/mt;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nd/commplatform/d/c/mt$a;

    invoke-static {v3, v1}, Lcom/nd/commplatform/d/c/mt;->a(Lcom/nd/commplatform/d/c/mt;Lcom/nd/commplatform/d/c/mt$a;)V

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/hx;->c()V

    iput v4, v2, Lcom/nd/commplatform/d/c/mt$a;->f:I

    :cond_1
    :goto_0
    return-object p2

    :cond_2
    iget v1, v2, Lcom/nd/commplatform/d/c/mt$a;->f:I

    if-ne v4, v1, :cond_3

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/hx;->c()V

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    iget v3, v2, Lcom/nd/commplatform/d/c/mt$a;->f:I

    if-ne v1, v3, :cond_1

    invoke-virtual {v0, v4}, Lcom/nd/commplatform/d/c/hx;->b(Z)V

    invoke-virtual {v0, v2}, Lcom/nd/commplatform/d/c/hx;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mt$1;->a:Lcom/nd/commplatform/d/c/mt;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
