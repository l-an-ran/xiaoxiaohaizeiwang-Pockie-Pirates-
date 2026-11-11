.class final Lcom/nd/commplatform/d/c/l$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nd/commplatform/widget/NdFrameInnerContent$OnInvisibleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/l;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/l;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/l;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/l$2;->a:Lcom/nd/commplatform/d/c/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a_(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/l$2;->a:Lcom/nd/commplatform/d/c/l;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/l;->a(Lcom/nd/commplatform/d/c/l;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/l$2;->a:Lcom/nd/commplatform/d/c/l;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/l;->a(Lcom/nd/commplatform/d/c/l;)Landroid/os/Handler;

    move-result-object v0

    const v1, 0x1ddd1a5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/l$2;->a:Lcom/nd/commplatform/d/c/l;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/l;->a(Lcom/nd/commplatform/d/c/l;Landroid/os/Handler;)Landroid/os/Handler;

    :cond_0
    return-void
.end method
