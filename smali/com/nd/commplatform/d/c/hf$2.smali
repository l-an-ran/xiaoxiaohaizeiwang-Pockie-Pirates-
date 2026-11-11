.class final Lcom/nd/commplatform/d/c/hf$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/hf;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/hf;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/hf;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/hf$2;->a:Lcom/nd/commplatform/d/c/hf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .local p0, "this":Lcom/nd/commplatform/d/c/hf$2;, "Lcom/nd/commplatform/d/c/hf.2;"
    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf$2;->a:Lcom/nd/commplatform/d/c/hf;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/hf;->c(Lcom/nd/commplatform/d/c/hf;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf$2;->a:Lcom/nd/commplatform/d/c/hf;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/hf;->d(Lcom/nd/commplatform/d/c/hf;)Lcom/nd/commplatform/d/c/hj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/hj;->d()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/hf$2;->a:Lcom/nd/commplatform/d/c/hf;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/hf;->e(Lcom/nd/commplatform/d/c/hf;)Lcom/nd/commplatform/d/c/hm;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/nd/commplatform/d/c/hm;->b(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hf$2;->a:Lcom/nd/commplatform/d/c/hf;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/hf;->a(Lcom/nd/commplatform/d/c/hf;Z)V

    goto :goto_0
.end method
