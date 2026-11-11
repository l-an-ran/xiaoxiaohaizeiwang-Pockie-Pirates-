.class Lcom/TQFramework/C3SurfaceView$GLThreadManager;
.super Ljava/lang/Object;
.source "C3SurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/TQFramework/C3SurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GLThreadManager"
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = null

.field private static final kGLES_10:I = 0x10000

.field private static final kGLES_20:I = 0x20000

.field private static final kMSM7K_RENDERER_PREFIX:Ljava/lang/String; = "Q3Dimension MSM7500 "


# instance fields
.field private mEglOwner:Lcom/TQFramework/C3SurfaceView$GLThread;

.field private mGLESDriverCheckComplete:Z

.field private mGLESVersion:I

.field private mGLESVersionCheckComplete:Z

.field private mMultipleGLESContextsAllowed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1591
    const-string v0, "GLThreadManager"

    sput-object v0, Lcom/TQFramework/C3SurfaceView$GLThreadManager;->TAG:Ljava/lang/String;

    .line 1589
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/TQFramework/C3SurfaceView$GLThreadManager;)V
    .locals 0

    .prologue
    .line 1589
    invoke-direct {p0}, Lcom/TQFramework/C3SurfaceView$GLThreadManager;-><init>()V

    return-void
.end method

.method private checkGLESVersion()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1679
    iget-boolean v0, p0, Lcom/TQFramework/C3SurfaceView$GLThreadManager;->mGLESVersionCheckComplete:Z

    if-nez v0, :cond_1

    .line 1681
    const/high16 v0, 0x10000

    iput v0, p0, Lcom/TQFramework/C3SurfaceView$GLThreadManager;->mGLESVersion:I

    .line 1682
    iget v0, p0, Lcom/TQFramework/C3SurfaceView$GLThreadManager;->mGLESVersion:I

    const/high16 v1, 0x20000

    if-lt v0, v1, :cond_0

    .line 1684
    iput-boolean v2, p0, Lcom/TQFramework/C3SurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    .line 1692
    :cond_0
    iput-boolean v2, p0, Lcom/TQFramework/C3SurfaceView$GLThreadManager;->mGLESVersionCheckComplete:Z

    .line 1694
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/4 v1, 0x1

    .line 1659
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/TQFramework/C3SurfaceView$GLThreadManager;->mGLESDriverCheckComplete:Z

    if-nez v2, :cond_2

    .line 1661
    invoke-direct {p0}, Lcom/TQFramework/C3SurfaceView$GLThreadManager;->checkGLESVersion()V

    .line 1662
    iget v2, p0, Lcom/TQFramework/C3SurfaceView$GLThreadManager;->mGLESVersion:I

    const/high16 v3, 0x20000

    if-ge v2, v3, :cond_1

    .line 1664
    const/16 v2, 0x1f01

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    .line 1665
    .local v0, "renderer":Ljava/lang/String;
    const-string v2, "Q3Dimension MSM7500 "

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    iput-boolean v1, p0, Lcom/TQFramework/C3SurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    .line 1671
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1673
    .end local v0    # "renderer":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/TQFramework/C3SurfaceView$GLThreadManager;->mGLESDriverCheckComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1675
    :cond_2
    monitor-exit p0

    return-void

    .line 1659
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public releaseEglContextLocked(Lcom/TQFramework/C3SurfaceView$GLThread;)V
    .locals 1
    .param p1, "thread"    # Lcom/TQFramework/C3SurfaceView$GLThread;

    .prologue
    .line 1636
    iget-object v0, p0, Lcom/TQFramework/C3SurfaceView$GLThreadManager;->mEglOwner:Lcom/TQFramework/C3SurfaceView$GLThread;

    if-ne v0, p1, :cond_0

    .line 1638
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/TQFramework/C3SurfaceView$GLThreadManager;->mEglOwner:Lcom/TQFramework/C3SurfaceView$GLThread;

    .line 1640
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1641
    return-void
.end method

.method public declared-synchronized shouldReleaseEGLContextWhenPausing()Z
    .locals 1

    .prologue
    .line 1648
    monitor-enter p0

    const/4 v0, 0x1

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized shouldTerminateEGLWhenPausing()Z
    .locals 1

    .prologue
    .line 1653
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/TQFramework/C3SurfaceView$GLThreadManager;->checkGLESVersion()V

    .line 1654
    iget-boolean v0, p0, Lcom/TQFramework/C3SurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1653
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized threadExiting(Lcom/TQFramework/C3SurfaceView$GLThread;)V
    .locals 1
    .param p1, "thread"    # Lcom/TQFramework/C3SurfaceView$GLThread;

    .prologue
    .line 1599
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p1, v0}, Lcom/TQFramework/C3SurfaceView$GLThread;->access$0(Lcom/TQFramework/C3SurfaceView$GLThread;Z)V

    .line 1600
    iget-object v0, p0, Lcom/TQFramework/C3SurfaceView$GLThreadManager;->mEglOwner:Lcom/TQFramework/C3SurfaceView$GLThread;

    if-ne v0, p1, :cond_0

    .line 1602
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/TQFramework/C3SurfaceView$GLThreadManager;->mEglOwner:Lcom/TQFramework/C3SurfaceView$GLThread;

    .line 1604
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1605
    monitor-exit p0

    return-void

    .line 1599
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public tryAcquireEglContextLocked(Lcom/TQFramework/C3SurfaceView$GLThread;)Z
    .locals 2
    .param p1, "thread"    # Lcom/TQFramework/C3SurfaceView$GLThread;

    .prologue
    const/4 v0, 0x1

    .line 1616
    iget-object v1, p0, Lcom/TQFramework/C3SurfaceView$GLThreadManager;->mEglOwner:Lcom/TQFramework/C3SurfaceView$GLThread;

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/TQFramework/C3SurfaceView$GLThreadManager;->mEglOwner:Lcom/TQFramework/C3SurfaceView$GLThread;

    if-nez v1, :cond_2

    .line 1618
    :cond_0
    iput-object p1, p0, Lcom/TQFramework/C3SurfaceView$GLThreadManager;->mEglOwner:Lcom/TQFramework/C3SurfaceView$GLThread;

    .line 1619
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1627
    :cond_1
    :goto_0
    return v0

    .line 1622
    :cond_2
    invoke-direct {p0}, Lcom/TQFramework/C3SurfaceView$GLThreadManager;->checkGLESVersion()V

    .line 1623
    iget-boolean v1, p0, Lcom/TQFramework/C3SurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    if-nez v1, :cond_1

    .line 1627
    const/4 v0, 0x0

    goto :goto_0
.end method
