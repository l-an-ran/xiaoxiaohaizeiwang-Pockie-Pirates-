.class public Lcom/nd/commplatform/d/c/np;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nd/commplatform/d/c/np$a;,
        Lcom/nd/commplatform/d/c/np$b;
    }
.end annotation


# static fields
.field private static final h:Ljava/lang/String; = "GetNewMsgAndNewSysMsgCountHelper"


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Lcom/nd/commplatform/NdCallbackListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nd/commplatform/NdCallbackListener",
            "<[I>;"
        }
    .end annotation
.end field

.field protected c:Lcom/nd/commplatform/NdCallbackListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nd/commplatform/NdCallbackListener",
            "<[I>;"
        }
    .end annotation
.end field

.field protected d:Ljava/util/Timer;

.field protected e:Ljava/util/TimerTask;

.field protected f:Landroid/os/Handler;

.field protected g:Lcom/nd/commplatform/d/c/np$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<[I>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/nd/commplatform/d/c/np$a;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/np$a;-><init>(Lcom/nd/commplatform/d/c/np;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/np;->f:Landroid/os/Handler;

    iput-object p1, p0, Lcom/nd/commplatform/d/c/np;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/np;->b:Lcom/nd/commplatform/NdCallbackListener;

    new-instance v0, Lcom/nd/commplatform/d/c/np$1;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/np$1;-><init>(Lcom/nd/commplatform/d/c/np;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/np;->c:Lcom/nd/commplatform/NdCallbackListener;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/np;->e:Ljava/util/TimerTask;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/np;->e:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/np;->d:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v1, p0, Lcom/nd/commplatform/d/c/np;->e:Ljava/util/TimerTask;

    iput-object v1, p0, Lcom/nd/commplatform/d/c/np;->d:Ljava/util/Timer;

    goto :goto_0
.end method

.method public a(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nd/commplatform/d/c/np;->a(II)V

    return-void
.end method

.method public a(II)V
    .locals 6

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/np;->a()V

    new-instance v0, Lcom/nd/commplatform/d/c/np$2;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/np$2;-><init>(Lcom/nd/commplatform/d/c/np;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/np;->e:Ljava/util/TimerTask;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/np;->d:Ljava/util/Timer;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/np;->d:Ljava/util/Timer;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/np;->e:Ljava/util/TimerTask;

    int-to-long v2, p2

    int-to-long v4, p1

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public a(Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<[I>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nd/commplatform/d/c/np;->b:Lcom/nd/commplatform/NdCallbackListener;

    return-void
.end method

.method public a(Lcom/nd/commplatform/d/c/np$b;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/np;->g:Lcom/nd/commplatform/d/c/np$b;

    return-void
.end method
