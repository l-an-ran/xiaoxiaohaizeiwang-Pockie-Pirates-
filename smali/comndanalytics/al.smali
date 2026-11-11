.class public Lcomndanalytics/al;
.super Lcomndanalytics/aj;


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field private d:Lcomndanalytics/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcomndanalytics/al;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcomndanalytics/al;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcomndanalytics/b;)V
    .locals 2

    invoke-virtual {p2}, Lcomndanalytics/b;->a()I

    move-result v0

    invoke-virtual {p2}, Lcomndanalytics/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcomndanalytics/aj;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iput-object p2, p0, Lcomndanalytics/al;->d:Lcomndanalytics/b;

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    sget-object v2, Lcom/nd/analytics/NdAnalyticsDelegate$RESULT_CODE;->RESULT_FAIL:Lcom/nd/analytics/NdAnalyticsDelegate$RESULT_CODE;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    new-instance v0, Lcomndanalytics/r;

    iget-object v3, p0, Lcomndanalytics/al;->b:Landroid/content/Context;

    invoke-direct {v0, p2, v3}, Lcomndanalytics/r;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcomndanalytics/r;->a()V

    sget-object v1, Lcom/nd/analytics/NdAnalyticsDelegate$RESULT_CODE;->RESULT_SUCCESS:Lcom/nd/analytics/NdAnalyticsDelegate$RESULT_CODE;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v2, p0, Lcomndanalytics/al;->d:Lcomndanalytics/b;

    invoke-virtual {v2, v1, v0}, Lcomndanalytics/b;->a(Lcom/nd/analytics/NdAnalyticsDelegate$RESULT_CODE;Lcomndanalytics/r;)V

    return-void

    :catch_0
    move-exception v0

    sget-object v3, Lcomndanalytics/al;->c:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcomndanalytics/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v0, v1

    move-object v1, v2

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "POST"

    return-object v0
.end method

.method protected g()Ljava/lang/String;
    .locals 1

    const-string v0, "http://funcstatic.sj.91.com/api.ashx"

    return-object v0
.end method

.method protected m()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected n()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected o()Ljava/lang/String;
    .locals 2

    new-instance v0, Lcomndanalytics/q;

    iget-object v1, p0, Lcomndanalytics/al;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcomndanalytics/q;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcomndanalytics/q;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
