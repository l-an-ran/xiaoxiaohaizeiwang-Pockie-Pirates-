.class final Lcom/nd/commplatform/d/c/b$18;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/b;->a(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Z

.field final synthetic c:Lcom/nd/commplatform/d/c/b;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/b;Landroid/content/Context;Z)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/b$18;->c:Lcom/nd/commplatform/d/c/b;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/b$18;->a:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/nd/commplatform/d/c/b$18;->b:Z

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

    new-instance v0, Lcom/nd/commplatform/d/c/b$18$1;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/b$18$1;-><init>(Lcom/nd/commplatform/d/c/b$18;)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/b$18;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/nd/commplatform/d/c/a;->b(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/nd/commplatform/NdMiscCallbackListener;->b(I)V

    goto :goto_0
.end method
