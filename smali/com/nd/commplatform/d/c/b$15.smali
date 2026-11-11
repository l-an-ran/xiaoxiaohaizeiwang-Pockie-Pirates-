.class final Lcom/nd/commplatform/d/c/b$15;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/b;->a(Landroid/content/Context;ZLcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;)V
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

    iput-object p1, p0, Lcom/nd/commplatform/d/c/b$15;->c:Lcom/nd/commplatform/d/c/b;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/b$15;->a:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/nd/commplatform/d/c/b$15;->b:Z

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

    iget-object v0, p0, Lcom/nd/commplatform/d/c/b$15;->c:Lcom/nd/commplatform/d/c/b;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/b$15;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/nr;->b(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/b$15;->a:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/nd/commplatform/d/c/b$15;->b:Z

    invoke-static {v0, v1, v2, v3}, Lcom/nd/commplatform/d/c/b;->a(Lcom/nd/commplatform/d/c/b;ILandroid/content/Context;Z)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/nd/commplatform/NdMiscCallbackListener;->b(I)V

    goto :goto_0
.end method
