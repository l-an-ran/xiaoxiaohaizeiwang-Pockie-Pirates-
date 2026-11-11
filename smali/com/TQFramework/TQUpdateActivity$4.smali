.class Lcom/TQFramework/TQUpdateActivity$4;
.super Ljava/lang/Thread;
.source "TQUpdateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/TQFramework/TQUpdateActivity;->StartCheckVersion()V
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
    iput-object p1, p0, Lcom/TQFramework/TQUpdateActivity$4;->this$0:Lcom/TQFramework/TQUpdateActivity;

    .line 687
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 691
    invoke-static {}, Lcom/TQFramework/TQUpdateActivity;->access$22()Z

    move-result v3

    if-nez v3, :cond_0

    .line 693
    invoke-static {v4}, Lcom/TQFramework/TQUpdateActivity;->access$23(Z)V

    .line 694
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 695
    .local v1, "msg":Landroid/os/Message;
    const/4 v3, 0x7

    iput v3, v1, Landroid/os/Message;->what:I

    .line 697
    const/4 v2, 0x0

    .line 698
    .local v2, "nCheckCode":I
    iget-object v3, p0, Lcom/TQFramework/TQUpdateActivity$4;->this$0:Lcom/TQFramework/TQUpdateActivity;

    invoke-virtual {v3}, Lcom/TQFramework/TQUpdateActivity;->CheckNewVersion()I

    move-result v2

    .line 699
    if-eqz v2, :cond_1

    .line 701
    iget-object v3, p0, Lcom/TQFramework/TQUpdateActivity$4;->this$0:Lcom/TQFramework/TQUpdateActivity;

    invoke-virtual {v3}, Lcom/TQFramework/TQUpdateActivity;->GetDownurl()Z

    move-result v3

    if-nez v3, :cond_1

    .line 703
    invoke-static {}, Lcom/TQFramework/TQUpdateActivity;->access$13()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 718
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "nCheckCode":I
    :cond_0
    :goto_0
    return-void

    .line 707
    .restart local v1    # "msg":Landroid/os/Message;
    .restart local v2    # "nCheckCode":I
    :cond_1
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 708
    invoke-static {}, Lcom/TQFramework/TQUpdateActivity;->access$13()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 711
    if-nez v2, :cond_0

    .line 713
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/TQFramework/TQUpdateActivity$4;->this$0:Lcom/TQFramework/TQUpdateActivity;

    iget-object v3, v3, Lcom/TQFramework/TQUpdateActivity;->m_sDownPathchanelxml:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 714
    .local v0, "filedir":Ljava/io/File;
    invoke-static {v0}, Lcom/TQFramework/TQUpdateActivity;->Delete(Ljava/io/File;)V

    goto :goto_0
.end method
