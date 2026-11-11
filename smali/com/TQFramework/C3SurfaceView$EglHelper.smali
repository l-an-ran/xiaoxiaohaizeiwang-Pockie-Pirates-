.class Lcom/TQFramework/C3SurfaceView$EglHelper;
.super Ljava/lang/Object;
.source "C3SurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/TQFramework/C3SurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EglHelper"
.end annotation


# instance fields
.field mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field final synthetic this$0:Lcom/TQFramework/C3SurfaceView;


# direct methods
.method public constructor <init>(Lcom/TQFramework/C3SurfaceView;)V
    .locals 0

    .prologue
    .line 745
    iput-object p1, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->this$0:Lcom/TQFramework/C3SurfaceView;

    .line 744
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 746
    return-void
.end method

.method private throwEglException(Ljava/lang/String;)V
    .locals 1
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    .line 960
    iget-object v0, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/TQFramework/C3SurfaceView$EglHelper;->throwEglException(Ljava/lang/String;I)V

    .line 961
    return-void
.end method

.method private throwEglException(Ljava/lang/String;I)V
    .locals 3
    .param p1, "function"    # Ljava/lang/String;
    .param p2, "error"    # I

    .prologue
    .line 965
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 970
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public createSurface(Landroid/view/SurfaceHolder;)Ljavax/microedition/khronos/opengles/GL;
    .locals 9
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 814
    iget-object v4, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    if-nez v4, :cond_0

    .line 816
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "egl not initialized"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 818
    :cond_0
    iget-object v4, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-nez v4, :cond_1

    .line 820
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "eglDisplay not initialized"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 822
    :cond_1
    iget-object v4, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v4, :cond_2

    .line 824
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "mEglConfig not initialized"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 830
    :cond_2
    iget-object v4, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v4, v5, :cond_3

    .line 837
    iget-object v4, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v6, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 838
    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v8, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    .line 837
    invoke-interface {v4, v5, v6, v7, v8}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 839
    iget-object v4, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->this$0:Lcom/TQFramework/C3SurfaceView;

    invoke-static {v4}, Lcom/TQFramework/C3SurfaceView;->access$3(Lcom/TQFramework/C3SurfaceView;)Lcom/TQFramework/C3SurfaceView$EGLWindowSurfaceFactory;

    move-result-object v4

    iget-object v5, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v6, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v7, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v4, v5, v6, v7}, Lcom/TQFramework/C3SurfaceView$EGLWindowSurfaceFactory;->destroySurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 845
    :cond_3
    iget-object v4, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->this$0:Lcom/TQFramework/C3SurfaceView;

    invoke-static {v4}, Lcom/TQFramework/C3SurfaceView;->access$3(Lcom/TQFramework/C3SurfaceView;)Lcom/TQFramework/C3SurfaceView$EGLWindowSurfaceFactory;

    move-result-object v4

    iget-object v5, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v6, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v7, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v4, v5, v6, v7, p1}, Lcom/TQFramework/C3SurfaceView$EGLWindowSurfaceFactory;->createWindowSurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v4

    iput-object v4, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 847
    iget-object v4, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v4, v5, :cond_7

    .line 849
    :cond_4
    iget-object v4, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    .line 850
    .local v1, "error":I
    const/16 v4, 0x300b

    if-ne v1, v4, :cond_6

    .line 852
    const-string v4, "EglHelper"

    const-string v5, "createWindowSurface returned EGL_BAD_NATIVE_WINDOW."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    const/4 v2, 0x0

    .line 887
    .end local v1    # "error":I
    :cond_5
    :goto_0
    return-object v2

    .line 855
    .restart local v1    # "error":I
    :cond_6
    const-string v4, "createWindowSurface"

    invoke-direct {p0, v4, v1}, Lcom/TQFramework/C3SurfaceView$EglHelper;->throwEglException(Ljava/lang/String;I)V

    .line 862
    .end local v1    # "error":I
    :cond_7
    iget-object v4, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v5, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v6, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v7, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v8, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v4, v5, v6, v7, v8}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 864
    const-string v4, "eglMakeCurrent"

    invoke-direct {p0, v4}, Lcom/TQFramework/C3SurfaceView$EglHelper;->throwEglException(Ljava/lang/String;)V

    .line 867
    :cond_8
    iget-object v4, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v4}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v2

    .line 868
    .local v2, "gl":Ljavax/microedition/khronos/opengles/GL;
    iget-object v4, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->this$0:Lcom/TQFramework/C3SurfaceView;

    invoke-static {v4}, Lcom/TQFramework/C3SurfaceView;->access$4(Lcom/TQFramework/C3SurfaceView;)Lcom/TQFramework/C3SurfaceView$GLWrapper;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 870
    iget-object v4, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->this$0:Lcom/TQFramework/C3SurfaceView;

    invoke-static {v4}, Lcom/TQFramework/C3SurfaceView;->access$4(Lcom/TQFramework/C3SurfaceView;)Lcom/TQFramework/C3SurfaceView$GLWrapper;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/TQFramework/C3SurfaceView$GLWrapper;->wrap(Ljavax/microedition/khronos/opengles/GL;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v2

    .line 873
    :cond_9
    iget-object v4, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->this$0:Lcom/TQFramework/C3SurfaceView;

    invoke-static {v4}, Lcom/TQFramework/C3SurfaceView;->access$5(Lcom/TQFramework/C3SurfaceView;)I

    move-result v4

    and-int/lit8 v4, v4, 0x3

    if-eqz v4, :cond_5

    .line 875
    const/4 v0, 0x0

    .line 876
    .local v0, "configFlags":I
    const/4 v3, 0x0

    .line 877
    .local v3, "log":Ljava/io/Writer;
    iget-object v4, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->this$0:Lcom/TQFramework/C3SurfaceView;

    invoke-static {v4}, Lcom/TQFramework/C3SurfaceView;->access$5(Lcom/TQFramework/C3SurfaceView;)I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_a

    .line 879
    or-int/lit8 v0, v0, 0x1

    .line 881
    :cond_a
    iget-object v4, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->this$0:Lcom/TQFramework/C3SurfaceView;

    invoke-static {v4}, Lcom/TQFramework/C3SurfaceView;->access$5(Lcom/TQFramework/C3SurfaceView;)I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_b

    .line 883
    new-instance v3, Lcom/TQFramework/C3SurfaceView$LogWriter;

    .end local v3    # "log":Ljava/io/Writer;
    invoke-direct {v3}, Lcom/TQFramework/C3SurfaceView$LogWriter;-><init>()V

    .line 885
    .restart local v3    # "log":Ljava/io/Writer;
    :cond_b
    invoke-static {v2, v0, v3}, Landroid/opengl/GLDebugHelper;->wrap(Ljavax/microedition/khronos/opengles/GL;ILjava/io/Writer;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v2

    goto :goto_0
.end method

.method public destroySurface()V
    .locals 5

    .prologue
    .line 928
    iget-object v0, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_0

    .line 930
    iget-object v0, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 931
    iget-object v0, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->this$0:Lcom/TQFramework/C3SurfaceView;

    invoke-static {v0}, Lcom/TQFramework/C3SurfaceView;->access$3(Lcom/TQFramework/C3SurfaceView;)Lcom/TQFramework/C3SurfaceView$EGLWindowSurfaceFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2, v3}, Lcom/TQFramework/C3SurfaceView$EGLWindowSurfaceFactory;->destroySurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 932
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 934
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 943
    iget-object v0, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 945
    iget-object v0, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_0

    .line 947
    iget-object v0, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->this$0:Lcom/TQFramework/C3SurfaceView;

    invoke-static {v0}, Lcom/TQFramework/C3SurfaceView;->access$2(Lcom/TQFramework/C3SurfaceView;)Lcom/TQFramework/C3SurfaceView$EGLContextFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3}, Lcom/TQFramework/C3SurfaceView$EGLContextFactory;->destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 948
    iput-object v5, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 951
    :cond_0
    iget-object v0, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_1

    .line 953
    iget-object v0, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 954
    iput-object v5, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 956
    :cond_1
    return-void
