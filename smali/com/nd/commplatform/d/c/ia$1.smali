.class final Lcom/nd/commplatform/d/c/ia$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/ia;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/ia;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/ia;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ia$1;->a:Lcom/nd/commplatform/d/c/ia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ia$1;->a:Lcom/nd/commplatform/d/c/ia;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ia;->a(Lcom/nd/commplatform/d/c/ia;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ia$1;->a:Lcom/nd/commplatform/d/c/ia;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/ia;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.permission.CALL_PHONE"

    iget-object v3, p0, Lcom/nd/commplatform/d/c/ia$1;->a:Lcom/nd/commplatform/d/c/ia;

    invoke-virtual {v3}, Lcom/nd/commplatform/d/c/ia;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/ia$1;->a:Lcom/nd/commplatform/d/c/ia;

    invoke-virtual {v2}, Lcom/nd/commplatform/d/c/ia;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->ke:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->bF:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->bE:I

    new-instance v3, Lcom/nd/commplatform/d/c/ia$1$1;

    invoke-direct {v3, p0, v0}, Lcom/nd/commplatform/d/c/ia$1$1;-><init>(Lcom/nd/commplatform/d/c/ia$1;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget v0, Lcom/nd/commplatform/d/c/jo$h;->bG:I

    new-instance v2, Lcom/nd/commplatform/d/c/ia$1$2;

    invoke-direct {v2, p0}, Lcom/nd/commplatform/d/c/ia$1$2;-><init>(Lcom/nd/commplatform/d/c/ia$1;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method
