.class Lcom/TQFramework/TQUpdateActivity$3;
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
    iput-object p1, p0, Lcom/TQFramework/TQUpdateActivity$3;->this$0:Lcom/TQFramework/TQUpdateActivity;

    .line 664
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x4

    .line 670
    iget-object v0, p0, Lcom/TQFramework/TQUpdateActivity$3;->this$0:Lcom/TQFramework/TQUpdateActivity;

    iget-boolean v0, v0, Lcom/TQFramework/TQUpdateActivity;->bForeceUpdate:Z

    if-eqz v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/TQFramework/TQUpdateActivity$3;->this$0:Lcom/TQFramework/TQUpdateActivity;

    invoke-virtual {v0}, Lcom/TQFramework/TQUpdateActivity;->finish()V

    .line 672
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 680
    :goto_0
    return-void

    .line 675
    :cond_0
    iget-object v0, p0, Lcom/TQFramework/TQUpdateActivity$3;->this$0:Lcom/TQFramework/TQUpdateActivity;

    invoke-static {v0}, Lcom/TQFramework/TQUpdateActivity;->access$6(Lcom/TQFramework/TQUpdateActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 676
    iget-object v0, p0, Lcom/TQFramework/TQUpdateActivity$3;->this$0:Lcom/TQFramework/TQUpdateActivity;

    invoke-static {v0}, Lcom/TQFramework/TQUpdateActivity;->access$7(Lcom/TQFramework/TQUpdateActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 678
    iget-object v0, p0, Lcom/TQFramework/TQUpdateActivity$3;->this$0:Lcom/TQFramework/TQUpdateActivity;

    invoke-virtual {v0}, Lcom/TQFramework/TQUpdateActivity;->ReturnMainView()V

    .line 679
    iget-object v0, p0, Lcom/TQFramework/TQUpdateActivity$3;->this$0:Lcom/TQFramework/TQUpdateActivity;

    invoke-virtual {v0}, Lcom/TQFramework/TQUpdateActivity;->finish()V

    goto :goto_0
.end method
