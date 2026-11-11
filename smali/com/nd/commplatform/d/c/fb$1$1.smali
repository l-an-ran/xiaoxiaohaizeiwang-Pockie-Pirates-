.class final Lcom/nd/commplatform/d/c/fb$1$1;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/fb$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/fb$1;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/fb$1;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/fb$1$1;->a:Lcom/nd/commplatform/d/c/fb$1;

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

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fb$1$1;->a:Lcom/nd/commplatform/d/c/fb$1;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/fb$1;->a:Lcom/nd/commplatform/d/c/fb;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/fb;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/nd/commplatform/d/c/nt;->a(Lcom/nd/commplatform/NdCallbackListener;Landroid/content/Context;I)V

    goto :goto_0
.end method
