.class final Lcom/nd/commplatform/d/c/pd$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nd/commplatform/d/c/qe$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/pd;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/pd;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/pd;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/pd$2;->a:Lcom/nd/commplatform/d/c/pd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 3

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pd$2;->a:Lcom/nd/commplatform/d/c/pd;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/pd;->a(Lcom/nd/commplatform/d/c/pd;)I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pd$2;->a:Lcom/nd/commplatform/d/c/pd;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/pd;->d(Lcom/nd/commplatform/d/c/pd;)Lcom/nd/commplatform/NdCallbackListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pd$2;->a:Lcom/nd/commplatform/d/c/pd;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/pd;->d(Lcom/nd/commplatform/d/c/pd;)Lcom/nd/commplatform/NdCallbackListener;

    move-result-object v0

    const/4 v1, -0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/NdCallbackListener;->callback(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
