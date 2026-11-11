.class final Lcom/nd/commplatform/d/c/ot;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/d/c/os;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/os;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/os;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ot;->a:Lcom/nd/commplatform/d/c/os;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ot;->a:Lcom/nd/commplatform/d/c/os;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/os;->a(Lcom/nd/commplatform/d/c/os;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
