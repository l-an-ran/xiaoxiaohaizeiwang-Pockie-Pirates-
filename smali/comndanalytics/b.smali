.class public Lcomndanalytics/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcomndanalytics/b$c;,
        Lcomndanalytics/b$a;,
        Lcomndanalytics/b$b;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "http://funcstatic.sj.91.com/api.ashx"

.field public static final b:Ljava/lang/String; = "http://funcstatic.sj.91.com/api.ashx"

.field public static final c:Ljava/lang/String; = "http://funcstatic.sj.91.com/api.ashx"

.field public static final d:Ljava/lang/String; = "http://appuse.sj.91.com/api.ashx"

.field private static final e:Ljava/lang/String;

.field private static final t:I = 0x2

.field private static final v:J = 0xea60L


# instance fields
.field private f:Landroid/os/HandlerThread;

.field private g:Lcomndanalytics/b$a;

.field private h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcomndanalytics/f;

.field private j:Lcomndanalytics/d;

.field private k:Lcomndanalytics/aq;

.field private l:Z

.field private m:Lcom/nd/analytics/NdAnalyticsSettings;

.field private n:Lcomndanalytics/ac;

.field private o:Lcomndanalytics/b$c;

.field private p:Lcomndanalytics/i;

.field private q:Z

.field private r:Lcomndanalytics/ar;

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcomndanalytics/b$b;",
            ">;"
        }
    .end annotation
.end field

.field private u:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcomndanalytics/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcomndanalytics/b;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/nd/analytics/NdAnalyticsSettings;Lcomndanalytics/b$c;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcomndanalytics/b;->f:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcomndanalytics/b;->g:Lcomndanalytics/b$a;

    iput-boolean v1, p0, Lcomndanalytics/b;->l:Z

    iput-boolean v1, p0, Lcomndanalytics/b;->q:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcomndanalytics/b;->s:Ljava/util/List;

    iput v1, p0, Lcomndanalytics/b;->u:I

    new-instance v0, Lcomndanalytics/i;

    iget-boolean v1, p0, Lcomndanalytics/b;->q:Z

    invoke-direct {v0, p1, v1}, Lcomndanalytics/i;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcomndanalytics/b;->p:Lcomndanalytics/i;

    new-instance v0, Lcomndanalytics/ar;

    iget-boolean v1, p0, Lcomndanalytics/b;->q:Z

    invoke-direct {v0, v1}, Lcomndanalytics/ar;-><init>(Z)V

    iput-object v0, p0, Lcomndanalytics/b;->r:Lcomndanalytics/ar;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcomndanalytics/b;->h:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcomndanalytics/b;->m:Lcom/nd/analytics/NdAnalyticsSettings;

    new-instance v0, Lcomndanalytics/ac;

    invoke-direct {v0, p1}, Lcomndanalytics/ac;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcomndanalytics/b;->n:Lcomndanalytics/ac;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "91Analytics[thread]"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcomndanalytics/b;->f:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcomndanalytics/b;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcomndanalytics/b$a;

    iget-object v1, p0, Lcomndanalytics/b;->f:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcomndanalytics/b$a;-><init>(Lcomndanalytics/b;Landroid/os/Looper;)V

    iput-object v0, p0, Lcomndanalytics/b;->g:Lcomndanalytics/b$a;

    iput-object p3, p0, Lcomndanalytics/b;->o:Lcomndanalytics/b$c;

    return-void
.end method

.method private a(Lcom/nd/analytics/NdAnalyticsDelegate$RESULT_CODE;)V
    .locals 1

    iget-object v0, p0, Lcomndanalytics/b;->o:Lcomndanalytics/b$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcomndanalytics/b;->o:Lcomndanalytics/b$c;

    invoke-interface {v0, p1}, Lcomndanalytics/b$c;->a(Lcom/nd/analytics/NdAnalyticsDelegate$RESULT_CODE;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcomndanalytics/b;)V
    .locals 0

    invoke-direct {p0}, Lcomndanalytics/b;->q()V

    return-void
.end method

.method static synthetic a(Lcomndanalytics/b;Lcom/nd/analytics/NdAnalyticsDelegate$RESULT_CODE;)V
    .locals 0

    invoke-direct {p0, p1}, Lcomndanalytics/b;->a(Lcom/nd/analytics/NdAnalyticsDelegate$RESULT_CODE;)V

    return-void
.end method

.method static synthetic a(Lcomndanalytics/b;Lcomndanalytics/r;)V
    .locals 0

    invoke-direct {p0, p1}, Lcomndanalytics/b;->a(Lcomndanalytics/r;)V

    return-void
