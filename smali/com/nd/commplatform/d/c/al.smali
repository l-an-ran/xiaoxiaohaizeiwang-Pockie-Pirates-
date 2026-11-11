.class public Lcom/nd/commplatform/d/c/al;
.super Lcom/nd/commplatform/d/c/u;


# instance fields
.field private d:Ljava/util/HashMap;
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

.field private e:I

.field private f:Lcom/nd/commplatform/d/c/fr;

.field private g:Lcom/nd/commplatform/d/c/qe;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/u;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/al;->d:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nd/commplatform/d/c/al;->l:Z

    new-instance v0, Lcom/nd/commplatform/d/c/am;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/am;-><init>(Lcom/nd/commplatform/d/c/al;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/al;->m:Landroid/os/Handler;

    return-void
.end method

.method private a()V
    .locals 2

    new-instance v0, Lcom/nd/commplatform/d/c/qe;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/qe;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/al;->g:Lcom/nd/commplatform/d/c/qe;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/al;->g:Lcom/nd/commplatform/d/c/qe;

    new-instance v1, Lcom/nd/commplatform/d/c/al$1;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/al$1;-><init>(Lcom/nd/commplatform/d/c/al;)V

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/qe;->a(Lcom/nd/commplatform/d/c/qe$d;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/al;->g:Lcom/nd/commplatform/d/c/qe;

    new-instance v1, Lcom/nd/commplatform/d/c/al$2;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/al$2;-><init>(Lcom/nd/commplatform/d/c/al;)V

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/qe;->a(Lcom/nd/commplatform/d/c/qe$a;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/al;->g:Lcom/nd/commplatform/d/c/qe;

    new-instance v1, Lcom/nd/commplatform/d/c/al$3;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/al$3;-><init>(Lcom/nd/commplatform/d/c/al;)V

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/qe;->a(Lcom/nd/commplatform/d/c/qe$e;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/al;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/al;->d()V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/al;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/al;->b(I)V

    return-void
.end method

.method private b()I
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/al;->f:Lcom/nd/commplatform/d/c/fr;

    const-string v2, "AD9A8C8A938BBC909B9A"

    invoke-static {v2}, Lcom/nd/commplatform/d/c/pa;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nd/commplatform/d/c/fr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    if-eqz v0, :cond_0

    :goto_1
    return v0

    :catch_0
    move-exception v0

    const/16 v0, 0x7d1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/al;->f:Lcom/nd/commplatform/d/c/fr;

    const-string v2, "AA9691"

    invoke-static {v2}, Lcom/nd/commplatform/d/c/pa;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nd/commplatform/d/c/fr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nd/commplatform/d/c/bs;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/al;->f:Lcom/nd/commplatform/d/c/fr;

    const-string v2, "AA8C9A8DB19E929A"

    invoke-static {v2}, Lcom/nd/commplatform/d/c/pa;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nd/commplatform/d/c/fr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nd/commplatform/d/c/bs;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/al;->f:Lcom/nd/commplatform/d/c/fr;

    const-string v2, "B1969C94B19E929A"

    invoke-static {v2}, Lcom/nd/commplatform/d/c/pa;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nd/commplatform/d/c/fr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nd/commplatform/d/c/bs;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/al;->f:Lcom/nd/commplatform/d/c/fr;

    const-string v2, "AF9E86AA8C9A8DB19E929A"

    invoke-static {v2}, Lcom/nd/commplatform/d/c/pa;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nd/commplatform/d/c/fr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nd/commplatform/d/c/bs;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/al;->f:Lcom/nd/commplatform/d/c/fr;

    const-string v2, "AF9790919AB18A92"

    invoke-static {v2}, Lcom/nd/commplatform/d/c/pa;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nd/commplatform/d/c/fr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nd/commplatform/d/c/bs;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/al;->f:Lcom/nd/commplatform/d/c/fr;

    const-string v2, "B39E8C8BAA8F93909E9BBC90918B9E9C8BAB96929A"

    invoke-static {v2}, Lcom/nd/commplatform/d/c/pa;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nd/commplatform/d/c/fr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nd/commplatform/d/c/bs;->m:Ljava/lang/String;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/al;->f:Lcom/nd/commplatform/d/c/fr;

    const-string v2, "BE8A8B90B390989691AC969891"

    invoke-static {v2}, Lcom/nd/commplatform/d/c/pa;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nd/commplatform/d/c/fr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nd/commplatform/d/c/bs;->n:Ljava/lang/String;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/al;->f:Lcom/nd/commplatform/d/c/fr;

    const-string v2, "B29E87AA8C9A8DBC908A918B"

    invoke-static {v2}, Lcom/nd/commplatform/d/c/pa;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nd/commplatform/d/c/fr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/nd/commplatform/d/c/bs;->q:I

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/al;->f:Lcom/nd/commplatform/d/c/fr;

    const-string v2, "AC9A8C8C969091B69B"

    invoke-static {v2}, Lcom/nd/commplatform/d/c/pa;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nd/commplatform/d/c/fr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nd/commplatform/d/c/bs;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/al;->f:Lcom/nd/commplatform/d/c/fr;

    const-string v2, "BC979A9C94AC8A92"

    invoke-static {v2}, Lcom/nd/commplatform/d/c/pa;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nd/commplatform/d/c/fr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nd/commplatform/d/c/bs;->F:Ljava/lang/String;

    sput-boolean v4, Lcom/nd/commplatform/d/c/bs;->G:Z

    sput-boolean v4, Lcom/nd/commplatform/d/c/bs;->p:Z

    iget-object v0, p0, Lcom/nd/commplatform/d/c/al;->f:Lcom/nd/commplatform/d/c/fr;

    const-string v2, "B68CBB9A9D8A98"

    invoke-static {v2}, Lcom/nd/commplatform/d/c/pa;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nd/commplatform/d/c/fr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sput-boolean v4, Lcom/nd/commplatform/d/c/bs;->I:Z

    :cond_2
    iget-object v0, p0, Lcom/nd/commplatform/d/c/al;->a:Landroid/content/Context;

    sget-object v2, Lcom/nd/commplatform/d/c/bs;->g:Ljava/lang/String;

    sget-object v3, Lcom/nd/commplatform/d/c/bs;->n:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/nd/commplatform/d/c/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/al;->c()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/al;->f:Lcom/nd/commplatform/d/c/fr;

    const-string v2, "B68CB088919A8D"

    invoke-static {v2}, Lcom/nd/commplatform/d/c/pa;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nd/commplatform/d/c/fr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v4, p0, Lcom/nd/commplatform/d/c/al;->l:Z

    :cond_3
    sput-boolean v1, Lcom/nd/commplatform/d/c/bs;->N:Z

    iget-object v0, p0, Lcom/nd/commplatform/d/c/al;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/nr;->c(Landroid/content/Context;)V

    move v0, v1

    goto/16 :goto_1

    :cond_4
    move v0, v1

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/al;)I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/d/c/al;->e:I

    return v0
.end method

.method private b(I)V
    .locals 8

    const/4 v1, 0x1

    const/4 v4, -0x3

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/16 v6, 0x7d2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/al;->d:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/pz;

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/al;->f()V

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/pz;->b()[B

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/pz;->b()[B

    move-result-object v3

    array-length v3, v3

    if-nez v3, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/al;->f:Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {p0, v0, v4, v7}, Lcom/nd/commplatform/d/c/al;->a(Lcom/nd/commplatform/d/c/fr;ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    new-instance v3, Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/pz;->b()[B

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/nd/commplatform/d/c/fr;-><init>([B)V

    iput-object v3, p0, Lcom/nd/commplatform/d/c/al;->f:Lcom/nd/commplatform/d/c/fr;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/al;->f:Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/fr;->j()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/al;->c:Ljava/lang/String;

    const-string v1, "Invalid data!"

    iget-object v2, p0, Lcom/nd/commplatform/d/c/al;->a:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/nd/commplatform/d/c/nv;->c(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/al;->f:Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {p0, v0, v4, v7}, Lcom/nd/commplatform/d/c/al;->a(Lcom/nd/commplatform/d/c/fr;ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nd/commplatform/d/c/al;->f:Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/fr;->g()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v3, p0, Lcom/nd/commplatform/d/c/al;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "this error code is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/nd/commplatform/d/c/al;->a:Landroid/content/Context;

    invoke-static {v3, v4, v5}, Lcom/nd/commplatform/d/c/nv;->c(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iget-object v3, p0, Lcom/nd/commplatform/d/c/al;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/nd/commplatform/d/c/nw;->h(Landroid/content/Context;)Z

    :goto_1
    if-eq v0, v6, :cond_3

    const/16 v3, 0x7d3

    if-eq v0, v3, :cond_3

    const/16 v3, 0x7d6

    if-ne v0, v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/nd/commplatform/d/c/al;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/nd/commplatform/d/c/al;->h:Ljava/lang/String;

    if-ne v0, v6, :cond_9

    :goto_2
    invoke-static {v3, v4, v1}, Lcom/nd/commplatform/d/c/e;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    :cond_4
    iget-object v1, p0, Lcom/nd/commplatform/d/c/al;->f:Lcom/nd/commplatform/d/c/fr;

    invoke-virtual {p0, v1, v0, v7}, Lcom/nd/commplatform/d/c/al;->a(Lcom/nd/commplatform/d/c/fr;ILjava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/nd/commplatform/d/c/al;->c:Ljava/lang/String;

    const-string v4, "success request data!"

    iget-object v5, p0, Lcom/nd/commplatform/d/c/al;->a:Landroid/content/Context;

    invoke-static {v3, v4, v5}, Lcom/nd/commplatform/d/c/nv;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/al;->b()I

    move-result v3

    if-eqz v3, :cond_8

    if-eq v3, v6, :cond_5

    const/16 v0, 0x7d3

    if-eq v3, v0, :cond_5

    const/16 v0, 0x7d6

    if-ne v3, v0, :cond_6

    :cond_5
    iget-object v4, p0, Lcom/nd/commplatform/d/c/al;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/nd/commplatform/d/c/al;->h:Ljava/lang/String;

    if-ne v3, v6, :cond_7

    move v0, v1

    :goto_3
    invoke-static {v4, v5, v0}, Lcom/nd/commplatform/d/c/e;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    :cond_6
    iget-object v0, p0, Lcom/nd/commplatform/d/c/al;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/nw;->h(Landroid/content/Context;)Z

    move v0, v3

    goto :goto_1

    :cond_7
    move v0, v2

    goto :goto_3

    :cond_8
    invoke-direct {p0}, Lcom/nd/commplatform/d/c/al;->e()V

    goto :goto_1

    :pswitch_2
    iget-object v3, p0, Lcom/nd/commplatform/d/c/al;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "this error code is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/nd/commplatform/d/c/al;->a:Landroid/content/Context;

    invoke-static {v3, v4, v5}, Lcom/nd/commplatform/d/c/nv;->c(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    sput-boolean v2, Lcom/nd/commplatform/d/c/bs;->p:Z

    sput-object v7, Lcom/nd/commplatform/d/c/bs;->d:Ljava/lang/String;

    goto :goto_1

    :cond_9
    move v1, v2

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic c(Lcom/nd/commplatform/d/c/al;)Lcom/nd/commplatform/d/c/fr;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/al;->f:Lcom/nd/commplatform/d/c/fr;

    return-object v0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/al;->a:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/nd/commplatform/d/c/al;->k:Z

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nw;->b(Landroid/content/Context;Z)Z

    iget-object v0, p0, Lcom/nd/commplatform/d/c/al;->a:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nw;->a(Landroid/content/Context;Z)Z

    iget-object v0, p0, Lcom/nd/commplatform/d/c/al;->a:Landroid/content/Context;

    sget-object v1, Lcom/nd/commplatform/d/c/bs;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nw;->a(Landroid/content/Context;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/nd/commplatform/d/c/al;->a:Landroid/content/Context;

    sget-object v1, Lcom/nd/commplatform/d/c/bs;->n:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nw;->b(Landroid/content/Context;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/nd/commplatform/d/c/al;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/al;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/pa;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nw;->c(Landroid/content/Context;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/nd/commplatform/d/c/al;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/nw;->a(Landroid/content/Context;)Z

    return-void
.end method

.method private d()V
    .locals 4

    new-instance v0, Lcom/nd/commplatform/d/c/al$4;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/al$4;-><init>(Lcom/nd/commplatform/d/c/al;)V

    new-instance v1, Lcom/nd/commplatform/d/c/kq;

    invoke-direct {v1}, Lcom/nd/commplatform/d/c/kq;-><init>()V

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/nd/commplatform/d/c/al;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, v3, v0}, Lcom/nd/commplatform/d/c/kq;->a(ZLandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method static synthetic d(Lcom/nd/commplatform/d/c/al;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/al;->e()V

    return-void
.end method

.method private e()V
    .locals 3

    sget-object v0, Lcom/nd/commplatform/d/c/bs;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/nd/commplatform/d/c/ef;->a()Lcom/nd/commplatform/d/c/ef;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/al;->a:Landroid/content/Context;

    sget-object v2, Lcom/nd/commplatform/d/c/bs;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/ef;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private f()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/nd/commplatform/d/c/qa;->a()Lcom/nd/commplatform/d/c/qa;

    move-result-object v0

    iget v1, p0, Lcom/nd/commplatform/d/c/al;->e:I

    iget-object v2, p0, Lcom/nd/commplatform/d/c/al;->g:Lcom/nd/commplatform/d/c/qe;

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/qa;->a(ILcom/nd/commplatform/d/c/qe;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/al;->d:Ljava/util/HashMap;

    iget v1, p0, Lcom/nd/commplatform/d/c/al;->e:I

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

.method private g()I
    .locals 7

    new-instance v3, Lcom/nd/commplatform/d/c/pz;

    invoke-direct {v3}, Lcom/nd/commplatform/d/c/pz;-><init>()V

    invoke-static {}, Lcom/nd/commplatform/d/c/qa;->a()Lcom/nd/commplatform/d/c/qa;

    move-result-object v0

    invoke-static {}, Lcom/nd/commplatform/d/c/ng;->a()Lcom/nd/commplatform/d/c/ng;

    const/4 v1, 0x2

    sget-object v2, Lcom/nd/commplatform/d/c/bp;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/nd/commplatform/d/c/ng;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/al;->h()[B

    move-result-object v2

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/nd/commplatform/d/c/al;->g:Lcom/nd/commplatform/d/c/qe;

    iget-object v6, p0, Lcom/nd/commplatform/d/c/al;->a:Landroid/content/Context;

    invoke-virtual/range {v0 .. v6}, Lcom/nd/commplatform/d/c/qa;->a(Ljava/lang/String;[BLcom/nd/commplatform/d/c/pz;Ljava/util/HashMap;Lcom/nd/commplatform/d/c/qe;Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/nd/commplatform/d/c/al;->e:I

    iget-object v0, p0, Lcom/nd/commplatform/d/c/al;->d:Ljava/util/HashMap;

    iget v1, p0, Lcom/nd/commplatform/d/c/al;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/nd/commplatform/d/c/al;->e:I

    return v0
.end method

.method private h()[B
    .locals 3

    const/4 v2, 0x2

    new-instance v0, Lcom/nd/commplatform/d/c/fq;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/al;->a:Landroid/content/Context;

    invoke-direct {v0, v2, v2, v1}, Lcom/nd/commplatform/d/c/fq;-><init>(BSLandroid/content/Context;)V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/al;->i()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/fq;->a(Ljava/util/HashMap;)[B

    move-result-object v0

    return-object v0
.end method

.method private i()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "TAG"

    const-string v1, "Set request parameters!"

    iget-object v2, p0, Lcom/nd/commplatform/d/c/al;->a:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/nd/commplatform/d/c/nv;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "AA8C9A8DB19E929A"

    invoke-static {v0}, Lcom/nd/commplatform/d/c/pa;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/nd/commplatform/d/c/al;->h:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/al;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/nw;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/nd/commplatform/d/c/al;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AF9E8C8C88908D9B"

    invoke-static {v0}, Lcom/nd/commplatform/d/c/pa;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/nd/commplatform/d/c/al;->i:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "BE8A8B90B390989691"

    invoke-static {v0}, Lcom/nd/commplatform/d/c/pa;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string v0, "BC979E91919A93B69B"

    invoke-static {v0}, Lcom/nd/commplatform/d/c/pa;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/nd/commplatform/d/c/al;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/nd/commplatform/d/c/pb;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "B68CBB9A9D8A98"

    invoke-static {v0}, Lcom/nd/commplatform/d/c/pa;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-boolean v0, Lcom/nd/commplatform/d/c/bs;->I:Z

    if-eqz v0, :cond_2

    const-string v0, "1"

    :goto_1
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_0
    iget-boolean v0, p0, Lcom/nd/commplatform/d/c/al;->j:Z

    if-eqz v0, :cond_1

    const-string v0, "AF9E8C8C88908D9B"

    invoke-static {v0}, Lcom/nd/commplatform/d/c/pa;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/nd/commplatform/d/c/al;->i:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "BE8A8B90B390989691"

    invoke-static {v0}, Lcom/nd/commplatform/d/c/pa;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v0, "AF9E8C8C88908D9B"

    invoke-static {v0}, Lcom/nd/commplatform/d/c/pa;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/nd/commplatform/d/c/al;->i:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "BE8A8B90B390989691"

    invoke-static {v0}, Lcom/nd/commplatform/d/c/pa;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "0"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string v0, "0"

    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;ZZLandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I
    .locals 2

    iput-object p1, p0, Lcom/nd/commplatform/d/c/al;->h:Ljava/lang/String;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/al;->i:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/nd/commplatform/d/c/al;->j:Z

    iput-boolean p4, p0, Lcom/nd/commplatform/d/c/al;->k:Z

    iput-object p5, p0, Lcom/nd/commplatform/d/c/al;->a:Landroid/content/Context;

    iput-object p6, p0, Lcom/nd/commplatform/d/c/al;->b:Lcom/nd/commplatform/NdCallbackListener;

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/al;->a()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/al;->c:Ljava/lang/String;

    const-string v1, "begin request data!"

    invoke-static {v0, v1, p5}, Lcom/nd/commplatform/d/c/nv;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/al;->g()I

    move-result v0

    return v0
.end method
