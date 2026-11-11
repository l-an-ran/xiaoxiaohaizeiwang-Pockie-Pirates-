.class public Lcom/nd/commplatform/d/c/mn;
.super Lcom/nd/commplatform/d/c/mq;


# direct methods
.method public constructor <init>(Lcom/nd/commplatform/uap/widget/NdActivityDescriptionPlusImageView;Lcom/nd/commplatform/d/c/mo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nd/commplatform/uap/widget/NdActivityDescriptionPlusImageView;",
            "Lcom/nd/commplatform/d/c/mo",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/nd/commplatform/d/c/mq;-><init>(Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;Lcom/nd/commplatform/d/c/mr;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 6

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mn;->a:Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;

    check-cast v0, Lcom/nd/commplatform/uap/widget/NdActivityDescriptionPlusImageView;

    iget-object v0, v0, Lcom/nd/commplatform/uap/widget/NdActivityDescriptionPlusImageView;->b:Landroid/widget/ImageView;

    sget v1, Lcom/nd/commplatform/d/c/jo$d;->S:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    new-instance v5, Lcom/nd/commplatform/d/c/mn$1;

    invoke-direct {v5, p0}, Lcom/nd/commplatform/d/c/mn$1;-><init>(Lcom/nd/commplatform/d/c/mn;)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/mn;->b:Lcom/nd/commplatform/d/c/mr;

    check-cast v1, Lcom/nd/commplatform/d/c/mo;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/mo;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/mn;->b:Lcom/nd/commplatform/d/c/mr;

    check-cast v2, Lcom/nd/commplatform/d/c/mo;

    invoke-virtual {v2}, Lcom/nd/commplatform/d/c/mo;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nd/commplatform/d/c/mn;->a:Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;

    invoke-virtual {v3}, Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nd/commplatform/d/c/oh;->g(Landroid/content/Context;)I

    move-result v3

    iget-object v4, p0, Lcom/nd/commplatform/d/c/mn;->a:Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;

    invoke-virtual {v4}, Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/a;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z

    return-void
.end method

.method public b()V
    .locals 0

    invoke-super {p0}, Lcom/nd/commplatform/d/c/mq;->b()V

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/mn;->a()V

    return-void
.end method
