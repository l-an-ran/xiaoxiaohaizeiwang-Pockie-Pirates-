.class public Lcom/TQFramework/C3SurfaceView;
.super Landroid/view/SurfaceView;
.source "C3SurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/TQFramework/C3SurfaceView$BaseConfigChooser;,
        Lcom/TQFramework/C3SurfaceView$ComponentSizeChooser;,
        Lcom/TQFramework/C3SurfaceView$DefaultContextFactory;,
        Lcom/TQFramework/C3SurfaceView$DefaultWindowSurfaceFactory;,
        Lcom/TQFramework/C3SurfaceView$EGLConfigChooser;,
        Lcom/TQFramework/C3SurfaceView$EGLContextFactory;,
        Lcom/TQFramework/C3SurfaceView$EGLWindowSurfaceFactory;,
        Lcom/TQFramework/C3SurfaceView$EglHelper;,
        Lcom/TQFramework/C3SurfaceView$GLThread;,
        Lcom/TQFramework/C3SurfaceView$GLThreadManager;,
        Lcom/TQFramework/C3SurfaceView$GLWrapper;,
        Lcom/TQFramework/C3SurfaceView$LogWriter;,
        Lcom/TQFramework/C3SurfaceView$Renderer;,
        Lcom/TQFramework/C3SurfaceView$SimpleEGLConfigChooser;
    }
.end annotation


# static fields
.field public static final DEBUG_CHECK_GL_ERROR:I = 0x1

.field public static final DEBUG_LOG_GL_CALLS:I = 0x2

.field private static final DRAW_TWICE_AFTER_SIZE_CHANGED:Z = true

.field private static final LOG_EGL:Z = false

.field private static final LOG_PAUSE_RESUME:Z = false

.field private static final LOG_RENDERER:Z = false

.field private static final LOG_RENDERER_DRAW_FRAME:Z = false

.field private static final LOG_SURFACE:Z = false

.field private static final LOG_THREADS:Z = false

.field public static final RENDERMODE_CONTINUOUSLY:I = 0x1

.field public static final RENDERMODE_WHEN_DIRTY:I

.field private static final sGLThreadManager:Lcom/TQFramework/C3SurfaceView$GLThreadManager;


# instance fields
.field private mDebugFlags:I

.field private mEGLConfigChooser:Lcom/TQFramework/C3SurfaceView$EGLConfigChooser;

.field private mEGLContextClientVersion:I

.field private mEGLContextFactory:Lcom/TQFramework/C3SurfaceView$EGLContextFactory;

.field private mEGLWindowSurfaceFactory:Lcom/TQFramework/C3SurfaceView$EGLWindowSurfaceFactory;

.field private mGLThread:Lcom/TQFramework/C3SurfaceView$GLThread;

.field private mGLWrapper:Lcom/TQFramework/C3SurfaceView$GLWrapper;

.field private mSizeChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1706
    new-instance v0, Lcom/TQFramework/C3SurfaceView$GLThreadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/TQFramework/C3SurfaceView$GLThreadManager;-><init>(Lcom/TQFramework/C3SurfaceView$GLThreadManager;)V

    sput-object v0, Lcom/TQFramework/C3SurfaceView;->sGLThreadManager:Lcom/TQFramework/C3SurfaceView$GLThreadManager;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 1707
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/TQFramework/C3SurfaceView;->mSizeChanged:Z

    .line 92
    invoke-direct {p0}, Lcom/TQFramework/C3SurfaceView;->init()V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1707
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/TQFramework/C3SurfaceView;->mSizeChanged:Z

    .line 102
    invoke-direct {p0}, Lcom/TQFramework/C3SurfaceView;->init()V

    .line 103
    return-void
.end method

.method static synthetic access$0(Lcom/TQFramework/C3SurfaceView;)I
    .locals 1

    .prologue
    .line 1715
    iget v0, p0, Lcom/TQFramework/C3SurfaceView;->mEGLContextClientVersion:I

    return v0
.end method

.method static synthetic access$1(Lcom/TQFramework/C3SurfaceView;)Lcom/TQFramework/C3SurfaceView$EGLConfigChooser;
    .locals 1

    .prologue
    .line 1710
    iget-object v0, p0, Lcom/TQFramework/C3SurfaceView;->mEGLConfigChooser:Lcom/TQFramework/C3SurfaceView$EGLConfigChooser;

    return-object v0
.end method

