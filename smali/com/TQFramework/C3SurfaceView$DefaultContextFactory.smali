.class Lcom/TQFramework/C3SurfaceView$DefaultContextFactory;
.super Ljava/lang/Object;
.source "C3SurfaceView.java"

# interfaces
.implements Lcom/TQFramework/C3SurfaceView$EGLContextFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/TQFramework/C3SurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultContextFactory"
.end annotation


# instance fields
.field private EGL_CONTEXT_CLIENT_VERSION:I

.field final synthetic this$0:Lcom/TQFramework/C3SurfaceView;


# direct methods
.method private constructor <init>(Lcom/TQFramework/C3SurfaceView;)V
    .locals 1

    .prologue
    .line 525
    iput-object p1, p0, Lcom/TQFramework/C3SurfaceView$DefaultContextFactory;->this$0:Lcom/TQFramework/C3SurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 527
    const/16 v0, 0x3098

    iput v0, p0, Lcom/TQFramework/C3SurfaceView$DefaultContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/TQFramework/C3SurfaceView;Lcom/TQFramework/C3SurfaceView$DefaultContextFactory;)V
    .locals 0

    .prologue
    .line 525
    invoke-direct {p0, p1}, Lcom/TQFramework/C3SurfaceView$DefaultContextFactory;-><init>(Lcom/TQFramework/C3SurfaceView;)V

    return-void
.end method


# virtual methods
.method public createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 3
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 531
    const/4 v1, 0x3

    new-array v0, v1, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/TQFramework/C3SurfaceView$DefaultContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/TQFramework/C3SurfaceView$DefaultContextFactory;->this$0:Lcom/TQFramework/C3SurfaceView;

    invoke-static {v2}, Lcom/TQFramework/C3SurfaceView;->access$0(Lcom/TQFramework/C3SurfaceView;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 532
    const/16 v2, 0x3038

    aput v2, v0, v1

    .line 534
    .local v0, "attrib_list":[I
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    .line 535
    iget-object v2, p0, Lcom/TQFramework/C3SurfaceView$DefaultContextFactory;->this$0:Lcom/TQFramework/C3SurfaceView;

    invoke-static {v2}, Lcom/TQFramework/C3SurfaceView;->access$0(Lcom/TQFramework/C3SurfaceView;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 534
    .end local v0    # "attrib_list":[I
    :goto_0
    invoke-interface {p1, p2, p3, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    return-object v1

    .line 535
    .restart local v0    # "attrib_list":[I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 3
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "context"    # Ljavax/microedition/khronos/egl/EGLContext;

    .prologue
    .line 540
    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 542
    const-string v0, "DefaultContextFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "display:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglDestroyContext failed: "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 549
    :cond_0
    return-void
.end method
