.class final Lcom/nd/commplatform/d/c/g$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/g;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/g$a;

.field final synthetic b:Lcom/nd/commplatform/d/c/g;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/g;Lcom/nd/commplatform/d/c/g$a;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/g$3;->b:Lcom/nd/commplatform/d/c/g;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/g$3;->a:Lcom/nd/commplatform/d/c/g$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x1

    new-instance v0, Lcom/nd/commplatform/d/c/g$3$1;

    invoke-direct {v0, p0, p1}, Lcom/nd/commplatform/d/c/g$3$1;-><init>(Lcom/nd/commplatform/d/c/g$3;Landroid/content/DialogInterface;)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/g$3;->b:Lcom/nd/commplatform/d/c/g;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0, v3}, Lcom/nd/commplatform/d/c/g;->a(ILcom/nd/commplatform/NdCallbackListener;Z)Lcom/nd/commplatform/NdCallbackListener;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/g$3;->b:Lcom/nd/commplatform/d/c/g;

    invoke-virtual {v1, v3}, Lcom/nd/commplatform/d/c/g;->b(Z)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    const-string v2, ""

    iget-object v3, p0, Lcom/nd/commplatform/d/c/g$3;->b:Lcom/nd/commplatform/d/c/g;

    invoke-virtual {v3}, Lcom/nd/commplatform/d/c/g;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/nd/commplatform/d/c/a;->k(Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method
