.class Lcom/nd/commplatform/d/c/lu;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/d/c/lt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/lt;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/lt;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/lu;->a:Lcom/nd/commplatform/d/c/lt;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/lu;->a:Lcom/nd/commplatform/d/c/lt;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/lt;->a(Lcom/nd/commplatform/d/c/lt;)V

    return-void
.end method
