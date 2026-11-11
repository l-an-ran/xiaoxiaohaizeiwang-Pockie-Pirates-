.class Lcom/TQFramework/C3GLSurfaceView$1;
.super Landroid/os/Handler;
.source "C3GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/TQFramework/C3GLSurfaceView;->initView(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/TQFramework/C3GLSurfaceView;


# direct methods
.method constructor <init>(Lcom/TQFramework/C3GLSurfaceView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/TQFramework/C3GLSurfaceView$1;->this$0:Lcom/TQFramework/C3GLSurfaceView;

    .line 161
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 163
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 165
    :pswitch_0
    iget-object v2, p0, Lcom/TQFramework/C3GLSurfaceView$1;->this$0:Lcom/TQFramework/C3GLSurfaceView;

    invoke-static {v2}, Lcom/TQFramework/C3GLSurfaceView;->access$0(Lcom/TQFramework/C3GLSurfaceView;)Lcom/TQFramework/TqEditText;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/TQFramework/C3GLSurfaceView$1;->this$0:Lcom/TQFramework/C3GLSurfaceView;

    invoke-static {v2}, Lcom/TQFramework/C3GLSurfaceView;->access$0(Lcom/TQFramework/C3GLSurfaceView;)Lcom/TQFramework/TqEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/TQFramework/TqEditText;->requestFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 166
    iget-object v2, p0, Lcom/TQFramework/C3GLSurfaceView$1;->this$0:Lcom/TQFramework/C3GLSurfaceView;

    invoke-static {v2}, Lcom/TQFramework/C3GLSurfaceView;->access$0(Lcom/TQFramework/C3GLSurfaceView;)Lcom/TQFramework/TqEditText;

    move-result-object v2

    invoke-static {}, Lcom/TQFramework/C3GLSurfaceView;->access$1()Lcom/TQFramework/TextInputWraper;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/TQFramework/TqEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 167
    iget-object v2, p0, Lcom/TQFramework/C3GLSurfaceView$1;->this$0:Lcom/TQFramework/C3GLSurfaceView;

    invoke-static {v2}, Lcom/TQFramework/C3GLSurfaceView;->access$0(Lcom/TQFramework/C3GLSurfaceView;)Lcom/TQFramework/TqEditText;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/TQFramework/TqEditText;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 169
    .local v1, "text":Ljava/lang/String;
    iget-object v2, p0, Lcom/TQFramework/C3GLSurfaceView$1;->this$0:Lcom/TQFramework/C3GLSurfaceView;

    invoke-static {v2}, Lcom/TQFramework/C3GLSurfaceView;->access$0(Lcom/TQFramework/C3GLSurfaceView;)Lcom/TQFramework/TqEditText;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/TQFramework/TqEditText;->append(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v2, p0, Lcom/TQFramework/C3GLSurfaceView$1;->this$0:Lcom/TQFramework/C3GLSurfaceView;

    invoke-static {v2}, Lcom/TQFramework/C3GLSurfaceView;->access$0(Lcom/TQFramework/C3GLSurfaceView;)Lcom/TQFramework/TqEditText;

    move-result-object v2

    const-string v3, "<\u8bf7\u8f93\u5165>"

    invoke-virtual {v2, v3}, Lcom/TQFramework/TqEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 172
    invoke-static {}, Lcom/TQFramework/C3GLSurfaceView;->access$1()Lcom/TQFramework/TextInputWraper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/TQFramework/TextInputWraper;->setOriginText(Ljava/lang/String;)V

    .line 173
    iget-object v2, p0, Lcom/TQFramework/C3GLSurfaceView$1;->this$0:Lcom/TQFramework/C3GLSurfaceView;

    invoke-static {v2}, Lcom/TQFramework/C3GLSurfaceView;->access$0(Lcom/TQFramework/C3GLSurfaceView;)Lcom/TQFramework/TqEditText;

    move-result-object v2

    invoke-static {}, Lcom/TQFramework/C3GLSurfaceView;->access$1()Lcom/TQFramework/TextInputWraper;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/TQFramework/TqEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 176
    sget-object v2, Lcom/TQFramework/C3GLSurfaceView;->mainView:Lcom/TQFramework/C3GLSurfaceView;

    invoke-virtual {v2}, Lcom/TQFramework/C3GLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 177
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/TQFramework/C3GLSurfaceView$1;->this$0:Lcom/TQFramework/C3GLSurfaceView;

    invoke-static {v2}, Lcom/TQFramework/C3GLSurfaceView;->access$0(Lcom/TQFramework/C3GLSurfaceView;)Lcom/TQFramework/TqEditText;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 181
    const-string v2, "GLSurfaceView"

    const-string v3, "showSoftInput"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 190
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v1    # "text":Ljava/lang/String;
    :pswitch_1
    iget-object v2, p0, Lcom/TQFramework/C3GLSurfaceView$1;->this$0:Lcom/TQFramework/C3GLSurfaceView;

    invoke-static {v2}, Lcom/TQFramework/C3GLSurfaceView;->access$0(Lcom/TQFramework/C3GLSurfaceView;)Lcom/TQFramework/TqEditText;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 191
    iget-object v2, p0, Lcom/TQFramework/C3GLSurfaceView$1;->this$0:Lcom/TQFramework/C3GLSurfaceView;

    invoke-static {v2}, Lcom/TQFramework/C3GLSurfaceView;->access$0(Lcom/TQFramework/C3GLSurfaceView;)Lcom/TQFramework/TqEditText;

    move-result-object v2

    invoke-static {}, Lcom/TQFramework/C3GLSurfaceView;->access$1()Lcom/TQFramework/TextInputWraper;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/TQFramework/TqEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 192
    sget-object v2, Lcom/TQFramework/C3GLSurfaceView;->mainView:Lcom/TQFramework/C3GLSurfaceView;

    invoke-virtual {v2}, Lcom/TQFramework/C3GLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 194
    .restart local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/TQFramework/C3GLSurfaceView$1;->this$0:Lcom/TQFramework/C3GLSurfaceView;

    invoke-static {v2}, Lcom/TQFramework/C3GLSurfaceView;->access$0(Lcom/TQFramework/C3GLSurfaceView;)Lcom/TQFramework/TqEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/TQFramework/TqEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    .line 193
    invoke-virtual {v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 195
    const-string v2, "GLSurfaceView"

    const-string v3, "HideSoftInput"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
