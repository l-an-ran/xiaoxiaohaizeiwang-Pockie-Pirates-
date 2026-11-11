.class final Lcom/nd/commplatform/d/c/jb$1;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/jb;->a(Landroid/content/Context;Lcom/nd/commplatform/d/c/jb$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/NdCallbackListener",
        "<",
        "Lcom/nd/commplatform/d/c/ft;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/nd/commplatform/d/c/jb$a;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/nd/commplatform/d/c/jb$a;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/jb$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/jb$1;->b:Lcom/nd/commplatform/d/c/jb$a;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/nd/commplatform/d/c/ft;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/nd/commplatform/d/c/jb;->e()Lcom/nd/commplatform/widget/NdFrameInnerContent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nd/commplatform/d/c/jb;->e()Lcom/nd/commplatform/widget/NdFrameInnerContent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->b(Z)V

    invoke-static {v3}, Lcom/nd/commplatform/d/c/jb;->a(Lcom/nd/commplatform/widget/NdFrameInnerContent;)Lcom/nd/commplatform/widget/NdFrameInnerContent;

    :cond_0
    const-string v0, "bindPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "responseCode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/jb$1;->b:Lcom/nd/commplatform/d/c/jb$a;

    invoke-interface {v0}, Lcom/nd/commplatform/d/c/jb$a;->a()V

    :goto_1
    return-void

    :pswitch_0
    invoke-static {v4}, Lcom/nd/commplatform/d/c/jb;->c(Z)Z

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/nd/commplatform/d/c/ft;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/jb;->b(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p2}, Lcom/nd/commplatform/d/c/ft;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/nd/commplatform/d/c/ni;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/jb$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/jb;->c(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/nd/commplatform/d/c/ft;->c()Z

    move-result v0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/jb;->d(Z)Z

    invoke-virtual {p2}, Lcom/nd/commplatform/d/c/ft;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/jb;->c(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/nd/commplatform/d/c/jb;->f()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/jb$1;->b:Lcom/nd/commplatform/d/c/jb$a;

    invoke-interface {v0}, Lcom/nd/commplatform/d/c/jb$a;->a()V

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lcom/nd/commplatform/d/c/ft;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/jb$1;->a:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/nd/commplatform/d/c/je;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/nd/commplatform/d/c/jb$1;->a:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/nd/commplatform/d/c/jf;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/nd/commplatform/d/c/jb$1;->a:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/nd/commplatform/d/c/ni;->a(Landroid/content/Context;Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p2, Lcom/nd/commplatform/d/c/ft;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/jb$1;->a(ILcom/nd/commplatform/d/c/ft;)V

    return-void
.end method
