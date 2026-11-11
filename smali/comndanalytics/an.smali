.class public Lcomndanalytics/an;
.super Lcomndanalytics/aj;


# instance fields
.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcomndanalytics/j;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Lcomndanalytics/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcomndanalytics/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcomndanalytics/j;",
            ">;",
            "Lcomndanalytics/b;",
            ")V"
        }
    .end annotation

    invoke-virtual {p4}, Lcomndanalytics/b;->a()I

    move-result v0

    invoke-virtual {p4}, Lcomndanalytics/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcomndanalytics/aj;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iput-object p3, p0, Lcomndanalytics/an;->c:Ljava/util/List;

    iput-object p2, p0, Lcomndanalytics/an;->d:Ljava/lang/String;

    iput-object p4, p0, Lcomndanalytics/an;->e:Lcomndanalytics/b;

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    sget-object v0, Lcom/nd/analytics/NdAnalyticsDelegate$RESULT_CODE;->RESULT_SUCCESS:Lcom/nd/analytics/NdAnalyticsDelegate$RESULT_CODE;

    :goto_0
    iget-object v1, p0, Lcomndanalytics/an;->e:Lcomndanalytics/b;

    iget-object v2, p0, Lcomndanalytics/an;->c:Ljava/util/List;

    invoke-virtual {v1, v0, v2}, Lcomndanalytics/b;->c(Lcom/nd/analytics/NdAnalyticsDelegate$RESULT_CODE;Ljava/util/List;)V

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

    const-string v0, "http://appuse.sj.91.com/api.ashx"

    return-object v0
.end method

.method public m()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method protected n()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected o()Ljava/lang/String;
    .locals 4

    new-instance v0, Lcomndanalytics/w;

    iget-object v1, p0, Lcomndanalytics/an;->b:Landroid/content/Context;

    iget-object v2, p0, Lcomndanalytics/an;->d:Ljava/lang/String;

    iget-object v3, p0, Lcomndanalytics/an;->c:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lcomndanalytics/w;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0}, Lcomndanalytics/w;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
