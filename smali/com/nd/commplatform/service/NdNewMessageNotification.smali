.class public Lcom/nd/commplatform/service/NdNewMessageNotification;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nd/commplatform/service/NdNewMessageNotification$NdNewMessageNotificationBinder;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String; = "NdNewMessageNotification"

.field private static final d:I = 0x493e0

.field private static final i:I = 0xfa0

.field private static final j:I = 0x1388

.field private static o:[I


# instance fields
.field final a:Ljava/lang/Runnable;

.field final b:Ljava/lang/Runnable;

.field private e:I

.field private f:Lcom/nd/commplatform/d/c/np;

.field private g:Lcom/nd/commplatform/NdCallbackListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nd/commplatform/NdCallbackListener",
            "<[I>;"
        }
    .end annotation
.end field

.field private h:Landroid/view/View;

.field private k:Landroid/view/WindowManager$LayoutParams;

.field private l:Landroid/view/WindowManager;

.field private m:Z

.field private n:Landroid/os/Handler;

.field private p:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput v1, p0, Lcom/nd/commplatform/service/NdNewMessageNotification;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nd/commplatform/service/NdNewMessageNotification;->h:Landroid/view/View;

    iput-boolean v1, p0, Lcom/nd/commplatform/service/NdNewMessageNotification;->m:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/service/NdNewMessageNotification;->n:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/nd/commplatform/service/NdNewMessageNotification;->p:Z

    new-instance v0, Lcom/nd/commplatform/d/c/jp;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/jp;-><init>(Lcom/nd/commplatform/service/NdNewMessageNotification;)V

    iput-object v0, p0, Lcom/nd/commplatform/service/NdNewMessageNotification;->a:Ljava/lang/Runnable;

    new-instance v0, Lcom/nd/commplatform/d/c/jq;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/jq;-><init>(Lcom/nd/commplatform/service/NdNewMessageNotification;)V

    iput-object v0, p0, Lcom/nd/commplatform/service/NdNewMessageNotification;->b:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/service/NdNewMessageNotification;I)I
    .locals 0

    iput p1, p0, Lcom/nd/commplatform/service/NdNewMessageNotification;->e:I

    return p1
.end method

