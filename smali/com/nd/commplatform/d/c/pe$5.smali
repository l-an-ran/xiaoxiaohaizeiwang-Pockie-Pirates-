.class final Lcom/nd/commplatform/d/c/pe$5;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/pe;->d()Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/pe;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/pe;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/pe$5;->a:Lcom/nd/commplatform/d/c/pe;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v8, 0x64

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v7, :cond_2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pe$5;->a:Lcom/nd/commplatform/d/c/pe;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/pe$5;->a:Lcom/nd/commplatform/d/c/pe;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/pe;->b(Lcom/nd/commplatform/d/c/pe;)I

    move-result v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x64

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/pe;->b(Lcom/nd/commplatform/d/c/pe;I)I

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pe$5;->a:Lcom/nd/commplatform/d/c/pe;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/pe$5;->a:Lcom/nd/commplatform/d/c/pe;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/pe;->c(Lcom/nd/commplatform/d/c/pe;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/pe;->a(Lcom/nd/commplatform/d/c/pe;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pe$5;->a:Lcom/nd/commplatform/d/c/pe;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/pe;->d(Lcom/nd/commplatform/d/c/pe;)Landroid/widget/RemoteViews;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$e;->hm:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v8, v2, v6}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pe$5;->a:Lcom/nd/commplatform/d/c/pe;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/pe;->e(Lcom/nd/commplatform/d/c/pe;)V

    invoke-static {}, Lcom/nd/commplatform/d/c/qa;->a()Lcom/nd/commplatform/d/c/qa;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/pe$5;->a:Lcom/nd/commplatform/d/c/pe;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/pe;->a(Lcom/nd/commplatform/d/c/pe;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/qa;->e(I)Ljava/net/HttpURLConnection;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pe$5;->a:Lcom/nd/commplatform/d/c/pe;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/pe;->g(Lcom/nd/commplatform/d/c/pe;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/pe$5;->a:Lcom/nd/commplatform/d/c/pe;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/pe;->f(Lcom/nd/commplatform/d/c/pe;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/pe$5;->a:Lcom/nd/commplatform/d/c/pe;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/pe;->g(Lcom/nd/commplatform/d/c/pe;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/pe$5;->a:Lcom/nd/commplatform/d/c/pe;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/pe;->f(Lcom/nd/commplatform/d/c/pe;)I

    move-result v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/pe$5;->a:Lcom/nd/commplatform/d/c/pe;

    invoke-static {v2}, Lcom/nd/commplatform/d/c/pe;->h(Lcom/nd/commplatform/d/c/pe;)Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pe$5;->a:Lcom/nd/commplatform/d/c/pe;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/pe;->g(Lcom/nd/commplatform/d/c/pe;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/pe$5;->a:Lcom/nd/commplatform/d/c/pe;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/pe;->f(Lcom/nd/commplatform/d/c/pe;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    const-string v0, "ND2VersionUpdateAct"

    const-string v1, "stop service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pe$5;->a:Lcom/nd/commplatform/d/c/pe;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/pe;->d(Lcom/nd/commplatform/d/c/pe;)Landroid/widget/RemoteViews;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$e;->gP:I

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pe$5;->a:Lcom/nd/commplatform/d/c/pe;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/pe;->c(Lcom/nd/commplatform/d/c/pe;)Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/nd/commplatform/d/c/jo$h;->kx:I

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pe$5;->a:Lcom/nd/commplatform/d/c/pe;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/pe;->i(Lcom/nd/commplatform/d/c/pe;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, ""

    :goto_1
    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pe$5;->a:Lcom/nd/commplatform/d/c/pe;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/pe;->d(Lcom/nd/commplatform/d/c/pe;)Landroid/widget/RemoteViews;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$e;->hm:I

    invoke-virtual {v0, v1, v8, v8, v6}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pe$5;->a:Lcom/nd/commplatform/d/c/pe;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/pe;->d(Lcom/nd/commplatform/d/c/pe;)Landroid/widget/RemoteViews;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$e;->fF:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pe$5;->a:Lcom/nd/commplatform/d/c/pe;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/pe;->e(Lcom/nd/commplatform/d/c/pe;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pe$5;->a:Lcom/nd/commplatform/d/c/pe;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/pe;->j(Lcom/nd/commplatform/d/c/pe;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "nd2snsNotifyId"

    iget-object v2, p0, Lcom/nd/commplatform/d/c/pe$5;->a:Lcom/nd/commplatform/d/c/pe;

    invoke-static {v2}, Lcom/nd/commplatform/d/c/pe;->f(Lcom/nd/commplatform/d/c/pe;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pe$5;->a:Lcom/nd/commplatform/d/c/pe;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/pe;->j(Lcom/nd/commplatform/d/c/pe;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "nd2snsSessionid"

    iget-object v2, p0, Lcom/nd/commplatform/d/c/pe$5;->a:Lcom/nd/commplatform/d/c/pe;

    invoke-static {v2}, Lcom/nd/commplatform/d/c/pe;->a(Lcom/nd/commplatform/d/c/pe;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pe$5;->a:Lcom/nd/commplatform/d/c/pe;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/pe;->j(Lcom/nd/commplatform/d/c/pe;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "nd2downfinishFlag"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pe$5;->a:Lcom/nd/commplatform/d/c/pe;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/pe;->j(Lcom/nd/commplatform/d/c/pe;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "nd2startId"

    iget-object v2, p0, Lcom/nd/commplatform/d/c/pe$5;->a:Lcom/nd/commplatform/d/c/pe;

    invoke-static {v2}, Lcom/nd/commplatform/d/c/pe;->k(Lcom/nd/commplatform/d/c/pe;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pe$5;->a:Lcom/nd/commplatform/d/c/pe;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/pe;->j(Lcom/nd/commplatform/d/c/pe;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "nd2appFilePath"

    invoke-static {}, Lcom/nd/commplatform/d/c/qa;->a()Lcom/nd/commplatform/d/c/qa;

    move-result-object v2

    iget-object v3, p0, Lcom/nd/commplatform/d/c/pe$5;->a:Lcom/nd/commplatform/d/c/pe;

    invoke-static {v3}, Lcom/nd/commplatform/d/c/pe;->a(Lcom/nd/commplatform/d/c/pe;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/nd/commplatform/d/c/qa;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pe$5;->a:Lcom/nd/commplatform/d/c/pe;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/pe;->h(Lcom/nd/commplatform/d/c/pe;)Landroid/app/Notification;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/pe$5;->a:Lcom/nd/commplatform/d/c/pe;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/pe;->c(Lcom/nd/commplatform/d/c/pe;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/pe$5;->a:Lcom/nd/commplatform/d/c/pe;

    invoke-static {v2}, Lcom/nd/commplatform/d/c/pe;->f(Lcom/nd/commplatform/d/c/pe;)I

    move-result v2

    iget-object v3, p0, Lcom/nd/commplatform/d/c/pe$5;->a:Lcom/nd/commplatform/d/c/pe;

    invoke-static {v3}, Lcom/nd/commplatform/d/c/pe;->j(Lcom/nd/commplatform/d/c/pe;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x8000000

    invoke-static {v1, v2, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pe$5;->a:Lcom/nd/commplatform/d/c/pe;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/pe;->h(Lcom/nd/commplatform/d/c/pe;)Landroid/app/Notification;

    move-result-object v0

    const v1, 0x1080082

    iput v1, v0, Landroid/app/Notification;->icon:I

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pe$5;->a:Lcom/nd/commplatform/d/c/pe;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/pe;->h(Lcom/nd/commplatform/d/c/pe;)Landroid/app/Notification;

    move-result-object v0

    const/16 v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pe$5;->a:Lcom/nd/commplatform/d/c/pe;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/pe;->g(Lcom/nd/commplatform/d/c/pe;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/pe$5;->a:Lcom/nd/commplatform/d/c/pe;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/pe;->f(Lcom/nd/commplatform/d/c/pe;)I

    move-result v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/pe$5;->a:Lcom/nd/commplatform/d/c/pe;

    invoke-static {v2}, Lcom/nd/commplatform/d/c/pe;->h(Lcom/nd/commplatform/d/c/pe;)Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/nd/commplatform/d/c/pe$5;->a:Lcom/nd/commplatform/d/c/pe;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/pe;->i(Lcom/nd/commplatform/d/c/pe;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method
