.class public Lcom/nd/analytics/NdAnalytics;
.super Ljava/lang/Object;


# static fields
.field public static final DEFAULT_CONTINUOUS_SESSION_MILLIS:J = 0x2710L

.field public static final MAX_CONTINUOUS_SESSION_MILLIS:J = 0x7530L

.field public static final MIN_CONTINUOUS_SESSION_MILLIS:J = 0x1388L

.field private static final a:Ljava/lang/String; = "V1.1"

.field private static b:Lcomndanalytics/a;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/nd/analytics/NdAnalyticsSettings;Lcom/nd/analytics/NdAnalyticsDelegate;)V
    .locals 2

    const-string v0, "91Analytics"

    const-string v1, "Build at 2012-08-20"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "91Analytics : Null context"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "91Analytics : Null settings"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lcom/nd/analytics/NdAnalytics;->b:Lcomndanalytics/a;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/nd/analytics/NdAnalytics;->b:Lcomndanalytics/a;

    invoke-virtual {v0}, Lcomndanalytics/a;->a()V

    :cond_2
    new-instance v0, Lcomndanalytics/a;

    invoke-direct {v0}, Lcomndanalytics/a;-><init>()V

    sput-object v0, Lcom/nd/analytics/NdAnalytics;->b:Lcomndanalytics/a;

    sget-object v0, Lcom/nd/analytics/NdAnalytics;->b:Lcomndanalytics/a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcomndanalytics/a;->a(Landroid/content/Context;Lcom/nd/analytics/NdAnalyticsSettings;Lcom/nd/analytics/NdAnalyticsDelegate;)V

    return-void
.end method

.method public static getChannel(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcomndanalytics/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;Lcom/nd/analytics/NdAnalyticsSettings;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "settings"    # Lcom/nd/analytics/NdAnalyticsSettings;

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/nd/analytics/NdAnalytics;->a(Landroid/content/Context;Lcom/nd/analytics/NdAnalyticsSettings;Lcom/nd/analytics/NdAnalyticsDelegate;)V

    return-void
.end method

.method public static isInitialized()Z
    .locals 1

    sget-object v0, Lcom/nd/analytics/NdAnalytics;->b:Lcomndanalytics/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventId"    # Ljava/lang/String;

    .prologue
    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcom/nd/analytics/NdAnalytics;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x32

    sget-object v0, Lcom/nd/analytics/NdAnalytics;->b:Lcomndanalytics/a;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "91Analytics : hasn\'t been initialized."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "91Analytics : Null context"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "91Analytics : Event Id is invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "91Analytics : Event id length is too long."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-nez p2, :cond_4

    const-string p2, ""

    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_5

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_5
    sget-object v0, Lcom/nd/analytics/NdAnalytics;->b:Lcomndanalytics/a;

    invoke-virtual {v0, p0, p1, p2}, Lcomndanalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static onStartSession(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    sget-object v0, Lcom/nd/analytics/NdAnalytics;->b:Lcomndanalytics/a;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "91Analytics : hasn\'t been initialized."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "91Analytics : Null context"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lcom/nd/analytics/NdAnalytics;->b:Lcomndanalytics/a;

    invoke-virtual {v0, p0}, Lcomndanalytics/a;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static onStopSession(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    sget-object v0, Lcom/nd/analytics/NdAnalytics;->b:Lcomndanalytics/a;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "91Analytics : hasn\'t been initialized."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "91Analytics : Null context"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lcom/nd/analytics/NdAnalytics;->b:Lcomndanalytics/a;

    invoke-virtual {v0, p0}, Lcomndanalytics/a;->c(Landroid/content/Context;)V

    return-void
.end method

.method public static release()V
    .locals 0

    return-void
.end method

.method public static setContinuousSessionMillis(J)V
    .locals 5
    .param p0, "millis"    # J

    .prologue
    const-wide/16 v2, 0x7530

    const-wide/16 v0, 0x1388

    sget-object v4, Lcom/nd/analytics/NdAnalytics;->b:Lcomndanalytics/a;

    if-nez v4, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "91Analytics : hasn\'t been initialized."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    cmp-long v4, p0, v0

    if-gez v4, :cond_2

    const-string v2, "91Analytics"

    const-string v3, "Session continue millis too short."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide p0, v0

    .end local p0    # "millis":J
    :cond_1
    :goto_0
    sget-object v0, Lcom/nd/analytics/NdAnalytics;->b:Lcomndanalytics/a;

    invoke-virtual {v0, p0, p1}, Lcomndanalytics/a;->a(J)V

    return-void

    .restart local p0    # "millis":J
    :cond_2
    cmp-long v0, p0, v2

    if-lez v0, :cond_1

    const-string v0, "91Analytics"

    const-string v1, "Session continue millis too long."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide p0, v2

    goto :goto_0
.end method


# virtual methods
.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "V1.1"

    return-object v0
.end method
