.class public Lcom/TQFramework/TqEditText;
.super Landroid/widget/EditText;
.source "TqEditText.java"


# instance fields
.field private mView:Lcom/TQFramework/C3GLSurfaceView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 33
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 35
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/TQFramework/TqEditText;->mView:Lcom/TQFramework/C3GLSurfaceView;

    invoke-virtual {v0}, Lcom/TQFramework/C3GLSurfaceView;->requestFocus()Z

    .line 39
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setMainView(Lcom/TQFramework/C3GLSurfaceView;)V
    .locals 0
    .param p1, "glSurfaceView"    # Lcom/TQFramework/C3GLSurfaceView;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/TQFramework/TqEditText;->mView:Lcom/TQFramework/C3GLSurfaceView;

    .line 27
    return-void
.end method
