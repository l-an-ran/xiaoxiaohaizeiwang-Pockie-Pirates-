.class Lcom/nd/commplatform/d/c/a$2;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/a;->e(Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/NdCallbackListener",
        "<",
        "Lcom/nd/commplatform/d/c/fv;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/a;

.field private final synthetic b:Lcom/nd/commplatform/NdCallbackListener;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/a;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/a$2;->a:Lcom/nd/commplatform/d/c/a;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/a$2;->b:Lcom/nd/commplatform/NdCallbackListener;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/nd/commplatform/d/c/fv;)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/a$2;->b:Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {p2}, Lcom/nd/commplatform/d/c/fv;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/nd/commplatform/NdCallbackListener;->callback(ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/a$2;->b:Lcom/nd/commplatform/NdCallbackListener;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/nd/commplatform/NdCallbackListener;->callback(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/nd/commplatform/d/c/fv;

    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/a$2;->a(ILcom/nd/commplatform/d/c/fv;)V

    return-void
.end method