.method static synthetic access$2(Lcom/TQFramework/C3SurfaceView;)Lcom/TQFramework/C3SurfaceView$EGLContextFactory;
    .locals 1

    .prologue
    .line 1711
    iget-object v0, p0, Lcom/TQFramework/C3SurfaceView;->mEGLContextFactory:Lcom/TQFramework/C3SurfaceView$EGLContextFactory;

    return-object v0
.end method

.method static synthetic access$3(Lcom/TQFramework/C3SurfaceView;)Lcom/TQFramework/C3SurfaceView$EGLWindowSurfaceFactory;
    .locals 1

    .prologue
    .line 1712
    iget-object v0, p0, Lcom/TQFramework/C3SurfaceView;->mEGLWindowSurfaceFactory:Lcom/TQFramework/C3SurfaceView$EGLWindowSurfaceFactory;

    return-object v0
.end method

.method static synthetic access$4(Lcom/TQFramework/C3SurfaceView;)Lcom/TQFramework/C3SurfaceView$GLWrapper;
    .locals 1

    .prologue
    .line 1713
    iget-object v0, p0, Lcom/TQFramework/C3SurfaceView;->mGLWrapper:Lcom/TQFramework/C3SurfaceView$GLWrapper;

    return-object v0
.end method

.method static synthetic access$5(Lcom/TQFramework/C3SurfaceView;)I
    .locals 1

    .prologue
    .line 1714
    iget v0, p0, Lcom/TQFramework/C3SurfaceView;->mDebugFlags:I

    return v0
.end method

.method static synthetic access$6()Lcom/TQFramework/C3SurfaceView$GLThreadManager;
    .locals 1

    .prologue
    .line 1706
    sget-object v0, Lcom/TQFramework/C3SurfaceView;->sGLThreadManager:Lcom/TQFramework/C3SurfaceView$GLThreadManager;

    return-object v0
.end method

.method static synthetic access$7(Lcom/TQFramework/C3SurfaceView;)Z
    .locals 1

    .prologue
    .line 1707
    iget-boolean v0, p0, Lcom/TQFramework/C3SurfaceView;->mSizeChanged:Z

    return v0
.end method

.method static synthetic access$8(Lcom/TQFramework/C3SurfaceView;Z)V
    .locals 0

    .prologue
    .line 1707
    iput-boolean p1, p0, Lcom/TQFramework/C3SurfaceView;->mSizeChanged:Z

    return-void
.end method

.method private checkRenderThreadState()V
    .locals 2

    .prologue
    .line 1583
    iget-object v0, p0, Lcom/TQFramework/C3SurfaceView;->mGLThread:Lcom/TQFramework/C3SurfaceView$GLThread;

    if-eqz v0, :cond_0

    .line 1585
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1587
    :cond_0
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/TQFramework/C3SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 110
    .local v0, "holder":Landroid/view/SurfaceHolder;
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 111
    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 115
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 116
    return-void
.end method


# virtual methods
.method public getDebugFlags()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/TQFramework/C3SurfaceView;->mDebugFlags:I

    return v0
.end method

.method public getRenderMode()I
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/TQFramework/C3SurfaceView;->mGLThread:Lcom/TQFramework/C3SurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/TQFramework/C3SurfaceView$GLThread;->getRenderMode()I

    move-result v0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 439
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 440
    iget-object v0, p0, Lcom/TQFramework/C3SurfaceView;->mGLThread:Lcom/TQFramework/C3SurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/TQFramework/C3SurfaceView$GLThread;->requestExitAndWait()V

    .line 441
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/TQFramework/C3SurfaceView;->mGLThread:Lcom/TQFramework/C3SurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/TQFramework/C3SurfaceView$GLThread;->onPause()V

    .line 406
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/TQFramework/C3SurfaceView;->mGLThread:Lcom/TQFramework/C3SurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/TQFramework/C3SurfaceView$GLThread;->onResume()V

    .line 418
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 428
    iget-object v0, p0, Lcom/TQFramework/C3SurfaceView;->mGLThread:Lcom/TQFramework/C3SurfaceView$GLThread;

    invoke-virtual {v0, p1}, Lcom/TQFramework/C3SurfaceView$GLThread;->queueEvent(Ljava/lang/Runnable;)V

    .line 429
    return-void
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/TQFramework/C3SurfaceView;->mGLThread:Lcom/TQFramework/C3SurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/TQFramework/C3SurfaceView$GLThread;->requestRender()V

    .line 367
    return-void
.end method

