.class Lcom/nd/commplatform/d/c/ma;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/d/c/lz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/lz;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/lz;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ma;->a:Lcom/nd/commplatform/d/c/lz;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ma;->a:Lcom/nd/commplatform/d/c/lz;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/lz;->a(Lcom/nd/commplatform/d/c/lz;)V

    return-void
.end method
