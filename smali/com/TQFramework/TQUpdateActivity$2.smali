.class Lcom/TQFramework/TQUpdateActivity$2;
.super Ljava/lang/Object;
.source "TQUpdateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/TQFramework/TQUpdateActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/TQFramework/TQUpdateActivity;


# direct methods
.method constructor <init>(Lcom/TQFramework/TQUpdateActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/TQFramework/TQUpdateActivity$2;->this$0:Lcom/TQFramework/TQUpdateActivity;

    .line 652
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 656
    iget-object v0, p0, Lcom/TQFramework/TQUpdateActivity$2;->this$0:Lcom/TQFramework/TQUpdateActivity;

    invoke-static {v0}, Lcom/TQFramework/TQUpdateActivity;->access$2(Lcom/TQFramework/TQUpdateActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 657
    iget-object v0, p0, Lcom/TQFramework/TQUpdateActivity$2;->this$0:Lcom/TQFramework/TQUpdateActivity;

    invoke-static {v0}, Lcom/TQFramework/TQUpdateActivity;->access$1(Lcom/TQFramework/TQUpdateActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 658
    iget-object v0, p0, Lcom/TQFramework/TQUpdateActivity$2;->this$0:Lcom/TQFramework/TQUpdateActivity;

    invoke-static {v0}, Lcom/TQFramework/TQUpdateActivity;->access$4(Lcom/TQFramework/TQUpdateActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 659
    iget-object v0, p0, Lcom/TQFramework/TQUpdateActivity$2;->this$0:Lcom/TQFramework/TQUpdateActivity;

    invoke-static {v0}, Lcom/TQFramework/TQUpdateActivity;->access$6(Lcom/TQFramework/TQUpdateActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 660
    iget-object v0, p0, Lcom/TQFramework/TQUpdateActivity$2;->this$0:Lcom/TQFramework/TQUpdateActivity;

    invoke-static {v0}, Lcom/TQFramework/TQUpdateActivity;->access$7(Lcom/TQFramework/TQUpdateActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 661
    iget-object v0, p0, Lcom/TQFramework/TQUpdateActivity$2;->this$0:Lcom/TQFramework/TQUpdateActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/TQFramework/TQUpdateActivity;->UpdateVersion(I)V

    .line 662
    return-void
.end method
