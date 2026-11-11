.class Lcom/nd/commplatform/d/c/h$c;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/d/c/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/NdCallbackListener",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/h;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/nd/commplatform/d/c/h;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/h$c;->a:Lcom/nd/commplatform/d/c/h;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    iput-object p2, p0, Lcom/nd/commplatform/d/c/h$c;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/Object;)V
    .locals 2
    .param p1, "responseCode"    # I
    .param p2, "t"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/d/c/h$c;->a:Lcom/nd/commplatform/d/c/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/h;->b(Z)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/h$c;->a:Lcom/nd/commplatform/d/c/h;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/h;->a(Lcom/nd/commplatform/d/c/h;)Lcom/nd/commplatform/d/c/h$a;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/h$c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/h$a;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/h$c;->a:Lcom/nd/commplatform/d/c/h;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/h;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/nd/commplatform/d/c/nt;->a(Lcom/nd/commplatform/NdCallbackListener;Landroid/content/Context;I)V

    goto :goto_0
.end method
