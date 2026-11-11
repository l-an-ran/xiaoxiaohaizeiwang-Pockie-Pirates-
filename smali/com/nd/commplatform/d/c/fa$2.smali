.class final Lcom/nd/commplatform/d/c/fa$2;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/fa;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/NdCallbackListener",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/nd/commplatform/entry/NdThirdPartyPlatform;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/fa;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/fa;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/fa$2;->a:Lcom/nd/commplatform/d/c/fa;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/entry/NdThirdPartyPlatform;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fa$2;->a:Lcom/nd/commplatform/d/c/fa;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/fa;->b(Z)V

    if-eqz p1, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fa$2;->a:Lcom/nd/commplatform/d/c/fa;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/fa;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;->getType()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lcom/nd/commplatform/d/c/jo$f;->bg:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iget-object v2, p0, Lcom/nd/commplatform/d/c/fa$2;->a:Lcom/nd/commplatform/d/c/fa;

    invoke-static {v2}, Lcom/nd/commplatform/d/c/fa;->c(Lcom/nd/commplatform/d/c/fa;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    sget v2, Lcom/nd/commplatform/d/c/jo$e;->gs:I

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    sget v3, Lcom/nd/commplatform/d/c/jo$e;->eY:I

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Lcom/nd/commplatform/d/c/fa$2$1;

    invoke-direct {v3, p0, v2}, Lcom/nd/commplatform/d/c/fa$2$1;-><init>(Lcom/nd/commplatform/d/c/fa$2;Landroid/widget/ImageView;)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v2

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;->getCheckSum()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/nd/commplatform/d/c/fa$2;->a:Lcom/nd/commplatform/d/c/fa;

    invoke-virtual {v8}, Lcom/nd/commplatform/d/c/fa;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v2, v6, v7, v8, v3}, Lcom/nd/commplatform/d/c/a;->e(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z

    invoke-virtual {v5, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v1, Lcom/nd/commplatform/d/c/fa$2$2;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/fa$2$2;-><init>(Lcom/nd/commplatform/d/c/fa$2;)V

    invoke-virtual {v5, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p2, Ljava/util/List;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/fa$2;->a(ILjava/util/List;)V

    return-void
.end method
