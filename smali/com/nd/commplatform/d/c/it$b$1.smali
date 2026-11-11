.class final Lcom/nd/commplatform/d/c/it$b$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/it$b;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;

.field final synthetic b:Lcom/nd/commplatform/d/c/it$b;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/it$b;Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/it$b$1;->b:Lcom/nd/commplatform/d/c/it$b;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/it$b$1;->a:Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/d/c/it$b$1;->b:Lcom/nd/commplatform/d/c/it$b;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/it$b;->a:Lcom/nd/commplatform/d/c/it;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/it$b$1;->a:Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;

    invoke-virtual {v2}, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;->getAccountType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/it$b$1;->a:Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;

    invoke-virtual {v2}, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/nd/commplatform/d/c/it;->a(Lcom/nd/commplatform/d/c/it;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
