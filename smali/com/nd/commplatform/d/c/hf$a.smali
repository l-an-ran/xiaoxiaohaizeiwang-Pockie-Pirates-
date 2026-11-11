.class Lcom/nd/commplatform/d/c/hf$a;
.super Landroid/widget/ArrayAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/d/c/hf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/nd/commplatform/d/c/hf;


# direct methods
.method public constructor <init>(Lcom/nd/commplatform/d/c/hf;Landroid/content/Context;II)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/hf$a;->b:Lcom/nd/commplatform/d/c/hf;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf$a;->b:Lcom/nd/commplatform/d/c/hf;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/hf;->d(Lcom/nd/commplatform/d/c/hf;)Lcom/nd/commplatform/d/c/hj;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf$a;->b:Lcom/nd/commplatform/d/c/hf;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/hf;->d(Lcom/nd/commplatform/d/c/hf;)Lcom/nd/commplatform/d/c/hj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/hj;->b()I

    move-result v0

    if-lez v0, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .local p0, "this":Lcom/nd/commplatform/d/c/hf$a;, "Lcom/nd/commplatform/d/c/hf<TK;TV;>.a;"
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .local p0, "this":Lcom/nd/commplatform/d/c/hf$a;, "Lcom/nd/commplatform/d/c/hf<TK;TV;>.a;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf$a;->b:Lcom/nd/commplatform/d/c/hf;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/hf;->f(Lcom/nd/commplatform/d/c/hf;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/hf$a;->b:Lcom/nd/commplatform/d/c/hf;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/hf;->e(Lcom/nd/commplatform/d/c/hf;)Lcom/nd/commplatform/d/c/hm;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/nd/commplatform/d/c/hm;->d(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf$a;->b:Lcom/nd/commplatform/d/c/hf;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/hf;->e(Lcom/nd/commplatform/d/c/hf;)Lcom/nd/commplatform/d/c/hm;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/nd/commplatform/d/c/hm;->b(Landroid/view/View;)Lcom/nd/commplatform/d/c/hh;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/nd/commplatform/d/c/hh;->b(Z)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance p2, Lcom/nd/commplatform/d/c/hf$b;

    .end local p2    # "convertView":Landroid/view/View;
    iget-object v4, p0, Lcom/nd/commplatform/d/c/hf$a;->b:Lcom/nd/commplatform/d/c/hf;

    iget-object v5, p0, Lcom/nd/commplatform/d/c/hf$a;->b:Lcom/nd/commplatform/d/c/hf;

    invoke-static {v5}, Lcom/nd/commplatform/d/c/hf;->g(Lcom/nd/commplatform/d/c/hf;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p2, v4, v5}, Lcom/nd/commplatform/d/c/hf$b;-><init>(Lcom/nd/commplatform/d/c/hf;Landroid/content/Context;)V

    invoke-virtual {p2, v3}, Lcom/nd/commplatform/d/c/hf$b;->setFocusable(Z)V

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v1, v4}, Lcom/nd/commplatform/d/c/hf$b;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    invoke-virtual {v0, p1}, Lcom/nd/commplatform/d/c/hh;->a(I)V

    invoke-virtual {v0, v3}, Lcom/nd/commplatform/d/c/hh;->b(Z)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    iget-object v4, p0, Lcom/nd/commplatform/d/c/hf$a;->b:Lcom/nd/commplatform/d/c/hf;

    invoke-static {v4}, Lcom/nd/commplatform/d/c/hf;->d(Lcom/nd/commplatform/d/c/hf;)Lcom/nd/commplatform/d/c/hj;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/nd/commplatform/d/c/hj;->d(I)I

    move-result v4

    if-ltz v4, :cond_6

    iget-object v5, p0, Lcom/nd/commplatform/d/c/hf$a;->b:Lcom/nd/commplatform/d/c/hf;

    invoke-static {v5}, Lcom/nd/commplatform/d/c/hf;->d(Lcom/nd/commplatform/d/c/hf;)Lcom/nd/commplatform/d/c/hj;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/nd/commplatform/d/c/hj;->c(I)Lcom/nd/commplatform/d/c/hj$c;

    move-result-object v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/nd/commplatform/d/c/hf$a;->b:Lcom/nd/commplatform/d/c/hf;

    invoke-static {v5}, Lcom/nd/commplatform/d/c/hf;->d(Lcom/nd/commplatform/d/c/hf;)Lcom/nd/commplatform/d/c/hj;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/nd/commplatform/d/c/hj;->a(I)V

    iget-object v5, p0, Lcom/nd/commplatform/d/c/hf$a;->b:Lcom/nd/commplatform/d/c/hf;

    invoke-static {v5}, Lcom/nd/commplatform/d/c/hf;->e(Lcom/nd/commplatform/d/c/hf;)Lcom/nd/commplatform/d/c/hm;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/nd/commplatform/d/c/hm;->b(I)V

    iget-object v4, p0, Lcom/nd/commplatform/d/c/hf$a;->b:Lcom/nd/commplatform/d/c/hf;

    invoke-static {v4}, Lcom/nd/commplatform/d/c/hf;->e(Lcom/nd/commplatform/d/c/hf;)Lcom/nd/commplatform/d/c/hm;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/nd/commplatform/d/c/hm;->a(Lcom/nd/commplatform/d/c/hh;)V

    move v0, v2

    :goto_1
    iget-object v4, p0, Lcom/nd/commplatform/d/c/hf$a;->b:Lcom/nd/commplatform/d/c/hf;

    invoke-static {v4}, Lcom/nd/commplatform/d/c/hf;->i(Lcom/nd/commplatform/d/c/hf;)Lcom/nd/commplatform/d/c/hk;

    move-result-object v4

    if-eqz v4, :cond_0

    instance-of v4, v1, Landroid/widget/Checkable;

    if-eqz v4, :cond_0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf$a;->b:Lcom/nd/commplatform/d/c/hf;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/hf;->j(Lcom/nd/commplatform/d/c/hf;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_2
    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf$a;->b:Lcom/nd/commplatform/d/c/hf;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/hf;->i(Lcom/nd/commplatform/d/c/hf;)Lcom/nd/commplatform/d/c/hk;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Lcom/nd/commplatform/d/c/hk;->a(Landroid/view/View;Z)V

    :cond_0
    return-object p2

    .restart local p2    # "convertView":Landroid/view/View;
    :cond_1
    check-cast p2, Lcom/nd/commplatform/d/c/hf$b;

    .end local p2    # "convertView":Landroid/view/View;
    invoke-virtual {p2, v3}, Lcom/nd/commplatform/d/c/hf$b;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/hh;

    goto :goto_0

    :cond_2
    sget-object v6, Lcom/nd/commplatform/d/c/hj$b;->b:Lcom/nd/commplatform/d/c/hj$b;

    iget-object v7, v5, Lcom/nd/commplatform/d/c/hj$c;->a:Lcom/nd/commplatform/d/c/hj$b;

    if-ne v6, v7, :cond_3

    iget-object v4, p0, Lcom/nd/commplatform/d/c/hf$a;->b:Lcom/nd/commplatform/d/c/hf;

    invoke-static {v4}, Lcom/nd/commplatform/d/c/hf;->e(Lcom/nd/commplatform/d/c/hf;)Lcom/nd/commplatform/d/c/hm;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/nd/commplatform/d/c/hm;->a(Lcom/nd/commplatform/d/c/hh;)V

    move v0, v2

    goto :goto_1

    :cond_3
    sget-object v6, Lcom/nd/commplatform/d/c/hj$b;->d:Lcom/nd/commplatform/d/c/hj$b;

    iget-object v7, v5, Lcom/nd/commplatform/d/c/hj$c;->a:Lcom/nd/commplatform/d/c/hj$b;

    if-ne v6, v7, :cond_4

    iget-object v6, p0, Lcom/nd/commplatform/d/c/hf$a;->b:Lcom/nd/commplatform/d/c/hf;

    invoke-static {v6}, Lcom/nd/commplatform/d/c/hf;->e(Lcom/nd/commplatform/d/c/hf;)Lcom/nd/commplatform/d/c/hm;

    move-result-object v6

    invoke-interface {v6, v4}, Lcom/nd/commplatform/d/c/hm;->b(I)V

    iget-object v4, p0, Lcom/nd/commplatform/d/c/hf$a;->b:Lcom/nd/commplatform/d/c/hf;

    invoke-static {v4}, Lcom/nd/commplatform/d/c/hf;->e(Lcom/nd/commplatform/d/c/hf;)Lcom/nd/commplatform/d/c/hm;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/nd/commplatform/d/c/hm;->a(Lcom/nd/commplatform/d/c/hh;)V

    sget-object v0, Lcom/nd/commplatform/d/c/hj$b;->b:Lcom/nd/commplatform/d/c/hj$b;

    iput-object v0, v5, Lcom/nd/commplatform/d/c/hj$c;->a:Lcom/nd/commplatform/d/c/hj$b;

    move v0, v2

    goto :goto_1

    :cond_4
    sget-object v4, Lcom/nd/commplatform/d/c/hj$b;->c:Lcom/nd/commplatform/d/c/hj$b;

    iget-object v6, v5, Lcom/nd/commplatform/d/c/hj$c;->a:Lcom/nd/commplatform/d/c/hj$b;

    if-ne v4, v6, :cond_6

    iget-object v4, p0, Lcom/nd/commplatform/d/c/hf$a;->b:Lcom/nd/commplatform/d/c/hf;

    invoke-static {v4}, Lcom/nd/commplatform/d/c/hf;->d(Lcom/nd/commplatform/d/c/hf;)Lcom/nd/commplatform/d/c/hj;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/nd/commplatform/d/c/hj;->e(I)I

    move-result v4

    iget-object v6, p0, Lcom/nd/commplatform/d/c/hf$a;->b:Lcom/nd/commplatform/d/c/hf;

    invoke-static {v6}, Lcom/nd/commplatform/d/c/hf;->d(Lcom/nd/commplatform/d/c/hf;)Lcom/nd/commplatform/d/c/hj;

    move-result-object v6

    iget-object v5, v5, Lcom/nd/commplatform/d/c/hj$c;->b:Ljava/lang/Object;

    invoke-virtual {v6, v5, v4}, Lcom/nd/commplatform/d/c/hj;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v0, v2}, Lcom/nd/commplatform/d/c/hh;->b(Z)V

    iget-object v5, p0, Lcom/nd/commplatform/d/c/hf$a;->b:Lcom/nd/commplatform/d/c/hf;

    invoke-static {v5}, Lcom/nd/commplatform/d/c/hf;->e(Lcom/nd/commplatform/d/c/hf;)Lcom/nd/commplatform/d/c/hm;

    move-result-object v5

    invoke-interface {v5, v0, v4}, Lcom/nd/commplatform/d/c/hm;->a(Lcom/nd/commplatform/d/c/hh;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf$a;->b:Lcom/nd/commplatform/d/c/hf;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/hf;->h(Lcom/nd/commplatform/d/c/hf;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf$a;->b:Lcom/nd/commplatform/d/c/hf;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move v0, v3

    goto/16 :goto_1

    :cond_5
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/nd/commplatform/d/c/hf$a;->b:Lcom/nd/commplatform/d/c/hf;

    invoke-static {v4}, Lcom/nd/commplatform/d/c/hf;->e(Lcom/nd/commplatform/d/c/hf;)Lcom/nd/commplatform/d/c/hm;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/nd/commplatform/d/c/hm;->a(Lcom/nd/commplatform/d/c/hh;)V

    const-string v0, "NdListAdapter<K, V>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getView-sever no full page "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move v0, v2

    goto/16 :goto_1

    :cond_7
    move v2, v3

    goto/16 :goto_2

    :cond_8
    move v0, v3

    goto/16 :goto_1
.end method
