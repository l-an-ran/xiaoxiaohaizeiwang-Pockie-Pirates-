.class public Lcom/nd/commplatform/d/c/nw;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/nd/commplatform/d/c/nq; = null

.field private static final b:I = 0x8000


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 5

    const/4 v4, 0x0

    sget-object v0, Lcom/nd/commplatform/d/c/nw;->a:Lcom/nd/commplatform/d/c/nq;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nd/commplatform/d/c/nq;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/nq;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/nd/commplatform/d/c/nw;->a:Lcom/nd/commplatform/d/c/nq;

    sget-object v0, Lcom/nd/commplatform/d/c/nw;->a:Lcom/nd/commplatform/d/c/nq;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/nq;->a()Z

    :cond_0
    sget-object v0, Lcom/nd/commplatform/d/c/nw;->a:Lcom/nd/commplatform/d/c/nq;

    invoke-static {p0}, Lcom/nd/commplatform/d/c/nw;->i(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "userName"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/nq;->a(Ljava/lang/String;)Z

    sget-object v0, Lcom/nd/commplatform/d/c/nw;->a:Lcom/nd/commplatform/d/c/nq;

    invoke-static {p0}, Lcom/nd/commplatform/d/c/nw;->i(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "autoLoginSign"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/nq;->b(Ljava/lang/String;)Z

    sget-object v0, Lcom/nd/commplatform/d/c/nw;->a:Lcom/nd/commplatform/d/c/nq;

    invoke-static {p0}, Lcom/nd/commplatform/d/c/nw;->i(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "autoLogin"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/nq;->a(Z)Z

    sget-object v0, Lcom/nd/commplatform/d/c/nw;->a:Lcom/nd/commplatform/d/c/nq;

    invoke-static {p0}, Lcom/nd/commplatform/d/c/nw;->i(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "isSavePassword"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/nq;->b(Z)Z

    sget-object v0, Lcom/nd/commplatform/d/c/nw;->a:Lcom/nd/commplatform/d/c/nq;

    invoke-static {p0}, Lcom/nd/commplatform/d/c/nw;->i(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "simNum"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/nq;->c(Ljava/lang/String;)Z

    sget-object v0, Lcom/nd/commplatform/d/c/nw;->a:Lcom/nd/commplatform/d/c/nq;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/nq;->b()Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    invoke-static {p0}, Lcom/nd/commplatform/d/c/nw;->j(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "userName"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Z)Z
    .locals 2

    :try_start_0
    invoke-static {p0}, Lcom/nd/commplatform/d/c/nw;->j(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "autoLogin"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/nd/commplatform/d/c/nw;->i(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "userName"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/nd/commplatform/d/c/nw;->a:Lcom/nd/commplatform/d/c/nq;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/nq;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v0, Lcom/nd/commplatform/d/c/nw;->a:Lcom/nd/commplatform/d/c/nq;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/nq;->e()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    invoke-static {p0}, Lcom/nd/commplatform/d/c/nw;->j(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "autoLoginSign"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Z)Z
    .locals 2

    :try_start_0
    invoke-static {p0}, Lcom/nd/commplatform/d/c/nw;->j(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isSavePassword"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/nd/commplatform/d/c/nw;->i(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "autoLoginSign"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/nd/commplatform/d/c/nw;->a:Lcom/nd/commplatform/d/c/nq;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/nq;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v0, Lcom/nd/commplatform/d/c/nw;->a:Lcom/nd/commplatform/d/c/nq;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/nq;->f()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    invoke-static {p0}, Lcom/nd/commplatform/d/c/nw;->j(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "simNum"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;Z)Z
    .locals 2

    :try_start_0
    invoke-static {p0}, Lcom/nd/commplatform/d/c/nw;->j(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "showRechargeHelpTips"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p0}, Lcom/nd/commplatform/d/c/nw;->i(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "autoLogin"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sget-object v1, Lcom/nd/commplatform/d/c/nw;->a:Lcom/nd/commplatform/d/c/nq;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/nq;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v0, Lcom/nd/commplatform/d/c/nw;->a:Lcom/nd/commplatform/d/c/nq;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/nq;->g()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p0}, Lcom/nd/commplatform/d/c/nw;->i(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "isSavePassword"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sget-object v1, Lcom/nd/commplatform/d/c/nw;->a:Lcom/nd/commplatform/d/c/nq;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/nq;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v0, Lcom/nd/commplatform/d/c/nw;->a:Lcom/nd/commplatform/d/c/nq;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/nq;->h()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public static f(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p0}, Lcom/nd/commplatform/d/c/nw;->i(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "showRechargeHelpTips"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/nd/commplatform/d/c/nw;->i(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "simNum"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static h(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lcom/nd/commplatform/d/c/nw;->a(Landroid/content/Context;Z)Z

    sget-object v1, Lcom/nd/commplatform/d/c/nw;->a:Lcom/nd/commplatform/d/c/nq;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nd/commplatform/d/c/nq;->a(Z)Z

    sget-object v1, Lcom/nd/commplatform/d/c/nw;->a:Lcom/nd/commplatform/d/c/nq;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/nq;->b()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static i(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    sget-object v0, Lcom/nd/commplatform/d/c/nw;->a:Lcom/nd/commplatform/d/c/nq;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nd/commplatform/d/c/nq;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/nq;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/nd/commplatform/d/c/nw;->a:Lcom/nd/commplatform/d/c/nq;

    sget-object v0, Lcom/nd/commplatform/d/c/nw;->a:Lcom/nd/commplatform/d/c/nq;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/nq;->a()Z

    :cond_0
    invoke-static {p0}, Lcom/nd/commplatform/d/c/pa;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "snsPreferences"

    :cond_1
    const v1, 0x8000

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static j(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;
    .locals 2

    sget-object v0, Lcom/nd/commplatform/d/c/nw;->a:Lcom/nd/commplatform/d/c/nq;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nd/commplatform/d/c/nq;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/nq;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/nd/commplatform/d/c/nw;->a:Lcom/nd/commplatform/d/c/nq;

    sget-object v0, Lcom/nd/commplatform/d/c/nw;->a:Lcom/nd/commplatform/d/c/nq;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/nq;->a()Z

    :cond_0
    invoke-static {p0}, Lcom/nd/commplatform/d/c/nw;->i(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method
