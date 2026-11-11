.class public Lcom/nd/commplatform/d/c/en;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nd/commplatform/d/c/en$a;,
        Lcom/nd/commplatform/d/c/en$b;
    }
.end annotation


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3


# instance fields
.field private d:Lcom/nd/commplatform/d/c/eh;

.field private e:Lcom/nd/commplatform/d/c/eo;

.field private f:Lcom/nd/commplatform/NdCallbackListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/entry/BaseFriendInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/d/c/en$b;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:J

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/nd/commplatform/d/c/en$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/nd/commplatform/d/c/eh;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/eh;-><init>(Lcom/nd/commplatform/d/c/en;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/en;->d:Lcom/nd/commplatform/d/c/eh;

    new-instance v0, Lcom/nd/commplatform/d/c/ep;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/ep;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/en;->e:Lcom/nd/commplatform/d/c/eo;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/en;->g:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nd/commplatform/d/c/en;->h:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/nd/commplatform/d/c/en;->i:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/en;->j:Ljava/util/List;

    new-instance v0, Lcom/nd/commplatform/d/c/eh;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/eh;-><init>(Lcom/nd/commplatform/d/c/en;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/en;->d:Lcom/nd/commplatform/d/c/eh;

    return-void
.end method

.method private static a(Lcom/nd/commplatform/entry/BaseFriendInfo;)Lcom/nd/commplatform/d/c/el;
    .locals 2

    new-instance v0, Lcom/nd/commplatform/d/c/el;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/el;-><init>()V

    invoke-virtual {p0}, Lcom/nd/commplatform/entry/BaseFriendInfo;->getUin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/el;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nd/commplatform/entry/BaseFriendInfo;->getComment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/el;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nd/commplatform/entry/BaseFriendInfo;->getUpdateTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/el;->c(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/en;Ljava/util/List;)Lcom/nd/commplatform/d/c/em;
    .locals 1

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/en;->a(Ljava/util/List;)Lcom/nd/commplatform/d/c/em;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/List;)Lcom/nd/commplatform/d/c/em;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/entry/BaseFriendInfo;",
            ">;)",
            "Lcom/nd/commplatform/d/c/em;"
        }
    .end annotation

    new-instance v1, Lcom/nd/commplatform/d/c/em;

    invoke-direct {v1}, Lcom/nd/commplatform/d/c/em;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/nd/commplatform/d/c/ei;->a()Lcom/nd/commplatform/d/c/ei;

    move-result-object v0

    iget-object v2, p0, Lcom/nd/commplatform/d/c/en;->j:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/nd/commplatform/d/c/ei;->b(Ljava/util/List;)V

    return-object v1

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/entry/BaseFriendInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/BaseFriendInfo;->getUin()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/nd/commplatform/d/c/en;->j:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/nd/commplatform/d/c/en;->a(Lcom/nd/commplatform/entry/BaseFriendInfo;)Lcom/nd/commplatform/d/c/el;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/em;->a(Lcom/nd/commplatform/d/c/el;)V

    goto :goto_0
.end method

