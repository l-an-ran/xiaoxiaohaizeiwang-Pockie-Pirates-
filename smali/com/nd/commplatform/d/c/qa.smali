.class public Lcom/nd/commplatform/d/c/qa;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/nd/commplatform/d/c/qa;

.field private static b:Lcom/nd/commplatform/d/c/qd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/nd/commplatform/d/c/qa;->a:Lcom/nd/commplatform/d/c/qa;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/nd/commplatform/d/c/qd;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/qd;-><init>()V

    sput-object v0, Lcom/nd/commplatform/d/c/qa;->b:Lcom/nd/commplatform/d/c/qd;

    return-void
.end method

.method public static a()Lcom/nd/commplatform/d/c/qa;
    .locals 1

    sget-object v0, Lcom/nd/commplatform/d/c/qa;->a:Lcom/nd/commplatform/d/c/qa;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nd/commplatform/d/c/qa;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/qa;-><init>()V

    sput-object v0, Lcom/nd/commplatform/d/c/qa;->a:Lcom/nd/commplatform/d/c/qa;

    :cond_0
    sget-object v0, Lcom/nd/commplatform/d/c/qa;->a:Lcom/nd/commplatform/d/c/qa;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/nd/commplatform/d/c/pz;Ljava/util/HashMap;Lcom/nd/commplatform/d/c/qe;Landroid/content/Context;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/nd/commplatform/d/c/pz;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/nd/commplatform/d/c/qe;",
            "Landroid/content/Context;",
            ")I"
        }
    .end annotation

    sget-object v0, Lcom/nd/commplatform/d/c/qa;->b:Lcom/nd/commplatform/d/c/qd;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/qd;->a(Ljava/lang/String;Lcom/nd/commplatform/d/c/pz;Ljava/util/HashMap;Lcom/nd/commplatform/d/c/qe;Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/nd/commplatform/d/c/pz;Ljava/util/HashMap;Lcom/nd/commplatform/d/c/qe;Landroid/content/Context;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/nd/commplatform/d/c/pz;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/nd/commplatform/d/c/qe;",
            "Landroid/content/Context;",
            ")I"
        }
    .end annotation

    sget-object v0, Lcom/nd/commplatform/d/c/qa;->b:Lcom/nd/commplatform/d/c/qd;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/nd/commplatform/d/c/qd;->a(Ljava/lang/String;Ljava/lang/String;Lcom/nd/commplatform/d/c/pz;Ljava/util/HashMap;Lcom/nd/commplatform/d/c/qe;Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/nd/commplatform/d/c/qe;Landroid/content/Context;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/nd/commplatform/d/c/qe;",
            "Landroid/content/Context;",
            ")I"
        }
    .end annotation

    sget-object v0, Lcom/nd/commplatform/d/c/qa;->b:Lcom/nd/commplatform/d/c/qd;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/qd;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/nd/commplatform/d/c/qe;Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;Lcom/nd/commplatform/d/c/qe;Landroid/content/Context;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/nd/commplatform/d/c/qe;",
            "Landroid/content/Context;",
            ")I"
        }
    .end annotation

    sget-object v0, Lcom/nd/commplatform/d/c/qa;->b:Lcom/nd/commplatform/d/c/qd;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/nd/commplatform/d/c/qd;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;Lcom/nd/commplatform/d/c/qe;Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;[BLcom/nd/commplatform/d/c/pz;Ljava/util/HashMap;Lcom/nd/commplatform/d/c/qe;Landroid/content/Context;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Lcom/nd/commplatform/d/c/pz;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/nd/commplatform/d/c/qe;",
            "Landroid/content/Context;",
            ")I"
        }
    .end annotation

    sget-object v0, Lcom/nd/commplatform/d/c/qa;->b:Lcom/nd/commplatform/d/c/qd;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/nd/commplatform/d/c/qd;->a(Ljava/lang/String;[BLcom/nd/commplatform/d/c/pz;Ljava/util/HashMap;Lcom/nd/commplatform/d/c/qe;Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;[BLjava/lang/String;Ljava/util/HashMap;Lcom/nd/commplatform/d/c/qe;Landroid/content/Context;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/nd/commplatform/d/c/qe;",
            "Landroid/content/Context;",
            ")I"
        }
    .end annotation

    sget-object v0, Lcom/nd/commplatform/d/c/qa;->b:Lcom/nd/commplatform/d/c/qd;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/nd/commplatform/d/c/qd;->a(Ljava/lang/String;[BLjava/lang/String;Ljava/util/HashMap;Lcom/nd/commplatform/d/c/qe;Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;[BLjava/util/HashMap;Lcom/nd/commplatform/d/c/qe;Landroid/content/Context;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/nd/commplatform/d/c/qe;",
            "Landroid/content/Context;",
            ")I"
        }
    .end annotation

    sget-object v0, Lcom/nd/commplatform/d/c/qa;->b:Lcom/nd/commplatform/d/c/qd;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/qd;->a(Ljava/lang/String;[BLjava/util/HashMap;Lcom/nd/commplatform/d/c/qe;Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public a(I)V
    .locals 0

    sput p1, Lcom/nd/commplatform/d/c/qc;->a:I

    return-void
.end method

.method public a(ILcom/nd/commplatform/d/c/qe;)V
    .locals 1

    sget-object v0, Lcom/nd/commplatform/d/c/qa;->b:Lcom/nd/commplatform/d/c/qd;

    invoke-virtual {v0, p1, p2}, Lcom/nd/commplatform/d/c/qd;->a(ILcom/nd/commplatform/d/c/qe;)V

    return-void
.end method

.method public a(J)V
    .locals 1

    sget-object v0, Lcom/nd/commplatform/d/c/qa;->b:Lcom/nd/commplatform/d/c/qd;

    invoke-virtual {v0, p1, p2}, Lcom/nd/commplatform/d/c/qd;->a(J)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    sget-object v0, Lcom/nd/commplatform/d/c/qa;->b:Lcom/nd/commplatform/d/c/qd;

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/d/c/qd;->a(Z)V

    return-void
.end method

.method public b(Ljava/lang/String;[BLcom/nd/commplatform/d/c/pz;Ljava/util/HashMap;Lcom/nd/commplatform/d/c/qe;Landroid/content/Context;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Lcom/nd/commplatform/d/c/pz;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/nd/commplatform/d/c/qe;",
            "Landroid/content/Context;",
            ")I"
        }
    .end annotation

    sget-object v0, Lcom/nd/commplatform/d/c/qa;->b:Lcom/nd/commplatform/d/c/qd;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/nd/commplatform/d/c/qd;->b(Ljava/lang/String;[BLcom/nd/commplatform/d/c/pz;Ljava/util/HashMap;Lcom/nd/commplatform/d/c/qe;Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "1.03"

    return-object v0
.end method

.method public b(I)V
    .locals 0

    sput p1, Lcom/nd/commplatform/d/c/qc;->b:I

    return-void
.end method

.method public c(Ljava/lang/String;[BLcom/nd/commplatform/d/c/pz;Ljava/util/HashMap;Lcom/nd/commplatform/d/c/qe;Landroid/content/Context;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Lcom/nd/commplatform/d/c/pz;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/nd/commplatform/d/c/qe;",
            "Landroid/content/Context;",
            ")I"
        }
    .end annotation

    sget-object v0, Lcom/nd/commplatform/d/c/qa;->b:Lcom/nd/commplatform/d/c/qd;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/nd/commplatform/d/c/qd;->c(Ljava/lang/String;[BLcom/nd/commplatform/d/c/pz;Ljava/util/HashMap;Lcom/nd/commplatform/d/c/qe;Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public c(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/nd/commplatform/d/c/qa;->b:Lcom/nd/commplatform/d/c/qd;

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/d/c/qd;->e(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 1

    sget-object v0, Lcom/nd/commplatform/d/c/qa;->b:Lcom/nd/commplatform/d/c/qd;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/qd;->a()V

    return-void
.end method

.method public d(I)J
    .locals 4

    sget-object v0, Lcom/nd/commplatform/d/c/qa;->b:Lcom/nd/commplatform/d/c/qd;

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/d/c/qd;->f(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v0, -0x1

    :cond_0
    return-wide v0
.end method

.method public e(I)Ljava/net/HttpURLConnection;
    .locals 1

    sget-object v0, Lcom/nd/commplatform/d/c/qa;->b:Lcom/nd/commplatform/d/c/qd;

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/d/c/qd;->b(I)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method public f(I)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    sget-object v0, Lcom/nd/commplatform/d/c/qa;->b:Lcom/nd/commplatform/d/c/qd;

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/d/c/qd;->c(I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public g(I)V
    .locals 1

    sget-object v0, Lcom/nd/commplatform/d/c/qa;->b:Lcom/nd/commplatform/d/c/qd;

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/d/c/qd;->d(I)V

    return-void
.end method

.method public h(I)V
    .locals 1

    sget-object v0, Lcom/nd/commplatform/d/c/qa;->b:Lcom/nd/commplatform/d/c/qd;

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/d/c/qd;->a(I)V

    return-void
.end method
