.class Lcom/TQFramework/TQUpdateActivity$1$1;
.super Ljava/lang/Object;
.source "TQUpdateActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/TQFramework/TQUpdateActivity$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/TQFramework/TQUpdateActivity$1;


# direct methods
.method constructor <init>(Lcom/TQFramework/TQUpdateActivity$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/TQFramework/TQUpdateActivity$1$1;->this$1:Lcom/TQFramework/TQUpdateActivity$1;

    .line 587
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 590
    iget-object v0, p0, Lcom/TQFramework/TQUpdateActivity$1$1;->this$1:Lcom/TQFramework/TQUpdateActivity$1;

    invoke-static {v0}, Lcom/TQFramework/TQUpdateActivity$1;->access$0(Lcom/TQFramework/TQUpdateActivity$1;)Lcom/TQFramework/TQUpdateActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/TQFramework/TQUpdateActivity;->finish()V

    .line 591
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 592
    return-void
.end method
