.class public Lcom/nd/commplatform/d/c/gb;
.super Lcom/nd/commplatform/d/c/gc;


# direct methods
.method public constructor <init>(Lcom/nd/commplatform/d/c/gf;Lcom/nd/commplatform/entry/NdTag;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nd/commplatform/d/c/gc;-><init>(Lcom/nd/commplatform/d/c/gf;Lcom/nd/commplatform/entry/NdTag;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/nd/commplatform/widget/NdFrameInnerContent;)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/gb;->c()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gb;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/gb;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v3}, Lcom/nd/commplatform/d/c/gb;->a(Z)V

    invoke-static {}, Lcom/nd/commplatform/d/c/cb;->c()I

    move-result v0

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    new-instance v2, Lcom/nd/commplatform/d/c/gb$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/nd/commplatform/d/c/gb$1;-><init>(Lcom/nd/commplatform/d/c/gb;Lcom/nd/commplatform/widget/NdFrameInnerContent;I)V

    invoke-virtual {p1, v3}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->b(Z)V

    invoke-virtual {p1, v2}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->a(Lcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gb;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v0, v3, v2}, Lcom/nd/commplatform/d/c/a;->m(Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    goto :goto_0
.end method
