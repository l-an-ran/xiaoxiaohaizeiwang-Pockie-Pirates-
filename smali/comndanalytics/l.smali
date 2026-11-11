.class public Lcomndanalytics/l;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:J

.field private c:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()J
    .locals 2

    iget-wide v0, p0, Lcomndanalytics/l;->a:J

    return-wide v0
.end method

.method public b(J)V
    .locals 0

    iput-wide p1, p0, Lcomndanalytics/l;->a:J

    return-void
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lcomndanalytics/l;->b:J

    return-wide v0
.end method

.method public c(J)V
    .locals 0

    iput-wide p1, p0, Lcomndanalytics/l;->b:J

    return-void
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lcomndanalytics/l;->c:J

    return-wide v0
.end method

.method public d(J)V
    .locals 0

    iput-wide p1, p0, Lcomndanalytics/l;->c:J

    return-void
.end method
