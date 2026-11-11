.class final Lcom/nd/commplatform/d/c/fi$1;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/fi;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/NdCallbackListener",
        "<",
        "Lcom/nd/commplatform/entry/NdRankPageList",
        "<",
        "Lcom/nd/commplatform/entry/NdUserRankInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/fi;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/fi;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/fi$1;->a:Lcom/nd/commplatform/d/c/fi;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/nd/commplatform/entry/NdRankPageList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/nd/commplatform/entry/NdRankPageList",
            "<",
            "Lcom/nd/commplatform/entry/NdUserRankInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fi$1;->a:Lcom/nd/commplatform/d/c/fi;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/fi;->a(Lcom/nd/commplatform/d/c/fi;)Lcom/nd/commplatform/d/c/hf;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fi$1;->a:Lcom/nd/commplatform/d/c/fi;

    invoke-static {v1, p2}, Lcom/nd/commplatform/d/c/fi;->a(Lcom/nd/commplatform/d/c/fi;Lcom/nd/commplatform/entry/NdRankPageList;)Lcom/nd/commplatform/entry/NdRankPageList;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/nd/commplatform/d/c/hf;->a(Lcom/nd/commplatform/NdCallbackListener;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fi$1;->a:Lcom/nd/commplatform/d/c/fi;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/fi;->a(Lcom/nd/commplatform/d/c/fi;)Lcom/nd/commplatform/d/c/hf;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nd/commplatform/d/c/hf;->b(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fi$1;->a:Lcom/nd/commplatform/d/c/fi;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/fi;->a(Lcom/nd/commplatform/d/c/fi;)Lcom/nd/commplatform/d/c/hf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/hf;->e()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fi$1;->a:Lcom/nd/commplatform/d/c/fi;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/fi;->b(Lcom/nd/commplatform/d/c/fi;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/widget/NdListBlankView;

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->fE:I

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/widget/NdListBlankView;->a(I)V

    :cond_0
    if-eqz p2, :cond_1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdRankPageList;->getExtras()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fi$1;->a:Lcom/nd/commplatform/d/c/fi;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/fi;->c(Lcom/nd/commplatform/d/c/fi;)Lcom/nd/commplatform/d/c/fj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/fj;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p2, Lcom/nd/commplatform/entry/NdRankPageList;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/fi$1;->a(ILcom/nd/commplatform/entry/NdRankPageList;)V

    return-void
.end method