.method public setDebugFlags(I)V
    .locals 0
    .param p1, "debugFlags"    # I

    .prologue
    .line 147
    iput p1, p0, Lcom/TQFramework/C3SurfaceView;->mDebugFlags:I

    .line 148
    return-void
.end method

.method public setEGLConfigChooser(IIIIII)V
    .locals 8
    .param p1, "redSize"    # I
    .param p2, "greenSize"    # I
    .param p3, "blueSize"    # I
    .param p4, "alphaSize"    # I
    .param p5, "depthSize"    # I
    .param p6, "stencilSize"    # I

    .prologue
    .line 288
    new-instance v0, Lcom/TQFramework/C3SurfaceView$ComponentSizeChooser;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 289
    invoke-direct/range {v0 .. v7}, Lcom/TQFramework/C3SurfaceView$ComponentSizeChooser;-><init>(Lcom/TQFramework/C3SurfaceView;IIIIII)V

    .line 288
    invoke-virtual {p0, v0}, Lcom/TQFramework/C3SurfaceView;->setEGLConfigChooser(Lcom/TQFramework/C3SurfaceView$EGLConfigChooser;)V

    .line 290
    return-void
.end method

.method public setEGLConfigChooser(Lcom/TQFramework/C3SurfaceView$EGLConfigChooser;)V
    .locals 0
    .param p1, "configChooser"    # Lcom/TQFramework/C3SurfaceView$EGLConfigChooser;

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/TQFramework/C3SurfaceView;->checkRenderThreadState()V

    .line 250
    iput-object p1, p0, Lcom/TQFramework/C3SurfaceView;->mEGLConfigChooser:Lcom/TQFramework/C3SurfaceView$EGLConfigChooser;

    .line 251
    return-void
.end method

.method public setEGLConfigChooser(Z)V
    .locals 1
    .param p1, "needDepth"    # Z

    .prologue
    .line 269
    new-instance v0, Lcom/TQFramework/C3SurfaceView$SimpleEGLConfigChooser;

    invoke-direct {v0, p0, p1}, Lcom/TQFramework/C3SurfaceView$SimpleEGLConfigChooser;-><init>(Lcom/TQFramework/C3SurfaceView;Z)V

    invoke-virtual {p0, v0}, Lcom/TQFramework/C3SurfaceView;->setEGLConfigChooser(Lcom/TQFramework/C3SurfaceView$EGLConfigChooser;)V

    .line 270
    return-void
.end method

.method public setEGLContextClientVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .prologue
    .line 320
    invoke-direct {p0}, Lcom/TQFramework/C3SurfaceView;->checkRenderThreadState()V

    .line 321
    iput p1, p0, Lcom/TQFramework/C3SurfaceView;->mEGLContextClientVersion:I

    .line 322
    return-void
.end method

.method public setEGLContextFactory(Lcom/TQFramework/C3SurfaceView$EGLContextFactory;)V
    .locals 0
    .param p1, "factory"    # Lcom/TQFramework/C3SurfaceView$EGLContextFactory;

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/TQFramework/C3SurfaceView;->checkRenderThreadState()V

    .line 217
    iput-object p1, p0, Lcom/TQFramework/C3SurfaceView;->mEGLContextFactory:Lcom/TQFramework/C3SurfaceView$EGLContextFactory;

    .line 218
    return-void
.end method

.method public setEGLWindowSurfaceFactory(Lcom/TQFramework/C3SurfaceView$EGLWindowSurfaceFactory;)V
    .locals 0
    .param p1, "factory"    # Lcom/TQFramework/C3SurfaceView$EGLWindowSurfaceFactory;

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/TQFramework/C3SurfaceView;->checkRenderThreadState()V

    .line 232
    iput-object p1, p0, Lcom/TQFramework/C3SurfaceView;->mEGLWindowSurfaceFactory:Lcom/TQFramework/C3SurfaceView$EGLWindowSurfaceFactory;

    .line 233
    return-void
.end method

.method public setGLWrapper(Lcom/TQFramework/C3SurfaceView$GLWrapper;)V
    .locals 0
    .param p1, "glWrapper"    # Lcom/TQFramework/C3SurfaceView$GLWrapper;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/TQFramework/C3SurfaceView;->mGLWrapper:Lcom/TQFramework/C3SurfaceView$GLWrapper;

    .line 134
    return-void
.end method

