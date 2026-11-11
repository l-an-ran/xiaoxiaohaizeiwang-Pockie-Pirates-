.class Lcom/nd/commplatform/d/c/it$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/d/c/it;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/it;


# direct methods
.method private constructor <init>(Lcom/nd/commplatform/d/c/it;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/it$b;->a:Lcom/nd/commplatform/d/c/it;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nd/commplatform/d/c/it;Lcom/nd/commplatform/d/c/it$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/it$b;-><init>(Lcom/nd/commplatform/d/c/it;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/it$b;->a:Lcom/nd/commplatform/d/c/it;

    invoke-static {v1, v0}, Lcom/nd/commplatform/d/c/it;->a(Lcom/nd/commplatform/d/c/it;Lcom/nd/commplatform/entry/NdThirdPartyPlatform;)Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;->isValidated()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_0
    new-instance v1, Lcom/nd/commplatform/d/c/bx;

    const/16 v2, 0xfa4

    invoke-direct {v1, v2}, Lcom/nd/commplatform/d/c/bx;-><init>(I)V

    const-string v2, "platform"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "binded"

    iget-object v3, p0, Lcom/nd/commplatform/d/c/it$b;->a:Lcom/nd/commplatform/d/c/it;

    invoke-static {v3}, Lcom/nd/commplatform/d/c/it;->a(Lcom/nd/commplatform/d/c/it;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;->getLoginType()I

    move-result v0

    if-ne v0, v7, :cond_2

    const/16 v0, 0x45c

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/16 v0, 0x45e

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/nd/commplatform/d/c/of;->a()Lcom/nd/commplatform/d/c/of;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nd/commplatform/d/c/of;->b()Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;->getAccountType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_4
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/nd/commplatform/d/c/it$b;->a:Lcom/nd/commplatform/d/c/it;

    invoke-virtual {v3}, Lcom/nd/commplatform/d/c/it;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/nd/commplatform/d/c/it$b;->a:Lcom/nd/commplatform/d/c/it;

    invoke-virtual {v3}, Lcom/nd/commplatform/d/c/it;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/nd/commplatform/d/c/jo$h;->dt:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    const-string v0, ""

    aput-object v0, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget v0, Lcom/nd/commplatform/d/c/jo$h;->kD:I

    new-instance v3, Lcom/nd/commplatform/d/c/it$b$1;

    invoke-direct {v3, p0, v1}, Lcom/nd/commplatform/d/c/it$b$1;-><init>(Lcom/nd/commplatform/d/c/it$b;Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget v0, Lcom/nd/commplatform/d/c/jo$h;->bG:I

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
