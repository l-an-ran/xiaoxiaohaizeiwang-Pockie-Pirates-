.class Lcom/nd/commplatform/d/c/ef$b;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/d/c/ef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# static fields
.field private static final b:I = 0x1

.field private static final c:I = 0x1

.field private static final d:I = 0x2

.field private static final e:I = 0x3

.field private static final f:I = 0x4

.field private static final g:I = 0x5

.field private static final h:I = 0x6

.field private static final i:I = 0xea60


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/ef;


# direct methods
.method public constructor <init>(Lcom/nd/commplatform/d/c/ef;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ef$b;->a:Lcom/nd/commplatform/d/c/ef;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    if-ne v1, v0, :cond_2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ef$b;->a:Lcom/nd/commplatform/d/c/ef;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ef;->c(Lcom/nd/commplatform/d/c/ef;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ef$b;->a:Lcom/nd/commplatform/d/c/ef;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/ef;->b()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ef$b;->a:Lcom/nd/commplatform/d/c/ef;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ef;->b(Lcom/nd/commplatform/d/c/ef;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/nd/commplatform/d/c/ef$b;->a:Lcom/nd/commplatform/d/c/ef;

    iget-object v1, v1, Lcom/nd/commplatform/d/c/ef;->c:Lcom/nd/commplatform/d/c/ef$a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ef$b;->a:Lcom/nd/commplatform/d/c/ef;

    iget-object v1, v1, Lcom/nd/commplatform/d/c/ef;->c:Lcom/nd/commplatform/d/c/ef$a;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/ef$a;->b()Lcom/nd/commplatform/d/c/en;

    move-result-object v2

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    aget-object v1, v0, v3

    check-cast v1, Landroid/content/Context;

    aget-object v0, v0, v4

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/nd/commplatform/d/c/en;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    aget-object v1, v0, v3

    check-cast v1, Landroid/content/Context;

    aget-object v0, v0, v4

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/nd/commplatform/d/c/en;->b(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/nd/commplatform/d/c/en;->b(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    aget-object v1, v0, v3

    aget-object v0, v0, v4

    invoke-virtual {v2, v1, v0}, Lcom/nd/commplatform/d/c/en;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
