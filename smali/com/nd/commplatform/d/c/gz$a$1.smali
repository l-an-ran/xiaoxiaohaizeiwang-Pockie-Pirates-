.class final Lcom/nd/commplatform/d/c/gz$a$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/gz$a;->e(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/nd/commplatform/d/c/gz$a;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/gz$a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/gz$a$1;->b:Lcom/nd/commplatform/d/c/gz$a;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/gz$a$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gz$a$1;->b:Lcom/nd/commplatform/d/c/gz$a;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/gz$a;->c(Lcom/nd/commplatform/d/c/gz$a;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    :try_start_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/gz$a$1;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/gz$a;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gz$a$1;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/gz$a;->c(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lcom/nd/commplatform/d/c/gz$a$1;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/nd/commplatform/d/c/gz$a;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/gz$a$1;->b:Lcom/nd/commplatform/d/c/gz$a;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/gz$a;->c(Lcom/nd/commplatform/d/c/gz$a;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catch_0
    move-exception v0

    iput v3, v1, Landroid/os/Message;->what:I

    goto :goto_0

    :catch_1
    move-exception v0

    iput v3, v1, Landroid/os/Message;->what:I

    goto :goto_0
.end method
