.class public Lcomndanalytics/k;
.super Lcomndanalytics/z;


# instance fields
.field private a:J

.field private b:Lcomndanalytics/d$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcomndanalytics/z;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lcomndanalytics/k;->a:J

    return-wide v0
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcomndanalytics/k;->a:J

    return-void
.end method

.method public a(Lcomndanalytics/d$a;)V
    .locals 0

    iput-object p1, p0, Lcomndanalytics/k;->b:Lcomndanalytics/d$a;

    return-void
.end method

.method public b()Lcomndanalytics/d$a;
    .locals 1

    iget-object v0, p0, Lcomndanalytics/k;->b:Lcomndanalytics/d$a;

    return-object v0
.end method
