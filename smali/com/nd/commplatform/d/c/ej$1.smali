.class Lcom/nd/commplatform/d/c/ej$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/ej;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/ej;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/ej;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ej$1;->a:Lcom/nd/commplatform/d/c/ej;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget-object v1, p0, Lcom/nd/commplatform/d/c/ej$1;->a:Lcom/nd/commplatform/d/c/ej;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/ej;->a(Ljava/util/List;)V

    return-void
.end method
