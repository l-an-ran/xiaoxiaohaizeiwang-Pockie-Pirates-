.class Lcom/TQFramework/CopyResFilesActivity$1;
.super Ljava/lang/Object;
.source "CopyResFilesActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/TQFramework/CopyResFilesActivity;
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
    iput-object p1, p0, Lcom/TQFramework/CopyResFilesActivity$1;->this$0:Lcom/TQFramework/CopyResFilesActivity;

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 252
    iget-object v2, p0, Lcom/TQFramework/CopyResFilesActivity$1;->this$0:Lcom/TQFramework/CopyResFilesActivity;

    iget-object v3, p0, Lcom/TQFramework/CopyResFilesActivity$1;->this$0:Lcom/TQFramework/CopyResFilesActivity;

    invoke-static {v3}, Lcom/TQFramework/CopyResFilesActivity;->access$0(Lcom/TQFramework/CopyResFilesActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/TQFramework/CopyResFilesActivity$1;->this$0:Lcom/TQFramework/CopyResFilesActivity;

    invoke-static {v4}, Lcom/TQFramework/CopyResFilesActivity;->access$1(Lcom/TQFramework/CopyResFilesActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/TQFramework/CopyResFilesActivity;->access$2(Lcom/TQFramework/CopyResFilesActivity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 265
    iget-object v2, p0, Lcom/TQFramework/CopyResFilesActivity$1;->this$0:Lcom/TQFramework/CopyResFilesActivity;

    invoke-static {v2}, Lcom/TQFramework/CopyResFilesActivity;->access$3(Lcom/TQFramework/CopyResFilesActivity;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 266
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "res_intergrity"

    iget-object v3, p0, Lcom/TQFramework/CopyResFilesActivity$1;->this$0:Lcom/TQFramework/CopyResFilesActivity;

    invoke-static {v3}, Lcom/TQFramework/CopyResFilesActivity;->access$4(Lcom/TQFramework/CopyResFilesActivity;)I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 268
    iget-object v2, p0, Lcom/TQFramework/CopyResFilesActivity$1;->this$0:Lcom/TQFramework/CopyResFilesActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/TQFramework/CopyResFilesActivity;->setResult(I)V

    .line 269
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 271
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 272
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x1010

    iput v2, v1, Landroid/os/Message;->what:I

    .line 273
    iget-object v2, p0, Lcom/TQFramework/CopyResFilesActivity$1;->this$0:Lcom/TQFramework/CopyResFilesActivity;

    invoke-static {v2}, Lcom/TQFramework/CopyResFilesActivity;->access$5(Lcom/TQFramework/CopyResFilesActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 285
    .end local v1    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 277
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    iget-object v2, p0, Lcom/TQFramework/CopyResFilesActivity$1;->this$0:Lcom/TQFramework/CopyResFilesActivity;

    invoke-static {v2}, Lcom/TQFramework/CopyResFilesActivity;->access$3(Lcom/TQFramework/CopyResFilesActivity;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 278
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "res_intergrity"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 279
    iget-object v2, p0, Lcom/TQFramework/CopyResFilesActivity$1;->this$0:Lcom/TQFramework/CopyResFilesActivity;

    invoke-virtual {v2, v5}, Lcom/TQFramework/CopyResFilesActivity;->setResult(I)V

    .line 280
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 281
    iget-object v2, p0, Lcom/TQFramework/CopyResFilesActivity$1;->this$0:Lcom/TQFramework/CopyResFilesActivity;

    invoke-virtual {v2}, Lcom/TQFramework/CopyResFilesActivity;->finish()V

    goto :goto_0
.end method
