.class final Lcom/nd/commplatform/d/c/iz$a$1;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/iz$a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/NdCallbackListener",
        "<",
        "Lcom/nd/commplatform/entry/NdPayByAnotherRequestResultInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/iz$a;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/iz$a;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/iz$a$1;->a:Lcom/nd/commplatform/d/c/iz$a;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/nd/commplatform/entry/NdPayByAnotherRequestResultInfo;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/iz$a$1;->a:Lcom/nd/commplatform/d/c/iz$a;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/iz$a;->a:Lcom/nd/commplatform/d/c/iz;

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/iz;->b(Z)V

    if-nez p1, :cond_3

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdPayByAnotherRequestResultInfo;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/iz$a$1;->a:Lcom/nd/commplatform/d/c/iz$a;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/iz$a;->a:Lcom/nd/commplatform/d/c/iz;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/iz;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->gu:I

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;I)V

    :goto_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/iz$a$1;->a:Lcom/nd/commplatform/d/c/iz$a;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/iz$a;->a:Lcom/nd/commplatform/d/c/iz;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/iz;->e(I)Lcom/nd/commplatform/NdCallbackListener;

    return-void

    :cond_0
    invoke-virtual {p2, v1}, Lcom/nd/commplatform/entry/NdPayByAnotherRequestResultInfo;->get(I)Lcom/nd/commplatform/entry/NdPayByAnotherRequestResultInfo$NdRequestResultInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdPayByAnotherRequestResultInfo$NdRequestResultInfo;->isSucceed()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/iz$a$1;->a:Lcom/nd/commplatform/d/c/iz$a;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/iz$a;->a:Lcom/nd/commplatform/d/c/iz;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/iz;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->gv:I

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;I)V

    const/4 v0, 0x2

    const/16 v1, -0xfa4

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/ol;->a(II)V

    invoke-static {}, Lcom/nd/commplatform/d/c/bz;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/nd/commplatform/d/c/bz;->c()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/nd/commplatform/d/c/cb;->e()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nd/commplatform/d/c/iz$a$1;->a:Lcom/nd/commplatform/d/c/iz$a;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/iz$a;->a:Lcom/nd/commplatform/d/c/iz;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/iz;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->gu:I

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/nd/commplatform/d/c/iz$a$1;->a:Lcom/nd/commplatform/d/c/iz$a;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/iz$a;->a:Lcom/nd/commplatform/d/c/iz;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/iz;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/nd/commplatform/d/c/nt;->a(Lcom/nd/commplatform/NdCallbackListener;Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p2, Lcom/nd/commplatform/entry/NdPayByAnotherRequestResultInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/iz$a$1;->a(ILcom/nd/commplatform/entry/NdPayByAnotherRequestResultInfo;)V

    return-void
.end method
