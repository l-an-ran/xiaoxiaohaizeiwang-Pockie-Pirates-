.class public Lcom/nd/commplatform/d/c/v;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static final a:B = 0x0t

.field protected static final b:B = 0x1t

.field protected static final c:B = 0x2t

.field protected static final d:B = 0x3t

.field protected static final e:B = 0x4t


# instance fields
.field protected f:Ljava/lang/String;

.field protected g:S

.field protected h:B

.field private i:Landroid/content/Context;

.field private j:Lcom/nd/commplatform/NdCallbackListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nd/commplatform/NdCallbackListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/nd/commplatform/d/c/pz;",
            ">;"
        }
    .end annotation
.end field

.field private l:I

.field private m:Lcom/nd/commplatform/d/c/fr;

.field private n:Lcom/nd/commplatform/d/c/qe;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/v;->k:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/v;)I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/d/c/v;->l:I

    return v0
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/v;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/v;->b(I)V

    return-void
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/v;)Lcom/nd/commplatform/d/c/fr;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/v;->m:Lcom/nd/commplatform/d/c/fr;

    return-object v0
.end method

.method private b()V
    .locals 2

    new-instance v0, Lcom/nd/commplatform/d/c/qe;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/qe;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/v;->n:Lcom/nd/commplatform/d/c/qe;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/v;->n:Lcom/nd/commplatform/d/c/qe;

    new-instance v1, Lcom/nd/commplatform/d/c/v$1;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/v$1;-><init>(Lcom/nd/commplatform/d/c/v;)V

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/qe;->a(Lcom/nd/commplatform/d/c/qe$d;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/v;->n:Lcom/nd/commplatform/d/c/qe;

    new-instance v1, Lcom/nd/commplatform/d/c/v$2;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/v$2;-><init>(Lcom/nd/commplatform/d/c/v;)V

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/qe;->a(Lcom/nd/commplatform/d/c/qe$a;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/v;->n:Lcom/nd/commplatform/d/c/qe;

    new-instance v1, Lcom/nd/commplatform/d/c/v$3;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/v$3;-><init>(Lcom/nd/commplatform/d/c/v;)V

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/qe;->a(Lcom/nd/commplatform/d/c/qe$e;)V

    return-void
.end method

.method private b(I)V
    .locals 4

    const/4 v3, -0x3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/v;->k:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/pz;

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/v;->d()V

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/pz;->b()[B

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/pz;->b()[B

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/v;->m:Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {p0, v0, v3, v1}, Lcom/nd/commplatform/d/c/v;->a(Lcom/nd/commplatform/d/c/fr;ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    new-instance v2, Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/pz;->b()[B

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/nd/commplatform/d/c/fr;-><init>([B)V

    iput-object v2, p0, Lcom/nd/commplatform/d/c/v;->m:Lcom/nd/commplatform/d/c/fr;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/v;->m:Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/fr;->j()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/v;->m:Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {p0, v0, v3, v1}, Lcom/nd/commplatform/d/c/v;->a(Lcom/nd/commplatform/d/c/fr;ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nd/commplatform/d/c/v;->m:Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/fr;->g()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/nd/commplatform/d/c/v;->a(I)V

    move-object v0, v1

    :goto_1
    iget-object v1, p0, Lcom/nd/commplatform/d/c/v;->m:Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {p0, v1, v2, v0}, Lcom/nd/commplatform/d/c/v;->a(Lcom/nd/commplatform/d/c/fr;ILjava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/v;->m:Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/v;->a(Lcom/nd/commplatform/d/c/fr;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    invoke-direct {p0}, Lcom/nd/commplatform/d/c/v;->c()V

    move-object v0, v1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private c()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/nd/commplatform/d/c/bs;->p:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/nd/commplatform/d/c/bs;->d:Ljava/lang/String;

    return-void
.end method

.method private d()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/nd/commplatform/d/c/qa;->a()Lcom/nd/commplatform/d/c/qa;

    move-result-object v0

    iget v1, p0, Lcom/nd/commplatform/d/c/v;->l:I

    iget-object v2, p0, Lcom/nd/commplatform/d/c/v;->n:Lcom/nd/commplatform/d/c/qe;

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/qa;->a(ILcom/nd/commplatform/d/c/qe;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/v;->k:Ljava/util/HashMap;

    iget v1, p0, Lcom/nd/commplatform/d/c/v;->l:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private e()I
    .locals 7

    new-instance v3, Lcom/nd/commplatform/d/c/pz;

    invoke-direct {v3}, Lcom/nd/commplatform/d/c/pz;-><init>()V

    invoke-static {}, Lcom/nd/commplatform/d/c/qa;->a()Lcom/nd/commplatform/d/c/qa;

    move-result-object v0

    invoke-static {}, Lcom/nd/commplatform/d/c/ng;->a()Lcom/nd/commplatform/d/c/ng;

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/v;->h()S

    move-result v1

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/v;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nd/commplatform/d/c/ng;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/v;->f()[B

    move-result-object v2

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/nd/commplatform/d/c/v;->n:Lcom/nd/commplatform/d/c/qe;

    iget-object v6, p0, Lcom/nd/commplatform/d/c/v;->i:Landroid/content/Context;

    invoke-virtual/range {v0 .. v6}, Lcom/nd/commplatform/d/c/qa;->a(Ljava/lang/String;[BLcom/nd/commplatform/d/c/pz;Ljava/util/HashMap;Lcom/nd/commplatform/d/c/qe;Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/nd/commplatform/d/c/v;->l:I

    iget-object v0, p0, Lcom/nd/commplatform/d/c/v;->k:Ljava/util/HashMap;

    iget v1, p0, Lcom/nd/commplatform/d/c/v;->l:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/nd/commplatform/d/c/v;->l:I

    return v0
.end method

.method private f()[B
    .locals 4

    new-instance v0, Lcom/nd/commplatform/d/c/fq;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/v;->a()B

    move-result v1

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/v;->h()S

    move-result v2

    iget-object v3, p0, Lcom/nd/commplatform/d/c/v;->i:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v3}, Lcom/nd/commplatform/d/c/fq;-><init>(BSLandroid/content/Context;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v1}, Lcom/nd/commplatform/d/c/v;->a(Ljava/util/HashMap;)V

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/fq;->a(Ljava/util/HashMap;)[B

    move-result-object v0

    return-object v0
.end method

.method private g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/v;->f:Ljava/lang/String;

    return-object v0
.end method

.method private h()S
    .locals 1

    iget-short v0, p0, Lcom/nd/commplatform/d/c/v;->g:S

    return v0
.end method


# virtual methods
.method protected a()B
    .locals 1

    iget-byte v0, p0, Lcom/nd/commplatform/d/c/v;->h:B

    return v0
.end method

.method protected final a(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<TT;>;)I"
        }
    .end annotation

    iput-object p1, p0, Lcom/nd/commplatform/d/c/v;->i:Landroid/content/Context;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/v;->j:Lcom/nd/commplatform/NdCallbackListener;

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/v;->b()V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/v;->e()I

    move-result v0

    return v0
.end method

.method protected a(Lcom/nd/commplatform/d/c/fr;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nd/commplatform/d/c/fr;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(I)V
    .locals 0

    return-void
.end method

.method protected final a(Lcom/nd/commplatform/d/c/fr;ILjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nd/commplatform/d/c/fr;",
            "ITT;)V"
        }
    .end annotation

    const-string v0, ""

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/nd/commplatform/d/c/fr;->c()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "Result"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/nd/commplatform/d/c/v;->j:Lcom/nd/commplatform/NdCallbackListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nd/commplatform/d/c/v;->j:Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {v1}, Lcom/nd/commplatform/NdCallbackListener;->isDestroy()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/nd/commplatform/d/c/v;->j:Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/NdCallbackListener;->setResult(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/nd/commplatform/d/c/nn;->a(I)I

    move-result v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/v;->j:Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {v1, v0, p3}, Lcom/nd/commplatform/NdCallbackListener;->callback(ILjava/lang/Object;)V

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    invoke-static {}, Lcom/nd/commplatform/NdMiscCallbackListener;->a()V

    :cond_1
    return-void
.end method

.method protected a(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
