.class public Lcomndanalytics/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcomndanalytics/at$a;
.implements Lcomndanalytics/b$c;


# static fields
.field private static final a:Ljava/lang/String;

.field private static f:Z


# instance fields
.field private b:Lcom/nd/analytics/NdAnalyticsDelegate;

.field private c:Lcom/nd/analytics/NdAnalyticsSettings;

.field private d:Lcom/nd/analytics/NdAnalyticsCustomConfig;

.field private e:Lcomndanalytics/at;

.field private g:Lcomndanalytics/b;

.field private h:Z

.field private i:Lcomndanalytics/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcomndanalytics/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcomndanalytics/a;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcomndanalytics/a;->f:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcomndanalytics/a;->g:Lcomndanalytics/b;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcomndanalytics/a;->h:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcomndanalytics/as;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcomndanalytics/a;->f:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    :goto_0
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const-string p1, "(null)"

    goto :goto_0
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lcomndanalytics/a;->g:Lcomndanalytics/b;

    invoke-virtual {v0}, Lcomndanalytics/b;->d()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcomndanalytics/a;->c:Lcom/nd/analytics/NdAnalyticsSettings;

    if-nez v0, :cond_1

    const-string v0, "91Analytics"

    const-string v1, "Lib should be initialized. tag 2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcomndanalytics/a;->g:Lcomndanalytics/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcomndanalytics/a;->g:Lcomndanalytics/b;

    invoke-virtual {v0, p1}, Lcomndanalytics/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private c()V
    .locals 1

    iget-object v0, p0, Lcomndanalytics/a;->e:Lcomndanalytics/at;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcomndanalytics/a;->e:Lcomndanalytics/at;

    invoke-virtual {v0}, Lcomndanalytics/at;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcomndanalytics/a;->e:Lcomndanalytics/at;

    :cond_0
    return-void
.end method

