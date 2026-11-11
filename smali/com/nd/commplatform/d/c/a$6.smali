.class Lcom/nd/commplatform/d/c/a$6;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/a;->v(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/a;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:Lcom/nd/commplatform/NdCallbackListener;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/a;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/a$6;->a:Lcom/nd/commplatform/d/c/a;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/a$6;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/nd/commplatform/d/c/a$6;->c:Lcom/nd/commplatform/NdCallbackListener;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/Object;)V
    .locals 3
    .param p1, "responseCode"    # I
    .param p2, "t"    # Ljava/lang/Object;

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Lcom/nd/commplatform/d/c/jm;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/jm;-><init>()V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/a$6;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/a$6;->c:Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/jm;->b(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/a$6;->c:Lcom/nd/commplatform/NdCallbackListener;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/nd/commplatform/NdCallbackListener;->callback(ILjava/lang/Object;)V

    goto :goto_0
.end method
