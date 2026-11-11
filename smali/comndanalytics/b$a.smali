.class Lcomndanalytics/b$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcomndanalytics/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final d:I = 0x4

.field public static final e:I = 0x5

.field public static final f:I = 0x6

.field public static final g:I = 0x7

.field public static final h:I = 0x8

.field public static final i:I = 0x9


# instance fields
.field final synthetic j:Lcomndanalytics/b;


# direct methods
.method public constructor <init>(Lcomndanalytics/b;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcomndanalytics/b$a;->j:Lcomndanalytics/b;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcomndanalytics/b$a;->j:Lcomndanalytics/b;

    invoke-static {v0}, Lcomndanalytics/b;->a(Lcomndanalytics/b;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, [Ljava/lang/Object;

    iget-object v0, p0, Lcomndanalytics/b$a;->j:Lcomndanalytics/b;

    const/4 v1, 0x0

    aget-object v1, v5, v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v2, v5, v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v3, v5, v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/4 v6, 0x3

    aget-object v5, v5, v6

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcomndanalytics/b;->a(Lcomndanalytics/b;Ljava/lang/String;Ljava/lang/String;JI)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcomndanalytics/b$a;->j:Lcomndanalytics/b;

    invoke-static {v0}, Lcomndanalytics/b;->b(Lcomndanalytics/b;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcomndanalytics/b$a;->j:Lcomndanalytics/b;

    invoke-static {v1}, Lcomndanalytics/b;->c(Lcomndanalytics/b;)Lcomndanalytics/i;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-virtual {v2, v0, v1}, Lcomndanalytics/i;->a(Landroid/content/Context;Ljava/util/List;)I

    move-result v0

    iget-object v1, p0, Lcomndanalytics/b$a;->j:Lcomndanalytics/b;

    invoke-static {v1}, Lcomndanalytics/b;->d(Lcomndanalytics/b;)Lcomndanalytics/aq;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcomndanalytics/b$a;->j:Lcomndanalytics/b;

    invoke-static {v1}, Lcomndanalytics/b;->d(Lcomndanalytics/b;)Lcomndanalytics/aq;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcomndanalytics/aq;->a(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcomndanalytics/b$a;->j:Lcomndanalytics/b;

    invoke-static {v0}, Lcomndanalytics/b;->e(Lcomndanalytics/b;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcomndanalytics/b$a;->j:Lcomndanalytics/b;

    invoke-static {v0}, Lcomndanalytics/b;->f(Lcomndanalytics/b;)V

    goto :goto_0

    :pswitch_5
    iget-object v1, p0, Lcomndanalytics/b$a;->j:Lcomndanalytics/b;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcomndanalytics/r;

    invoke-static {v1, v0}, Lcomndanalytics/b;->a(Lcomndanalytics/b;Lcomndanalytics/r;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcomndanalytics/b$a;->j:Lcomndanalytics/b;

    invoke-static {v0}, Lcomndanalytics/b;->b(Lcomndanalytics/b;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcomndanalytics/b$a;->j:Lcomndanalytics/b;

    invoke-static {v1}, Lcomndanalytics/b;->c(Lcomndanalytics/b;)Lcomndanalytics/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcomndanalytics/i;->a(Landroid/content/Context;)V

    :cond_1
    iget-object v0, p0, Lcomndanalytics/b$a;->j:Lcomndanalytics/b;

    invoke-static {v0}, Lcomndanalytics/b;->g(Lcomndanalytics/b;)V

    iget-object v0, p0, Lcomndanalytics/b$a;->j:Lcomndanalytics/b;

    invoke-static {v0}, Lcomndanalytics/b;->h(Lcomndanalytics/b;)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcomndanalytics/b$a;->j:Lcomndanalytics/b;

    invoke-static {v0}, Lcomndanalytics/b;->b(Lcomndanalytics/b;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcomndanalytics/b$a;->j:Lcomndanalytics/b;

    invoke-static {v1}, Lcomndanalytics/b;->c(Lcomndanalytics/b;)Lcomndanalytics/i;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-virtual {v2, v0, v1}, Lcomndanalytics/i;->c(Landroid/content/Context;Ljava/util/List;)I

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p0, Lcomndanalytics/b$a;->j:Lcomndanalytics/b;

    invoke-static {v0}, Lcomndanalytics/b;->b(Lcomndanalytics/b;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcomndanalytics/b$a;->j:Lcomndanalytics/b;

    invoke-static {v1}, Lcomndanalytics/b;->c(Lcomndanalytics/b;)Lcomndanalytics/i;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-virtual {v2, v0, v1}, Lcomndanalytics/i;->b(Landroid/content/Context;Ljava/util/List;)I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
