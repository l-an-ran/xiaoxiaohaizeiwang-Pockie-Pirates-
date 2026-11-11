.class public final Lcom/nd/commplatform/d/c/ef;
.super Ljava/util/Observable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nd/commplatform/d/c/ef$a;,
        Lcom/nd/commplatform/d/c/ef$b;
    }
.end annotation


# static fields
.field private static d:Lcom/nd/commplatform/d/c/ef;


# instance fields
.field a:Landroid/os/HandlerThread;

.field b:Lcom/nd/commplatform/d/c/ef$b;

.field c:Lcom/nd/commplatform/d/c/ef$a;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method

.method public static a()Lcom/nd/commplatform/d/c/ef;
    .locals 1

    sget-object v0, Lcom/nd/commplatform/d/c/ef;->d:Lcom/nd/commplatform/d/c/ef;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nd/commplatform/d/c/ef;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/ef;-><init>()V

    sput-object v0, Lcom/nd/commplatform/d/c/ef;->d:Lcom/nd/commplatform/d/c/ef;

    :cond_0
    sget-object v0, Lcom/nd/commplatform/d/c/ef;->d:Lcom/nd/commplatform/d/c/ef;

    return-object v0
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/ef;)V
    .locals 0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ef;->setChanged()V

    return-void
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/ef;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/ef;->e()V

    return-void
.end method

.method private c()V
    .locals 3

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ef;->b()V

    invoke-static {}, Lcom/nd/commplatform/d/c/ei;->a()Lcom/nd/commplatform/d/c/ei;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/ei;->b()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ef;->a:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FriendBgManager[thread]"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ef;->a:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ef;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ef;->b:Lcom/nd/commplatform/d/c/ef$b;

    if-nez v0, :cond_1

    new-instance v0, Lcom/nd/commplatform/d/c/ef$b;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ef;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/nd/commplatform/d/c/ef$b;-><init>(Lcom/nd/commplatform/d/c/ef;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ef;->b:Lcom/nd/commplatform/d/c/ef$b;

    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/nd/commplatform/d/c/ef;)Z
    .locals 1

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/ef;->d()Z

    move-result v0

    return v0
.end method

.method private d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/nd/commplatform/d/c/ef$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/nd/commplatform/d/c/ef$a;-><init>(Lcom/nd/commplatform/d/c/ef;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ef;->c:Lcom/nd/commplatform/d/c/ef$a;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ef;->b:Lcom/nd/commplatform/d/c/ef$b;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ef;->c:Lcom/nd/commplatform/d/c/ef$a;

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/ef$b;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private d()Z
    .locals 1

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private e()V
    .locals 4

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ef;->b:Lcom/nd/commplatform/d/c/ef$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ef;->b:Lcom/nd/commplatform/d/c/ef$b;

    const/4 v1, 0x5

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Lcom/nd/commplatform/d/c/ef$b;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/ef;->c()V

    invoke-direct {p0, p1, p2}, Lcom/nd/commplatform/d/c/ef;->d(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/nd/commplatform/d/c/ej;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/nd/commplatform/d/c/ef;->addObserver(Ljava/util/Observer;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ef;->b:Lcom/nd/commplatform/d/c/ef$b;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/ef$b;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ef;->b:Lcom/nd/commplatform/d/c/ef$b;

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/ef$b;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ef;->b:Lcom/nd/commplatform/d/c/ef$b;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/ef$b;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ef;->b:Lcom/nd/commplatform/d/c/ef$b;

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/ef$b;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public b()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/nd/commplatform/d/c/ei;->a()Lcom/nd/commplatform/d/c/ei;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/ei;->c()V

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ef;->deleteObservers()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ef;->c:Lcom/nd/commplatform/d/c/ef$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ef;->b:Lcom/nd/commplatform/d/c/ef$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ef;->b:Lcom/nd/commplatform/d/c/ef$b;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ef;->c:Lcom/nd/commplatform/d/c/ef$a;

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/ef$b;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ef;->c:Lcom/nd/commplatform/d/c/ef$a;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/ef$a;->a()V

    iput-object v3, p0, Lcom/nd/commplatform/d/c/ef;->c:Lcom/nd/commplatform/d/c/ef$a;

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ef;->b:Lcom/nd/commplatform/d/c/ef$b;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    const/4 v1, 0x6

    :goto_0
    if-lt v0, v1, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ef;->a:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ef;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->interrupt()V

    iput-object v3, p0, Lcom/nd/commplatform/d/c/ef;->a:Landroid/os/HandlerThread;

    :cond_3
    return-void

    :cond_4
    iget-object v2, p0, Lcom/nd/commplatform/d/c/ef;->b:Lcom/nd/commplatform/d/c/ef$b;

    invoke-virtual {v2, v0}, Lcom/nd/commplatform/d/c/ef$b;->removeMessages(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ef;->b:Lcom/nd/commplatform/d/c/ef$b;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/ef$b;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput v4, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v1, v2

    aput-object p2, v1, v4

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ef;->b:Lcom/nd/commplatform/d/c/ef$b;

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/ef$b;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public b(Lcom/nd/commplatform/d/c/ej;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/nd/commplatform/d/c/ef;->deleteObserver(Ljava/util/Observer;)V

    return-void
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ef;->b:Lcom/nd/commplatform/d/c/ef$b;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/ef$b;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput v1, v0, Landroid/os/Message;->what:I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ef;->b:Lcom/nd/commplatform/d/c/ef$b;

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/ef$b;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
