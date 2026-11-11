.class public Lcomndanalytics/am;
.super Lcomndanalytics/aj;


# instance fields
.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcomndanalytics/k;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcomndanalytics/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcomndanalytics/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcomndanalytics/k;",
            ">;",
            "Lcomndanalytics/b;",
            ")V"
        }
    .end annotation

    invoke-virtual {p3}, Lcomndanalytics/b;->a()I

    move-result v0

    invoke-virtual {p3}, Lcomndanalytics/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcomndanalytics/aj;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iput-object p3, p0, Lcomndanalytics/am;->d:Lcomndanalytics/b;

    iput-object p2, p0, Lcomndanalytics/am;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    sget-object v0, Lcom/nd/analytics/NdAnalyticsDelegate$RESULT_CODE;->RESULT_SUCCESS:Lcom/nd/analytics/NdAnalyticsDelegate$RESULT_CODE;

    :goto_0
    iget-object v1, p0, Lcomndanalytics/am;->d:Lcomndanalytics/b;

    iget-object v2, p0, Lcomndanalytics/am;->c:Ljava/util/List;

    invoke-virtual {v1, v0, v2}, Lcomndanalytics/b;->a(Lcom/nd/analytics/NdAnalyticsDelegate$RESULT_CODE;Ljava/util/List;)V

    return-void

    :cond_0
    sget-object v0, Lcom/nd/analytics/NdAnalyticsDelegate$RESULT_CODE;->RESULT_FAIL:Lcom/nd/analytics/NdAnalyticsDelegate$RESULT_CODE;

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

    const/4 v0, 0x2

    return v0
.end method

.method protected n()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected o()Ljava/lang/String;
    .locals 3

    new-instance v0, Lcomndanalytics/v;

    iget-object v1, p0, Lcomndanalytics/am;->b:Landroid/content/Context;

    iget-object v2, p0, Lcomndanalytics/am;->c:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcomndanalytics/v;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0}, Lcomndanalytics/v;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
