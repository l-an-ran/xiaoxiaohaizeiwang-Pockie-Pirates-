.class public Lcom/nd/commplatform/d/c/pd;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:I

.field private c:Lcom/nd/commplatform/NdCallbackListener;

.field private d:Lcom/nd/commplatform/d/c/qe;

.field private final e:S

.field private f:Ljava/lang/String;

.field private g:Landroid/content/Context;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Lcom/nd/commplatform/d/c/og$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ND2DownApp"

    iput-object v0, p0, Lcom/nd/commplatform/d/c/pd;->a:Ljava/lang/String;

    const/16 v0, -0x833

    iput-short v0, p0, Lcom/nd/commplatform/d/c/pd;->e:S

    iput-object v1, p0, Lcom/nd/commplatform/d/c/pd;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/nd/commplatform/d/c/pd;->h:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/nd/commplatform/d/c/pd;->i:I

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/pd;)I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/d/c/pd;->b:I

    return v0
.end method

.method private a()V
    .locals 2

    new-instance v0, Lcom/nd/commplatform/d/c/qe;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/qe;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/pd;->d:Lcom/nd/commplatform/d/c/qe;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pd;->d:Lcom/nd/commplatform/d/c/qe;

    new-instance v1, Lcom/nd/commplatform/d/c/pd$1;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/pd$1;-><init>(Lcom/nd/commplatform/d/c/pd;)V

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/qe;->a(Lcom/nd/commplatform/d/c/qe$d;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pd;->d:Lcom/nd/commplatform/d/c/qe;

    new-instance v1, Lcom/nd/commplatform/d/c/pd$2;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/pd$2;-><init>(Lcom/nd/commplatform/d/c/pd;)V

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/qe;->a(Lcom/nd/commplatform/d/c/qe$a;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pd;->d:Lcom/nd/commplatform/d/c/qe;

    new-instance v1, Lcom/nd/commplatform/d/c/pd$3;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/pd$3;-><init>(Lcom/nd/commplatform/d/c/pd;)V

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/qe;->a(Lcom/nd/commplatform/d/c/qe$e;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pd;->d:Lcom/nd/commplatform/d/c/qe;

    new-instance v1, Lcom/nd/commplatform/d/c/pd$4;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/pd$4;-><init>(Lcom/nd/commplatform/d/c/pd;)V

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/qe;->a(Lcom/nd/commplatform/d/c/qe$b;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pd;->d:Lcom/nd/commplatform/d/c/qe;

    new-instance v1, Lcom/nd/commplatform/d/c/pd$5;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/pd$5;-><init>(Lcom/nd/commplatform/d/c/pd;)V

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/qe;->a(Lcom/nd/commplatform/d/c/qe$h;)V

    return-void
.end method

.method private a(I)V
    .locals 4

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/pd;->b()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pd;->c:Lcom/nd/commplatform/NdCallbackListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pd;->c:Lcom/nd/commplatform/NdCallbackListener;

    const/4 v1, 0x0

    invoke-static {}, Lcom/nd/commplatform/d/c/qa;->a()Lcom/nd/commplatform/d/c/qa;

    move-result-object v2

    iget v3, p0, Lcom/nd/commplatform/d/c/pd;->b:I

    invoke-virtual {v2, v3}, Lcom/nd/commplatform/d/c/qa;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/NdCallbackListener;->callback(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/pd;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/pd;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/pd;)Lcom/nd/commplatform/d/c/og$a;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pd;->j:Lcom/nd/commplatform/d/c/og$a;

    return-object v0
.end method

.method private b()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/nd/commplatform/d/c/qa;->a()Lcom/nd/commplatform/d/c/qa;

    move-result-object v0

    iget v1, p0, Lcom/nd/commplatform/d/c/pd;->b:I

    iget-object v2, p0, Lcom/nd/commplatform/d/c/pd;->d:Lcom/nd/commplatform/d/c/qe;

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/qa;->a(ILcom/nd/commplatform/d/c/qe;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private c()I
    .locals 7

    new-instance v0, Lcom/nd/commplatform/d/c/pz;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/pz;-><init>()V

    invoke-static {}, Lcom/nd/commplatform/d/c/qa;->a()Lcom/nd/commplatform/d/c/qa;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/pd;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/pd;->h:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/nd/commplatform/d/c/pd;->d:Lcom/nd/commplatform/d/c/qe;

    iget-object v6, p0, Lcom/nd/commplatform/d/c/pd;->g:Landroid/content/Context;

    invoke-virtual/range {v0 .. v6}, Lcom/nd/commplatform/d/c/qa;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;Lcom/nd/commplatform/d/c/qe;Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/nd/commplatform/d/c/pd;->b:I

    iget v0, p0, Lcom/nd/commplatform/d/c/pd;->b:I

    return v0
.end method

.method static synthetic c(Lcom/nd/commplatform/d/c/pd;)I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/d/c/pd;->i:I

    return v0
.end method

.method static synthetic d(Lcom/nd/commplatform/d/c/pd;)Lcom/nd/commplatform/NdCallbackListener;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pd;->c:Lcom/nd/commplatform/NdCallbackListener;

    return-object v0
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;Lcom/nd/commplatform/d/c/og$a;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/nd/commplatform/d/c/og$a;",
            ")I"
        }
    .end annotation

    iput p1, p0, Lcom/nd/commplatform/d/c/pd;->i:I

    iput-object p2, p0, Lcom/nd/commplatform/d/c/pd;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/nd/commplatform/d/c/pd;->h:Ljava/lang/String;

    iput-object p4, p0, Lcom/nd/commplatform/d/c/pd;->g:Landroid/content/Context;

    iput-object p5, p0, Lcom/nd/commplatform/d/c/pd;->c:Lcom/nd/commplatform/NdCallbackListener;

    iput-object p6, p0, Lcom/nd/commplatform/d/c/pd;->j:Lcom/nd/commplatform/d/c/og$a;

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/pd;->a()V

    const-string v0, "ND2DownApp"

    const-string v1, "begin request data!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/pd;->c()I

    move-result v0

    return v0
.end method