.end method

.method public start()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 761
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v1, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 766
    iget-object v1, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    iput-object v1, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 768
    iget-object v1, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v1, v2, :cond_0

    .line 770
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "eglGetDisplay failed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 776
    :cond_0
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 777
    .local v0, "version":[I
    iget-object v1, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 779
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "eglInitialize failed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 781
    :cond_1
    iget-object v1, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->this$0:Lcom/TQFramework/C3SurfaceView;

    invoke-static {v1}, Lcom/TQFramework/C3SurfaceView;->access$1(Lcom/TQFramework/C3SurfaceView;)Lcom/TQFramework/C3SurfaceView$EGLConfigChooser;

    move-result-object v1

    iget-object v2, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v3}, Lcom/TQFramework/C3SurfaceView$EGLConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 787
    iget-object v1, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->this$0:Lcom/TQFramework/C3SurfaceView;

    invoke-static {v1}, Lcom/TQFramework/C3SurfaceView;->access$2(Lcom/TQFramework/C3SurfaceView;)Lcom/TQFramework/C3SurfaceView$EGLContextFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v1, v2, v3, v4}, Lcom/TQFramework/C3SurfaceView$EGLContextFactory;->createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    iput-object v1, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 788
    iget-object v1, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v1, v2, :cond_3

    .line 790
    :cond_2
    iput-object v5, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 791
    const-string v1, "createContext"

    invoke-direct {p0, v1}, Lcom/TQFramework/C3SurfaceView$EglHelper;->throwEglException(Ljava/lang/String;)V

    .line 798
    :cond_3
    iput-object v5, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 799
    return-void
.end method

.method public swap()Z
    .locals 5

    .prologue
    .line 896
    iget-object v1, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 904
    iget-object v1, p0, Lcom/TQFramework/C3SurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 905
    .local v0, "error":I
    packed-switch v0, :pswitch_data_0

    .line 916
    :pswitch_0
    const-string v1, "eglSwapBuffers"

    invoke-direct {p0, v1, v0}, Lcom/TQFramework/C3SurfaceView$EglHelper;->throwEglException(Ljava/lang/String;I)V

    .line 919
    .end local v0    # "error":I
    :cond_0
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 908
    .restart local v0    # "error":I
    :pswitch_1
    const/4 v1, 0x0

    goto :goto_1

    .line 913
    :pswitch_2
    const-string v1, "EglHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "eglSwapBuffers returned EGL_BAD_NATIVE_WINDOW. tid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 905
    nop

    :pswitch_data_0
    .packed-switch 0x300b
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
