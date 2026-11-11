.class public Lcomndanalytics/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcomndanalytics/f$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "*null*"

.field private static final b:Ljava/lang/String;


# instance fields
.field private c:Ljava/lang/String;

.field private d:I

.field private e:Z

.field private f:Lcomndanalytics/f$a;

.field private g:I

.field private h:Lcom/nd/analytics/NdAnalyticsCustomConfig;

.field private i:J

.field private j:Z

.field private k:Z

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcomndanalytics/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcomndanalytics/f;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcomndanalytics/f;->j:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcomndanalytics/f;->k:Z

    iput-boolean v1, p0, Lcomndanalytics/f;->l:Z

    return-void
.end method

.method private b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static k()Lcomndanalytics/f;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcomndanalytics/f;

    invoke-direct {v0}, Lcomndanalytics/f;-><init>()V

    const-string v1, "*null*"

    iput-object v1, v0, Lcomndanalytics/f;->c:Ljava/lang/String;

    iput v5, v0, Lcomndanalytics/f;->d:I

    iput-boolean v4, v0, Lcomndanalytics/f;->e:Z

    iput-boolean v4, v0, Lcomndanalytics/f;->l:Z

    sget-object v1, Lcomndanalytics/f$a;->b:Lcomndanalytics/f$a;

    iput-object v1, v0, Lcomndanalytics/f;->f:Lcomndanalytics/f$a;

    const/16 v1, 0x5a0

    iput v1, v0, Lcomndanalytics/f;->g:I

    new-instance v1, Lcom/nd/analytics/NdAnalyticsCustomConfig;

    invoke-direct {v1}, Lcom/nd/analytics/NdAnalyticsCustomConfig;-><init>()V

    iput-object v1, v0, Lcomndanalytics/f;->h:Lcom/nd/analytics/NdAnalyticsCustomConfig;

    iget-object v1, v0, Lcomndanalytics/f;->h:Lcom/nd/analytics/NdAnalyticsCustomConfig;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nd/analytics/NdAnalyticsCustomConfig;->setConfig(Ljava/lang/String;)V

    iget-object v1, v0, Lcomndanalytics/f;->h:Lcom/nd/analytics/NdAnalyticsCustomConfig;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/nd/analytics/NdAnalyticsCustomConfig;->setExtras(J)V

    iget-object v1, v0, Lcomndanalytics/f;->h:Lcom/nd/analytics/NdAnalyticsCustomConfig;

    sget-object v2, Lcom/nd/analytics/NdAnalyticsCustomConfig$CONFIG_STATUS;->NULL:Lcom/nd/analytics/NdAnalyticsCustomConfig$CONFIG_STATUS;

    invoke-virtual {v1, v2}, Lcom/nd/analytics/NdAnalyticsCustomConfig;->setStatus(Lcom/nd/analytics/NdAnalyticsCustomConfig$CONFIG_STATUS;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcomndanalytics/f;->i:J

    iput-boolean v4, v0, Lcomndanalytics/f;->k:Z

    iput-boolean v5, v0, Lcomndanalytics/f;->j:Z

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lcomndanalytics/f;->i:J

    return-wide v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcomndanalytics/f;->d:I

    return-void
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcomndanalytics/f;->i:J

    return-void
.end method

.method public a(Lcom/nd/analytics/NdAnalyticsCustomConfig;)V
    .locals 0

    iput-object p1, p0, Lcomndanalytics/f;->h:Lcom/nd/analytics/NdAnalyticsCustomConfig;

    return-void
.end method

.method public a(Lcomndanalytics/f$a;)V
    .locals 0

    iput-object p1, p0, Lcomndanalytics/f;->f:Lcomndanalytics/f$a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcomndanalytics/f;->c:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcomndanalytics/f;->e:Z

    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .locals 5

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcomndanalytics/f;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcomndanalytics/f;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "C Version:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v1, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcomndanalytics/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcomndanalytics/f;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "P Version:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcomndanalytics/f;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "null"

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcomndanalytics/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_2

    :goto_2
    return v2

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcomndanalytics/f;->c:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcomndanalytics/f;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_3
    move v2, v0

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcomndanalytics/f;->g:I

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcomndanalytics/f;->k:Z

    return-void
.end method

.method public b()Z
    .locals 7

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcomndanalytics/f;->j:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    iget v5, p0, Lcomndanalytics/f;->d:I

    int-to-long v5, v5

    mul-long/2addr v3, v5

    iget-wide v5, p0, Lcomndanalytics/f;->i:J

    sub-long/2addr v1, v5

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()J
    .locals 8

    const-wide/16 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    iget v6, p0, Lcomndanalytics/f;->d:I

    int-to-long v6, v6

    mul-long/2addr v4, v6

    iget-wide v6, p0, Lcomndanalytics/f;->i:J

    add-long/2addr v4, v6

    sub-long v2, v4, v2

    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcomndanalytics/f;->l:Z

    return-void
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcomndanalytics/f;->d:I

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcomndanalytics/f;->e:Z

    return v0
.end method

.method public f()Lcomndanalytics/f$a;
    .locals 1

    iget-object v0, p0, Lcomndanalytics/f;->f:Lcomndanalytics/f$a;

    return-object v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcomndanalytics/f;->g:I

    return v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcomndanalytics/f;->k:Z

    return v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lcomndanalytics/f;->l:Z

    return v0
.end method

.method public j()Lcom/nd/analytics/NdAnalyticsCustomConfig;
    .locals 1

    iget-object v0, p0, Lcomndanalytics/f;->h:Lcom/nd/analytics/NdAnalyticsCustomConfig;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nd/analytics/NdAnalyticsCustomConfig;

    invoke-direct {v0}, Lcom/nd/analytics/NdAnalyticsCustomConfig;-><init>()V

    iput-object v0, p0, Lcomndanalytics/f;->h:Lcom/nd/analytics/NdAnalyticsCustomConfig;

    :cond_0
    iget-object v0, p0, Lcomndanalytics/f;->h:Lcom/nd/analytics/NdAnalyticsCustomConfig;

    return-object v0
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Lcomndanalytics/f;->j:Z

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcomndanalytics/f;->c:Ljava/lang/String;

    return-object v0
.end method
