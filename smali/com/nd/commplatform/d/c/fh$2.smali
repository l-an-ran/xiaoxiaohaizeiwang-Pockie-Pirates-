.class final Lcom/nd/commplatform/d/c/fh$2;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/fh;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/oz;

.field final synthetic b:Lcom/nd/commplatform/d/c/fh;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/fh;Lcom/nd/commplatform/d/c/oz;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/fh$2;->b:Lcom/nd/commplatform/d/c/fh;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/fh$2;->a:Lcom/nd/commplatform/d/c/oz;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/Object;)V
    .locals 2
    .param p1, "responseCode"    # I
    .param p2, "t"    # Ljava/lang/Object;

    .prologue
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fh$2;->a:Lcom/nd/commplatform/d/c/oz;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/oz;->a()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fh$2;->a:Lcom/nd/commplatform/d/c/oz;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fh$2;->b:Lcom/nd/commplatform/d/c/fh;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/fh;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/oz;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
