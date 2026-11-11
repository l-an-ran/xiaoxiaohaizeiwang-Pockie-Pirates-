.class final Lcom/nd/commplatform/d/c/fp$8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/fp;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/fp;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/fp;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/fp$8;->a:Lcom/nd/commplatform/d/c/fp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp$8;->a:Lcom/nd/commplatform/d/c/fp;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/fp;->b(Z)V

    new-instance v0, Lcom/nd/commplatform/d/c/fp$8$1;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/fp$8$1;-><init>(Lcom/nd/commplatform/d/c/fp$8;)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fp$8;->a:Lcom/nd/commplatform/d/c/fp;

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/fp;->a(Lcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/fp$8;->a:Lcom/nd/commplatform/d/c/fp;

    invoke-virtual {v2}, Lcom/nd/commplatform/d/c/fp;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/nd/commplatform/d/c/a;->t(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method