.method private a(Lcom/nd/commplatform/d/c/em;Landroid/content/Context;)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/en;->d:Lcom/nd/commplatform/d/c/eh;

    invoke-virtual {v1, p1, v0}, Lcom/nd/commplatform/d/c/eh;->a(Lcom/nd/commplatform/d/c/em;Ljava/util/List;)Z

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-direct {p0, v0, p2}, Lcom/nd/commplatform/d/c/en;->a(Ljava/util/List;Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v1}, Lcom/nd/commplatform/d/c/en;->a(Z)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/en;Lcom/nd/commplatform/d/c/em;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nd/commplatform/d/c/en;->a(Lcom/nd/commplatform/d/c/em;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/en;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/en;->a(Z)V

    return-void
.end method

.method private a(Ljava/util/List;Landroid/content/Context;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const/4 v6, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    div-int/lit8 v0, v3, 0xa

    rem-int/lit8 v1, v3, 0xa

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    move v1, v0

    :goto_0
    move v5, v6

    :goto_1
    if-lt v5, v1, :cond_0

    invoke-direct {p0, v6}, Lcom/nd/commplatform/d/c/en;->b(I)Z

    return-void

    :cond_0
    mul-int/lit8 v4, v5, 0xa

    add-int/lit8 v0, v4, 0xa

    if-le v0, v3, :cond_2

    move v2, v3

    :goto_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    if-lt v4, v2, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/en;->g:Ljava/util/List;

    new-instance v2, Lcom/nd/commplatform/d/c/en$b;

    invoke-direct {v2, p0, v5, v7, p2}, Lcom/nd/commplatform/d/c/en$b;-><init>(Lcom/nd/commplatform/d/c/en;ILjava/util/List;Landroid/content/Context;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    :cond_1
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_3

    :cond_2
    move v2, v0

    goto :goto_2

    :cond_3
    move v1, v0

    goto :goto_0
.end method

.method private a(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/nd/commplatform/d/c/en;->h:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/en;->d()V

    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/en;->a(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/en;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nd/commplatform/d/c/en;->h:Z

    return v0
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/en;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/en;->b(I)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/en;)Lcom/nd/commplatform/d/c/eh;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/en;->d:Lcom/nd/commplatform/d/c/eh;

    return-object v0
.end method

.method private b(I)Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/en;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/en;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/en$b;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/en$b;->b()V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/en;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c()V
    .locals 5

    iget-object v0, p0, Lcom/nd/commplatform/d/c/en;->d:Lcom/nd/commplatform/d/c/eh;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/eh;->c()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    :cond_0
    invoke-static {}, Lcom/nd/commplatform/d/c/ei;->a()Lcom/nd/commplatform/d/c/ei;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/en;->j:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/ei;->b(Ljava/util/List;)V

    return-void

    :cond_1
    iget-object v4, p0, Lcom/nd/commplatform/d/c/en;->j:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/eg;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/eg;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/nd/commplatform/d/c/en;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/en;->c()V

    return-void
.end method

.method private d()V
    .locals 3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/en;->d:Lcom/nd/commplatform/d/c/eh;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/eh;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/en;->e:Lcom/nd/commplatform/d/c/eo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/en;->e:Lcom/nd/commplatform/d/c/eo;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/en;->d:Lcom/nd/commplatform/d/c/eh;

    invoke-virtual {v2}, Lcom/nd/commplatform/d/c/eh;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/nd/commplatform/d/c/eo;->a(Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/nd/commplatform/d/c/en;->i:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nd/commplatform/d/c/en;->h:Z

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/en;->f:Lcom/nd/commplatform/NdCallbackListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/en;->f:Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {v0}, Lcom/nd/commplatform/NdCallbackListener;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/en;->f:Lcom/nd/commplatform/NdCallbackListener;

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/en;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/en;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/en;->d:Lcom/nd/commplatform/d/c/eh;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/eh;->b()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/nd/commplatform/d/c/en;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/en$b;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/en$b;->a()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public a(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/en;->b()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/en;->k:Lcom/nd/commplatform/d/c/en$a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/en;->k:Lcom/nd/commplatform/d/c/en$a;

    invoke-interface {v1, v0}, Lcom/nd/commplatform/d/c/en$a;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/en;->a()V

    new-instance v0, Lcom/nd/commplatform/d/c/kb;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/kb;-><init>()V

    new-instance v1, Lcom/nd/commplatform/d/c/en$1;

    invoke-direct {v1, p0, p1}, Lcom/nd/commplatform/d/c/en$1;-><init>(Lcom/nd/commplatform/d/c/en;Landroid/content/Context;)V

    invoke-virtual {v0, p1, v1}, Lcom/nd/commplatform/d/c/kb;->a(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)I

    return-void
.end method

.method public a(Lcom/nd/commplatform/d/c/en$a;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/en;->k:Lcom/nd/commplatform/d/c/en$a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/en;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {}, Lcom/nd/commplatform/d/c/ei;->a()Lcom/nd/commplatform/d/c/ei;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/ei;->b(Ljava/util/List;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nd/commplatform/d/c/en;->h:Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nd/commplatform/d/c/en;->i:J

    iget-object v0, p0, Lcom/nd/commplatform/d/c/en;->d:Lcom/nd/commplatform/d/c/eh;

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/d/c/eh;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/en;->e:Lcom/nd/commplatform/d/c/eo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/en;->e:Lcom/nd/commplatform/d/c/eo;

    invoke-interface {v0, p1}, Lcom/nd/commplatform/d/c/eo;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/en;->d:Lcom/nd/commplatform/d/c/eh;

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/eh;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/en;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/nd/commplatform/d/c/ei;->a()Lcom/nd/commplatform/d/c/ei;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/en;->j:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/ei;->b(Ljava/util/List;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/en;->d:Lcom/nd/commplatform/d/c/eh;

    invoke-virtual {v0, p1, p2}, Lcom/nd/commplatform/d/c/eh;->a(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/en;->d:Lcom/nd/commplatform/d/c/eh;

    invoke-virtual {v0, p1, p2}, Lcom/nd/commplatform/d/c/eh;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/d/c/ek;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nd/commplatform/d/c/en;->d:Lcom/nd/commplatform/d/c/eh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/en;->d:Lcom/nd/commplatform/d/c/eh;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/eh;->d()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/en;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/nd/commplatform/d/c/ei;->a()Lcom/nd/commplatform/d/c/ei;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/en;->j:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/ei;->b(Ljava/util/List;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/en;->d:Lcom/nd/commplatform/d/c/eh;

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/d/c/eh;->b(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/en;->d:Lcom/nd/commplatform/d/c/eh;

    invoke-virtual {v0, p1, p2}, Lcom/nd/commplatform/d/c/eh;->b(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
