.class Lcom/TQFramework/tqEditBoxDialog$1;
.super Ljava/lang/Object;
.source "tqEditBoxDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/TQFramework/tqEditBoxDialog$1;->this$0:Lcom/TQFramework/tqEditBoxDialog;

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/TQFramework/tqEditBoxDialog$1;->this$0:Lcom/TQFramework/tqEditBoxDialog;

    invoke-static {v0}, Lcom/TQFramework/tqEditBoxDialog;->access$0(Lcom/TQFramework/tqEditBoxDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 292
    iget-object v0, p0, Lcom/TQFramework/tqEditBoxDialog$1;->this$0:Lcom/TQFramework/tqEditBoxDialog;

    invoke-static {v0}, Lcom/TQFramework/tqEditBoxDialog;->access$0(Lcom/TQFramework/tqEditBoxDialog;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/TQFramework/tqEditBoxDialog$1;->this$0:Lcom/TQFramework/tqEditBoxDialog;

    invoke-static {v1}, Lcom/TQFramework/tqEditBoxDialog;->access$0(Lcom/TQFramework/tqEditBoxDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 293
    iget-object v0, p0, Lcom/TQFramework/tqEditBoxDialog$1;->this$0:Lcom/TQFramework/tqEditBoxDialog;

    invoke-static {v0}, Lcom/TQFramework/tqEditBoxDialog;->access$1(Lcom/TQFramework/tqEditBoxDialog;)V

    .line 294
    return-void
.end method
