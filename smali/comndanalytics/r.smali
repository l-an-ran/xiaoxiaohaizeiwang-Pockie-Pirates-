.class public Lcomndanalytics/r;
.super Lcomndanalytics/s;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Lcomndanalytics/d;

.field private c:Lcomndanalytics/f;

.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcomndanalytics/r;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcomndanalytics/r;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcomndanalytics/s;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcomndanalytics/d;

    invoke-direct {v0}, Lcomndanalytics/d;-><init>()V

    iput-object v0, p0, Lcomndanalytics/r;->b:Lcomndanalytics/d;

    iput-object p2, p0, Lcomndanalytics/r;->d:Landroid/content/Context;

    return-void
.end method

.method private d()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    :try_start_0
    iget-object v1, p0, Lcomndanalytics/r;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcomndanalytics/r;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

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

    sget-object v2, Lcomndanalytics/r;->a:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcomndanalytics/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    new-instance v5, Lcomndanalytics/f;

    invoke-direct {v5}, Lcomndanalytics/f;-><init>()V

    invoke-direct {p0}, Lcomndanalytics/r;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcomndanalytics/f;->a(Ljava/lang/String;)V

    const-string v0, "UpdateConfig"

    invoke-virtual {p0, v0, v2}, Lcomndanalytics/r;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcomndanalytics/f;->a(I)V

    const-string v0, "PostFunction"

    invoke-virtual {p0, v0, v1}, Lcomndanalytics/r;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v5, v0}, Lcomndanalytics/f;->a(Z)V

    const-string v0, "PostException"

    invoke-virtual {p0, v0, v1}, Lcomndanalytics/r;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v5, v0}, Lcomndanalytics/f;->b(Z)V

    const-string v0, "PostUseLong"

    invoke-virtual {p0, v0, v1}, Lcomndanalytics/r;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_2
    invoke-virtual {v5, v0}, Lcomndanalytics/f;->c(Z)V

    new-instance v0, Lcom/nd/analytics/NdAnalyticsCustomConfig;

    invoke-direct {v0}, Lcom/nd/analytics/NdAnalyticsCustomConfig;-><init>()V

    const-string v6, "CustomConfig"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcomndanalytics/r;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    sget-object v7, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/nd/analytics/NdAnalyticsCustomConfig;->setConfig(Ljava/lang/String;)V

    sget-object v6, Lcom/nd/analytics/NdAnalyticsCustomConfig$CONFIG_STATUS;->VALID:Lcom/nd/analytics/NdAnalyticsCustomConfig$CONFIG_STATUS;

    invoke-virtual {v0, v6}, Lcom/nd/analytics/NdAnalyticsCustomConfig;->setStatus(Lcom/nd/analytics/NdAnalyticsCustomConfig$CONFIG_STATUS;)V

    :cond_0
    invoke-virtual {v0, v3, v4}, Lcom/nd/analytics/NdAnalyticsCustomConfig;->setExtras(J)V

    invoke-virtual {v5, v0}, Lcomndanalytics/f;->a(Lcom/nd/analytics/NdAnalyticsCustomConfig;)V

    invoke-virtual {v5}, Lcomndanalytics/f;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SendConfig"

    const/4 v6, 0x2

    invoke-virtual {p0, v0, v6}, Lcomndanalytics/r;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_6

    sget-object v0, Lcomndanalytics/f$a;->a:Lcomndanalytics/f$a;

    :goto_3
    invoke-virtual {v5, v0}, Lcomndanalytics/f;->a(Lcomndanalytics/f$a;)V

    const-string v0, "SendValue"

    const/16 v6, 0x5a0

    invoke-virtual {p0, v0, v6}, Lcomndanalytics/r;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v5, v0}, Lcomndanalytics/f;->b(I)V

    :cond_1
    invoke-virtual {v5, v3, v4}, Lcomndanalytics/f;->a(J)V

    iput-object v5, p0, Lcomndanalytics/r;->c:Lcomndanalytics/f;

    :try_start_0
    invoke-virtual {v5}, Lcomndanalytics/f;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "Records"

    invoke-virtual {p0, v0}, Lcomndanalytics/r;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_8

    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    :goto_4
    if-ge v1, v4, :cond_8

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v5, "FunctionId"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_7

    :cond_2
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_3
    move v0, v2

    goto/16 :goto_0

    :cond_4
    move v0, v2

    goto/16 :goto_1

    :cond_5
    move v0, v2

    goto/16 :goto_2

    :cond_6
    sget-object v0, Lcomndanalytics/f$a;->b:Lcomndanalytics/f$a;

    goto :goto_3

    :cond_7
    :try_start_1
    const-string v6, "StatType"

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v6, p0, Lcomndanalytics/r;->b:Lcomndanalytics/d;

    if-ne v0, v2, :cond_9

    sget-object v0, Lcomndanalytics/d$a;->b:Lcomndanalytics/d$a;

    :goto_6
    invoke-virtual {v6, v5, v0}, Lcomndanalytics/d;->a(Ljava/lang/String;Lcomndanalytics/d$a;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    sget-object v1, Lcomndanalytics/r;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcomndanalytics/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-void

    :cond_9
    :try_start_2
    sget-object v0, Lcomndanalytics/d$a;->c:Lcomndanalytics/d$a;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6
.end method

.method public b()Lcomndanalytics/d;
    .locals 1

    iget-object v0, p0, Lcomndanalytics/r;->b:Lcomndanalytics/d;

    return-object v0
.end method

.method public c()Lcomndanalytics/f;
    .locals 1

    iget-object v0, p0, Lcomndanalytics/r;->c:Lcomndanalytics/f;

    return-object v0
.end method
