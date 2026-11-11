.class final Lcom/nd/commplatform/d/c/fn$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/fn;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/fn;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/fn;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/fn$1;->a:Lcom/nd/commplatform/d/c/fn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fn$1;->a:Lcom/nd/commplatform/d/c/fn;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/fn;->b(Z)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fn$1;->a:Lcom/nd/commplatform/d/c/fn;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/fn;->a(Lcom/nd/commplatform/d/c/fn;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fn$1;->a:Lcom/nd/commplatform/d/c/fn;

    new-instance v2, Lcom/nd/commplatform/d/c/fn$1$1;

    invoke-direct {v2, p0, p1}, Lcom/nd/commplatform/d/c/fn$1$1;-><init>(Lcom/nd/commplatform/d/c/fn$1;Landroid/view/View;)V

    invoke-static {v0, v2}, Lcom/nd/commplatform/d/c/fn;->a(Lcom/nd/commplatform/d/c/fn;Lcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fn$1;->a:Lcom/nd/commplatform/d/c/fn;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/fn;->b(Lcom/nd/commplatform/d/c/fn;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/ff;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/ff;->a:Lcom/nd/commplatform/entry/NdFriendUserInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdFriendUserInfo;->getBaseUserInfo()Lcom/nd/commplatform/entry/NdBaseUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdBaseUserInfo;->getUin()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fn$1;->a:Lcom/nd/commplatform/d/c/fn;

    iget-object v3, p0, Lcom/nd/commplatform/d/c/fn$1;->a:Lcom/nd/commplatform/d/c/fn;

    invoke-static {v3}, Lcom/nd/commplatform/d/c/fn;->c(Lcom/nd/commplatform/d/c/fn;)Lcom/nd/commplatform/NdCallbackListener;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lcom/nd/commplatform/d/c/fn;->a(ILcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    iget-object v3, p0, Lcom/nd/commplatform/d/c/fn$1;->a:Lcom/nd/commplatform/d/c/fn;

    invoke-virtual {v3}, Lcom/nd/commplatform/d/c/fn;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/nd/commplatform/d/c/fn$1;->a:Lcom/nd/commplatform/d/c/fn;

    invoke-static {v4}, Lcom/nd/commplatform/d/c/fn;->c(Lcom/nd/commplatform/d/c/fn;)Lcom/nd/commplatform/NdCallbackListener;

    move-result-object v4

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/nd/commplatform/d/c/a;->a(Ljava/util/List;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    goto :goto_1
.end method
