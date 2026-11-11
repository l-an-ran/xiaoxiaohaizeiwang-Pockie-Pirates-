.class public Lcomndanalytics/z;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:J

.field private d:I

.field private e:J

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcomndanalytics/z;->d:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcomndanalytics/z;->a:Ljava/lang/String;

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcomndanalytics/z;->f:I

    return-void
.end method

.method public b(J)V
    .locals 0

    iput-wide p1, p0, Lcomndanalytics/z;->c:J

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcomndanalytics/z;->b:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcomndanalytics/z;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c(J)V
    .locals 0

    iput-wide p1, p0, Lcomndanalytics/z;->e:J

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcomndanalytics/z;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()J
    .locals 2

    iget-wide v0, p0, Lcomndanalytics/z;->c:J

    return-wide v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcomndanalytics/z;->d:I

    return v0
.end method

.method public g()J
    .locals 2

    iget-wide v0, p0, Lcomndanalytics/z;->e:J

    return-wide v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcomndanalytics/z;->f:I

    return v0
.end method
