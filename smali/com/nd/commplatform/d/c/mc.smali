.class Lcom/nd/commplatform/d/c/mc;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/d/c/mb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/mb;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/mb;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/mc;->a:Lcom/nd/commplatform/d/c/mb;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mc;->a:Lcom/nd/commplatform/d/c/mb;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/mb;->a(Lcom/nd/commplatform/d/c/mb;)V

    return-void
.end method
