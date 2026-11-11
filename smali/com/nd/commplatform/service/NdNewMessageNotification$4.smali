.class final Lcom/nd/commplatform/service/NdNewMessageNotification$4;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/service/NdNewMessageNotification;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/service/NdNewMessageNotification;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/service/NdNewMessageNotification;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/service/NdNewMessageNotification$4;->a:Lcom/nd/commplatform/service/NdNewMessageNotification;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/service/NdNewMessageNotification$4;->a:Lcom/nd/commplatform/service/NdNewMessageNotification;

    invoke-static {v0}, Lcom/nd/commplatform/service/NdNewMessageNotification;->f(Lcom/nd/commplatform/service/NdNewMessageNotification;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/service/NdNewMessageNotification$4;->a:Lcom/nd/commplatform/service/NdNewMessageNotification;

    iget-object v1, v1, Lcom/nd/commplatform/service/NdNewMessageNotification;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
