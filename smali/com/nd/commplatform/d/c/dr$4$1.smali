.class final Lcom/nd/commplatform/d/c/dr$4$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/dr$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/dr$4;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/dr$4;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/dr$4$1;->a:Lcom/nd/commplatform/d/c/dr$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/dr$4$1;->a:Lcom/nd/commplatform/d/c/dr$4;

    iget-object v1, v1, Lcom/nd/commplatform/d/c/dr$4;->a:Lcom/nd/commplatform/d/c/dr;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/dr;->a(Lcom/nd/commplatform/d/c/dr;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/dr$4$1;->a:Lcom/nd/commplatform/d/c/dr$4;

    iget-object v2, v2, Lcom/nd/commplatform/d/c/dr$4;->a:Lcom/nd/commplatform/d/c/dr;

    invoke-virtual {v2}, Lcom/nd/commplatform/d/c/dr;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/nd/commplatform/d/c/dr$4$1;->a:Lcom/nd/commplatform/d/c/dr$4;

    iget-object v3, v3, Lcom/nd/commplatform/d/c/dr$4;->a:Lcom/nd/commplatform/d/c/dr;

    invoke-static {v3}, Lcom/nd/commplatform/d/c/dr;->b(Lcom/nd/commplatform/d/c/dr;)Lcom/nd/commplatform/NdCallbackListener;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nd/commplatform/d/c/a;->g(Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method
