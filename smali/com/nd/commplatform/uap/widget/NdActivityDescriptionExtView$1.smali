.class final Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView$1;->a:Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView$1;->a:Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;

    invoke-static {v0}, Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;->a(Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;)[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView$1;->a:Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;

    iget-object v0, p0, Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView$1;->a:Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;

    invoke-static {v0}, Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;->a(Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;)[Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;->a(Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView$1;->a:Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;

    invoke-virtual {v1}, Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView$1;->a:Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;

    invoke-static {v1}, Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;->a(Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;)[Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView$1$1;

    invoke-direct {v2, p0}, Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView$1$1;-><init>(Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
