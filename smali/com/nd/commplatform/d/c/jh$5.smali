.class final Lcom/nd/commplatform/d/c/jh$5;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/jh;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/nd/commplatform/d/c/jh;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/jh;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/jh$5;->b:Lcom/nd/commplatform/d/c/jh;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/jh$5;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/Object;)V
    .locals 2
    .param p1, "responseCode"    # I
    .param p2, "t"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/d/c/jh$5;->b:Lcom/nd/commplatform/d/c/jh;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/jh;->i(Lcom/nd/commplatform/d/c/jh;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/jh$5;->b:Lcom/nd/commplatform/d/c/jh;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/jh;->b(Z)V

    sparse-switch p1, :sswitch_data_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/jh$5;->b:Lcom/nd/commplatform/d/c/jh;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/jh;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/nd/commplatform/d/c/nt;->a(Lcom/nd/commplatform/NdCallbackListener;Landroid/content/Context;I)V

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/jh$5;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ji;->a(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/jh$5;->b:Lcom/nd/commplatform/d/c/jh;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/jh;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->lI:I

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x61ac -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method
