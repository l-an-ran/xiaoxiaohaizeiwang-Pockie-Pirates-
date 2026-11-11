.class final Lcom/nd/commplatform/widget/NdLoginDirectorView$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/widget/NdLoginDirectorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/widget/NdLoginDirectorView;


# direct methods
.method private constructor <init>(Lcom/nd/commplatform/widget/NdLoginDirectorView;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/widget/NdLoginDirectorView$a;->a:Lcom/nd/commplatform/widget/NdLoginDirectorView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nd/commplatform/widget/NdLoginDirectorView;Lcom/nd/commplatform/widget/NdLoginDirectorView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/widget/NdLoginDirectorView$a;-><init>(Lcom/nd/commplatform/widget/NdLoginDirectorView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdLoginDirectorView$a;->a:Lcom/nd/commplatform/widget/NdLoginDirectorView;

    invoke-static {v0}, Lcom/nd/commplatform/widget/NdLoginDirectorView;->a(Lcom/nd/commplatform/widget/NdLoginDirectorView;)I

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdLoginDirectorView$a;->a:Lcom/nd/commplatform/widget/NdLoginDirectorView;

    invoke-static {v0}, Lcom/nd/commplatform/widget/NdLoginDirectorView;->b(Lcom/nd/commplatform/widget/NdLoginDirectorView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdLoginDirectorView$a;->a:Lcom/nd/commplatform/widget/NdLoginDirectorView;

    invoke-static {v0}, Lcom/nd/commplatform/widget/NdLoginDirectorView;->c(Lcom/nd/commplatform/widget/NdLoginDirectorView;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/widget/NdLoginDirectorView$a;->a:Lcom/nd/commplatform/widget/NdLoginDirectorView;

    invoke-static {v0}, Lcom/nd/commplatform/widget/NdLoginDirectorView;->d(Lcom/nd/commplatform/widget/NdLoginDirectorView;)I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdLoginDirectorView$a;->a:Lcom/nd/commplatform/widget/NdLoginDirectorView;

    invoke-static {v0}, Lcom/nd/commplatform/widget/NdLoginDirectorView;->e(Lcom/nd/commplatform/widget/NdLoginDirectorView;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/widget/NdLoginDirectorView$a;->a:Lcom/nd/commplatform/widget/NdLoginDirectorView;

    invoke-static {v0}, Lcom/nd/commplatform/widget/NdLoginDirectorView;->f(Lcom/nd/commplatform/widget/NdLoginDirectorView;)V

    goto :goto_0
.end method
