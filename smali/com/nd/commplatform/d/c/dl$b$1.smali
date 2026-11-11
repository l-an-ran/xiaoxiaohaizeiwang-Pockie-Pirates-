.class final Lcom/nd/commplatform/d/c/dl$b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/dl$b;->a([Ljava/lang/Object;Lcom/nd/commplatform/d/c/dk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/dl$b;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/dl$b;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/dl$b$1;->a:Lcom/nd/commplatform/d/c/dl$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Lcom/nd/commplatform/d/c/dn;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/dl$b$1;->a:Lcom/nd/commplatform/d/c/dl$b;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/dl$b;->b(Lcom/nd/commplatform/d/c/dl$b;)[Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/dl$b$1;->a:Lcom/nd/commplatform/d/c/dl$b;

    invoke-static {v2}, Lcom/nd/commplatform/d/c/dl$b;->c(Lcom/nd/commplatform/d/c/dl$b;)Lcom/nd/commplatform/d/c/dk;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/nd/commplatform/d/c/dn;-><init>([Ljava/lang/Object;Lcom/nd/commplatform/d/c/dk;)V

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/dn;->b()V

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/dn;->h()V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/dl$b$1;->a:Lcom/nd/commplatform/d/c/dl$b;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/dl$b;->d(Lcom/nd/commplatform/d/c/dl$b;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/dl$b$1;->a:Lcom/nd/commplatform/d/c/dl$b;

    invoke-static {v2}, Lcom/nd/commplatform/d/c/dl$b;->d(Lcom/nd/commplatform/d/c/dl$b;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xeb

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
