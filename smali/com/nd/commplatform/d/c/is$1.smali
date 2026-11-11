.class final Lcom/nd/commplatform/d/c/is$1;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/is;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
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
.field final synthetic a:Lcom/nd/commplatform/d/c/is;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/is;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/is$1;->a:Lcom/nd/commplatform/d/c/is;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/Object;)V
    .locals 5
    .param p1, "responseCode"    # I
    .param p2, "t"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/is$1;->a:Lcom/nd/commplatform/d/c/is;

    invoke-virtual {v0, v4}, Lcom/nd/commplatform/d/c/is;->b(Z)V

    if-nez p1, :cond_0

    new-instance v0, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;

    invoke-direct {v0}, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;-><init>()V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/is$1;->a:Lcom/nd/commplatform/d/c/is;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/is;->a(Lcom/nd/commplatform/d/c/is;)Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;->setAccountType(I)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/is$1;->a:Lcom/nd/commplatform/d/c/is;

    iget-object v1, v1, Lcom/nd/commplatform/d/c/is;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;->setAccountName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/is$1;->a:Lcom/nd/commplatform/d/c/is;

    invoke-static {v1}, Lcom/nd/commplatform/d/c/is;->b(Lcom/nd/commplatform/d/c/is;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nd/commplatform/d/c/is$1;->a:Lcom/nd/commplatform/d/c/is;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/is;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->dv:I

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/nd/commplatform/d/c/is$1;->a:Lcom/nd/commplatform/d/c/is;

    invoke-static {v3}, Lcom/nd/commplatform/d/c/is;->a(Lcom/nd/commplatform/d/c/is;)Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/nd/commplatform/d/c/is$1;->a:Lcom/nd/commplatform/d/c/is;

    iget-object v4, v4, Lcom/nd/commplatform/d/c/is;->a:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nd/commplatform/d/c/a;->m()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/is$1;->a:Lcom/nd/commplatform/d/c/is;

    invoke-virtual {v2}, Lcom/nd/commplatform/d/c/is;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget v0, Lcom/nd/commplatform/d/c/jo$h;->kD:I

    new-instance v2, Lcom/nd/commplatform/d/c/is$1$1;

    invoke-direct {v2, p0}, Lcom/nd/commplatform/d/c/is$1$1;-><init>(Lcom/nd/commplatform/d/c/is$1;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/nd/commplatform/d/c/is$1$2;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/is$1$2;-><init>(Lcom/nd/commplatform/d/c/is$1;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/is$1;->a:Lcom/nd/commplatform/d/c/is;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/is;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/nd/commplatform/d/c/nt;->a(Lcom/nd/commplatform/NdCallbackListener;Landroid/content/Context;I)V

    goto :goto_0
.end method
