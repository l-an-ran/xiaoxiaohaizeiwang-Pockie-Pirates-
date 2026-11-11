.class Lcom/TQFramework/CopyResFilesActivity$3;
.super Landroid/os/Handler;
.source "CopyResFilesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/TQFramework/CopyResFilesActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/TQFramework/CopyResFilesActivity;


# direct methods
.method constructor <init>(Lcom/TQFramework/CopyResFilesActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/TQFramework/CopyResFilesActivity$3;->this$0:Lcom/TQFramework/CopyResFilesActivity;

    .line 134
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    .line 139
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 171
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 172
    return-void

    .line 142
    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 143
    .local v1, "strText":Ljava/lang/String;
    iget-object v3, p0, Lcom/TQFramework/CopyResFilesActivity$3;->this$0:Lcom/TQFramework/CopyResFilesActivity;

    invoke-static {v3}, Lcom/TQFramework/CopyResFilesActivity;->access$7(Lcom/TQFramework/CopyResFilesActivity;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/TQFramework/CopyResFilesActivity$3;->this$0:Lcom/TQFramework/CopyResFilesActivity;

    invoke-static {v5}, Lcom/TQFramework/CopyResFilesActivity;->access$8(Lcom/TQFramework/CopyResFilesActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v3, p0, Lcom/TQFramework/CopyResFilesActivity$3;->this$0:Lcom/TQFramework/CopyResFilesActivity;

    invoke-static {v3}, Lcom/TQFramework/CopyResFilesActivity;->access$9(Lcom/TQFramework/CopyResFilesActivity;)Landroid/widget/ProgressBar;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 145
    iget-object v3, p0, Lcom/TQFramework/CopyResFilesActivity$3;->this$0:Lcom/TQFramework/CopyResFilesActivity;

    invoke-static {v3}, Lcom/TQFramework/CopyResFilesActivity;->access$10(Lcom/TQFramework/CopyResFilesActivity;)Landroid/widget/ProgressBar;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 150
    .end local v1    # "strText":Ljava/lang/String;
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 151
    .local v0, "strDetailText":Ljava/lang/String;
    iget-object v3, p0, Lcom/TQFramework/CopyResFilesActivity$3;->this$0:Lcom/TQFramework/CopyResFilesActivity;

    invoke-static {v3}, Lcom/TQFramework/CopyResFilesActivity;->access$11(Lcom/TQFramework/CopyResFilesActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v3, p0, Lcom/TQFramework/CopyResFilesActivity$3;->this$0:Lcom/TQFramework/CopyResFilesActivity;

    invoke-static {v3}, Lcom/TQFramework/CopyResFilesActivity;->access$11(Lcom/TQFramework/CopyResFilesActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 158
    .end local v0    # "strDetailText":Ljava/lang/String;
    :sswitch_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 159
    .local v2, "strTotalText":Ljava/lang/String;
    iget-object v3, p0, Lcom/TQFramework/CopyResFilesActivity$3;->this$0:Lcom/TQFramework/CopyResFilesActivity;

    invoke-static {v3}, Lcom/TQFramework/CopyResFilesActivity;->access$12(Lcom/TQFramework/CopyResFilesActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v3, p0, Lcom/TQFramework/CopyResFilesActivity$3;->this$0:Lcom/TQFramework/CopyResFilesActivity;

    invoke-static {v3}, Lcom/TQFramework/CopyResFilesActivity;->access$12(Lcom/TQFramework/CopyResFilesActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 164
    .end local v2    # "strTotalText":Ljava/lang/String;
    :sswitch_3
    iget-object v3, p0, Lcom/TQFramework/CopyResFilesActivity$3;->this$0:Lcom/TQFramework/CopyResFilesActivity;

    invoke-virtual {v3}, Lcom/TQFramework/CopyResFilesActivity;->ReturnMainView()V

    goto :goto_0

    .line 139
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x1002 -> :sswitch_1
        0x1003 -> :sswitch_2
        0x1010 -> :sswitch_3
    .end sparse-switch
.end method
