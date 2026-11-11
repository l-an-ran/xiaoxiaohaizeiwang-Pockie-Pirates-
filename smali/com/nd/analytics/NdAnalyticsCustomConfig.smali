.class public Lcom/nd/analytics/NdAnalyticsCustomConfig;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nd/analytics/NdAnalyticsCustomConfig$CONFIG_STATUS;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:Lcom/nd/analytics/NdAnalyticsCustomConfig$CONFIG_STATUS;


# direct methods
.method public constructor <init>()V
    .locals 3

    const-wide/16 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v1, p0, Lcom/nd/analytics/NdAnalyticsCustomConfig;->b:J

    sget-object v0, Lcom/nd/analytics/NdAnalyticsCustomConfig$CONFIG_STATUS;->NULL:Lcom/nd/analytics/NdAnalyticsCustomConfig$CONFIG_STATUS;

    iput-object v0, p0, Lcom/nd/analytics/NdAnalyticsCustomConfig;->c:Lcom/nd/analytics/NdAnalyticsCustomConfig$CONFIG_STATUS;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nd/analytics/NdAnalyticsCustomConfig;->a:Ljava/lang/String;

    iput-wide v1, p0, Lcom/nd/analytics/NdAnalyticsCustomConfig;->b:J

    return-void
.end method


# virtual methods
.method public getConfig()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/analytics/NdAnalyticsCustomConfig;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nd/analytics/NdAnalyticsCustomConfig;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public getExtras()J
    .locals 2

    iget-wide v0, p0, Lcom/nd/analytics/NdAnalyticsCustomConfig;->b:J

    return-wide v0
.end method

.method public getReadableExtras()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd hh:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/nd/analytics/NdAnalyticsCustomConfig;->b:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/nd/analytics/NdAnalyticsCustomConfig$CONFIG_STATUS;
    .locals 1

    iget-object v0, p0, Lcom/nd/analytics/NdAnalyticsCustomConfig;->c:Lcom/nd/analytics/NdAnalyticsCustomConfig$CONFIG_STATUS;

    return-object v0
.end method

.method public setConfig(Ljava/lang/String;)V
    .locals 0
    .param p1, "config"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/nd/analytics/NdAnalyticsCustomConfig;->a:Ljava/lang/String;

    return-void
.end method

.method public setExtras(J)V
    .locals 0
    .param p1, "extras"    # J

    .prologue
    iput-wide p1, p0, Lcom/nd/analytics/NdAnalyticsCustomConfig;->b:J

    return-void
.end method

.method public setStatus(Lcom/nd/analytics/NdAnalyticsCustomConfig$CONFIG_STATUS;)V
    .locals 0
    .param p1, "status"    # Lcom/nd/analytics/NdAnalyticsCustomConfig$CONFIG_STATUS;

    .prologue
    iput-object p1, p0, Lcom/nd/analytics/NdAnalyticsCustomConfig;->c:Lcom/nd/analytics/NdAnalyticsCustomConfig$CONFIG_STATUS;

    return-void
.end method
