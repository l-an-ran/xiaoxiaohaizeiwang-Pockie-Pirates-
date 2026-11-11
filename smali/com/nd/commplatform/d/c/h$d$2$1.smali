.class final Lcom/nd/commplatform/d/c/h$d$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/h$d$2;->callback(ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/h$d$2;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/h$d$2;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/h$d$2$1;->a:Lcom/nd/commplatform/d/c/h$d$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finishLoginProcess(I)V
    .locals 2
    .param p1, "code"    # I

    .prologue
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/h$d$2$1;->a:Lcom/nd/commplatform/d/c/h$d$2;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/h$d$2;->a:Lcom/nd/commplatform/d/c/h$d;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/h$d;->a:Lcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;

    invoke-static {v0}, Lcom/nd/commplatform/NdMiscCallbackListener;->a(Lcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;)V

    invoke-static {v1, p1}, Lcom/nd/commplatform/d/c/ol;->a(II)V

    if-nez p1, :cond_1

    invoke-static {}, Lcom/nd/commplatform/d/c/cb;->e()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/h$d$2$1;->a:Lcom/nd/commplatform/d/c/h$d$2;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/h$d$2;->a:Lcom/nd/commplatform/d/c/h$d;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/h$d;->h:Lcom/nd/commplatform/d/c/h;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/h;->a(Lcom/nd/commplatform/d/c/h;)Lcom/nd/commplatform/d/c/h$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/h$d$2$1;->a:Lcom/nd/commplatform/d/c/h$d$2;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/h$d$2;->a:Lcom/nd/commplatform/d/c/h$d;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/h$d;->h:Lcom/nd/commplatform/d/c/h;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/h;->a(Lcom/nd/commplatform/d/c/h;)Lcom/nd/commplatform/d/c/h$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/h$a;->a(Z)V

    goto :goto_0
.end method
