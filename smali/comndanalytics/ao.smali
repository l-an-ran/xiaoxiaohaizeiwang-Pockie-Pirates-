.class public Lcomndanalytics/ao;
.super Lcomndanalytics/aq;


# instance fields
.field private a:J

.field private b:J


# direct methods
.method public constructor <init>(J)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Lcomndanalytics/aq;-><init>()V

    iput-wide v0, p0, Lcomndanalytics/ao;->a:J

    iput-wide v0, p0, Lcomndanalytics/ao;->b:J

    iput-wide p1, p0, Lcomndanalytics/ao;->a:J

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lcomndanalytics/ao;->a:J

    return-wide v0
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcomndanalytics/ao;->b:J

    return-void
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcomndanalytics/ao;->b:J

    return-wide v0
.end method

.method public c()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcomndanalytics/ao;->a:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcomndanalytics/ao;->b:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 2

    invoke-super {p0}, Lcomndanalytics/aq;->d()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcomndanalytics/ao;->a:J

    return-void
.end method
