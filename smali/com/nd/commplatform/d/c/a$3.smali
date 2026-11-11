.class Lcom/nd/commplatform/d/c/a$3;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/a;->a(Landroid/content/Context;ILcom/nd/commplatform/NdCallbackListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/a;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:I

.field private final synthetic d:Lcom/nd/commplatform/NdCallbackListener;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/a;Landroid/content/Context;ILcom/nd/commplatform/NdCallbackListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/a$3;->a:Lcom/nd/commplatform/d/c/a;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/a$3;->b:Landroid/content/Context;

    iput p3, p0, Lcom/nd/commplatform/d/c/a$3;->c:I

    iput-object p4, p0, Lcom/nd/commplatform/d/c/a$3;->d:Lcom/nd/commplatform/NdCallbackListener;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/Object;)V
    .locals 4
    .param p1, "responseCode"    # I
    .param p2, "t"    # Ljava/lang/Object;

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Lcom/nd/commplatform/d/c/jk;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/jk;-><init>()V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/a$3;->b:Landroid/content/Context;

    iget v2, p0, Lcom/nd/commplatform/d/c/a$3;->c:I

    iget-object v3, p0, Lcom/nd/commplatform/d/c/a$3;->d:Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nd/commplatform/d/c/jk;->a(Landroid/content/Context;ILcom/nd/commplatform/NdCallbackListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/a$3;->d:Lcom/nd/commplatform/NdCallbackListener;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/nd/commplatform/NdCallbackListener;->callback(ILjava/lang/Object;)V

    goto :goto_0
.end method
