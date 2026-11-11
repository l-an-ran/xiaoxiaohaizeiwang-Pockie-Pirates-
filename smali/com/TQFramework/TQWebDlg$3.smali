.class Lcom/TQFramework/TQWebDlg$3;
.super Ljava/lang/Object;
.source "TQWebDlg.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/TQFramework/TQWebDlg;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/TQFramework/TQWebDlg;


# direct methods
.method constructor <init>(Lcom/TQFramework/TQWebDlg;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/TQFramework/TQWebDlg$3;->this$0:Lcom/TQFramework/TQWebDlg;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/TQFramework/TQWebDlg$3;->this$0:Lcom/TQFramework/TQWebDlg;

    invoke-static {v0}, Lcom/TQFramework/TQWebDlg;->access$1(Lcom/TQFramework/TQWebDlg;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/TQFramework/TQWebDlg$3;->this$0:Lcom/TQFramework/TQWebDlg;

    invoke-static {v0}, Lcom/TQFramework/TQWebDlg;->access$1(Lcom/TQFramework/TQWebDlg;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 98
    :cond_0
    return-void
.end method
