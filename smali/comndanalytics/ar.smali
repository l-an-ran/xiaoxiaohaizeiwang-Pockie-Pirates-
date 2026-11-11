.class public Lcomndanalytics/ar;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:I = 0x0

.field private static final c:Ljava/lang/String; = "nd_91analytics_misc"

.field private static final d:Ljava/lang/String; = "nd_91analytics_option"

.field private static final e:Ljava/lang/String; = "nd_91analytics_stat"

.field private static final f:Ljava/lang/String; = "nd_91analytics_option_sdk"

.field private static final g:Ljava/lang/String; = "nd_91analytics_stat_sdk"


# instance fields
.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcomndanalytics/ar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcomndanalytics/ar;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcomndanalytics/ar;->h:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "nd_91analytics_misc"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "imei"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "nd_91analytics_misc"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "imei"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Z)Lcomndanalytics/f;
    .locals 9

    const-wide/16 v7, 0x0

    const/4 v2, 0x0

    const/high16 v4, -0x80000000

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcomndanalytics/ar;->h:Z

    if-eqz v0, :cond_0

    const-string v0, "nd_91analytics_option_sdk"

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v0, "UpateConfig"

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_2

    if-eqz p2, :cond_1

    invoke-static {}, Lcomndanalytics/f;->k()Lcomndanalytics/f;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const-string v0, "nd_91analytics_option"

    goto :goto_0

    :cond_1
    move-object v0, v2

    goto :goto_1

    :cond_2
    new-instance v4, Lcomndanalytics/f;

    invoke-direct {v4}, Lcomndanalytics/f;-><init>()V

    const-string v5, "VersionName"

    const-string v6, "*null*"

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcomndanalytics/f;->a(Ljava/lang/String;)V

    if-gtz v0, :cond_3

    move v0, v1

    :cond_3
    invoke-virtual {v4, v0}, Lcomndanalytics/f;->a(I)V

    const-string v0, "SendConfig"

    const/4 v5, 0x2

    invoke-interface {v3, v0, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v1, :cond_4

    sget-object v0, Lcomndanalytics/f$a;->a:Lcomndanalytics/f$a;

    :goto_2
    invoke-virtual {v4, v0}, Lcomndanalytics/f;->a(Lcomndanalytics/f$a;)V

    const-string v6, "SendValue"

    if-ne v5, v1, :cond_5

    const/16 v0, 0x64

    :goto_3
    invoke-interface {v3, v6, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v4, v0}, Lcomndanalytics/f;->b(I)V

    const-string v0, "IsVersionRecord"

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v4, v0}, Lcomndanalytics/f;->a(Z)V

    const-string v0, "IsExceptionRecord"

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v4, v0}, Lcomndanalytics/f;->b(Z)V

    const-string v0, "PostUseLong"

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v4, v0}, Lcomndanalytics/f;->c(Z)V

    new-instance v5, Lcom/nd/analytics/NdAnalyticsCustomConfig;

    invoke-direct {v5}, Lcom/nd/analytics/NdAnalyticsCustomConfig;-><init>()V

    const-string v0, "CustomConfig"

    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/nd/analytics/NdAnalyticsCustomConfig;->setConfig(Ljava/lang/String;)V

    const-string v0, "CustomConfig_Tag"

    invoke-interface {v3, v0, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Lcom/nd/analytics/NdAnalyticsCustomConfig;->setExtras(J)V

    invoke-virtual {v4, v5}, Lcomndanalytics/f;->a(Lcom/nd/analytics/NdAnalyticsCustomConfig;)V

    const-string v0, "UserConfig_UpdateTime"

    invoke-interface {v3, v0, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v6, v2, v0

    if-lez v6, :cond_9

    :goto_4
    invoke-virtual {v4, v0, v1}, Lcomndanalytics/f;->a(J)V

    invoke-virtual {v4}, Lcomndanalytics/f;->l()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/nd/analytics/NdAnalyticsCustomConfig$CONFIG_STATUS;->NULL:Lcom/nd/analytics/NdAnalyticsCustomConfig$CONFIG_STATUS;

    invoke-virtual {v5, v0}, Lcom/nd/analytics/NdAnalyticsCustomConfig;->setStatus(Lcom/nd/analytics/NdAnalyticsCustomConfig$CONFIG_STATUS;)V

    :goto_5
    move-object v0, v4

    goto/16 :goto_1

    :cond_4
    sget-object v0, Lcomndanalytics/f$a;->b:Lcomndanalytics/f$a;

    goto :goto_2

    :cond_5
    const/16 v0, 0x5a0

    goto :goto_3

    :cond_6
    invoke-virtual {v4}, Lcomndanalytics/f;->b()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v4, p1}, Lcomndanalytics/f;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    sget-object v0, Lcom/nd/analytics/NdAnalyticsCustomConfig$CONFIG_STATUS;->TIMEOUT:Lcom/nd/analytics/NdAnalyticsCustomConfig$CONFIG_STATUS;

    invoke-virtual {v5, v0}, Lcom/nd/analytics/NdAnalyticsCustomConfig;->setStatus(Lcom/nd/analytics/NdAnalyticsCustomConfig$CONFIG_STATUS;)V

    goto :goto_5

    :cond_8
    sget-object v0, Lcom/nd/analytics/NdAnalyticsCustomConfig$CONFIG_STATUS;->VALID:Lcom/nd/analytics/NdAnalyticsCustomConfig$CONFIG_STATUS;

    invoke-virtual {v5, v0}, Lcom/nd/analytics/NdAnalyticsCustomConfig;->setStatus(Lcom/nd/analytics/NdAnalyticsCustomConfig$CONFIG_STATUS;)V

    goto :goto_5

    :cond_9
    move-wide v0, v2

    goto :goto_4
.end method

.method public a(Landroid/content/Context;Lcomndanalytics/d;)Z
    .locals 8

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcomndanalytics/ar;->h:Z

    if-eqz v0, :cond_0

    const-string v0, "nd_91analytics_stat_sdk"

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p2}, Lcomndanalytics/d;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "functionId"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "stattype"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v7, Lcomndanalytics/d$a;->b:Lcomndanalytics/d$a;

    if-ne v0, v7, :cond_1

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v5, Lcomndanalytics/ar;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcomndanalytics/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v0, "nd_91analytics_stat"

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    const-string v0, "stat_map"

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public a(Landroid/content/Context;Lcomndanalytics/f;)Z
    .locals 4

    iget-boolean v0, p0, Lcomndanalytics/ar;->h:Z

    if-eqz v0, :cond_0

    const-string v0, "nd_91analytics_option_sdk"

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v0, "VersionName"

    invoke-virtual {p2}, Lcomndanalytics/f;->m()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "UpateConfig"

    invoke-virtual {p2}, Lcomndanalytics/f;->d()I

    move-result v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v2, "SendConfig"

    invoke-virtual {p2}, Lcomndanalytics/f;->f()Lcomndanalytics/f$a;

    move-result-object v0

    sget-object v3, Lcomndanalytics/f$a;->a:Lcomndanalytics/f$a;

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "SendValue"

    invoke-virtual {p2}, Lcomndanalytics/f;->g()I

    move-result v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v0, "IsVersionRecord"

    invoke-virtual {p2}, Lcomndanalytics/f;->e()Z

    move-result v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "IsExceptionRecord"

    invoke-virtual {p2}, Lcomndanalytics/f;->h()Z

    move-result v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "PostUseLong"

    invoke-virtual {p2}, Lcomndanalytics/f;->i()Z

    move-result v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "CustomConfig"

    invoke-virtual {p2}, Lcomndanalytics/f;->j()Lcom/nd/analytics/NdAnalyticsCustomConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nd/analytics/NdAnalyticsCustomConfig;->getConfig()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "CustomConfig_Tag"

    invoke-virtual {p2}, Lcomndanalytics/f;->j()Lcom/nd/analytics/NdAnalyticsCustomConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nd/analytics/NdAnalyticsCustomConfig;->getExtras()J

    move-result-wide v2

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v0, "UserConfig_UpdateTime"

    invoke-virtual {p2}, Lcomndanalytics/f;->a()J

    move-result-wide v2

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "nd_91analytics_option"

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_1
.end method

