.class final Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView$1;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView$1;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView$1$1;->a:Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView$1$1;->a:Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView$1;

    iget-object v1, v0, Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView$1;->a:Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;

    iget-object v0, p0, Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView$1$1;->a:Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView$1;

    iget-object v0, v0, Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView$1;->a:Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;

    invoke-static {v0}, Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;->a(Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;)[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;->a(Lcom/nd/commplatform/uap/widget/NdActivityDescriptionExtView;Ljava/lang/String;)V

    return-void
.end method
