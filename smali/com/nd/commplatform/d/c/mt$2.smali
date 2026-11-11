.class final Lcom/nd/commplatform/d/c/mt$2;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/mt;->a(Lcom/nd/commplatform/d/c/mt$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/NdCallbackListener",
        "<",
        "Lcom/nd/commplatform/entry/NdUserInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/mt;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/mt;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/mt$2;->a:Lcom/nd/commplatform/d/c/mt;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/nd/commplatform/entry/NdUserInfo;)V
    .locals 5

    if-nez p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/mt$2;->a:Lcom/nd/commplatform/d/c/mt;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/mt;->b(Lcom/nd/commplatform/d/c/mt;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/nd/commplatform/d/c/nt;->a(Lcom/nd/commplatform/NdCallbackListener;Landroid/content/Context;I)V

    const-string v0, "NdActivityUserListViewHolder"

    const-string v1, "get user info fail."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdUserInfo;->getUin()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mt$2;->a:Lcom/nd/commplatform/d/c/mt;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/mt;->a(Lcom/nd/commplatform/d/c/mt;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mt$2;->a:Lcom/nd/commplatform/d/c/mt;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/mt;->a(Lcom/nd/commplatform/d/c/mt;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/mt$a;

    iget-object v4, v0, Lcom/nd/commplatform/d/c/mt$a;->e:Lcom/nd/commplatform/d/c/nb;

    invoke-virtual {v4}, Lcom/nd/commplatform/d/c/nb;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iput-object p2, v0, Lcom/nd/commplatform/d/c/mt$a;->d:Lcom/nd/commplatform/entry/NdUserInfo;

    const/4 v4, 0x2

    iput v4, v0, Lcom/nd/commplatform/d/c/mt$a;->f:I

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/nd/commplatform/d/c/mt$2;->a:Lcom/nd/commplatform/d/c/mt;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/mt;->c(Lcom/nd/commplatform/d/c/mt;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p2, Lcom/nd/commplatform/entry/NdUserInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/mt$2;->a(ILcom/nd/commplatform/entry/NdUserInfo;)V

    return-void
.end method
