.class final Lcom/nd/commplatform/d/c/fp$2;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/fp;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/NdCallbackListener",
        "<",
        "Lcom/nd/commplatform/entry/ResPageInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/fp;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/fp;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/fp$2;->a:Lcom/nd/commplatform/d/c/fp;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/nd/commplatform/entry/ResPageInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp$2;->a:Lcom/nd/commplatform/d/c/fp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/fp;->b(Z)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fp$2;->a:Lcom/nd/commplatform/d/c/fp;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/fp;->e(Lcom/nd/commplatform/d/c/fp;)Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/ResPageInfo;->getAppInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/ResPageInfo;->getAppUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p2, Lcom/nd/commplatform/entry/ResPageInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/fp$2;->a(ILcom/nd/commplatform/entry/ResPageInfo;)V

    return-void
.end method
