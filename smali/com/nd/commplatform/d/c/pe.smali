.class public Lcom/nd/commplatform/d/c/pe;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:I

.field private c:Lcom/nd/commplatform/d/c/qe;

.field private final d:S

.field private e:Ljava/lang/String;

.field private f:Landroid/content/Context;

.field private g:Ljava/lang/String;

.field private h:Landroid/app/NotificationManager;

.field private i:I

.field private j:Landroid/os/Handler;

.field private k:Landroid/app/Notification;

.field private l:Landroid/widget/RemoteViews;

.field private m:Ljava/lang/String;

.field private n:I

.field private o:I

.field private p:Landroid/app/Service;

.field private q:I

.field private r:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ND2VersionUpdateAct"

    iput-object v0, p0, Lcom/nd/commplatform/d/c/pe;->a:Ljava/lang/String;

    const/16 v0, -0x833

    iput-short v0, p0, Lcom/nd/commplatform/d/c/pe;->d:S

    iput-object v1, p0, Lcom/nd/commplatform/d/c/pe;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/nd/commplatform/d/c/pe;->g:Ljava/lang/String;

    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/pe;->k:Landroid/app/Notification;

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/pe;)I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/d/c/pe;->b:I

    return v0
.end method

.method private a(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pe;->l:Landroid/widget/RemoteViews;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$f;->bo:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/pe;->l:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/pe;->l:Landroid/widget/RemoteViews;

    sget v2, Lcom/nd/commplatform/d/c/jo$e;->gP:I

    sget v3, Lcom/nd/commplatform/d/c/jo$h;->ky:I

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pe;->m:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_0
    aput-object v0, v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pe;->l:Landroid/widget/RemoteViews;

    sget v1, Lcom/nd/commplatform/d/c/jo$e;->fF:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pe;->l:Landroid/widget/RemoteViews;

    sget v1, Lcom/nd/commplatform/d/c/jo$e;->hm:I

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v5, v5}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/nd/commplatform/d/c/pe;->l:Landroid/widget/RemoteViews;

    sget v2, Lcom/nd/commplatform/d/c/jo$e;->gN:I

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/pe;->l:Landroid/widget/RemoteViews;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/pe;->m:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private a()V
    .locals 2

    new-instance v0, Lcom/nd/commplatform/d/c/qe;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/qe;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/pe;->c:Lcom/nd/commplatform/d/c/qe;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pe;->c:Lcom/nd/commplatform/d/c/qe;

    new-instance v1, Lcom/nd/commplatform/d/c/pe$1;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/pe$1;-><init>(Lcom/nd/commplatform/d/c/pe;)V

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/qe;->a(Lcom/nd/commplatform/d/c/qe$d;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pe;->c:Lcom/nd/commplatform/d/c/qe;

    new-instance v1, Lcom/nd/commplatform/d/c/pe$2;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/pe$2;-><init>(Lcom/nd/commplatform/d/c/pe;)V

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/qe;->a(Lcom/nd/commplatform/d/c/qe$a;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pe;->c:Lcom/nd/commplatform/d/c/qe;

    new-instance v1, Lcom/nd/commplatform/d/c/pe$3;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/pe$3;-><init>(Lcom/nd/commplatform/d/c/pe;)V

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/qe;->a(Lcom/nd/commplatform/d/c/qe$e;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pe;->c:Lcom/nd/commplatform/d/c/qe;

    new-instance v1, Lcom/nd/commplatform/d/c/pe$4;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/pe$4;-><init>(Lcom/nd/commplatform/d/c/pe;)V

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/qe;->a(Lcom/nd/commplatform/d/c/qe$f;)V

    return-void
.end method

.method private a(I)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/pe;->b()V

    return-void
.end method

.method private a(II)V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pe;->j:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/nd/commplatform/d/c/pe;->j:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/pe;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/pe;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/pe;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nd/commplatform/d/c/pe;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/pe;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/pe;->b(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/pe;)I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/d/c/pe;->n:I

    return v0
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/pe;I)I
    .locals 0

    iput p1, p0, Lcom/nd/commplatform/d/c/pe;->q:I

    return p1
.end method

.method private b()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/nd/commplatform/d/c/qa;->a()Lcom/nd/commplatform/d/c/qa;

    move-result-object v0

    iget v1, p0, Lcom/nd/commplatform/d/c/pe;->b:I

    iget-object v2, p0, Lcom/nd/commplatform/d/c/pe;->c:Lcom/nd/commplatform/d/c/qe;

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/qa;->a(ILcom/nd/commplatform/d/c/qe;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private b(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v0, p0, Lcom/nd/commplatform/d/c/pe;->n:I

    if-nez v0, :cond_0

    sget v0, Lcom/nd/commplatform/d/c/jo$h;->kn:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/nd/commplatform/d/c/pe;->q:I

    invoke-static {v2}, Lcom/nd/commplatform/d/c/oh;->b(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/nd/commplatform/d/c/pe;->l:Landroid/widget/RemoteViews;

    sget v2, Lcom/nd/commplatform/d/c/jo$e;->fF:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/pe;->l:Landroid/widget/RemoteViews;

    sget v2, Lcom/nd/commplatform/d/c/jo$e;->fF:I

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    return-void

    :cond_0
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->km:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/nd/commplatform/d/c/pe;->q:I

    invoke-static {v2}, Lcom/nd/commplatform/d/c/oh;->b(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/nd/commplatform/d/c/pe;->n:I

    invoke-static {v2}, Lcom/nd/commplatform/d/c/oh;->b(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private c()I
    .locals 7

    const/4 v3, 0x0

    invoke-static {}, Lcom/nd/commplatform/d/c/qa;->a()Lcom/nd/commplatform/d/c/qa;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/pe;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/pe;->g:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/nd/commplatform/d/c/pe;->c:Lcom/nd/commplatform/d/c/qe;

    iget-object v6, p0, Lcom/nd/commplatform/d/c/pe;->f:Landroid/content/Context;

    invoke-virtual/range {v0 .. v6}, Lcom/nd/commplatform/d/c/qa;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;Lcom/nd/commplatform/d/c/qe;Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/nd/commplatform/d/c/pe;->b:I

    const/4 v0, 0x1

    invoke-direct {p0, v0, v3}, Lcom/nd/commplatform/d/c/pe;->a(II)V

    iget v0, p0, Lcom/nd/commplatform/d/c/pe;->b:I

    return v0
.end method

.method static synthetic c(Lcom/nd/commplatform/d/c/pe;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pe;->f:Landroid/content/Context;

    return-object v0
.end method

.method private d()Landroid/os/Handler;
    .locals 2

    new-instance v0, Lcom/nd/commplatform/d/c/pe$5;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/nd/commplatform/d/c/pe$5;-><init>(Lcom/nd/commplatform/d/c/pe;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/pe;->j:Landroid/os/Handler;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pe;->j:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lcom/nd/commplatform/d/c/pe;)Landroid/widget/RemoteViews;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pe;->l:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method private e()V
    .locals 5

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pe;->r:Landroid/content/Intent;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/pe;->f:Landroid/content/Context;

    const-class v2, Lcom/nd/commplatform/versionupdate/ND2VersionUpdateNotify;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/pe;->r:Landroid/content/Intent;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pe;->r:Landroid/content/Intent;

    const-string v1, "android.intent.nd.sns.commplatform.versionupdate.notify"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pe;->r:Landroid/content/Intent;

    const-string v1, "nd2snsNotifyId"

    iget v2, p0, Lcom/nd/commplatform/d/c/pe;->i:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pe;->r:Landroid/content/Intent;

    const-string v1, "nd2snsSessionid"

    iget v2, p0, Lcom/nd/commplatform/d/c/pe;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pe;->r:Landroid/content/Intent;

    const-string v1, "nd2downfinishFlag"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pe;->r:Landroid/content/Intent;

    const-string v1, "nd2startId"

    iget v2, p0, Lcom/nd/commplatform/d/c/pe;->o:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pe;->k:Landroid/app/Notification;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/pe;->f:Landroid/content/Context;

    iget v2, p0, Lcom/nd/commplatform/d/c/pe;->i:I

    iget-object v3, p0, Lcom/nd/commplatform/d/c/pe;->r:Landroid/content/Intent;

    const/high16 v4, 0x8000000

    invoke-static {v1, v2, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pe;->k:Landroid/app/Notification;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/pe;->l:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pe;->k:Landroid/app/Notification;

    const v1, 0x1080081

    iput v1, v0, Landroid/app/Notification;->icon:I

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pe;->k:Landroid/app/Notification;

    const/16 v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/nd/commplatform/d/c/pe;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/pe;->e()V

    return-void
.end method

.method static synthetic f(Lcom/nd/commplatform/d/c/pe;)I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/d/c/pe;->i:I

    return v0
.end method

.method static synthetic g(Lcom/nd/commplatform/d/c/pe;)Landroid/app/NotificationManager;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pe;->h:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic h(Lcom/nd/commplatform/d/c/pe;)Landroid/app/Notification;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pe;->k:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic i(Lcom/nd/commplatform/d/c/pe;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pe;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/nd/commplatform/d/c/pe;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pe;->r:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic k(Lcom/nd/commplatform/d/c/pe;)I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/d/c/pe;->o:I

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/app/Service;)I
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iput-object p1, p0, Lcom/nd/commplatform/d/c/pe;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/pe;->g:Ljava/lang/String;

    iput-object p3, p0, Lcom/nd/commplatform/d/c/pe;->m:Ljava/lang/String;

    iput p4, p0, Lcom/nd/commplatform/d/c/pe;->n:I

    invoke-virtual {p7}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/pe;->f:Landroid/content/Context;

    iput p5, p0, Lcom/nd/commplatform/d/c/pe;->i:I

    iput p6, p0, Lcom/nd/commplatform/d/c/pe;->o:I

    const-string v0, "ND2VersionUpdateAct\'s serviceId"

    invoke-static {p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p7, p0, Lcom/nd/commplatform/d/c/pe;->p:Landroid/app/Service;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pe;->f:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/pe;->h:Landroid/app/NotificationManager;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pe;->h:Landroid/app/NotificationManager;

    invoke-virtual {v0, p5}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pe;->f:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/nd/commplatform/d/c/pe;->a(Landroid/content/Context;)Landroid/widget/RemoteViews;

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/pe;->d()Landroid/os/Handler;

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/pe;->a()V

    const-string v0, "ND2VersionUpdateAct"

    const-string v1, "begins request data!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/pe;->c()I

    move-result v0

    goto :goto_0
.end method
