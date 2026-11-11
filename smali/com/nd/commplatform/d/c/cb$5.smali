.class final Lcom/nd/commplatform/d/c/cb$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/cb;->b(Lcom/nd/commplatform/d/c/eq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/eq;

.field final synthetic b:Z


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/eq;Z)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/cb$5;->a:Lcom/nd/commplatform/d/c/eq;

    iput-boolean p2, p0, Lcom/nd/commplatform/d/c/cb$5;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finishLoginProcess(I)V
    .locals 2
    .param p1, "code"    # I

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/cb$5;->a:Lcom/nd/commplatform/d/c/eq;

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/eq;->b(Z)V

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/nd/commplatform/d/c/cb$5;->a:Lcom/nd/commplatform/d/c/eq;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/eq;->b()V

    :cond_1
    iget-boolean v1, p0, Lcom/nd/commplatform/d/c/cb$5;->b:Z

    if-eq v1, v0, :cond_2

    invoke-static {v0}, Lcom/nd/commplatform/d/c/cb;->b(Z)V

    :cond_2
    return-void
.end method
