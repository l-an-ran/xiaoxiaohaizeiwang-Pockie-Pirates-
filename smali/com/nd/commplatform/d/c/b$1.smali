.class final Lcom/nd/commplatform/d/c/b$1;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/b;->a(Landroid/content/Context;ZLjava/lang/String;Lcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Z

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/nd/commplatform/d/c/b;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/b;Landroid/content/Context;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/b$1;->d:Lcom/nd/commplatform/d/c/b;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/b$1;->a:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/nd/commplatform/d/c/b$1;->b:Z

    iput-object p4, p0, Lcom/nd/commplatform/d/c/b$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/Object;)V
    .locals 3
    .param p1, "responseCode"    # I
    .param p2, "t"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/nd/commplatform/d/c/ol;->a(II)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/b$1;->a:Landroid/content/Context;

    new-instance v1, Lcom/nd/commplatform/d/c/b$1$1;

    invoke-direct {v1, p0, p1}, Lcom/nd/commplatform/d/c/b$1$1;-><init>(Lcom/nd/commplatform/d/c/b$1;I)V

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/jb;->a(Landroid/content/Context;Lcom/nd/commplatform/d/c/jb$a;)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, -0x68

    if-eq p1, v0, :cond_1

    const/16 v0, -0x72

    if-ne p1, v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/b$1;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/a;->a(Landroid/content/Context;Z)V

    invoke-static {}, Lcom/nd/commplatform/d/c/ol;->a()V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->k()V

    const/16 v0, -0xc

    invoke-static {v2, v0}, Lcom/nd/commplatform/d/c/ol;->a(II)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/b$1;->a:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/nd/commplatform/d/c/b$1;->b:Z

    iget-object v2, p0, Lcom/nd/commplatform/d/c/b$1;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/nd/commplatform/d/c/cb;->a(Landroid/content/Context;ZLjava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/nd/commplatform/NdMiscCallbackListener;->b(I)V

    goto :goto_0
.end method