.method private d(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcomndanalytics/as;->a(Landroid/content/Context;)V

    return-void
.end method

.method private e(Landroid/content/Context;)V
    .locals 5

    const/4 v0, 0x0

    sput-boolean v0, Lcomndanalytics/a;->f:Z

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    rem-long v2, v0, v2

    sub-long/2addr v0, v2

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    const-string v4, ""

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcomndanalytics/a;->f:Z

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-direct {p0}, Lcomndanalytics/a;->c()V

    iget-object v0, p0, Lcomndanalytics/a;->g:Lcomndanalytics/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcomndanalytics/a;->g:Lcomndanalytics/b;

    invoke-virtual {v0}, Lcomndanalytics/b;->f()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcomndanalytics/a;->g:Lcomndanalytics/b;

    :cond_0
    return-void
.end method

.method public a(J)V
    .locals 1

    iget-object v0, p0, Lcomndanalytics/a;->g:Lcomndanalytics/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcomndanalytics/a;->i:Lcomndanalytics/e;

    invoke-virtual {v0, p1, p2}, Lcomndanalytics/e;->a(J)V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/nd/analytics/NdAnalyticsSettings;Lcom/nd/analytics/NdAnalyticsDelegate;)V
    .locals 2

    iget-object v0, p0, Lcomndanalytics/a;->e:Lcomndanalytics/at;

    if-nez v0, :cond_0

    new-instance v0, Lcomndanalytics/at;

    invoke-direct {v0}, Lcomndanalytics/at;-><init>()V

    iput-object v0, p0, Lcomndanalytics/a;->e:Lcomndanalytics/at;

    iget-object v0, p0, Lcomndanalytics/a;->e:Lcomndanalytics/at;

    invoke-virtual {v0, p0}, Lcomndanalytics/at;->a(Lcomndanalytics/at$a;)V

    iget-object v0, p0, Lcomndanalytics/a;->e:Lcomndanalytics/at;

    invoke-virtual {v0}, Lcomndanalytics/at;->a()V

    :cond_0
    iget-object v0, p0, Lcomndanalytics/a;->c:Lcom/nd/analytics/NdAnalyticsSettings;

    if-nez v0, :cond_3

    if-eqz p2, :cond_3

    invoke-direct {p0, p1}, Lcomndanalytics/a;->e(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/nd/analytics/NdAnalyticsSettings;->getAppId()I

    move-result v0

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "91Analytics : 91Analytics has not set app id."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p2}, Lcom/nd/analytics/NdAnalyticsSettings;->getAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "91Analytics : 91Analytics has not set app key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p3, p0, Lcomndanalytics/a;->b:Lcom/nd/analytics/NdAnalyticsDelegate;

    iput-object p2, p0, Lcomndanalytics/a;->c:Lcom/nd/analytics/NdAnalyticsSettings;

    invoke-direct {p0, p1}, Lcomndanalytics/a;->d(Landroid/content/Context;)V

    new-instance v0, Lcomndanalytics/b;

    iget-object v1, p0, Lcomndanalytics/a;->c:Lcom/nd/analytics/NdAnalyticsSettings;

    invoke-direct {v0, p1, v1, p0}, Lcomndanalytics/b;-><init>(Landroid/content/Context;Lcom/nd/analytics/NdAnalyticsSettings;Lcomndanalytics/b$c;)V

    iput-object v0, p0, Lcomndanalytics/a;->g:Lcomndanalytics/b;

    new-instance v0, Lcomndanalytics/e;

    iget-object v1, p0, Lcomndanalytics/a;->g:Lcomndanalytics/b;

    invoke-direct {v0, v1}, Lcomndanalytics/e;-><init>(Lcomndanalytics/b;)V

    iput-object v0, p0, Lcomndanalytics/a;->i:Lcomndanalytics/e;

    :cond_3
    iget-object v0, p0, Lcomndanalytics/a;->g:Lcomndanalytics/b;

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcomndanalytics/a;->b()V

    iget-object v0, p0, Lcomndanalytics/a;->g:Lcomndanalytics/b;

    invoke-virtual {v0}, Lcomndanalytics/b;->c()V

    :cond_4
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    if-nez p3, :cond_0

    const-string p3, ""

    :cond_0
    iget-object v0, p0, Lcomndanalytics/a;->c:Lcom/nd/analytics/NdAnalyticsSettings;

    if-nez v0, :cond_2

    const-string v0, "91Analytics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Lib should be initialized. tag 3 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcomndanalytics/a;->g:Lcomndanalytics/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcomndanalytics/a;->i:Lcomndanalytics/e;

    invoke-virtual {v0, p1}, Lcomndanalytics/e;->c(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_3

    const-string v0, "91Analytics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Context Session has not been started. Event:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not been record."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcomndanalytics/a;->g:Lcomndanalytics/b;

    invoke-virtual {v2, v0, v1, p2, p3}, Lcomndanalytics/b;->a(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/nd/analytics/NdAnalyticsCustomConfig;)V
    .locals 0

    iput-object p1, p0, Lcomndanalytics/a;->d:Lcom/nd/analytics/NdAnalyticsCustomConfig;

    return-void
.end method

.method public a(Lcom/nd/analytics/NdAnalyticsDelegate$RESULT_CODE;)V
    .locals 2

    iget-object v0, p0, Lcomndanalytics/a;->b:Lcom/nd/analytics/NdAnalyticsDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcomndanalytics/a;->b:Lcom/nd/analytics/NdAnalyticsDelegate;

    iget-object v1, p0, Lcomndanalytics/a;->d:Lcom/nd/analytics/NdAnalyticsCustomConfig;

    invoke-virtual {v0, p1, v1}, Lcom/nd/analytics/NdAnalyticsDelegate;->onConfirmUserConfig(Lcom/nd/analytics/NdAnalyticsDelegate$RESULT_CODE;Lcom/nd/analytics/NdAnalyticsCustomConfig;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcomndanalytics/a;->h:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcomndanalytics/a;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lcomndanalytics/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcomndanalytics/a;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcomndanalytics/a;->g:Lcomndanalytics/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcomndanalytics/a;->i:Lcomndanalytics/e;

    invoke-virtual {v0, p1}, Lcomndanalytics/e;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public c(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcomndanalytics/a;->g:Lcomndanalytics/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcomndanalytics/a;->i:Lcomndanalytics/e;

    invoke-virtual {v0, p1}, Lcomndanalytics/e;->b(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
