.class final Lcom/nd/commplatform/d/c/cb$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/cb;->c(Lcom/nd/commplatform/widget/NdFrameInnerContent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/widget/NdFrameInnerContent;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/widget/NdFrameInnerContent;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/cb$4;->a:Lcom/nd/commplatform/widget/NdFrameInnerContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finishLoginProcess(I)V
    .locals 3
    .param p1, "code"    # I

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/cb$4;->a:Lcom/nd/commplatform/widget/NdFrameInnerContent;

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->b(Z)V

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/nd/commplatform/d/c/cb$4;->a:Lcom/nd/commplatform/widget/NdFrameInnerContent;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/cb$4;->a:Lcom/nd/commplatform/widget/NdFrameInnerContent;

    invoke-virtual {v2}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->g(I)V

    invoke-static {v0}, Lcom/nd/commplatform/d/c/cb;->b(Z)V

    invoke-static {p1}, Lcom/nd/commplatform/NdMiscCallbackListener;->a(I)V

    return-void
.end method
