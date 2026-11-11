.class final Lcom/nd/commplatform/d/c/og$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nd/commplatform/d/c/cc$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/og;->a(ZZLjava/lang/String;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Lcom/nd/commplatform/NdCallbackListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/nd/commplatform/NdCallbackListener;

.field final synthetic c:Z


# direct methods
.method constructor <init>(ILcom/nd/commplatform/NdCallbackListener;Z)V
    .locals 0

    iput p1, p0, Lcom/nd/commplatform/d/c/og$2;->a:I

    iput-object p2, p0, Lcom/nd/commplatform/d/c/og$2;->b:Lcom/nd/commplatform/NdCallbackListener;

    iput-boolean p3, p0, Lcom/nd/commplatform/d/c/og$2;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/nd/commplatform/d/c/qa;->a()Lcom/nd/commplatform/d/c/qa;

    move-result-object v0

    iget v1, p0, Lcom/nd/commplatform/d/c/og$2;->a:I

    new-instance v2, Lcom/nd/commplatform/d/c/qe;

    invoke-direct {v2}, Lcom/nd/commplatform/d/c/qe;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/qa;->a(ILcom/nd/commplatform/d/c/qe;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/og$2;->b:Lcom/nd/commplatform/NdCallbackListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nd/commplatform/d/c/og$2;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/og$2;->b:Lcom/nd/commplatform/NdCallbackListener;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/nd/commplatform/NdCallbackListener;->callback(ILjava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/og$2;->b:Lcom/nd/commplatform/NdCallbackListener;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/nd/commplatform/NdCallbackListener;->callback(ILjava/lang/Object;)V

    goto :goto_0
.end method
