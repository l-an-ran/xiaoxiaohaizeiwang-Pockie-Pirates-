.class final Lcom/nd/commplatform/d/c/il$a$1;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/il$a;->onClick(Landroid/view/View;)V
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
.field final synthetic a:Lcom/nd/commplatform/d/c/il$a;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/il$a;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/il$a$1;->a:Lcom/nd/commplatform/d/c/il$a;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/Object;)V
    .locals 3
    .param p1, "responseCode"    # I
    .param p2, "t"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/il$a$1;->a:Lcom/nd/commplatform/d/c/il$a;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/il$a;->a:Lcom/nd/commplatform/d/c/il;

    invoke-virtual {v0, v2}, Lcom/nd/commplatform/d/c/il;->b(Z)V

    if-nez p1, :cond_0

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/a;->a(Z)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/il$a$1;->a:Lcom/nd/commplatform/d/c/il$a;

    iget-object v1, v1, Lcom/nd/commplatform/d/c/il$a;->a:Lcom/nd/commplatform/d/c/il;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/il;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/nd/commplatform/d/c/a;->a(ZLandroid/content/Context;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/il$a$1;->a:Lcom/nd/commplatform/d/c/il$a;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/il$a;->a:Lcom/nd/commplatform/d/c/il;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/il;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->co:I

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;I)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/cb;->a(Lcom/nd/commplatform/d/c/bx;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/il$a$1;->a:Lcom/nd/commplatform/d/c/il$a;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/il$a;->a:Lcom/nd/commplatform/d/c/il;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/il;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/nd/commplatform/d/c/nt;->a(Lcom/nd/commplatform/NdCallbackListener;Landroid/content/Context;I)V

    goto :goto_0
.end method
