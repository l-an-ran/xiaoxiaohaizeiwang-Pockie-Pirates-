.class final Lcom/nd/commplatform/d/c/dm;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/d/c/dl$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/dl$b;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/dl$b;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/dm;->a:Lcom/nd/commplatform/d/c/dl$b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .local p0, "this":Lcom/nd/commplatform/d/c/dm;, "Lcom/nd/commplatform/d/c/dl$b.com/nd/commplatform/d/c/dm;"
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xeb

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dm;->a:Lcom/nd/commplatform/d/c/dl$b;

    iget-object v1, v0, Lcom/nd/commplatform/d/c/dl$b;->a:Lcom/nd/commplatform/d/c/dl;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/nd/commplatform/d/c/dn;

    invoke-static {v1, v0}, Lcom/nd/commplatform/d/c/dl;->a(Lcom/nd/commplatform/d/c/dl;Lcom/nd/commplatform/d/c/dn;)Lcom/nd/commplatform/d/c/dn;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dm;->a:Lcom/nd/commplatform/d/c/dl$b;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/dl$b;->a(Lcom/nd/commplatform/d/c/dl$b;)Lcom/nd/commplatform/d/c/dl$d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dm;->a:Lcom/nd/commplatform/d/c/dl$b;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/dl$b;->a(Lcom/nd/commplatform/d/c/dl$b;)Lcom/nd/commplatform/d/c/dl$d;

    move-result-object v0

    invoke-interface {v0}, Lcom/nd/commplatform/d/c/dl$d;->a()V

    :cond_0
    return-void
.end method
