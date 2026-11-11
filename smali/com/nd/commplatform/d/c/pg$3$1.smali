.class final Lcom/nd/commplatform/d/c/pg$3$1;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/pg$3;->onClick(Landroid/content/DialogInterface;I)V
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
.field final synthetic a:Lcom/nd/commplatform/d/c/pg$3;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/pg$3;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/pg$3$1;->a:Lcom/nd/commplatform/d/c/pg$3;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/Object;)V
    .locals 3
    .param p1, "responseCode"    # I
    .param p2, "t"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/d/c/pg$3$1;->a:Lcom/nd/commplatform/d/c/pg$3;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/pg$3;->b:Lcom/nd/commplatform/d/c/pg;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/pg;->b(Z)V

    const-string v0, "MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ";responseCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pg$3$1;->a:Lcom/nd/commplatform/d/c/pg$3;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/pg$3;->b:Lcom/nd/commplatform/d/c/pg;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/pg;->a(Lcom/nd/commplatform/d/c/pg;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/pg$3$1;->a:Lcom/nd/commplatform/d/c/pg$3;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/pg$3;->b:Lcom/nd/commplatform/d/c/pg;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/pg;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/nd/commplatform/d/c/nt;->a(Lcom/nd/commplatform/NdCallbackListener;Landroid/content/Context;I)V

    goto :goto_0
.end method