.method public setRenderMode(I)V
    .locals 1
    .param p1, "renderMode"    # I

    .prologue
    .line 342
    iget-object v0, p0, Lcom/TQFramework/C3SurfaceView;->mGLThread:Lcom/TQFramework/C3SurfaceView$GLThread;

    invoke-virtual {v0, p1}, Lcom/TQFramework/C3SurfaceView$GLThread;->setRenderMode(I)V

    .line 343
    return-void
.end method

.method public setRenderer(Lcom/TQFramework/C3SurfaceView$Renderer;)V
    .locals 3
    .param p1, "renderer"    # Lcom/TQFramework/C3SurfaceView$Renderer;

    .prologue
    const/4 v2, 0x0

    .line 187
    invoke-direct {p0}, Lcom/TQFramework/C3SurfaceView;->checkRenderThreadState()V

    .line 188
    iget-object v0, p0, Lcom/TQFramework/C3SurfaceView;->mEGLConfigChooser:Lcom/TQFramework/C3SurfaceView$EGLConfigChooser;

    if-nez v0, :cond_0

    .line 190
    new-instance v0, Lcom/TQFramework/C3SurfaceView$SimpleEGLConfigChooser;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/TQFramework/C3SurfaceView$SimpleEGLConfigChooser;-><init>(Lcom/TQFramework/C3SurfaceView;Z)V

    iput-object v0, p0, Lcom/TQFramework/C3SurfaceView;->mEGLConfigChooser:Lcom/TQFramework/C3SurfaceView$EGLConfigChooser;

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/TQFramework/C3SurfaceView;->mEGLContextFactory:Lcom/TQFramework/C3SurfaceView$EGLContextFactory;

    if-nez v0, :cond_1

    .line 194
    new-instance v0, Lcom/TQFramework/C3SurfaceView$DefaultContextFactory;

    invoke-direct {v0, p0, v2}, Lcom/TQFramework/C3SurfaceView$DefaultContextFactory;-><init>(Lcom/TQFramework/C3SurfaceView;Lcom/TQFramework/C3SurfaceView$DefaultContextFactory;)V

    iput-object v0, p0, Lcom/TQFramework/C3SurfaceView;->mEGLContextFactory:Lcom/TQFramework/C3SurfaceView$EGLContextFactory;

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/TQFramework/C3SurfaceView;->mEGLWindowSurfaceFactory:Lcom/TQFramework/C3SurfaceView$EGLWindowSurfaceFactory;

    if-nez v0, :cond_2

    .line 198
    new-instance v0, Lcom/TQFramework/C3SurfaceView$DefaultWindowSurfaceFactory;

    invoke-direct {v0, v2}, Lcom/TQFramework/C3SurfaceView$DefaultWindowSurfaceFactory;-><init>(Lcom/TQFramework/C3SurfaceView$DefaultWindowSurfaceFactory;)V

    iput-object v0, p0, Lcom/TQFramework/C3SurfaceView;->mEGLWindowSurfaceFactory:Lcom/TQFramework/C3SurfaceView$EGLWindowSurfaceFactory;

    .line 200
    :cond_2
    new-instance v0, Lcom/TQFramework/C3SurfaceView$GLThread;

    invoke-direct {v0, p0, p1}, Lcom/TQFramework/C3SurfaceView$GLThread;-><init>(Lcom/TQFramework/C3SurfaceView;Lcom/TQFramework/C3SurfaceView$Renderer;)V

    iput-object v0, p0, Lcom/TQFramework/C3SurfaceView;->mGLThread:Lcom/TQFramework/C3SurfaceView$GLThread;

    .line 201
    iget-object v0, p0, Lcom/TQFramework/C3SurfaceView;->mGLThread:Lcom/TQFramework/C3SurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/TQFramework/C3SurfaceView$GLThread;->start()V

    .line 202
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 394
    iget-object v0, p0, Lcom/TQFramework/C3SurfaceView;->mGLThread:Lcom/TQFramework/C3SurfaceView$GLThread;

    invoke-virtual {v0, p3, p4}, Lcom/TQFramework/C3SurfaceView$GLThread;->onWindowResize(II)V

    .line 395
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 375
    iget-object v0, p0, Lcom/TQFramework/C3SurfaceView;->mGLThread:Lcom/TQFramework/C3SurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/TQFramework/C3SurfaceView$GLThread;->surfaceCreated()V

    .line 376
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 385
    iget-object v0, p0, Lcom/TQFramework/C3SurfaceView;->mGLThread:Lcom/TQFramework/C3SurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/TQFramework/C3SurfaceView$GLThread;->surfaceDestroyed()V

    .line 386
    return-void
.end method
