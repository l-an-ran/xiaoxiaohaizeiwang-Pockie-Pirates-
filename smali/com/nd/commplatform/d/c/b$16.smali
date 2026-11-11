.class final Lcom/nd/commplatform/d/c/b$16;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/b;->a(ILandroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Z

.field final synthetic c:Lcom/nd/commplatform/d/c/b;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/b;Landroid/content/Context;Z)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/b$16;->c:Lcom/nd/commplatform/d/c/b;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/b$16;->a:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/nd/commplatform/d/c/b$16;->b:Z

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/Object;)V
    .locals 3
    .param p1, "responseCode"    # I
    .param p2, "t"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/nd/commplatform/d/c/ol;->b(I)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/b$16;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/nr;->d(Landroid/content/Context;)V

    const/16 v0, -0x1e

    invoke-static {v0}, Lcom/nd/commplatform/NdMiscCallbackListener;->b(I)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, -0xc

    invoke-static {v1, v0}, Lcom/nd/commplatform/d/c/ol;->a(II)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/b$16;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/nr;->c(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/b$16;->a:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/nd/commplatform/d/c/b$16;->b:Z

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/nd/commplatform/d/c/cb;->a(Landroid/content/Context;ZLjava/lang/String;)V

    goto :goto_0
.end method
