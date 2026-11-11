.class public Lcom/TQFramework/TQHandler;
.super Landroid/os/Handler;
.source "TQHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/TQFramework/TQHandler$DialogMessage;,
        Lcom/TQFramework/TQHandler$EditBoxMessage;
    }
.end annotation


# static fields
.field public static final HANDLER_SHOW_DIALOG:I = 0x1

.field public static final HANDLER_SHOW_EDITBOX_DIALOG:I = 0x2


# instance fields
.field private mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/TQFramework/TQFrameworkActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/TQFramework/TQFrameworkActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/TQFramework/TQFrameworkActivity;

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/TQFramework/TQHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 28
    return-void
.end method

.method private showDialog(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 42
    iget-object v2, p0, Lcom/TQFramework/TQHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/TQFramework/TQFrameworkActivity;

    .line 43
    .local v1, "theActivity":Lcom/TQFramework/TQFrameworkActivity;
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/TQFramework/TQHandler$DialogMessage;

    .line 44
    .local v0, "dialogMessage":Lcom/TQFramework/TQHandler$DialogMessage;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 45
    iget-object v3, v0, Lcom/TQFramework/TQHandler$DialogMessage;->titile:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 46
    iget-object v3, v0, Lcom/TQFramework/TQHandler$DialogMessage;->message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 47
    const-string v3, "Ok"

    .line 48
    new-instance v4, Lcom/TQFramework/TQHandler$1;

    invoke-direct {v4, p0}, Lcom/TQFramework/TQHandler$1;-><init>(Lcom/TQFramework/TQHandler;)V

    .line 47
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 58
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 59
    return-void
.end method

.method private showEditBoxDialog(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 62
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/TQFramework/TQHandler$EditBoxMessage;

    .line 63
    .local v10, "editBoxMessage":Lcom/TQFramework/TQHandler$EditBoxMessage;
    new-instance v0, Lcom/TQFramework/tqEditBoxDialog;

    iget-object v1, p0, Lcom/TQFramework/TQHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 64
    iget-object v2, v10, Lcom/TQFramework/TQHandler$EditBoxMessage;->title:Ljava/lang/String;

    .line 65
    iget-object v3, v10, Lcom/TQFramework/TQHandler$EditBoxMessage;->content:Ljava/lang/String;

    .line 66
    iget v4, v10, Lcom/TQFramework/TQHandler$EditBoxMessage;->maxLength:I

    .line 67
    iget-boolean v5, v10, Lcom/TQFramework/TQHandler$EditBoxMessage;->mIsMultiline:Z

    .line 68
    iget-object v6, v10, Lcom/TQFramework/TQHandler$EditBoxMessage;->mHint:Ljava/lang/String;

    .line 69
    iget v7, v10, Lcom/TQFramework/TQHandler$EditBoxMessage;->inputMode:I

    .line 70
    iget v8, v10, Lcom/TQFramework/TQHandler$EditBoxMessage;->inputFlag:I

    .line 71
    iget v9, v10, Lcom/TQFramework/TQHandler$EditBoxMessage;->returnType:I

    .line 63
    invoke-direct/range {v0 .. v9}, Lcom/TQFramework/tqEditBoxDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;III)V

    .line 72
    invoke-virtual {v0}, Lcom/TQFramework/tqEditBoxDialog;->show()V

    .line 73
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 31
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 39
    :goto_0
    return-void

    .line 33
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/TQFramework/TQHandler;->showDialog(Landroid/os/Message;)V

    goto :goto_0

    .line 36
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/TQFramework/TQHandler;->showEditBoxDialog(Landroid/os/Message;)V

    goto :goto_0

    .line 31
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
