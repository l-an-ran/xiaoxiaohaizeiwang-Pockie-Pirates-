.class public final Lcom/nd/commplatform/d/c/pu;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/widget/NdBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/widget/NdBottomBar;


# direct methods
.method public constructor <init>(Lcom/nd/commplatform/widget/NdBottomBar;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/pu;->a:Lcom/nd/commplatform/widget/NdBottomBar;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/pu;->a:Lcom/nd/commplatform/widget/NdBottomBar;

    invoke-static {v0}, Lcom/nd/commplatform/widget/NdBottomBar;->a(Lcom/nd/commplatform/widget/NdBottomBar;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pu;->a:Lcom/nd/commplatform/widget/NdBottomBar;

    invoke-static {v0}, Lcom/nd/commplatform/widget/NdBottomBar;->b(Lcom/nd/commplatform/widget/NdBottomBar;)Lcom/nd/commplatform/widget/NdBottomBar$OnNewAppVisibility;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pu;->a:Lcom/nd/commplatform/widget/NdBottomBar;

    invoke-static {v0}, Lcom/nd/commplatform/widget/NdBottomBar;->b(Lcom/nd/commplatform/widget/NdBottomBar;)Lcom/nd/commplatform/widget/NdBottomBar$OnNewAppVisibility;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/nd/commplatform/widget/NdBottomBar$OnNewAppVisibility;->a(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
