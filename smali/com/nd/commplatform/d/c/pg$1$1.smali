.class final Lcom/nd/commplatform/d/c/pg$1$1;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/pg$1;->onClick(Landroid/content/DialogInterface;I)V
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
.field final synthetic a:Lcom/nd/commplatform/d/c/pg$1;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/pg$1;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/pg$1$1;->a:Lcom/nd/commplatform/d/c/pg$1;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/Object;)V
    .locals 2
    .param p1, "responseCode"    # I
    .param p2, "t"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/d/c/pg$1$1;->a:Lcom/nd/commplatform/d/c/pg$1;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/pg$1;->b:Lcom/nd/commplatform/d/c/pg;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/pg;->b(Z)V

    if-nez p1, :cond_0

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/a;->a(Z)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pg$1$1;->a:Lcom/nd/commplatform/d/c/pg$1;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/pg$1;->b:Lcom/nd/commplatform/d/c/pg;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/pg;->a(Lcom/nd/commplatform/d/c/pg;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/pg$1$1;->a:Lcom/nd/commplatform/d/c/pg$1;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/pg$1;->b:Lcom/nd/commplatform/d/c/pg;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/pg;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/nd/commplatform/d/c/nt;->a(Lcom/nd/commplatform/NdCallbackListener;Landroid/content/Context;I)V

    goto :goto_0
.end method
