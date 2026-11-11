.class Lcom/nd/commplatform/d/c/l$f;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/d/c/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# static fields
.field public static final a:I = 0x1ddd1a5


# instance fields
.field final synthetic b:Lcom/nd/commplatform/d/c/l;


# direct methods
.method private constructor <init>(Lcom/nd/commplatform/d/c/l;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/l$f;->b:Lcom/nd/commplatform/d/c/l;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x1ddd1a5

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/l$f;->b:Lcom/nd/commplatform/d/c/l;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/l$f;->b:Lcom/nd/commplatform/d/c/l;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/l;->b(Lcom/nd/commplatform/d/c/l;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/l;->a(Lcom/nd/commplatform/d/c/l;I)V

    goto :goto_0
.end method
