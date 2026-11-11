.class Lcom/nd/commplatform/d/c/mg;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/d/c/mf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/mf;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/mf;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/mg;->a:Lcom/nd/commplatform/d/c/mf;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/mg;->a:Lcom/nd/commplatform/d/c/mf;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/mf;->a(Lcom/nd/commplatform/d/c/mf;)V

    return-void
.end method
