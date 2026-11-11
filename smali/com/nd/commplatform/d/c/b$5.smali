.class final Lcom/nd/commplatform/d/c/b$5;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/b;->b(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/oz;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/nd/commplatform/NdCallbackListener;

.field final synthetic d:Lcom/nd/commplatform/d/c/b;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/b;Lcom/nd/commplatform/d/c/oz;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/b$5;->d:Lcom/nd/commplatform/d/c/b;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/b$5;->a:Lcom/nd/commplatform/d/c/oz;

    iput-object p3, p0, Lcom/nd/commplatform/d/c/b$5;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/nd/commplatform/d/c/b$5;->c:Lcom/nd/commplatform/NdCallbackListener;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/Object;)V
    .locals 2
    .param p1, "responseCode"    # I
    .param p2, "t"    # Ljava/lang/Object;

    .prologue
    sparse-switch p1, :sswitch_data_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/b$5;->c:Lcom/nd/commplatform/NdCallbackListener;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Lcom/nd/commplatform/NdCallbackListener;->callback(ILjava/lang/Object;)V

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/b$5;->a:Lcom/nd/commplatform/d/c/oz;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/oz;->a()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/b$5;->a:Lcom/nd/commplatform/d/c/oz;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/b$5;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/oz;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/b$5;->c:Lcom/nd/commplatform/NdCallbackListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/nd/commplatform/NdCallbackListener;->callback(ILjava/lang/Object;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/b$5;->a:Lcom/nd/commplatform/d/c/oz;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/b$5;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/oz;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/b$5;->c:Lcom/nd/commplatform/NdCallbackListener;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Lcom/nd/commplatform/NdCallbackListener;->callback(ILjava/lang/Object;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4a39 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method
