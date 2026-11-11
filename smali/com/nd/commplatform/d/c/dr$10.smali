.class final Lcom/nd/commplatform/d/c/dr$10;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/dr;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/dr;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/dr;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/dr$10;->a:Lcom/nd/commplatform/d/c/dr;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/Object;)V
    .locals 1
    .param p1, "responseCode"    # I
    .param p2, "t"    # Ljava/lang/Object;

    .prologue
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/cb;->a(Lcom/nd/commplatform/d/c/bx;)V

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/dr$10;->a:Lcom/nd/commplatform/d/c/dr;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/dr;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/nd/commplatform/d/c/nt;->a(Lcom/nd/commplatform/NdCallbackListener;Landroid/content/Context;I)V

    return-void
.end method
