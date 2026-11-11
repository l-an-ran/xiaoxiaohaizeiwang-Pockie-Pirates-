.class final Lcom/nd/commplatform/d/c/og$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/og$1;->a(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/nd/commplatform/d/c/og$1;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/og$1;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/og$1$1;->b:Lcom/nd/commplatform/d/c/og$1;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/og$1$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/og$1$1;->b:Lcom/nd/commplatform/d/c/og$1;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/og$1;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/og$1$1;->b:Lcom/nd/commplatform/d/c/og$1;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/og$1;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/og$1$1;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/og$1$1;->b:Lcom/nd/commplatform/d/c/og$1;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/og$1;->c:Lcom/nd/commplatform/NdCallbackListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/og$1$1;->b:Lcom/nd/commplatform/d/c/og$1;

    iget-boolean v0, v0, Lcom/nd/commplatform/d/c/og$1;->f:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/og$1$1;->b:Lcom/nd/commplatform/d/c/og$1;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/og$1;->c:Lcom/nd/commplatform/NdCallbackListener;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/nd/commplatform/NdCallbackListener;->callback(ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/nd/commplatform/d/c/og$1$1;->b:Lcom/nd/commplatform/d/c/og$1;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/og$1;->c:Lcom/nd/commplatform/NdCallbackListener;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/nd/commplatform/NdCallbackListener;->callback(ILjava/lang/Object;)V

    goto :goto_0
.end method
