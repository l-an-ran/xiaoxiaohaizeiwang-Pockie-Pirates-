.class Lcom/TQFramework/TQFrameworkActivity$1;
.super Ljava/lang/Object;
.source "TQFrameworkActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/TQFramework/TQFrameworkActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/TQFramework/TQFrameworkActivity;


# direct methods
.method constructor <init>(Lcom/TQFramework/TQFrameworkActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/TQFramework/TQFrameworkActivity$1;->this$0:Lcom/TQFramework/TQFrameworkActivity;

    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 397
    iget-object v0, p0, Lcom/TQFramework/TQFrameworkActivity$1;->this$0:Lcom/TQFramework/TQFrameworkActivity;

    invoke-virtual {v0}, Lcom/TQFramework/TQFrameworkActivity;->finish()V

    .line 398
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 399
    return-void
.end method
