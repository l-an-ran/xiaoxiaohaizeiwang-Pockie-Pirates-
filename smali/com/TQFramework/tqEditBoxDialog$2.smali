.class Lcom/TQFramework/tqEditBoxDialog$2;
.super Ljava/lang/Object;
.source "tqEditBoxDialog.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/TQFramework/tqEditBoxDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/TQFramework/tqEditBoxDialog;


# direct methods
.method constructor <init>(Lcom/TQFramework/tqEditBoxDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/TQFramework/tqEditBoxDialog$2;->this$0:Lcom/TQFramework/tqEditBoxDialog;

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 300
    iget-object v1, p0, Lcom/TQFramework/tqEditBoxDialog$2;->this$0:Lcom/TQFramework/tqEditBoxDialog;

    invoke-static {v1}, Lcom/TQFramework/tqEditBoxDialog;->access$2(Lcom/TQFramework/tqEditBoxDialog;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/TQFramework/tqEditBoxDialog$2;->this$0:Lcom/TQFramework/tqEditBoxDialog;

    invoke-static {v1}, Lcom/TQFramework/tqEditBoxDialog;->access$2(Lcom/TQFramework/tqEditBoxDialog;)Z

    move-result v1

    if-nez v1, :cond_2

    if-nez p2, :cond_2

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    .line 303
    :cond_1
    sget-object v1, Lcom/TQFramework/tqEditBoxDialog;->mMainView:Lcom/TQFramework/C3GLSurfaceView;

    iget-object v2, p0, Lcom/TQFramework/tqEditBoxDialog$2;->this$0:Lcom/TQFramework/tqEditBoxDialog;

    invoke-static {v2}, Lcom/TQFramework/tqEditBoxDialog;->access$0(Lcom/TQFramework/tqEditBoxDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/TQFramework/C3GLSurfaceView;->insertText(Ljava/lang/String;)V

    .line 304
    iget-object v1, p0, Lcom/TQFramework/tqEditBoxDialog$2;->this$0:Lcom/TQFramework/tqEditBoxDialog;

    invoke-static {v1}, Lcom/TQFramework/tqEditBoxDialog;->access$3(Lcom/TQFramework/tqEditBoxDialog;)V

    .line 305
    iget-object v1, p0, Lcom/TQFramework/tqEditBoxDialog$2;->this$0:Lcom/TQFramework/tqEditBoxDialog;

    invoke-virtual {v1}, Lcom/TQFramework/tqEditBoxDialog;->dismiss()V

    .line 306
    sput-boolean v0, Lcom/TQFramework/tqEditBoxDialog;->bShowEdit:Z

    .line 307
    const/4 v0, 0x1

    .line 309
    :cond_2
    return v0
.end method
