.class public Lcomndanalytics/j;
.super Lcomndanalytics/l;


# instance fields
.field private a:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcomndanalytics/l;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcomndanalytics/j;->a:J

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lcomndanalytics/j;->a:J

    return-wide v0
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcomndanalytics/j;->a:J

    return-void
.end method