.method public static synthetic a(Lcom/nd/commplatform/service/NdNewMessageNotification;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/service/NdNewMessageNotification;->l()V

    return-void
.end method

.method public static a()[I
    .locals 1

    sget-object v0, Lcom/nd/commplatform/service/NdNewMessageNotification;->o:[I

    return-object v0
.end method

.method static synthetic a([I)[I
    .locals 0

    sput-object p0, Lcom/nd/commplatform/service/NdNewMessageNotification;->o:[I

    return-object p0
.end method

.method static synthetic b()Z
    .locals 1

    invoke-static {}, Lcom/nd/commplatform/service/NdNewMessageNotification;->d()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/nd/commplatform/service/NdNewMessageNotification;)Z
    .locals 1

    invoke-direct {p0}, Lcom/nd/commplatform/service/NdNewMessageNotification;->f()Z

    move-result v0

    return v0
.end method

.method private c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nd/commplatform/service/NdNewMessageNotification;->p:Z

    return v0
.end method

.method static synthetic c(Lcom/nd/commplatform/service/NdNewMessageNotification;)Z
    .locals 1

    invoke-direct {p0}, Lcom/nd/commplatform/service/NdNewMessageNotification;->g()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/nd/commplatform/service/NdNewMessageNotification;)I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/service/NdNewMessageNotification;->e:I

    return v0
.end method

.method private static d()Z
    .locals 1

    invoke-static {}, Lcom/nd/commplatform/d/c/cb;->b()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()V
    .locals 3

    iget-object v0, p0, Lcom/nd/commplatform/service/NdNewMessageNotification;->g:Lcom/nd/commplatform/NdCallbackListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nd/commplatform/service/NdNewMessageNotification$2;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/service/NdNewMessageNotification$2;-><init>(Lcom/nd/commplatform/service/NdNewMessageNotification;)V

    iput-object v0, p0, Lcom/nd/commplatform/service/NdNewMessageNotification;->g:Lcom/nd/commplatform/NdCallbackListener;

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/service/NdNewMessageNotification;->f:Lcom/nd/commplatform/d/c/np;

    if-nez v0, :cond_1

    new-instance v0, Lcom/nd/commplatform/d/c/np;

    iget-object v1, p0, Lcom/nd/commplatform/service/NdNewMessageNotification;->g:Lcom/nd/commplatform/NdCallbackListener;

    invoke-direct {v0, p0, v1}, Lcom/nd/commplatform/d/c/np;-><init>(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    iput-object v0, p0, Lcom/nd/commplatform/service/NdNewMessageNotification;->f:Lcom/nd/commplatform/d/c/np;

    iget-object v0, p0, Lcom/nd/commplatform/service/NdNewMessageNotification;->f:Lcom/nd/commplatform/d/c/np;

    new-instance v1, Lcom/nd/commplatform/service/NdNewMessageNotification$3;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/service/NdNewMessageNotification$3;-><init>(Lcom/nd/commplatform/service/NdNewMessageNotification;)V

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/np;->a(Lcom/nd/commplatform/d/c/np$b;)V

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/nd/commplatform/service/NdNewMessageNotification;->e:I

    iget-object v0, p0, Lcom/nd/commplatform/service/NdNewMessageNotification;->f:Lcom/nd/commplatform/d/c/np;

    const v1, 0x493e0

    const/16 v2, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/np;->a(II)V

    return-void
.end method

.method static synthetic e(Lcom/nd/commplatform/service/NdNewMessageNotification;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/service/NdNewMessageNotification;->i()V

    return-void
.end method

.method static synthetic f(Lcom/nd/commplatform/service/NdNewMessageNotification;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/service/NdNewMessageNotification;->n:Landroid/os/Handler;

    return-object v0
.end method

.method private f()Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/nd/commplatform/service/NdNewMessageNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/service/NdNewMessageNotification;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/16 v3, 0x64

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static synthetic g(Lcom/nd/commplatform/service/NdNewMessageNotification;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/service/NdNewMessageNotification;->k()V

    return-void
.end method

.method private g()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/service/NdNewMessageNotification;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {p0}, Lcom/nd/commplatform/service/NdNewMessageNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private h()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/service/NdNewMessageNotification;->f:Lcom/nd/commplatform/d/c/np;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/service/NdNewMessageNotification;->f:Lcom/nd/commplatform/d/c/np;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/np;->a()V

    iput-object v1, p0, Lcom/nd/commplatform/service/NdNewMessageNotification;->f:Lcom/nd/commplatform/d/c/np;

    :cond_0
    iput-object v1, p0, Lcom/nd/commplatform/service/NdNewMessageNotification;->g:Lcom/nd/commplatform/NdCallbackListener;

    sput-object v1, Lcom/nd/commplatform/service/NdNewMessageNotification;->o:[I

    iget-object v0, p0, Lcom/nd/commplatform/service/NdNewMessageNotification;->n:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nd/commplatform/service/NdNewMessageNotification;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private i()V
    .locals 3

    iget v0, p0, Lcom/nd/commplatform/service/NdNewMessageNotification;->e:I

    if-gtz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/nd/commplatform/service/NdNewMessageNotification;->j()V

    const-string v0, "NdNewMessageNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New Message Count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nd/commplatform/service/NdNewMessageNotification;->e:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private j()V
    .locals 5

    iget-object v0, p0, Lcom/nd/commplatform/service/NdNewMessageNotification;->h:Landroid/view/View;

    sget v1, Lcom/nd/commplatform/d/c/jo$e;->bj:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->fw:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/nd/commplatform/service/NdNewMessageNotification;->e:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/nd/commplatform/service/NdNewMessageNotification;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/service/NdNewMessageNotification;->n:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nd/commplatform/service/NdNewMessageNotification;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/nd/commplatform/service/NdNewMessageNotification$4;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/service/NdNewMessageNotification$4;-><init>(Lcom/nd/commplatform/service/NdNewMessageNotification;)V

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method private k()V
    .locals 3

    iget-boolean v0, p0, Lcom/nd/commplatform/service/NdNewMessageNotification;->m:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/service/NdNewMessageNotification;->l:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/nd/commplatform/service/NdNewMessageNotification;->h:Landroid/view/View;

    iget-object v2, p0, Lcom/nd/commplatform/service/NdNewMessageNotification;->k:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nd/commplatform/service/NdNewMessageNotification;->m:Z

    :cond_0
    return-void
.end method

.method private l()V
    .locals 2

    iget-boolean v0, p0, Lcom/nd/commplatform/service/NdNewMessageNotification;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/service/NdNewMessageNotification;->l:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/nd/commplatform/service/NdNewMessageNotification;->h:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/nd/commplatform/service/NdNewMessageNotification;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nd/commplatform/service/NdNewMessageNotification;->m:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    const/4 v3, -0x2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "NdNewMessageNotification"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->L:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nd/commplatform/service/NdNewMessageNotification;->p:Z

    :cond_0
    iget-boolean v0, p0, Lcom/nd/commplatform/service/NdNewMessageNotification;->p:Z

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/service/NdNewMessageNotification;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/nd/commplatform/service/NdNewMessageNotification;->l:Landroid/view/WindowManager;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$f;->L:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/service/NdNewMessageNotification;->h:Landroid/view/View;

    iget-object v0, p0, Lcom/nd/commplatform/service/NdNewMessageNotification;->h:Landroid/view/View;

    new-instance v1, Lcom/nd/commplatform/service/NdNewMessageNotification$1;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/service/NdNewMessageNotification$1;-><init>(Lcom/nd/commplatform/service/NdNewMessageNotification;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/service/NdNewMessageNotification;->k:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/nd/commplatform/service/NdNewMessageNotification;->k:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/nd/commplatform/service/NdNewMessageNotification;->k:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/nd/commplatform/service/NdNewMessageNotification;->k:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lcom/nd/commplatform/service/NdNewMessageNotification;->k:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v0, p0, Lcom/nd/commplatform/service/NdNewMessageNotification;->k:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x88

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/nd/commplatform/service/NdNewMessageNotification;->k:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-direct {p0}, Lcom/nd/commplatform/service/NdNewMessageNotification;->h()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    invoke-direct {p0}, Lcom/nd/commplatform/service/NdNewMessageNotification;->c()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/nd/commplatform/service/NdNewMessageNotification;->e()V

    goto :goto_0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
