.class final Lcom/nd/commplatform/d/c/l$4;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/l;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/NdCallbackListener",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/l;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/l;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/l$4;->a:Lcom/nd/commplatform/d/c/l;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/Object;)V
    .locals 3
    .param p1, "responseCode"    # I
    .param p2, "t"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/l$4;->a:Lcom/nd/commplatform/d/c/l;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/l;->e(I)Lcom/nd/commplatform/NdCallbackListener;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/l$4;->a:Lcom/nd/commplatform/d/c/l;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/l;->b(Z)V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/l;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/nd/commplatform/d/c/ol;->a(II)V

    const/4 v0, 0x3

    invoke-static {v0, p1}, Lcom/nd/commplatform/d/c/ol;->a(II)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/l$4;->a:Lcom/nd/commplatform/d/c/l;

    new-instance v1, Lcom/nd/commplatform/d/c/l$4$1;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/l$4$1;-><init>(Lcom/nd/commplatform/d/c/l$4;)V

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/jb;->a(Lcom/nd/commplatform/widget/NdFrameInnerContent;Lcom/nd/commplatform/d/c/jb$a;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/l$4;->a:Lcom/nd/commplatform/d/c/l;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/l;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/nd/commplatform/d/c/nt;->a(Lcom/nd/commplatform/NdCallbackListener;Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/l$4;->a:Lcom/nd/commplatform/d/c/l;

    sget v1, Lcom/nd/commplatform/d/c/jo$e;->X:I

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/l;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method
