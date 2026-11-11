.class Lcom/TQFramework/TQUpdateActivity$5;
.super Ljava/lang/Thread;
.source "TQUpdateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/TQFramework/TQUpdateActivity;->UpdateVersion(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/TQFramework/TQUpdateActivity;

.field private final synthetic val$nStyle:I


# direct methods
.method constructor <init>(Lcom/TQFramework/TQUpdateActivity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/TQFramework/TQUpdateActivity$5;->this$0:Lcom/TQFramework/TQUpdateActivity;

    iput p2, p0, Lcom/TQFramework/TQUpdateActivity$5;->val$nStyle:I

    .line 906
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 910
    invoke-static {}, Lcom/TQFramework/TQUpdateActivity;->IsWholePackage()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 912
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 913
    .local v7, "msgcopyso":Landroid/os/Message;
    const/4 v11, 0x4

    iput v11, v7, Landroid/os/Message;->what:I

    .line 914
    invoke-static {}, Lcom/TQFramework/TQUpdateActivity;->access$13()Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 915
    iget-object v11, p0, Lcom/TQFramework/TQUpdateActivity$5;->this$0:Lcom/TQFramework/TQUpdateActivity;

    invoke-virtual {v11}, Lcom/TQFramework/TQUpdateActivity;->CopyLibSoToSdcrad()Z

    move-result v11

    if-nez v11, :cond_1

    .line 917
    new-instance v6, Landroid/os/Message;

    invoke-direct {v6}, Landroid/os/Message;-><init>()V

    .line 918
    .local v6, "msg":Landroid/os/Message;
    const/4 v11, 0x1

    iput v11, v6, Landroid/os/Message;->what:I

    .line 919
    const/4 v11, 0x2

    iput v11, v6, Landroid/os/Message;->arg1:I

    .line 920
    invoke-static {}, Lcom/TQFramework/TQUpdateActivity;->access$13()Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v11, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1016
    .end local v7    # "msgcopyso":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 926
    .end local v6    # "msg":Landroid/os/Message;
    :cond_1
    iget v11, p0, Lcom/TQFramework/TQUpdateActivity$5;->val$nStyle:I

    shr-int/lit8 v11, v11, 0x1

    and-int/lit8 v11, v11, 0x1

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    const/4 v0, 0x1

    .line 927
    .local v0, "bDownApk":Z
    :goto_1
    if-eqz v0, :cond_7

    .line 929
    new-instance v8, Landroid/os/Message;

    invoke-direct {v8}, Landroid/os/Message;-><init>()V

    .line 930
    .local v8, "msgdownApkinit":Landroid/os/Message;
    const/4 v11, 0x5

    iput v11, v8, Landroid/os/Message;->what:I

    .line 931
    invoke-static {}, Lcom/TQFramework/TQUpdateActivity;->access$13()Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 932
    iget-object v11, p0, Lcom/TQFramework/TQUpdateActivity$5;->this$0:Lcom/TQFramework/TQUpdateActivity;

    iget-object v12, p0, Lcom/TQFramework/TQUpdateActivity$5;->this$0:Lcom/TQFramework/TQUpdateActivity;

    iget-object v12, v12, Lcom/TQFramework/TQUpdateActivity;->m_sApkUrl:Ljava/lang/String;

    iget-object v13, p0, Lcom/TQFramework/TQUpdateActivity$5;->this$0:Lcom/TQFramework/TQUpdateActivity;

    iget-object v13, v13, Lcom/TQFramework/TQUpdateActivity;->m_sDownPathchanelxml:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Lcom/TQFramework/TQUpdateActivity;->GetLocalFileFromURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 934
    .local v3, "localApkfile":Ljava/lang/String;
    invoke-static {v3}, Lcom/TQFramework/TQUpdateActivity;->md5sum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 935
    .local v5, "md5":Ljava/lang/String;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_2

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_4

    iget-object v11, p0, Lcom/TQFramework/TQUpdateActivity$5;->this$0:Lcom/TQFramework/TQUpdateActivity;

    iget-object v11, v11, Lcom/TQFramework/TQUpdateActivity;->m_apkmd5:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 937
    :cond_2
    iget-object v11, p0, Lcom/TQFramework/TQUpdateActivity$5;->this$0:Lcom/TQFramework/TQUpdateActivity;

    iget-object v12, p0, Lcom/TQFramework/TQUpdateActivity$5;->this$0:Lcom/TQFramework/TQUpdateActivity;

    iget-object v12, v12, Lcom/TQFramework/TQUpdateActivity;->m_sApkUrl:Ljava/lang/String;

    invoke-virtual {v11, v12, v3}, Lcom/TQFramework/TQUpdateActivity;->DownLoadFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 938
    new-instance v6, Landroid/os/Message;

    invoke-direct {v6}, Landroid/os/Message;-><init>()V

    .line 939
    .restart local v6    # "msg":Landroid/os/Message;
    const/4 v11, 0x1

    iput v11, v6, Landroid/os/Message;->what:I

    .line 940
    const/4 v11, 0x3

    iput v11, v6, Landroid/os/Message;->arg1:I

    .line 941
    invoke-static {}, Lcom/TQFramework/TQUpdateActivity;->access$13()Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v11, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 926
    .end local v0    # "bDownApk":Z
    .end local v3    # "localApkfile":Ljava/lang/String;
    .end local v5    # "md5":Ljava/lang/String;
    .end local v6    # "msg":Landroid/os/Message;
    .end local v8    # "msgdownApkinit":Landroid/os/Message;
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 945
    .restart local v0    # "bDownApk":Z
    .restart local v3    # "localApkfile":Ljava/lang/String;
    .restart local v5    # "md5":Ljava/lang/String;
    .restart local v8    # "msgdownApkinit":Landroid/os/Message;
    :cond_4
    invoke-static {v3}, Lcom/TQFramework/TQUpdateActivity;->md5sum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 946
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_5

    iget-object v11, p0, Lcom/TQFramework/TQUpdateActivity$5;->this$0:Lcom/TQFramework/TQUpdateActivity;

    iget-object v11, v11, Lcom/TQFramework/TQUpdateActivity;->m_apkmd5:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 948
    new-instance v6, Landroid/os/Message;

    invoke-direct {v6}, Landroid/os/Message;-><init>()V

    .line 949
    .restart local v6    # "msg":Landroid/os/Message;
    const/4 v11, 0x3

    iput v11, v6, Landroid/os/Message;->what:I

    .line 950
    const/4 v11, 0x1

    iput v11, v6, Landroid/os/Message;->arg1:I

    .line 951
    invoke-static {}, Lcom/TQFramework/TQUpdateActivity;->access$13()Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v11, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 954
    .end local v6    # "msg":Landroid/os/Message;
    :cond_5
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 955
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 956
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 958
    :cond_6
    new-instance v6, Landroid/os/Message;

    invoke-direct {v6}, Landroid/os/Message;-><init>()V

    .line 959
    .restart local v6    # "msg":Landroid/os/Message;
    const/4 v11, 0x1

    iput v11, v6, Landroid/os/Message;->what:I

    .line 960
    const/4 v11, 0x5

    iput v11, v6, Landroid/os/Message;->arg1:I

    .line 961
    invoke-static {}, Lcom/TQFramework/TQUpdateActivity;->access$13()Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v11, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 968
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "localApkfile":Ljava/lang/String;
    .end local v5    # "md5":Ljava/lang/String;
    .end local v6    # "msg":Landroid/os/Message;
    .end local v8    # "msgdownApkinit":Landroid/os/Message;
    :cond_7
    iget v11, p0, Lcom/TQFramework/TQUpdateActivity$5;->val$nStyle:I

    and-int/lit8 v11, v11, 0x1

    const/4 v12, 0x1

    if-ne v11, v12, :cond_8

    const/4 v1, 0x1

    .line 969
    .local v1, "bDownRes":Z
    :goto_2
    if-eqz v1, :cond_b

    .line 971
    new-instance v9, Landroid/os/Message;

    invoke-direct {v9}, Landroid/os/Message;-><init>()V

    .line 972
    .local v9, "msgdownResinit":Landroid/os/Message;
    const/4 v11, 0x6

    iput v11, v9, Landroid/os/Message;->what:I

    .line 973
    invoke-static {}, Lcom/TQFramework/TQUpdateActivity;->access$13()Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 974
    iget-object v11, p0, Lcom/TQFramework/TQUpdateActivity$5;->this$0:Lcom/TQFramework/TQUpdateActivity;

    iget-object v12, p0, Lcom/TQFramework/TQUpdateActivity$5;->this$0:Lcom/TQFramework/TQUpdateActivity;

    iget-object v12, v12, Lcom/TQFramework/TQUpdateActivity;->m_sResPacketUrl:Ljava/lang/String;

    iget-object v13, p0, Lcom/TQFramework/TQUpdateActivity$5;->this$0:Lcom/TQFramework/TQUpdateActivity;

    iget-object v13, v13, Lcom/TQFramework/TQUpdateActivity;->m_sDownPathchanelxml:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Lcom/TQFramework/TQUpdateActivity;->GetLocalFileFromURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 975
    .local v4, "localResfile":Ljava/lang/String;
    iget-object v11, p0, Lcom/TQFramework/TQUpdateActivity$5;->this$0:Lcom/TQFramework/TQUpdateActivity;

    iget-object v12, p0, Lcom/TQFramework/TQUpdateActivity$5;->this$0:Lcom/TQFramework/TQUpdateActivity;

    iget-object v12, v12, Lcom/TQFramework/TQUpdateActivity;->m_sResPacketUrl:Ljava/lang/String;

    invoke-virtual {v11, v12, v4}, Lcom/TQFramework/TQUpdateActivity;->DownLoadFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 976
    new-instance v6, Landroid/os/Message;

    invoke-direct {v6}, Landroid/os/Message;-><init>()V

    .line 977
    .restart local v6    # "msg":Landroid/os/Message;
    const/4 v11, 0x1

    iput v11, v6, Landroid/os/Message;->what:I

    .line 978
    const/4 v11, 0x3

    iput v11, v6, Landroid/os/Message;->arg1:I

    .line 979
    invoke-static {}, Lcom/TQFramework/TQUpdateActivity;->access$13()Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v11, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 968
    .end local v1    # "bDownRes":Z
    .end local v4    # "localResfile":Ljava/lang/String;
    .end local v6    # "msg":Landroid/os/Message;
    .end local v9    # "msgdownResinit":Landroid/os/Message;
    :cond_8
    const/4 v1, 0x0

    goto :goto_2

    .line 982
    .restart local v1    # "bDownRes":Z
    .restart local v4    # "localResfile":Ljava/lang/String;
    .restart local v9    # "msgdownResinit":Landroid/os/Message;
    :cond_9
    iget-object v11, p0, Lcom/TQFramework/TQUpdateActivity$5;->this$0:Lcom/TQFramework/TQUpdateActivity;

    invoke-static {v11}, Lcom/TQFramework/TQUpdateActivity;->access$12(Lcom/TQFramework/TQUpdateActivity;)Ljava/lang/String;

    move-result-object v10

    .line 983
    .local v10, "strResPath":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 986
    invoke-static {v4, v10}, Lcom/TQFramework/TQUpdateActivity;->UnCompressTQZip(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_a

    .line 988
    new-instance v6, Landroid/os/Message;

    invoke-direct {v6}, Landroid/os/Message;-><init>()V

    .line 989
    .restart local v6    # "msg":Landroid/os/Message;
    const/4 v11, 0x1

    iput v11, v6, Landroid/os/Message;->what:I

    .line 990
    const/4 v11, 0x4

    iput v11, v6, Landroid/os/Message;->arg1:I

    .line 991
    invoke-static {}, Lcom/TQFramework/TQUpdateActivity;->access$13()Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v11, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 993
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 994
    .restart local v2    # "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 995
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto/16 :goto_0

    .line 998
    .end local v2    # "file":Ljava/io/File;
    .end local v6    # "msg":Landroid/os/Message;
    :cond_a
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 999
    .restart local v2    # "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 1000
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1008
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "localResfile":Ljava/lang/String;
    .end local v9    # "msgdownResinit":Landroid/os/Message;
    .end local v10    # "strResPath":Ljava/lang/String;
    :cond_b
    new-instance v6, Landroid/os/Message;

    invoke-direct {v6}, Landroid/os/Message;-><init>()V

    .line 1009
    .restart local v6    # "msg":Landroid/os/Message;
    sget v11, Lcom/TQFramework/TQUpdateActivity;->MSG_INIRESTIPS:I

    iput v11, v6, Landroid/os/Message;->what:I

    .line 1010
    invoke-static {}, Lcom/TQFramework/TQUpdateActivity;->access$13()Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v11, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
