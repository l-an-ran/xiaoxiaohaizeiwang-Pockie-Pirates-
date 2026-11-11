.class final Lcom/nd/commplatform/d/c/ex$1$1;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/ex$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/nd/commplatform/d/c/ex$1;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/ex$1;Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ex$1$1;->c:Lcom/nd/commplatform/d/c/ex$1;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/ex$1$1;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/nd/commplatform/d/c/ex$1$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/Object;)V
    .locals 2
    .param p1, "responseCode"    # I
    .param p2, "t"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ex$1$1;->a:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ex$1$1;->c:Lcom/nd/commplatform/d/c/ex$1;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/ex$1;->a:Lcom/nd/commplatform/d/c/ex;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/ex;->b(Z)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ex$1$1;->c:Lcom/nd/commplatform/d/c/ex$1;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/ex$1;->a:Lcom/nd/commplatform/d/c/ex;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/ex;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->jV:I

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;I)V

    invoke-static {}, Lcom/nd/commplatform/d/c/of;->a()Lcom/nd/commplatform/d/c/of;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/of;->d()Lcom/nd/commplatform/entry/NdUserInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ex$1$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/entry/NdUserInfo;->setEmotion(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/cb;->a(Lcom/nd/commplatform/d/c/bx;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ex$1$1;->c:Lcom/nd/commplatform/d/c/ex$1;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/ex$1;->a:Lcom/nd/commplatform/d/c/ex;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/ex;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/nd/commplatform/d/c/nt;->a(Lcom/nd/commplatform/NdCallbackListener;Landroid/content/Context;I)V

    goto :goto_0
.end method
