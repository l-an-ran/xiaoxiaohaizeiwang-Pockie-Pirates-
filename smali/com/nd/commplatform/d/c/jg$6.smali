.class final Lcom/nd/commplatform/d/c/jg$6;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/jg;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/NdCallbackListener",
        "<",
        "Lcom/nd/commplatform/d/c/fs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/nd/commplatform/d/c/jg;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/jg;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/jg$6;->b:Lcom/nd/commplatform/d/c/jg;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/jg$6;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/nd/commplatform/d/c/fs;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/jg$6;->b:Lcom/nd/commplatform/d/c/jg;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/jg;->i(Lcom/nd/commplatform/d/c/jg;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/jg$6;->b:Lcom/nd/commplatform/d/c/jg;

    invoke-virtual {v0, v7}, Lcom/nd/commplatform/d/c/jg;->b(Z)V

    packed-switch p1, :pswitch_data_0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/nd/commplatform/d/c/fs;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/nd/commplatform/d/c/fs;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/jg$6;->b:Lcom/nd/commplatform/d/c/jg;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/jg$6;->b:Lcom/nd/commplatform/d/c/jg;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/jg;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->kL:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/nd/commplatform/d/c/fs;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v7, v1, v2}, Lcom/nd/commplatform/d/c/jg;->a(Lcom/nd/commplatform/d/c/jg;ZLjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/jg$6;->b:Lcom/nd/commplatform/d/c/jg;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/jg;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/jb;->a(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/nd/commplatform/d/c/fs;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/jg$6;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/jd;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/nd/commplatform/d/c/fs;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/nd/commplatform/d/c/fs;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/nd/commplatform/d/c/fs;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/jg$6;->b:Lcom/nd/commplatform/d/c/jg;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/jg$6;->b:Lcom/nd/commplatform/d/c/jg;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/jg;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->kW:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/nd/commplatform/d/c/fs;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v6, v1, v2}, Lcom/nd/commplatform/d/c/jg;->a(Lcom/nd/commplatform/d/c/jg;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/jg$6;->b:Lcom/nd/commplatform/d/c/jg;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/jg$6;->b:Lcom/nd/commplatform/d/c/jg;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/jg;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->kW:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/jg$6;->b:Lcom/nd/commplatform/d/c/jg;

    invoke-virtual {v2}, Lcom/nd/commplatform/d/c/jg;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/nd/commplatform/d/c/jo$h;->lc:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nd/commplatform/d/c/a;->m()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/nd/commplatform/d/c/jg$6;->a:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v6, v1, v2}, Lcom/nd/commplatform/d/c/jg;->a(Lcom/nd/commplatform/d/c/jg;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nd/commplatform/d/c/jg$6;->b:Lcom/nd/commplatform/d/c/jg;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/jg;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/nd/commplatform/d/c/nt;->a(Lcom/nd/commplatform/NdCallbackListener;Landroid/content/Context;I)V

    goto/16 :goto_0

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
    check-cast p2, Lcom/nd/commplatform/d/c/fs;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/jg$6;->a(ILcom/nd/commplatform/d/c/fs;)V

    return-void
.end method
