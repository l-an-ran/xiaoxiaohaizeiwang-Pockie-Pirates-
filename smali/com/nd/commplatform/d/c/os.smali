.class public Lcom/nd/commplatform/d/c/os;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nd/commplatform/d/c/os$a;
    }
.end annotation


# static fields
.field private static final d:I = 0xea60

.field private static final h:Ljava/lang/String; = "sNewAppPref"

.field private static final i:Ljava/lang/String; = "sNewAppItem"

.field private static final j:I = 0x1f40

.field private static final k:I = 0x3


# instance fields
.field private a:Lcom/nd/commplatform/d/c/np;

.field private b:I

.field private c:I

.field private e:Landroid/content/Context;

.field private f:Lcom/nd/commplatform/d/c/os$a;

.field private g:Ljava/lang/String;

.field private l:I

.field private m:Landroid/os/Handler;

.field private n:Lcom/nd/commplatform/NdCallbackListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nd/commplatform/NdCallbackListener",
            "<[I>;"
        }
    .end annotation
.end field

.field private o:Lcom/nd/commplatform/NdCallbackListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdNewAppCount;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/nd/commplatform/NdCallbackListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/nd/commplatform/d/c/os;->b:I

    iput v1, p0, Lcom/nd/commplatform/d/c/os;->c:I

    const-string v0, ""

    iput-object v0, p0, Lcom/nd/commplatform/d/c/os;->g:Ljava/lang/String;

    iput v1, p0, Lcom/nd/commplatform/d/c/os;->l:I

    new-instance v0, Lcom/nd/commplatform/d/c/ot;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/ot;-><init>(Lcom/nd/commplatform/d/c/os;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/os;->m:Landroid/os/Handler;

    new-instance v0, Lcom/nd/commplatform/d/c/ou;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/ou;-><init>(Lcom/nd/commplatform/d/c/os;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/os;->n:Lcom/nd/commplatform/NdCallbackListener;

    new-instance v0, Lcom/nd/commplatform/d/c/ov;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/ov;-><init>(Lcom/nd/commplatform/d/c/os;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/os;->o:Lcom/nd/commplatform/NdCallbackListener;

    new-instance v0, Lcom/nd/commplatform/d/c/ow;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/ow;-><init>(Lcom/nd/commplatform/d/c/os;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/os;->p:Lcom/nd/commplatform/NdCallbackListener;

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/os;I)I
    .locals 0

    iput p1, p0, Lcom/nd/commplatform/d/c/os;->b:I

    return p1
.end method

.method private a(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/os;->g:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-gtz p1, :cond_2

    const/4 p1, 0x0

    :cond_2
    if-lez p1, :cond_0

    iput-object p2, p0, Lcom/nd/commplatform/d/c/os;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/os;->f:Lcom/nd/commplatform/d/c/os$a;

    invoke-interface {v0, p1}, Lcom/nd/commplatform/d/c/os$a;->a(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/os;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/os;->g()V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/os;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nd/commplatform/d/c/os;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/os;I)I
    .locals 0

    iput p1, p0, Lcom/nd/commplatform/d/c/os;->c:I

    return p1
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/os;)Lcom/nd/commplatform/d/c/os$a;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/os;->f:Lcom/nd/commplatform/d/c/os$a;

    return-object v0
.end method

.method static synthetic c(Lcom/nd/commplatform/d/c/os;)I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/d/c/os;->b:I

    return v0
.end method

.method static synthetic d(Lcom/nd/commplatform/d/c/os;)I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/d/c/os;->c:I

    return v0
.end method

.method private d()V
    .locals 3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/os;->e:Landroid/content/Context;

    const-string v1, "sNewAppPref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "sNewAppItem"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/os;->g:Ljava/lang/String;

    return-void
.end method

.method static synthetic e(Lcom/nd/commplatform/d/c/os;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/os;->m:Landroid/os/Handler;

    return-object v0
.end method

.method private e()V
    .locals 3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/os;->e:Landroid/content/Context;

    const-string v1, "sNewAppPref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sNewAppItem"

    iget-object v2, p0, Lcom/nd/commplatform/d/c/os;->g:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private f()V
    .locals 4

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/os;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v0, "2000-01-01 12:00:00"

    :cond_1
    iget-object v2, p0, Lcom/nd/commplatform/d/c/os;->e:Landroid/content/Context;

    iget-object v3, p0, Lcom/nd/commplatform/d/c/os;->o:Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {v1, v2, v0, v3}, Lcom/nd/commplatform/d/c/a;->d(Landroid/content/Context;Ljava/lang/String;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method private g()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/os;->m:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget v0, p0, Lcom/nd/commplatform/d/c/os;->l:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/os;->f()V

    :goto_1
    iget v0, p0, Lcom/nd/commplatform/d/c/os;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nd/commplatform/d/c/os;->l:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/os;->m:Landroid/os/Handler;

    const-wide/16 v1, 0x1f40

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method

.method private h()V
    .locals 3

    new-instance v0, Lcom/nd/commplatform/d/c/np;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/os;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/os;->n:Lcom/nd/commplatform/NdCallbackListener;

    invoke-direct {v0, v1, v2}, Lcom/nd/commplatform/d/c/np;-><init>(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/os;->a:Lcom/nd/commplatform/d/c/np;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/os;->a:Lcom/nd/commplatform/d/c/np;

    const v1, 0xea60

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/np;->a(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/os;->g:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/os;->e()V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/nd/commplatform/d/c/os$a;)V
    .locals 4

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/os;->c()V

    iput-object p1, p0, Lcom/nd/commplatform/d/c/os;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/os;->f:Lcom/nd/commplatform/d/c/os$a;

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/os;->h()V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/os;->d()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/os;->m:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public b()V
    .locals 1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/os;->c()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/os;->o:Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {v0}, Lcom/nd/commplatform/NdCallbackListener;->destroy()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/os;->n:Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {v0}, Lcom/nd/commplatform/NdCallbackListener;->destroy()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/os;->p:Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {v0}, Lcom/nd/commplatform/NdCallbackListener;->destroy()V

    return-void
.end method

.method protected c()V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/os;->a:Lcom/nd/commplatform/d/c/np;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/os;->a:Lcom/nd/commplatform/d/c/np;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/np;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/os;->a:Lcom/nd/commplatform/d/c/np;

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/os;->m:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
