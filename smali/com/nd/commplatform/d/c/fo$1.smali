.class final Lcom/nd/commplatform/d/c/fo$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/fo;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/fo;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/fo;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/fo$1;->a:Lcom/nd/commplatform/d/c/fo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fo$1;->a:Lcom/nd/commplatform/d/c/fo;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/fo;->a(Lcom/nd/commplatform/d/c/fo;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/fo$1;->a:Lcom/nd/commplatform/d/c/fo;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/fo;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->cM:I

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;I)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fo$1;->a:Lcom/nd/commplatform/d/c/fo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/fo;->b(Z)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fo$1;->a:Lcom/nd/commplatform/d/c/fo;

    new-instance v1, Lcom/nd/commplatform/d/c/fo$1$1;

    invoke-direct {v1, p0, p1}, Lcom/nd/commplatform/d/c/fo$1$1;-><init>(Lcom/nd/commplatform/d/c/fo$1;Landroid/view/View;)V

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/fo;->a(Lcom/nd/commplatform/d/c/fo;Lcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/fo$1;->a:Lcom/nd/commplatform/d/c/fo;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fo$1;->a:Lcom/nd/commplatform/d/c/fo;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/fo;->d(Lcom/nd/commplatform/d/c/fo;)Lcom/nd/commplatform/NdCallbackListener;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/nd/commplatform/d/c/fo;->a(ILcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/fo$1;->a:Lcom/nd/commplatform/d/c/fo;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/fo;->b(Lcom/nd/commplatform/d/c/fo;)Lcom/nd/commplatform/entry/ThirdPlatformUserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/ThirdPlatformUserInfo;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/fo$1;->a:Lcom/nd/commplatform/d/c/fo;

    invoke-static {v2}, Lcom/nd/commplatform/d/c/fo;->c(Lcom/nd/commplatform/d/c/fo;)Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v4, p0, Lcom/nd/commplatform/d/c/fo$1;->a:Lcom/nd/commplatform/d/c/fo;

    invoke-virtual {v4}, Lcom/nd/commplatform/d/c/fo;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/nd/commplatform/d/c/fo$1;->a:Lcom/nd/commplatform/d/c/fo;

    invoke-static {v5}, Lcom/nd/commplatform/d/c/fo;->d(Lcom/nd/commplatform/d/c/fo;)Lcom/nd/commplatform/NdCallbackListener;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/a;->a(Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    goto :goto_0
.end method
