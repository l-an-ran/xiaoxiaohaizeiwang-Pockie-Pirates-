.class final Lcom/nd/commplatform/d/c/is$2;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/is;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/NdCallbackListener",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/is;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/is;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/is$2;->a:Lcom/nd/commplatform/d/c/is;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Integer;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/is$2;->a:Lcom/nd/commplatform/d/c/is;

    invoke-virtual {v0, v5}, Lcom/nd/commplatform/d/c/is;->b(Z)V

    if-nez p1, :cond_2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/is$2;->a:Lcom/nd/commplatform/d/c/is;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/is$2;->a:Lcom/nd/commplatform/d/c/is;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/is;->a(Lcom/nd/commplatform/d/c/is;)Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/is;->a(Lcom/nd/commplatform/d/c/is;Lcom/nd/commplatform/entry/NdThirdPartyPlatform;)Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;

    invoke-direct {v0}, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;-><init>()V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/is$2;->a:Lcom/nd/commplatform/d/c/is;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/is;->a(Lcom/nd/commplatform/d/c/is;)Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;->setAccountType(I)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/is$2;->a:Lcom/nd/commplatform/d/c/is;

    iget-object v1, v1, Lcom/nd/commplatform/d/c/is;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;->setAccountName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/is$2;->a:Lcom/nd/commplatform/d/c/is;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/is;->b(Lcom/nd/commplatform/d/c/is;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/is$2;->a:Lcom/nd/commplatform/d/c/is;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/is;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->dv:I

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/nd/commplatform/d/c/is$2;->a:Lcom/nd/commplatform/d/c/is;

    invoke-static {v3}, Lcom/nd/commplatform/d/c/is;->a(Lcom/nd/commplatform/d/c/is;)Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/nd/commplatform/d/c/is$2;->a:Lcom/nd/commplatform/d/c/is;

    iget-object v3, v3, Lcom/nd/commplatform/d/c/is;->a:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x2

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nd/commplatform/d/c/a;->m()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/is$2;->a:Lcom/nd/commplatform/d/c/is;

    invoke-virtual {v2}, Lcom/nd/commplatform/d/c/is;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget v0, Lcom/nd/commplatform/d/c/jo$h;->kD:I

    new-instance v2, Lcom/nd/commplatform/d/c/is$2$1;

    invoke-direct {v2, p0}, Lcom/nd/commplatform/d/c/is$2$1;-><init>(Lcom/nd/commplatform/d/c/is$2;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/nd/commplatform/d/c/is$2$2;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/is$2$2;-><init>(Lcom/nd/commplatform/d/c/is$2;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/nd/commplatform/d/c/is$2;->a:Lcom/nd/commplatform/d/c/is;

    iget-object v1, v1, Lcom/nd/commplatform/d/c/is;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;->setAccountName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/is$2;->a:Lcom/nd/commplatform/d/c/is;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/is;->a(Lcom/nd/commplatform/d/c/is;)Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;->setAccountType(I)V

    invoke-virtual {v0, v4}, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;->setValidated(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/is$2;->a:Lcom/nd/commplatform/d/c/is;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/is;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->dy:I

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/nd/commplatform/d/c/is$2;->a:Lcom/nd/commplatform/d/c/is;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/is;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/nd/commplatform/d/c/nt;->a(Lcom/nd/commplatform/NdCallbackListener;Landroid/content/Context;I)V

    goto :goto_1
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/is$2;->a(ILjava/lang/Integer;)V

    return-void
.end method
