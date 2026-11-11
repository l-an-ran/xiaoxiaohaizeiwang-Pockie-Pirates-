.class final Lcom/nd/commplatform/d/c/jd$3;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/jd;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/NdCallbackListener",
        "<",
        "Lcom/nd/commplatform/d/c/fu;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/jd;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/jd;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/jd$3;->a:Lcom/nd/commplatform/d/c/jd;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/nd/commplatform/d/c/fu;)V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/jd$3;->a:Lcom/nd/commplatform/d/c/jd;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/jd;->b(Lcom/nd/commplatform/d/c/jd;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/jd$3;->a:Lcom/nd/commplatform/d/c/jd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/jd;->b(Z)V

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p2}, Lcom/nd/commplatform/d/c/fu;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/nd/commplatform/d/c/fu;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/jd$3;->a:Lcom/nd/commplatform/d/c/jd;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/jd;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Lcom/nd/commplatform/d/c/fu;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p2}, Lcom/nd/commplatform/d/c/fu;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/jc;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/jd$3;->a:Lcom/nd/commplatform/d/c/jd;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/jd;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/nd/commplatform/d/c/nt;->a(Lcom/nd/commplatform/NdCallbackListener;Landroid/content/Context;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p2, Lcom/nd/commplatform/d/c/fu;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/jd$3;->a(ILcom/nd/commplatform/d/c/fu;)V

    return-void
.end method
