.class Lcom/TQFramework/TextInputWraper;
.super Ljava/lang/Object;
.source "C3GLSurfaceView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;


# static fields
.field private static final debug:Ljava/lang/Boolean;

.field private static gInputEditIsMultiLine:Z

.field private static gInputMaxLen:I


# instance fields
.field private mMainView:Lcom/TQFramework/C3GLSurfaceView;

.field private mOriginText:Ljava/lang/String;

.field private mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/TQFramework/TextInputWraper;->debug:Ljava/lang/Boolean;

    .line 24
    const/4 v0, 0x1

    sput-boolean v0, Lcom/TQFramework/TextInputWraper;->gInputEditIsMultiLine:Z

    .line 25
    sput v1, Lcom/TQFramework/TextInputWraper;->gInputMaxLen:I

    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/TQFramework/C3GLSurfaceView;)V
    .locals 0
    .param p1, "view"    # Lcom/TQFramework/C3GLSurfaceView;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/TQFramework/TextInputWraper;->mMainView:Lcom/TQFramework/C3GLSurfaceView;

    .line 51
    return-void
.end method

.method private LogD(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 28
    sget-object v0, Lcom/TQFramework/TextInputWraper;->debug:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TextInputFilter"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_0
    return-void
.end method

.method public static SetInputEditEnableMultiLine(Z)V
    .locals 0
    .param p0, "bIsMultiline"    # Z

    .prologue
    .line 37
    sput-boolean p0, Lcom/TQFramework/TextInputWraper;->gInputEditIsMultiLine:Z

    .line 38
    return-void
.end method

.method public static SetInputEditMaxLen(I)V
    .locals 0
    .param p0, "nMaxLen"    # I

    .prologue
    .line 41
    sput p0, Lcom/TQFramework/TextInputWraper;->gInputMaxLen:I

    .line 42
    return-void
.end method

.method private isFullScreenEdit()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 45
    iget-object v1, p0, Lcom/TQFramework/TextInputWraper;->mMainView:Lcom/TQFramework/C3GLSurfaceView;

    invoke-virtual {v1}, Lcom/TQFramework/C3GLSurfaceView;->getTextField()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 46
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v4, 0x0

    .line 59
    sget v1, Lcom/TQFramework/TextInputWraper;->gInputMaxLen:I

    if-lez v1, :cond_0

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sget v2, Lcom/TQFramework/TextInputWraper;->gInputMaxLen:I

    if-le v1, v2, :cond_0

    .line 61
    const-string v1, "\u8d85\u51fa\u6700\u5927\u5b57\u7b26\u9650\u5236:%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget v3, Lcom/TQFramework/TextInputWraper;->gInputMaxLen:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "strTip":Ljava/lang/String;
    sget-object v1, Lcom/TQFramework/C3GLSurfaceView;->MainContext:Landroid/content/Context;

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 64
    iget-object v1, p0, Lcom/TQFramework/TextInputWraper;->mText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-interface {p1, v1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 66
    .end local v0    # "strTip":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/TQFramework/TextInputWraper;->isFullScreenEdit()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "afterTextChanged: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/TQFramework/TextInputWraper;->LogD(Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/TQFramework/TextInputWraper;->mMainView:Lcom/TQFramework/C3GLSurfaceView;

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/TQFramework/C3GLSurfaceView;->insertText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "beforeTextChanged("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")start: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",after: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/TQFramework/TextInputWraper;->LogD(Ljava/lang/String;)V

    .line 90
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/TQFramework/TextInputWraper;->mText:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x0

    .line 98
    iget-object v5, p0, Lcom/TQFramework/TextInputWraper;->mMainView:Lcom/TQFramework/C3GLSurfaceView;

    invoke-virtual {v5}, Lcom/TQFramework/C3GLSurfaceView;->getTextField()Landroid/widget/TextView;

    move-result-object v5

    if-ne v5, p1, :cond_1

    invoke-direct {p0}, Lcom/TQFramework/TextInputWraper;->isFullScreenEdit()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 100
    iget-object v5, p0, Lcom/TQFramework/TextInputWraper;->mOriginText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "i":I
    :goto_0
    if-gtz v0, :cond_2

    .line 104
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 117
    .local v3, "text":Ljava/lang/String;
    move-object v2, v3

    .line 118
    .local v2, "insertText":Ljava/lang/String;
    iget-object v5, p0, Lcom/TQFramework/TextInputWraper;->mMainView:Lcom/TQFramework/C3GLSurfaceView;

    invoke-virtual {v5, v2}, Lcom/TQFramework/C3GLSurfaceView;->insertText(Ljava/lang/String;)V

    .line 119
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "insertText("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/TQFramework/TextInputWraper;->LogD(Ljava/lang/String;)V

    .line 122
    sget-boolean v5, Lcom/TQFramework/TextInputWraper;->gInputEditIsMultiLine:Z

    if-nez v5, :cond_1

    if-nez p2, :cond_1

    .line 123
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "input_method"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 124
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 125
    invoke-virtual {p1}, Landroid/widget/TextView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v1, v5, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 127
    :cond_0
    const/4 v4, 0x1

    .line 130
    .end local v0    # "i":I
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v2    # "insertText":Ljava/lang/String;
    .end local v3    # "text":Ljava/lang/String;
    :cond_1
    return v4

    .line 101
    .restart local v0    # "i":I
    :cond_2
    iget-object v5, p0, Lcom/TQFramework/TextInputWraper;->mMainView:Lcom/TQFramework/C3GLSurfaceView;

    invoke-virtual {v5}, Lcom/TQFramework/C3GLSurfaceView;->deleteBackward()V

    .line 102
    const-string v5, "deleteBackward"

    invoke-direct {p0, v5}, Lcom/TQFramework/TextInputWraper;->LogD(Ljava/lang/String;)V

    .line 100
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 94
    return-void
.end method

.method public setOriginText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/TQFramework/TextInputWraper;->mOriginText:Ljava/lang/String;

    .line 55
    return-void
.end method
