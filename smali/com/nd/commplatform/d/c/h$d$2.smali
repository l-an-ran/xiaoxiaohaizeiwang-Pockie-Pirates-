.class final Lcom/nd/commplatform/d/c/h$d$2;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/h$d;->b()V
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
.field final synthetic a:Lcom/nd/commplatform/d/c/h$d;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/h$d;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/h$d$2;->a:Lcom/nd/commplatform/d/c/h$d;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/Object;)V
    .locals 5
    .param p1, "responseCode"    # I
    .param p2, "t"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/h$d$2;->a:Lcom/nd/commplatform/d/c/h$d;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/h$d;->h:Lcom/nd/commplatform/d/c/h;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/h;->e(I)Lcom/nd/commplatform/NdCallbackListener;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/h$d$2;->a:Lcom/nd/commplatform/d/c/h$d;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/h$d;->h:Lcom/nd/commplatform/d/c/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/h;->b(Z)V

    if-nez p1, :cond_0

    invoke-static {}, Lcom/nd/commplatform/d/c/of;->a()Lcom/nd/commplatform/d/c/of;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/of;->c()V

    invoke-static {v4, p1}, Lcom/nd/commplatform/d/c/ol;->a(II)V

    invoke-static {}, Lcom/nd/commplatform/d/c/cb;->e()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/h$d$2;->a:Lcom/nd/commplatform/d/c/h$d;

    iget-object v1, v1, Lcom/nd/commplatform/d/c/h$d;->h:Lcom/nd/commplatform/d/c/h;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/h;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/h$d$2;->a:Lcom/nd/commplatform/d/c/h$d;

    iget-object v2, v2, Lcom/nd/commplatform/d/c/h$d;->g:Lcom/nd/commplatform/d/c/h$b;

    invoke-virtual {v2}, Lcom/nd/commplatform/d/c/h$b;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/nd/commplatform/d/c/h$d$2$1;

    invoke-direct {v3, p0}, Lcom/nd/commplatform/d/c/h$d$2$1;-><init>(Lcom/nd/commplatform/d/c/h$d$2;)V

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/nd/commplatform/d/c/b;->a(Landroid/content/Context;ZLjava/lang/String;Lcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;)V

    goto :goto_0
.end method
