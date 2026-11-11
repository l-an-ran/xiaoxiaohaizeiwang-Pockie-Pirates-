.class public Lcomndanalytics/e;
.super Ljava/lang/Object;


# static fields
.field public static final a:J = -0x1L

.field private static final d:J = -0x7531L


# instance fields
.field private b:J

.field private c:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Lcomndanalytics/l;",
            ">;"
        }
    .end annotation
.end field

.field private e:J

.field private f:Lcomndanalytics/l;

.field private g:J

.field private h:Lcomndanalytics/b;


# direct methods
.method public constructor <init>(Lcomndanalytics/b;)V
    .locals 6

    const-wide/16 v4, -0x7531

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcomndanalytics/e;->b:J

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcomndanalytics/e;->c:Ljava/util/WeakHashMap;

    iput-wide v4, p0, Lcomndanalytics/e;->e:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcomndanalytics/e;->g:J

    iput-object p1, p0, Lcomndanalytics/e;->h:Lcomndanalytics/b;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcomndanalytics/e;->e:J

    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;Lcomndanalytics/l;)V
    .locals 2

    iget-object v0, p0, Lcomndanalytics/e;->h:Lcomndanalytics/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcomndanalytics/b;->e()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcomndanalytics/e;->h:Lcomndanalytics/b;

    invoke-virtual {v0, p1, p2}, Lcomndanalytics/b;->a(Landroid/content/Context;Lcomndanalytics/l;)J

    move-result-wide v0

    iput-wide v0, p0, Lcomndanalytics/e;->g:J

    goto :goto_0
.end method

.method private d(Landroid/content/Context;)V
    .locals 3

    const-string v0, "91Analytics"

    const-string v1, "Resume Last Session."

    invoke-static {v0, v1}, Lcomndanalytics/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcomndanalytics/e;->h:Lcomndanalytics/b;

    iget-wide v1, p0, Lcomndanalytics/e;->g:J

    invoke-virtual {v0, p1, v1, v2}, Lcomndanalytics/b;->a(Landroid/content/Context;J)I

    iget-object v0, p0, Lcomndanalytics/e;->f:Lcomndanalytics/l;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2}, Lcomndanalytics/l;->d(J)V

    const-wide/16 v0, -0x7531

    iput-wide v0, p0, Lcomndanalytics/e;->e:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcomndanalytics/e;->g:J

    iget-object v0, p0, Lcomndanalytics/e;->c:Ljava/util/WeakHashMap;

    iget-object v1, p0, Lcomndanalytics/e;->f:Lcomndanalytics/l;

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private e(Landroid/content/Context;)V
    .locals 3

    const-string v0, "91Analytics"

    const-string v1, "Create New Session."

    invoke-static {v0, v1}, Lcomndanalytics/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcomndanalytics/l;

    invoke-direct {v0}, Lcomndanalytics/l;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcomndanalytics/l;->b(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcomndanalytics/l;->c(J)V

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2}, Lcomndanalytics/l;->d(J)V

    iget-object v1, p0, Lcomndanalytics/e;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcomndanalytics/e;->b:J

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 4

    iget-object v0, p0, Lcomndanalytics/e;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "91Analytics"

    const-string v1, "Context Session has already been start."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcomndanalytics/e;->f:Lcomndanalytics/l;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcomndanalytics/e;->e:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcomndanalytics/e;->b:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    invoke-direct {p0, p1}, Lcomndanalytics/e;->d(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcomndanalytics/e;->e(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public b(Landroid/content/Context;)V
    .locals 7

    iget-object v0, p0, Lcomndanalytics/e;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "91Analytics"

    const-string v1, "Context Session has\'t been started."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcomndanalytics/e;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcomndanalytics/l;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcomndanalytics/l;->d(J)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v0}, Lcomndanalytics/l;->b()J

    move-result-wide v5

    sub-long/2addr v3, v5

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcomndanalytics/l;->c(J)V

    iput-object v0, p0, Lcomndanalytics/e;->f:Lcomndanalytics/l;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcomndanalytics/e;->e:J

    iget-object v0, p0, Lcomndanalytics/e;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcomndanalytics/e;->f:Lcomndanalytics/l;

    invoke-direct {p0, p1, v0}, Lcomndanalytics/e;->a(Landroid/content/Context;Lcomndanalytics/l;)V

    goto :goto_0
.end method

.method public c(Landroid/content/Context;)J
    .locals 2

    iget-object v0, p0, Lcomndanalytics/e;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcomndanalytics/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcomndanalytics/l;->b()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method
