.class final Lcom/nd/commplatform/d/c/cb$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/cb;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nd/commplatform/d/c/cb$2;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finishLoginProcess(I)V
    .locals 2
    .param p1, "code"    # I

    .prologue
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-boolean v1, p0, Lcom/nd/commplatform/d/c/cb$2;->a:Z

    if-eq v1, v0, :cond_0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/cb;->b(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
