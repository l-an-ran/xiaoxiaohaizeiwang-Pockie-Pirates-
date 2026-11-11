.class final Lcom/nd/commplatform/d/c/jb$2;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/jb;->a(Landroid/content/Context;Lcom/nd/commplatform/d/c/jb$b;)V
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

.field final synthetic b:Lcom/nd/commplatform/d/c/jb$b;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/nd/commplatform/d/c/jb$b;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/jb$2;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/jb$2;->b:Lcom/nd/commplatform/d/c/jb$b;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/nd/commplatform/d/c/ft;)V
    .locals 3

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

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/jb$2;->b:Lcom/nd/commplatform/d/c/jb$b;

    invoke-interface {v0}, Lcom/nd/commplatform/d/c/jb$b;->a()V

    return-void

    :pswitch_0
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/nd/commplatform/d/c/ft;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/jb;->b(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p2}, Lcom/nd/commplatform/d/c/ft;->c()Z

    move-result v0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/jb;->d(Z)Z

    invoke-virtual {p2}, Lcom/nd/commplatform/d/c/ft;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/jb;->c(Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/jb$2;->a:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/nd/commplatform/d/c/ft;->b()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v0}, Lcom/nd/commplatform/d/c/ni;->b(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

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
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/jb$2;->a(ILcom/nd/commplatform/d/c/ft;)V

    return-void
.end method
