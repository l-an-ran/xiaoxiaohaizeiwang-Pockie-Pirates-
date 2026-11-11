.class Lcom/TQFramework/tqEditBoxDialog$3;
.super Ljava/lang/Object;
.source "tqEditBoxDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/TQFramework/tqEditBoxDialog$3;->this$0:Lcom/TQFramework/tqEditBoxDialog;

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 317
    sget-object v0, Lcom/TQFramework/tqEditBoxDialog;->mMainView:Lcom/TQFramework/C3GLSurfaceView;

    iget-object v1, p0, Lcom/TQFramework/tqEditBoxDialog$3;->this$0:Lcom/TQFramework/tqEditBoxDialog;

    invoke-static {v1}, Lcom/TQFramework/tqEditBoxDialog;->access$0(Lcom/TQFramework/tqEditBoxDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/TQFramework/C3GLSurfaceView;->insertText(Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/TQFramework/tqEditBoxDialog$3;->this$0:Lcom/TQFramework/tqEditBoxDialog;

    invoke-static {v0}, Lcom/TQFramework/tqEditBoxDialog;->access$3(Lcom/TQFramework/tqEditBoxDialog;)V

    .line 319
    iget-object v0, p0, Lcom/TQFramework/tqEditBoxDialog$3;->this$0:Lcom/TQFramework/tqEditBoxDialog;

    invoke-virtual {v0}, Lcom/TQFramework/tqEditBoxDialog;->dismiss()V

    .line 320
    const/4 v0, 0x0

    sput-boolean v0, Lcom/TQFramework/tqEditBoxDialog;->bShowEdit:Z

    .line 322
    return-void
.end method
