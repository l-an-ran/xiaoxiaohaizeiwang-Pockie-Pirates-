.class final Lcom/nd/commplatform/d/c/ia$4;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/ia;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/ia;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/ia;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ia$4;->a:Lcom/nd/commplatform/d/c/ia;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/Object;)V
    .locals 2
    .param p1, "responseCode"    # I
    .param p2, "t"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ia$4;->a:Lcom/nd/commplatform/d/c/ia;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/ia;->b(Z)V

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ia$4;->a:Lcom/nd/commplatform/d/c/ia;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/ia;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/nd/commplatform/d/c/nt;->a(Lcom/nd/commplatform/NdCallbackListener;Landroid/content/Context;I)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ia$4;->a:Lcom/nd/commplatform/d/c/ia;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ia;->c(Lcom/nd/commplatform/d/c/ia;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
