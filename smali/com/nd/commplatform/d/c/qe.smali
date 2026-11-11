.class public Lcom/nd/commplatform/d/c/qe;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nd/commplatform/d/c/qe$a;,
        Lcom/nd/commplatform/d/c/qe$b;,
        Lcom/nd/commplatform/d/c/qe$c;,
        Lcom/nd/commplatform/d/c/qe$d;,
        Lcom/nd/commplatform/d/c/qe$e;,
        Lcom/nd/commplatform/d/c/qe$f;,
        Lcom/nd/commplatform/d/c/qe$g;,
        Lcom/nd/commplatform/d/c/qe$h;
    }
.end annotation


# static fields
.field protected static final a:I = 0x0

.field protected static final b:I = 0x1

.field protected static final c:I = 0x2

.field protected static final d:I = 0x3

.field protected static final e:I = 0x4

.field protected static final f:I = -0x1

.field protected static final g:I = -0x2

.field protected static final h:I = 0x5


# instance fields
.field public i:Lcom/nd/commplatform/d/c/qe$f;

.field public j:Lcom/nd/commplatform/d/c/qe$h;

.field public k:Lcom/nd/commplatform/d/c/qe$g;

.field private l:Lcom/nd/commplatform/d/c/qe$a;

.field private m:Lcom/nd/commplatform/d/c/qe$b;

.field private n:Lcom/nd/commplatform/d/c/qe$d;

.field private o:Lcom/nd/commplatform/d/c/qe$e;

.field private p:Lcom/nd/commplatform/d/c/qe$c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/nd/commplatform/d/c/qe$a;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/qe;->l:Lcom/nd/commplatform/d/c/qe$a;

    return-void
.end method

.method public a(Lcom/nd/commplatform/d/c/qe$b;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/qe;->m:Lcom/nd/commplatform/d/c/qe$b;

    return-void
.end method

.method public a(Lcom/nd/commplatform/d/c/qe$c;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/qe;->p:Lcom/nd/commplatform/d/c/qe$c;

    return-void
.end method

.method public a(Lcom/nd/commplatform/d/c/qe$d;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/qe;->n:Lcom/nd/commplatform/d/c/qe$d;

    return-void
.end method

.method public a(Lcom/nd/commplatform/d/c/qe$e;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/qe;->o:Lcom/nd/commplatform/d/c/qe$e;

    return-void
.end method

.method public a(Lcom/nd/commplatform/d/c/qe$f;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/qe;->i:Lcom/nd/commplatform/d/c/qe$f;

    return-void
.end method

.method public a(Lcom/nd/commplatform/d/c/qe$g;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/qe;->k:Lcom/nd/commplatform/d/c/qe$g;

    return-void
.end method

.method public a(Lcom/nd/commplatform/d/c/qe$h;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/qe;->j:Lcom/nd/commplatform/d/c/qe$h;

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/qe;->l:Lcom/nd/commplatform/d/c/qe$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/qe;->l:Lcom/nd/commplatform/d/c/qe$a;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2}, Lcom/nd/commplatform/d/c/qe$a;->a(II)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/qe;->m:Lcom/nd/commplatform/d/c/qe$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/qe;->m:Lcom/nd/commplatform/d/c/qe$b;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2}, Lcom/nd/commplatform/d/c/qe$b;->a(II)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/nd/commplatform/d/c/qe;->i:Lcom/nd/commplatform/d/c/qe$f;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nd/commplatform/d/c/qa;->a()Lcom/nd/commplatform/d/c/qa;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/qa;->e(I)Ljava/net/HttpURLConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/qe;->i:Lcom/nd/commplatform/d/c/qe$f;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2}, Lcom/nd/commplatform/d/c/qe$f;->a(II)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/nd/commplatform/d/c/qe;->n:Lcom/nd/commplatform/d/c/qe$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/qe;->n:Lcom/nd/commplatform/d/c/qe$d;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2}, Lcom/nd/commplatform/d/c/qe$d;->a(II)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/nd/commplatform/d/c/qe;->o:Lcom/nd/commplatform/d/c/qe$e;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/qe;->o:Lcom/nd/commplatform/d/c/qe$e;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Exception;

    invoke-interface {v1, v2, v3, v0}, Lcom/nd/commplatform/d/c/qe$e;->a(IILjava/lang/Exception;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/nd/commplatform/d/c/qe;->p:Lcom/nd/commplatform/d/c/qe$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/qe;->p:Lcom/nd/commplatform/d/c/qe$c;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/nd/commplatform/d/c/qe$c;->a(I)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/nd/commplatform/d/c/qe;->j:Lcom/nd/commplatform/d/c/qe$h;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nd/commplatform/d/c/qa;->a()Lcom/nd/commplatform/d/c/qa;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/qa;->e(I)Ljava/net/HttpURLConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, [Ljava/lang/Long;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/qe;->j:Lcom/nd/commplatform/d/c/qe$h;

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x0

    aget-object v2, v4, v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lcom/nd/commplatform/d/c/qe$h;->a(IJJ)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/nd/commplatform/d/c/qe;->k:Lcom/nd/commplatform/d/c/qe$g;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/qe;->k:Lcom/nd/commplatform/d/c/qe$g;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2, v0}, Lcom/nd/commplatform/d/c/qe$g;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
