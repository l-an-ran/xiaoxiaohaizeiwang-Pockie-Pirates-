.class final Lcom/nd/commplatform/d/c/dl$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/d/c/dl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final f:I = 0xeb


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/dl;

.field private b:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private c:Lcom/nd/commplatform/d/c/dk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nd/commplatform/d/c/dk",
            "<TT;>;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/Thread;

.field private e:Lcom/nd/commplatform/d/c/dl$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nd/commplatform/d/c/dl$d",
            "<TT;>;"
        }
    .end annotation
.end field

.field private g:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/nd/commplatform/d/c/dl;Lcom/nd/commplatform/d/c/dl$d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nd/commplatform/d/c/dl$d",
            "<TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nd/commplatform/d/c/dl$b;->a:Lcom/nd/commplatform/d/c/dl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/nd/commplatform/d/c/dm;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/dm;-><init>(Lcom/nd/commplatform/d/c/dl$b;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dl$b;->g:Landroid/os/Handler;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/dl$b;->e:Lcom/nd/commplatform/d/c/dl$d;

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/dl$b;)Lcom/nd/commplatform/d/c/dl$d;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dl$b;->e:Lcom/nd/commplatform/d/c/dl$d;

    return-object v0
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/dl$b;)[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dl$b;->b:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lcom/nd/commplatform/d/c/dl$b;)Lcom/nd/commplatform/d/c/dk;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dl$b;->c:Lcom/nd/commplatform/d/c/dk;

    return-object v0
.end method

.method static synthetic d(Lcom/nd/commplatform/d/c/dl$b;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dl$b;->g:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dl$b;->d:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dl$b;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dl$b;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    iput-object v1, p0, Lcom/nd/commplatform/d/c/dl$b;->d:Ljava/lang/Thread;

    iput-object v1, p0, Lcom/nd/commplatform/d/c/dl$b;->b:[Ljava/lang/Object;

    iput-object v1, p0, Lcom/nd/commplatform/d/c/dl$b;->c:Lcom/nd/commplatform/d/c/dk;

    return-void
.end method

.method public a([Ljava/lang/Object;Lcom/nd/commplatform/d/c/dk;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;",
            "Lcom/nd/commplatform/d/c/dk",
            "<TT;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/dl$b;->a()V

    iput-object p1, p0, Lcom/nd/commplatform/d/c/dl$b;->b:[Ljava/lang/Object;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/dl$b;->c:Lcom/nd/commplatform/d/c/dk;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/nd/commplatform/d/c/dl$b$1;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/dl$b$1;-><init>(Lcom/nd/commplatform/d/c/dl$b;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dl$b;->d:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dl$b;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