.end method

.method static synthetic a(Lcomndanalytics/b;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcomndanalytics/b;->a(Ljava/lang/String;Ljava/lang/String;JI)V

    return-void
.end method

.method private a(Lcomndanalytics/d;)V
    .locals 2

    iget-object v0, p0, Lcomndanalytics/b;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcomndanalytics/b;->r:Lcomndanalytics/ar;

    invoke-virtual {v1, v0, p1}, Lcomndanalytics/ar;->a(Landroid/content/Context;Lcomndanalytics/d;)Z

    iput-object p1, p0, Lcomndanalytics/b;->j:Lcomndanalytics/d;

    goto :goto_0
.end method

.method private a(Lcomndanalytics/f;)V
    .locals 2

    iget-object v0, p0, Lcomndanalytics/b;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcomndanalytics/b;->r:Lcomndanalytics/ar;

    invoke-virtual {v1, v0, p1}, Lcomndanalytics/ar;->a(Landroid/content/Context;Lcomndanalytics/f;)Z

    invoke-virtual {p1}, Lcomndanalytics/f;->h()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcomndanalytics/b;->p:Lcomndanalytics/i;

    invoke-virtual {v1, v0}, Lcomndanalytics/i;->g(Landroid/content/Context;)I

    :cond_1
    invoke-virtual {p1}, Lcomndanalytics/f;->i()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcomndanalytics/b;->p:Lcomndanalytics/i;

    invoke-virtual {v1, v0}, Lcomndanalytics/i;->e(Landroid/content/Context;)I

    :cond_2
    invoke-virtual {p1}, Lcomndanalytics/f;->e()Z

    move-result v0

    if-nez v0, :cond_3

    iput-object p1, p0, Lcomndanalytics/b;->i:Lcomndanalytics/f;

    goto :goto_0

    :cond_3
    iput-object p1, p0, Lcomndanalytics/b;->i:Lcomndanalytics/f;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcomndanalytics/b;->a(Z)V

    goto :goto_0
.end method

.method private a(Lcomndanalytics/r;)V
    .locals 1

    invoke-virtual {p1}, Lcomndanalytics/r;->b()Lcomndanalytics/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lcomndanalytics/b;->a(Lcomndanalytics/d;)V

    invoke-virtual {p1}, Lcomndanalytics/r;->c()Lcomndanalytics/f;

    move-result-object v0

    invoke-direct {p0, v0}, Lcomndanalytics/b;->a(Lcomndanalytics/f;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 8

    iget-object v0, p0, Lcomndanalytics/b;->j:Lcomndanalytics/d;

    invoke-virtual {v0, p1}, Lcomndanalytics/d;->b(Ljava/lang/String;)Lcomndanalytics/d$a;

    move-result-object v4

    if-eqz v4, :cond_0

    sget-object v0, Lcomndanalytics/d$a;->a:Lcomndanalytics/d$a;

    if-ne v4, v0, :cond_2

    :cond_0
    const-string v0, "91Analytics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Event Id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unknown stat type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcomndanalytics/b;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcomndanalytics/b;->p:Lcomndanalytics/i;

    move-object v2, p1

    move-object v3, p2

    move-wide v5, p3

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcomndanalytics/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcomndanalytics/d$a;JI)I

    move-result v0

    iget-object v1, p0, Lcomndanalytics/b;->k:Lcomndanalytics/aq;

    invoke-virtual {v1, v0}, Lcomndanalytics/aq;->b(I)V

    iget-object v0, p0, Lcomndanalytics/b;->k:Lcomndanalytics/aq;

    invoke-virtual {v0}, Lcomndanalytics/aq;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcomndanalytics/b;->q()V

    goto :goto_0
.end method

.method private a(Z)V
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lcomndanalytics/b;->i:Lcomndanalytics/f;

    invoke-virtual {v0}, Lcomndanalytics/f;->f()Lcomndanalytics/f$a;

    move-result-object v0

    sget-object v1, Lcomndanalytics/f$a;->a:Lcomndanalytics/f$a;

    if-ne v0, v1, :cond_1

    new-instance v0, Lcomndanalytics/ap;

    invoke-direct {v0}, Lcomndanalytics/ap;-><init>()V

    iget-object v1, p0, Lcomndanalytics/b;->i:Lcomndanalytics/f;

    invoke-virtual {v1}, Lcomndanalytics/f;->g()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcomndanalytics/ap;->a(J)V

    iget-object v1, p0, Lcomndanalytics/b;->p:Lcomndanalytics/i;

    invoke-virtual {v1}, Lcomndanalytics/i;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcomndanalytics/ap;->b(J)V

    iput-object v0, p0, Lcomndanalytics/b;->k:Lcomndanalytics/aq;

    iget-object v0, p0, Lcomndanalytics/b;->k:Lcomndanalytics/aq;

    invoke-virtual {v0}, Lcomndanalytics/aq;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcomndanalytics/b;->g:Lcomndanalytics/b$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcomndanalytics/b;->g:Lcomndanalytics/b$a;

    invoke-virtual {v0, v6}, Lcomndanalytics/b$a;->removeMessages(I)V

    iget-object v0, p0, Lcomndanalytics/b;->g:Lcomndanalytics/b$a;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v6, v1, v2}, Lcomndanalytics/b$a;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcomndanalytics/b;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    new-instance v1, Lcomndanalytics/ao;

    iget-object v2, p0, Lcomndanalytics/b;->r:Lcomndanalytics/ar;

    invoke-virtual {v2, v0}, Lcomndanalytics/ar;->b(Landroid/content/Context;)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcomndanalytics/ao;-><init>(J)V

    iget-object v0, p0, Lcomndanalytics/b;->i:Lcomndanalytics/f;

    invoke-virtual {v0}, Lcomndanalytics/f;->g()I

    move-result v0

    int-to-long v2, v0

    const-wide/32 v4, 0xea60

    mul-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcomndanalytics/ao;->a(J)V

    iput-object v1, p0, Lcomndanalytics/b;->k:Lcomndanalytics/aq;

    invoke-virtual {v1}, Lcomndanalytics/ao;->a()J

    move-result-wide v0

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x7530

    cmp-long v0, v0, v4

    if-gez v0, :cond_2

    :cond_2
    iget-object v0, p0, Lcomndanalytics/b;->g:Lcomndanalytics/b$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcomndanalytics/b;->g:Lcomndanalytics/b$a;

    invoke-virtual {v0, v6}, Lcomndanalytics/b$a;->removeMessages(I)V

    iget-object v0, p0, Lcomndanalytics/b;->g:Lcomndanalytics/b$a;

    invoke-virtual {v0, v6, v2, v3}, Lcomndanalytics/b$a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private a(Landroid/net/ConnectivityManager;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcomndanalytics/b;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcomndanalytics/b;->h:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private b(Landroid/net/ConnectivityManager;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcomndanalytics/b;->i:Lcomndanalytics/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcomndanalytics/b;->i:Lcomndanalytics/f;

    invoke-virtual {v0}, Lcomndanalytics/f;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcomndanalytics/b;->j:Lcomndanalytics/d;

    invoke-virtual {v0, p1}, Lcomndanalytics/d;->a(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Lcomndanalytics/d$a;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcomndanalytics/b;->j:Lcomndanalytics/d;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcomndanalytics/b;->j:Lcomndanalytics/d;

    invoke-virtual {v1, p1}, Lcomndanalytics/d;->b(Ljava/lang/String;)Lcomndanalytics/d$a;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lcomndanalytics/d$a;->a:Lcomndanalytics/d$a;

    if-eq v1, v2, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic c(Lcomndanalytics/b;)Lcomndanalytics/i;
    .locals 1

    iget-object v0, p0, Lcomndanalytics/b;->p:Lcomndanalytics/i;

    return-object v0
.end method

.method static synthetic d(Lcomndanalytics/b;)Lcomndanalytics/aq;
    .locals 1

    iget-object v0, p0, Lcomndanalytics/b;->k:Lcomndanalytics/aq;

    return-object v0
.end method

.method static synthetic e(Lcomndanalytics/b;)V
    .locals 0

    invoke-direct {p0}, Lcomndanalytics/b;->o()V

    return-void
.end method

.method static synthetic f(Lcomndanalytics/b;)V
    .locals 0

    invoke-direct {p0}, Lcomndanalytics/b;->g()V

    return-void
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcomndanalytics/b;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcomndanalytics/al;

    invoke-direct {v1, v0, p0}, Lcomndanalytics/al;-><init>(Landroid/content/Context;Lcomndanalytics/b;)V

    iget-object v0, p0, Lcomndanalytics/b;->n:Lcomndanalytics/ac;

    invoke-virtual {v0, v1}, Lcomndanalytics/ac;->a(Lcomndanalytics/aa;)V

    goto :goto_0
.end method

.method static synthetic g(Lcomndanalytics/b;)V
    .locals 0

    invoke-direct {p0}, Lcomndanalytics/b;->m()V

    return-void
.end method

.method static synthetic h(Lcomndanalytics/b;)V
    .locals 0

    invoke-direct {p0}, Lcomndanalytics/b;->k()V

    return-void
.end method

.method private h()Z
    .locals 2

    iget v0, p0, Lcomndanalytics/b;->u:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcomndanalytics/b;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcomndanalytics/b;->i:Lcomndanalytics/f;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcomndanalytics/b;->r:Lcomndanalytics/ar;

    invoke-virtual {v1, v0, v3}, Lcomndanalytics/ar;->a(Landroid/content/Context;Z)Lcomndanalytics/f;

    move-result-object v1

    iput-object v1, p0, Lcomndanalytics/b;->i:Lcomndanalytics/f;

    iget-object v1, p0, Lcomndanalytics/b;->o:Lcomndanalytics/b$c;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcomndanalytics/b;->o:Lcomndanalytics/b$c;

    iget-object v2, p0, Lcomndanalytics/b;->i:Lcomndanalytics/f;

    invoke-virtual {v2}, Lcomndanalytics/f;->j()Lcom/nd/analytics/NdAnalyticsCustomConfig;

    move-result-object v2

    invoke-interface {v1, v2}, Lcomndanalytics/b$c;->a(Lcom/nd/analytics/NdAnalyticsCustomConfig;)V

    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcomndanalytics/b;->a(Z)V

    :cond_3
    iget-object v1, p0, Lcomndanalytics/b;->j:Lcomndanalytics/d;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcomndanalytics/b;->r:Lcomndanalytics/ar;

    invoke-virtual {v1, v0, v3}, Lcomndanalytics/ar;->b(Landroid/content/Context;Z)Lcomndanalytics/d;

    move-result-object v0

    iput-object v0, p0, Lcomndanalytics/b;->j:Lcomndanalytics/d;

    goto :goto_0
.end method

.method private j()V
    .locals 3

    iget-object v0, p0, Lcomndanalytics/b;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    iget-object v0, p0, Lcomndanalytics/b;->s:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcomndanalytics/b$b;

    iget-object v2, p0, Lcomndanalytics/b;->j:Lcomndanalytics/d;

    iget-object v0, v0, Lcomndanalytics/b$b;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcomndanalytics/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcomndanalytics/b;->s:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private k()V
    .locals 3

    iget-object v0, p0, Lcomndanalytics/b;->i:Lcomndanalytics/f;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcomndanalytics/b;->i:Lcomndanalytics/f;

    invoke-virtual {v0}, Lcomndanalytics/f;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcomndanalytics/b;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcomndanalytics/b;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcomndanalytics/b;->p:Lcomndanalytics/i;

    invoke-virtual {v1, v0}, Lcomndanalytics/i;->f(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v2, Lcomndanalytics/ak;

    invoke-direct {v2, v0, v1, p0}, Lcomndanalytics/ak;-><init>(Landroid/content/Context;Ljava/util/List;Lcomndanalytics/b;)V

    iget-object v0, p0, Lcomndanalytics/b;->n:Lcomndanalytics/ac;

    invoke-virtual {v0, v2}, Lcomndanalytics/ac;->a(Lcomndanalytics/aa;)V

    goto :goto_0
.end method

.method private l()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcomndanalytics/b;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-direct {p0, v0}, Lcomndanalytics/b;->a(Landroid/net/ConnectivityManager;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcomndanalytics/b;->m:Lcom/nd/analytics/NdAnalyticsSettings;

    invoke-virtual {v2}, Lcom/nd/analytics/NdAnalyticsSettings;->isReportOnlyWifi()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v0}, Lcomndanalytics/b;->b(Landroid/net/ConnectivityManager;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private m()V
    .locals 4

    iget-object v0, p0, Lcomndanalytics/b;->i:Lcomndanalytics/f;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcomndanalytics/b;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcomndanalytics/b;->l()Z

    move-result v2

    const/4 v1, 0x0

    iget-object v3, p0, Lcomndanalytics/b;->i:Lcomndanalytics/f;

    invoke-virtual {v3}, Lcomndanalytics/f;->i()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcomndanalytics/b;->p:Lcomndanalytics/i;

    invoke-virtual {v1, v0}, Lcomndanalytics/i;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    :cond_2
    invoke-static {}, Lcomndanalytics/as;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcomndanalytics/an;

    invoke-direct {v3, v0, v2, v1, p0}, Lcomndanalytics/an;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcomndanalytics/b;)V

    iget-object v0, p0, Lcomndanalytics/b;->n:Lcomndanalytics/ac;

    invoke-virtual {v0, v3}, Lcomndanalytics/ac;->a(Lcomndanalytics/aa;)V

    goto :goto_0
.end method

.method private n()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcomndanalytics/b;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    const/16 v0, 0xa

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    const/16 v0, 0x1e

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private o()V
    .locals 1

    iget-object v0, p0, Lcomndanalytics/b;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcomndanalytics/b;->p()V

    iget-object v0, p0, Lcomndanalytics/b;->k:Lcomndanalytics/aq;

    invoke-virtual {v0}, Lcomndanalytics/aq;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcomndanalytics/b;->q()V

    goto :goto_0
.end method

.method private p()V
    .locals 13

    const/4 v9, 0x0

    iget-object v1, p0, Lcomndanalytics/b;->s:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcomndanalytics/b;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcomndanalytics/b;->s:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_0

    array-length v1, v11

    if-lez v1, :cond_0

    iget-object v1, p0, Lcomndanalytics/b;->s:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    array-length v12, v11

    move v10, v9

    :goto_1
    if-ge v10, v12, :cond_2

    aget-object v1, v11, v10

    move-object v0, v1

    check-cast v0, Lcomndanalytics/b$b;

    move-object v8, v0

    iget-object v1, p0, Lcomndanalytics/b;->j:Lcomndanalytics/d;

    iget-object v3, v8, Lcomndanalytics/b$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcomndanalytics/d;->b(Ljava/lang/String;)Lcomndanalytics/d$a;

    move-result-object v5

    if-eqz v5, :cond_3

    sget-object v1, Lcomndanalytics/d$a;->a:Lcomndanalytics/d$a;

    if-eq v5, v1, :cond_3

    iget-object v1, p0, Lcomndanalytics/b;->p:Lcomndanalytics/i;

    iget-object v3, v8, Lcomndanalytics/b$b;->a:Ljava/lang/String;

    iget-object v4, v8, Lcomndanalytics/b$b;->b:Ljava/lang/String;

    iget-wide v6, v8, Lcomndanalytics/b$b;->c:J

    iget v8, v8, Lcomndanalytics/b$b;->d:I

    invoke-virtual/range {v1 .. v8}, Lcomndanalytics/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcomndanalytics/d$a;JI)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    add-int/2addr v1, v9

    :goto_2
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    move v9, v1

    goto :goto_1

    :catch_0
    move-exception v1

    sget-object v2, Lcomndanalytics/b;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcomndanalytics/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcomndanalytics/b;->k:Lcomndanalytics/aq;

    invoke-virtual {v1, v9}, Lcomndanalytics/aq;->b(I)V

    goto :goto_0

    :cond_3
    move v1, v9

    goto :goto_2
.end method

.method private q()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcomndanalytics/b;->k:Lcomndanalytics/aq;

    instance-of v0, v0, Lcomndanalytics/ao;

    iget-object v1, p0, Lcomndanalytics/b;->g:Lcomndanalytics/b$a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcomndanalytics/b;->g:Lcomndanalytics/b$a;

    invoke-virtual {v1, v4}, Lcomndanalytics/b$a;->removeMessages(I)V

    :cond_0
    invoke-direct {p0}, Lcomndanalytics/b;->l()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcomndanalytics/b;->p()V

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcomndanalytics/b;->k:Lcomndanalytics/aq;

    check-cast v0, Lcomndanalytics/ao;

    iget-object v1, p0, Lcomndanalytics/b;->g:Lcomndanalytics/b$a;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcomndanalytics/b;->g:Lcomndanalytics/b$a;

    invoke-virtual {v0}, Lcomndanalytics/ao;->b()J

    move-result-wide v2

    invoke-virtual {v1, v4, v2, v3}, Lcomndanalytics/b$a;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcomndanalytics/b;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcomndanalytics/b;->p:Lcomndanalytics/i;

    invoke-virtual {v1, v0}, Lcomndanalytics/i;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_1
    if-ltz v2, :cond_4

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcomndanalytics/k;

    invoke-virtual {v1}, Lcomndanalytics/k;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcomndanalytics/b;->c(Ljava/lang/String;)Lcomndanalytics/d$a;

    move-result-object v4

    if-nez v4, :cond_3

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v4}, Lcomndanalytics/k;->a(Lcomndanalytics/d$a;)V

    goto :goto_2

    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcomndanalytics/b;->k:Lcomndanalytics/aq;

    invoke-virtual {v1}, Lcomndanalytics/aq;->d()V

    iget-object v1, p0, Lcomndanalytics/b;->r:Lcomndanalytics/ar;

    invoke-virtual {v1, v0}, Lcomndanalytics/ar;->c(Landroid/content/Context;)Z

    new-instance v1, Lcomndanalytics/am;

    invoke-direct {v1, v0, v3, p0}, Lcomndanalytics/am;-><init>(Landroid/content/Context;Ljava/util/List;Lcomndanalytics/b;)V

    iget-object v0, p0, Lcomndanalytics/b;->n:Lcomndanalytics/ac;

    invoke-virtual {v0, v1}, Lcomndanalytics/ac;->a(Lcomndanalytics/aa;)V

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcomndanalytics/b;->m:Lcom/nd/analytics/NdAnalyticsSettings;

    invoke-virtual {v0}, Lcom/nd/analytics/NdAnalyticsSettings;->getAppId()I

    move-result v0

    return v0
.end method

.method public a(Landroid/content/Context;J)I
    .locals 1

    iget-object v0, p0, Lcomndanalytics/b;->p:Lcomndanalytics/i;

    invoke-virtual {v0, p1, p2, p3}, Lcomndanalytics/i;->a(Landroid/content/Context;J)I

    move-result v0

    return v0
.end method

.method public a(Landroid/content/Context;Lcomndanalytics/l;)J
    .locals 2

    iget-object v0, p0, Lcomndanalytics/b;->p:Lcomndanalytics/i;

    invoke-virtual {v0, p1, p2}, Lcomndanalytics/i;->a(Landroid/content/Context;Lcomndanalytics/l;)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(JLjava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Lcomndanalytics/b;->i()V

    invoke-direct {p0, p3}, Lcomndanalytics/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "91Analytics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Event Id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not recorded."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcomndanalytics/b;->k:Lcomndanalytics/aq;

    invoke-virtual {v0}, Lcomndanalytics/aq;->f()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcomndanalytics/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcomndanalytics/b$b;-><init>(Lcomndanalytics/c;)V

    iput-object p3, v0, Lcomndanalytics/b$b;->a:Ljava/lang/String;

    iput-object p4, v0, Lcomndanalytics/b$b;->b:Ljava/lang/String;

    iput-wide p1, v0, Lcomndanalytics/b$b;->c:J

    invoke-direct {p0}, Lcomndanalytics/b;->n()I

    move-result v1

    iput v1, v0, Lcomndanalytics/b$b;->d:I

    iget-object v1, p0, Lcomndanalytics/b;->s:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcomndanalytics/b;->g:Lcomndanalytics/b$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcomndanalytics/b;->g:Lcomndanalytics/b$a;

    invoke-virtual {v0}, Lcomndanalytics/b$a;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 v2, 0x1

    aput-object p4, v1, v2

    const/4 v2, 0x2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-direct {p0}, Lcomndanalytics/b;->n()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcomndanalytics/b;->g:Lcomndanalytics/b$a;

    invoke-virtual {v1, v0}, Lcomndanalytics/b$a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public a(Lcom/nd/analytics/NdAnalyticsDelegate$RESULT_CODE;Lcomndanalytics/r;)V
    .locals 4

    iget v0, p0, Lcomndanalytics/b;->u:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcomndanalytics/b;->u:I

    sget-object v0, Lcom/nd/analytics/NdAnalyticsDelegate$RESULT_CODE;->RESULT_SUCCESS:Lcom/nd/analytics/NdAnalyticsDelegate$RESULT_CODE;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcomndanalytics/b;->o:Lcomndanalytics/b$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcomndanalytics/b;->o:Lcomndanalytics/b$c;

    invoke-virtual {p2}, Lcomndanalytics/r;->c()Lcomndanalytics/f;

    move-result-object v1

    invoke-virtual {v1}, Lcomndanalytics/f;->j()Lcom/nd/analytics/NdAnalyticsCustomConfig;

    move-result-object v1

    invoke-interface {v0, v1}, Lcomndanalytics/b$c;->a(Lcom/nd/analytics/NdAnalyticsCustomConfig;)V

    :cond_0
    iget-object v0, p0, Lcomndanalytics/b;->g:Lcomndanalytics/b$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcomndanalytics/b;->g:Lcomndanalytics/b$a;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p2}, Lcomndanalytics/b$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcomndanalytics/b;->g:Lcomndanalytics/b$a;

    invoke-virtual {v1, v0}, Lcomndanalytics/b$a;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcomndanalytics/b;->u:I

    invoke-direct {p0, p1}, Lcomndanalytics/b;->a(Lcom/nd/analytics/NdAnalyticsDelegate$RESULT_CODE;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-direct {p0}, Lcomndanalytics/b;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lcomndanalytics/b;->a(Lcom/nd/analytics/NdAnalyticsDelegate$RESULT_CODE;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcomndanalytics/b;->g:Lcomndanalytics/b$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcomndanalytics/b;->g:Lcomndanalytics/b$a;

    const/4 v1, 0x4

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Lcomndanalytics/b$a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public a(Lcom/nd/analytics/NdAnalyticsDelegate$RESULT_CODE;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nd/analytics/NdAnalyticsDelegate$RESULT_CODE;",
            "Ljava/util/List",
            "<",
            "Lcomndanalytics/k;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x1

    iget-object v0, p0, Lcomndanalytics/b;->k:Lcomndanalytics/aq;

    invoke-virtual {v0}, Lcomndanalytics/aq;->e()V

    sget-object v0, Lcom/nd/analytics/NdAnalyticsDelegate$RESULT_CODE;->RESULT_SUCCESS:Lcom/nd/analytics/NdAnalyticsDelegate$RESULT_CODE;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcomndanalytics/b;->g:Lcomndanalytics/b$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcomndanalytics/b;->g:Lcomndanalytics/b$a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p2}, Lcomndanalytics/b$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcomndanalytics/b;->g:Lcomndanalytics/b$a;

    invoke-virtual {v1, v0}, Lcomndanalytics/b$a;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    :cond_0
    iget-object v0, p0, Lcomndanalytics/b;->g:Lcomndanalytics/b$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcomndanalytics/b;->g:Lcomndanalytics/b$a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcomndanalytics/b$a;->sendEmptyMessage(I)Z

    :cond_1
    iget-object v0, p0, Lcomndanalytics/b;->k:Lcomndanalytics/aq;

    instance-of v0, v0, Lcomndanalytics/ao;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcomndanalytics/b;->k:Lcomndanalytics/aq;

    check-cast v0, Lcomndanalytics/ao;

    iget-object v1, p0, Lcomndanalytics/b;->g:Lcomndanalytics/b$a;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcomndanalytics/b;->g:Lcomndanalytics/b$a;

    invoke-virtual {v1, v4}, Lcomndanalytics/b$a;->removeMessages(I)V

    iget-object v1, p0, Lcomndanalytics/b;->g:Lcomndanalytics/b$a;

    invoke-virtual {v0}, Lcomndanalytics/ao;->b()J

    move-result-wide v2

    invoke-virtual {v1, v4, v2, v3}, Lcomndanalytics/b$a;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcomndanalytics/b;->i:Lcomndanalytics/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcomndanalytics/b;->i:Lcomndanalytics/f;

    invoke-virtual {v0}, Lcomndanalytics/f;->h()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcomndanalytics/b;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcomndanalytics/b;->p:Lcomndanalytics/i;

    invoke-virtual {v1, v0, p1}, Lcomndanalytics/i;->a(Landroid/content/Context;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcomndanalytics/b;->m:Lcom/nd/analytics/NdAnalyticsSettings;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_0
    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcomndanalytics/b;->m:Lcom/nd/analytics/NdAnalyticsSettings;

    invoke-virtual {v0}, Lcom/nd/analytics/NdAnalyticsSettings;->getAppKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Lcom/nd/analytics/NdAnalyticsDelegate$RESULT_CODE;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nd/analytics/NdAnalyticsDelegate$RESULT_CODE;",
            "Ljava/util/List",
            "<",
            "Lcomndanalytics/h;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/nd/analytics/NdAnalyticsDelegate$RESULT_CODE;->RESULT_SUCCESS:Lcom/nd/analytics/NdAnalyticsDelegate$RESULT_CODE;

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcomndanalytics/b;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcomndanalytics/b;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcomndanalytics/b;->g:Lcomndanalytics/b$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcomndanalytics/b;->g:Lcomndanalytics/b$a;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p2}, Lcomndanalytics/b$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcomndanalytics/b;->g:Lcomndanalytics/b$a;

    invoke-virtual {v1, v0}, Lcomndanalytics/b$a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcomndanalytics/b;->g:Lcomndanalytics/b$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcomndanalytics/b;->g:Lcomndanalytics/b$a;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcomndanalytics/b$a;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public c(Lcom/nd/analytics/NdAnalyticsDelegate$RESULT_CODE;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nd/analytics/NdAnalyticsDelegate$RESULT_CODE;",
            "Ljava/util/List",
            "<",
            "Lcomndanalytics/j;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/nd/analytics/NdAnalyticsDelegate$RESULT_CODE;->RESULT_SUCCESS:Lcom/nd/analytics/NdAnalyticsDelegate$RESULT_CODE;

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcomndanalytics/b;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcomndanalytics/b;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcomndanalytics/b;->g:Lcomndanalytics/b$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcomndanalytics/b;->g:Lcomndanalytics/b$a;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p2}, Lcomndanalytics/b$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcomndanalytics/b;->g:Lcomndanalytics/b$a;

    invoke-virtual {v1, v0}, Lcomndanalytics/b$a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public d()V
    .locals 4

    const/4 v3, 0x4

    invoke-direct {p0}, Lcomndanalytics/b;->i()V

    iget-object v0, p0, Lcomndanalytics/b;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcomndanalytics/b;->i:Lcomndanalytics/f;

    invoke-virtual {v1}, Lcomndanalytics/f;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcomndanalytics/b;->g:Lcomndanalytics/b$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcomndanalytics/b;->g:Lcomndanalytics/b$a;

    invoke-virtual {v0, v3}, Lcomndanalytics/b$a;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcomndanalytics/b;->i:Lcomndanalytics/f;

    invoke-virtual {v1, v0}, Lcomndanalytics/f;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcomndanalytics/b;->g:Lcomndanalytics/b$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcomndanalytics/b;->g:Lcomndanalytics/b$a;

    invoke-virtual {v0, v3}, Lcomndanalytics/b$a;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcomndanalytics/c;

    invoke-direct {v1, p0}, Lcomndanalytics/c;-><init>(Lcomndanalytics/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcomndanalytics/b;->g:Lcomndanalytics/b$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcomndanalytics/b;->g:Lcomndanalytics/b$a;

    iget-object v1, p0, Lcomndanalytics/b;->i:Lcomndanalytics/f;

    invoke-virtual {v1}, Lcomndanalytics/f;->c()J

    move-result-wide v1

    invoke-virtual {v0, v3, v1, v2}, Lcomndanalytics/b$a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lcomndanalytics/b;->i:Lcomndanalytics/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcomndanalytics/b;->i:Lcomndanalytics/f;

    invoke-virtual {v0}, Lcomndanalytics/f;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcomndanalytics/b;->l:Z

    iget-object v0, p0, Lcomndanalytics/b;->f:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcomndanalytics/b;->n:Lcomndanalytics/ac;

    invoke-virtual {v0}, Lcomndanalytics/ac;->b()V

    iget-object v0, p0, Lcomndanalytics/b;->g:Lcomndanalytics/b$a;

    invoke-virtual {v0, v1}, Lcomndanalytics/b$a;->removeMessages(I)V

    iget-object v0, p0, Lcomndanalytics/b;->g:Lcomndanalytics/b$a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcomndanalytics/b$a;->removeMessages(I)V

    iget-object v0, p0, Lcomndanalytics/b;->g:Lcomndanalytics/b$a;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcomndanalytics/b$a;->removeMessages(I)V

    iget-object v0, p0, Lcomndanalytics/b;->g:Lcomndanalytics/b$a;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcomndanalytics/b$a;->removeMessages(I)V

    iget-object v0, p0, Lcomndanalytics/b;->g:Lcomndanalytics/b$a;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcomndanalytics/b$a;->removeMessages(I)V

    iget-object v0, p0, Lcomndanalytics/b;->g:Lcomndanalytics/b$a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcomndanalytics/b$a;->removeMessages(I)V

    iget-object v0, p0, Lcomndanalytics/b;->g:Lcomndanalytics/b$a;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcomndanalytics/b$a;->removeMessages(I)V

    iget-object v0, p0, Lcomndanalytics/b;->g:Lcomndanalytics/b$a;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcomndanalytics/b$a;->removeMessages(I)V

    iget-object v0, p0, Lcomndanalytics/b;->g:Lcomndanalytics/b$a;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcomndanalytics/b$a;->removeMessages(I)V

    iget-object v0, p0, Lcomndanalytics/b;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    iput-object v2, p0, Lcomndanalytics/b;->f:Landroid/os/HandlerThread;

    invoke-direct {p0}, Lcomndanalytics/b;->p()V

    iput-object v2, p0, Lcomndanalytics/b;->g:Lcomndanalytics/b$a;

    :cond_0
    return-void
.end method
