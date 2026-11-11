.class final Lcom/nd/commplatform/d/c/b$13;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/b;->i(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/NdCallbackListener",
        "<",
        "Lcom/nd/commplatform/d/c/ft;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/NdCallbackListener;

.field final synthetic b:Lcom/nd/commplatform/d/c/b;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/b;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/b$13;->b:Lcom/nd/commplatform/d/c/b;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/b$13;->a:Lcom/nd/commplatform/NdCallbackListener;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/nd/commplatform/d/c/ft;)V
    .locals 2

    if-nez p1, :cond_0

    invoke-virtual {p2}, Lcom/nd/commplatform/d/c/ft;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/jb;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/b$13;->a:Lcom/nd/commplatform/NdCallbackListener;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/nd/commplatform/d/c/b$13;->a:Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {p2}, Lcom/nd/commplatform/d/c/ft;->b()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/nd/commplatform/NdCallbackListener;->callback(ILjava/lang/Object;)V

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nd/commplatform/d/c/b$13;->a:Lcom/nd/commplatform/NdCallbackListener;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/nd/commplatform/NdCallbackListener;->callback(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p2, Lcom/nd/commplatform/d/c/ft;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/b$13;->a(ILcom/nd/commplatform/d/c/ft;)V

    return-void
.end method
