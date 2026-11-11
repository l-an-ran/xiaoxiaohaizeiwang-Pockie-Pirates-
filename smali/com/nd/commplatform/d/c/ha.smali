.class final Lcom/nd/commplatform/d/c/ha;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/d/c/gz$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/gz$a;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/gz$a;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ha;->a:Lcom/nd/commplatform/d/c/gz$a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ha;->a:Lcom/nd/commplatform/d/c/gz$a;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/gz$a;->b(Lcom/nd/commplatform/d/c/gz$a;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "LoadImageUrlHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load Fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/ha;->a:Lcom/nd/commplatform/d/c/gz$a;

    invoke-static {v2}, Lcom/nd/commplatform/d/c/gz$a;->b(Lcom/nd/commplatform/d/c/gz$a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ha;->a:Lcom/nd/commplatform/d/c/gz$a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/gz$a;->a(Lcom/nd/commplatform/d/c/gz$a;I)I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ha;->a:Lcom/nd/commplatform/d/c/gz$a;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/gz$a;->a(Lcom/nd/commplatform/d/c/gz$a;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
