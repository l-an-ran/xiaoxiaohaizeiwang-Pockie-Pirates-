.class public Lcomndanalytics/ap;
.super Lcomndanalytics/aq;


# instance fields
.field private a:J

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcomndanalytics/aq;-><init>()V

    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcomndanalytics/ap;->a:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcomndanalytics/ap;->b:J

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 6

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcomndanalytics/ap;->b:J

    int-to-long v4, p1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcomndanalytics/ap;->b:J

    iget-wide v2, p0, Lcomndanalytics/ap;->b:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    :goto_0
    iput-wide v0, p0, Lcomndanalytics/ap;->b:J

    return-void

    :cond_0
    iget-wide v0, p0, Lcomndanalytics/ap;->b:J

    goto :goto_0
.end method

.method public a(J)V
    .locals 4

    iput-wide p1, p0, Lcomndanalytics/ap;->a:J

    iget-wide v0, p0, Lcomndanalytics/ap;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const-wide/16 v0, 0x1

    :goto_0
    iput-wide v0, p0, Lcomndanalytics/ap;->a:J

    return-void

    :cond_0
    iget-wide v0, p0, Lcomndanalytics/ap;->a:J

    goto :goto_0
.end method

.method public b(I)V
    .locals 4

    iget-wide v0, p0, Lcomndanalytics/ap;->b:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcomndanalytics/ap;->b:J

    return-void
.end method

.method public b(J)V
    .locals 0

    iput-wide p1, p0, Lcomndanalytics/ap;->b:J

    return-void
.end method

.method public c()Z
    .locals 4

    iget-wide v0, p0, Lcomndanalytics/ap;->b:J

    iget-wide v2, p0, Lcomndanalytics/ap;->a:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
