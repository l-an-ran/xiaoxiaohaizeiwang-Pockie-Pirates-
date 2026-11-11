.class public Lcom/nd/commplatform/d/c/np$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/d/c/np;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/np;


# direct methods
.method protected constructor <init>(Lcom/nd/commplatform/d/c/np;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/np$a;->a:Lcom/nd/commplatform/d/c/np;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->i()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/np$a;->a:Lcom/nd/commplatform/d/c/np;

    iget-object v1, v1, Lcom/nd/commplatform/d/c/np;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/np$a;->a:Lcom/nd/commplatform/d/c/np;

    iget-object v2, v2, Lcom/nd/commplatform/d/c/np;->c:Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/a;->j(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    goto :goto_0
.end method
