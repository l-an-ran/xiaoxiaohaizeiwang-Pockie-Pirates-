.class final Lcom/nd/commplatform/d/c/l$3;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/l;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/NdCallbackListener",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/l;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/l;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/l$3;->a:Lcom/nd/commplatform/d/c/l;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/l$3;->a:Lcom/nd/commplatform/d/c/l;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/l;->b(Z)V

    if-nez p1, :cond_0

    invoke-static {p2}, Lcom/nd/commplatform/d/c/l;->a(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/l$3;->a:Lcom/nd/commplatform/d/c/l;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/l;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/l$3;->a:Lcom/nd/commplatform/d/c/l;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/l;->d:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p2, Ljava/lang/String;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/l$3;->a(ILjava/lang/String;)V

    return-void
.end method
