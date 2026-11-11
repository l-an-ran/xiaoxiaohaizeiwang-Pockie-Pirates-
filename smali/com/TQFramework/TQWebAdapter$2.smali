.class Lcom/TQFramework/TQWebAdapter$2;
.super Ljava/lang/Object;
.source "TQWebAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/TQFramework/TQWebAdapter;->openLocalWeb(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/TQFramework/TQWebAdapter;

.field private final synthetic val$strTitleText:Ljava/lang/String;

.field private final synthetic val$strURL:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/TQFramework/TQWebAdapter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/TQFramework/TQWebAdapter$2;->this$0:Lcom/TQFramework/TQWebAdapter;

    iput-object p2, p0, Lcom/TQFramework/TQWebAdapter$2;->val$strURL:Ljava/lang/String;

    iput-object p3, p0, Lcom/TQFramework/TQWebAdapter$2;->val$strTitleText:Ljava/lang/String;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/TQFramework/TQWebAdapter$2;->this$0:Lcom/TQFramework/TQWebAdapter;

    new-instance v1, Lcom/TQFramework/TQWebDlg;

    iget-object v2, p0, Lcom/TQFramework/TQWebAdapter$2;->this$0:Lcom/TQFramework/TQWebAdapter;

    invoke-static {v2}, Lcom/TQFramework/TQWebAdapter;->access$0(Lcom/TQFramework/TQWebAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/TQFramework/TQWebDlg;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/TQFramework/TQWebAdapter;->access$1(Lcom/TQFramework/TQWebAdapter;Lcom/TQFramework/TQWebDlg;)V

    .line 67
    iget-object v0, p0, Lcom/TQFramework/TQWebAdapter$2;->this$0:Lcom/TQFramework/TQWebAdapter;

    invoke-static {v0}, Lcom/TQFramework/TQWebAdapter;->access$2(Lcom/TQFramework/TQWebAdapter;)Lcom/TQFramework/TQWebDlg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/TQFramework/TQWebDlg;->show()V

    .line 68
    iget-object v0, p0, Lcom/TQFramework/TQWebAdapter$2;->this$0:Lcom/TQFramework/TQWebAdapter;

    invoke-static {v0}, Lcom/TQFramework/TQWebAdapter;->access$2(Lcom/TQFramework/TQWebAdapter;)Lcom/TQFramework/TQWebDlg;

    move-result-object v0

    iget-object v1, p0, Lcom/TQFramework/TQWebAdapter$2;->val$strURL:Ljava/lang/String;

    iget-object v2, p0, Lcom/TQFramework/TQWebAdapter$2;->val$strTitleText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/TQFramework/TQWebDlg;->loadURL(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method