.method public b(Landroid/content/Context;)J
    .locals 5

    iget-boolean v0, p0, Lcomndanalytics/ar;->h:Z

    if-eqz v0, :cond_0

    const-string v0, "nd_91analytics_option_sdk"

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_post_milli"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v4, v2, v0

    if-lez v4, :cond_1

    :goto_1
    return-wide v0

    :cond_0
    const-string v0, "nd_91analytics_option"

    goto :goto_0

    :cond_1
    move-wide v0, v2

    goto :goto_1
.end method

.method public b(Landroid/content/Context;Z)Lcomndanalytics/d;
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcomndanalytics/ar;->h:Z

    if-eqz v0, :cond_1

    const-string v0, "nd_91analytics_stat_sdk"

    :goto_0
    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "stat_map"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    if-eqz p2, :cond_2

    invoke-static {}, Lcomndanalytics/d;->a()Lcomndanalytics/d;

    move-result-object v0

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    const-string v0, "nd_91analytics_stat"

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    new-instance v0, Lcomndanalytics/d;

    invoke-direct {v0}, Lcomndanalytics/d;-><init>()V

    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v3

    :goto_2
    if-ge v2, v3, :cond_0

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v5, "functionId"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "stattype"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v6, 0x1

    if-ne v1, v6, :cond_4

    sget-object v1, Lcomndanalytics/d$a;->b:Lcomndanalytics/d$a;

    :goto_3
    invoke-virtual {v0, v5, v1}, Lcomndanalytics/d;->a(Ljava/lang/String;Lcomndanalytics/d$a;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    :cond_4
    sget-object v1, Lcomndanalytics/d$a;->c:Lcomndanalytics/d$a;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    sget-object v2, Lcomndanalytics/ar;->a:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcomndanalytics/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public c(Landroid/content/Context;)Z
    .locals 4

    iget-boolean v0, p0, Lcomndanalytics/ar;->h:Z

    if-eqz v0, :cond_0

    const-string v0, "nd_91analytics_option_sdk"

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_post_milli"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "nd_91analytics_option"

    goto :goto_0
.end method
