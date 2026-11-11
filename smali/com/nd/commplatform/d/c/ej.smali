.class public abstract Lcom/nd/commplatform/d/c/ej;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Observer;


# static fields
.field public static b:I


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x65

    sput v0, Lcom/nd/commplatform/d/c/ej;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/nd/commplatform/d/c/ej$1;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/ej$1;-><init>(Lcom/nd/commplatform/d/c/ej;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ej;->a:Landroid/os/Handler;

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract a(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/d/c/ek;",
            ">;)V"
        }
    .end annotation
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ej;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ej;->a:Landroid/os/Handler;

    sget v1, Lcom/nd/commplatform/d/c/ej;->b:I

    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ej;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .end local p2    # "data":Ljava/lang/Object;
    :goto_0
    return-void

    .restart local p2    # "data":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/util/List;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lcom/nd/commplatform/d/c/ej;->a(Ljava/util/List;)V

    goto :goto_0
.end method
