.class Lcom/TQFramework/C3SurfaceView$GLThread;
.super Ljava/lang/Thread;
.source "C3SurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/TQFramework/C3SurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GLThread"
.end annotation


# instance fields
.field private mEglHelper:Lcom/TQFramework/C3SurfaceView$EglHelper;

.field private mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mExited:Z

.field private mHasSurface:Z

.field private mHaveEglContext:Z

.field private mHaveEglSurface:Z

.field private mHeight:I

.field private mPaused:Z

.field private mRenderComplete:Z

.field private mRenderMode:I

.field private mRenderer:Lcom/TQFramework/C3SurfaceView$Renderer;

.field private mRequestPaused:Z

.field private mRequestRender:Z

.field private mShouldExit:Z

.field private mWaitingForSurface:Z

.field private mWidth:I

.field final synthetic this$0:Lcom/TQFramework/C3SurfaceView;


# direct methods
.method constructor <init>(Lcom/TQFramework/C3SurfaceView;Lcom/TQFramework/C3SurfaceView$Renderer;)V
    .locals 3
    .param p2, "renderer"    # Lcom/TQFramework/C3SurfaceView$Renderer;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 992
    iput-object p1, p0, Lcom/TQFramework/C3SurfaceView$GLThread;->this$0:Lcom/TQFramework/C3SurfaceView;

    .line 993
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1533
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/TQFramework/C3SurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    .line 994
    iput v1, p0, Lcom/TQFramework/C3SurfaceView$GLThread;->mWidth:I

    .line 995
    iput v1, p0, Lcom/TQFramework/C3SurfaceView$GLThread;->mHeight:I

    .line 996
    iput-boolean v2, p0, Lcom/TQFramework/C3SurfaceView$GLThread;->mRequestRender:Z

    .line 997
    iput v2, p0, Lcom/TQFramework/C3SurfaceView$GLThread;->mRenderMode:I

    .line 998
    iput-object p2, p0, Lcom/TQFramework/C3SurfaceView$GLThread;->mRenderer:Lcom/TQFramework/C3SurfaceView$Renderer;

    .line 999
    return-void
.end method

.method static synthetic access$0(Lcom/TQFramework/C3SurfaceView$GLThread;Z)V
    .locals 0

    .prologue
    .line 1521
    iput-boolean p1, p0, Lcom/TQFramework/C3SurfaceView$GLThread;->mExited:Z

    return-void
.end method

.method private guardedRun()V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v15, 0x1

    const/4 v14, 0x0

    .line 1054
    new-instance v12, Lcom/TQFramework/C3SurfaceView$EglHelper;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/TQFramework/C3SurfaceView$GLThread;->this$0:Lcom/TQFramework/C3SurfaceView;

    invoke-direct {v12, v13}, Lcom/TQFramework/C3SurfaceView$EglHelper;-><init>(Lcom/TQFramework/C3SurfaceView;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/TQFramework/C3SurfaceView$GLThread;->mEglHelper:Lcom/TQFramework/C3SurfaceView$EglHelper;

    .line 1055
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/TQFramework/C3SurfaceView$GLThread;->mHaveEglContext:Z

    .line 1056
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/TQFramework/C3SurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1059
    const/4 v5, 0x0

    .line 1060
    .local v5, "gl":Ljavax/microedition/khronos/opengles/GL10;
    const/4 v1, 0x0

    .line 1061
    .local v1, "createEglContext":Z
    const/4 v2, 0x0

    .line 1062
    .local v2, "createEglSurface":Z
    const/4 v7, 0x0

    .line 1063
    .local v7, "lostEglContext":Z
    const/4 v8, 0x0

    .line 1064
    .local v8, "sizeChanged":Z
    const/4 v11, 0x0

    .line 1065
    .local v11, "wantRenderNotification":Z
    const/4 v3, 0x0

    .line 1066
    .local v3, "doRenderNotification":Z
    const/4 v10, 0x0

    .line 1067
    .local v10, "w":I
    const/4 v6, 0x0

    .line 1068
    .local v6, "h":I
    const/4 v4, 0x0

    .line 1072
    .local v4, "event":Ljava/lang/Runnable;
    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/TQFramework/C3SurfaceView;->access$6()Lcom/TQFramework/C3SurfaceView$GLThreadManager;

    move-result-object v13

    monitor-enter v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1076
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/TQFramework/C3SurfaceView$GLThread;->mShouldExit:Z

    if-eqz v12, :cond_1

    .line 1078
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1305
    invoke-static {}, Lcom/TQFramework/C3SurfaceView;->access$6()Lcom/TQFramework/C3SurfaceView$GLThreadManager;

    move-result-object v13

    monitor-enter v13

    .line 1307
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/TQFramework/C3SurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1308
    invoke-direct/range {p0 .. p0}, Lcom/TQFramework/C3SurfaceView$GLThread;->stopEglContextLocked()V

    .line 1305
    monitor-exit v13

    .line 1311
    :goto_2
    return-void

    .line 1305
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v12

    .line 1081
    :cond_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/TQFramework/C3SurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_2

    .line 1083
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/TQFramework/C3SurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/lang/Runnable;

    move-object v4, v0

    .line 1072
    :goto_3
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1235
    if-eqz v4, :cond_10

    .line 1237
    :try_start_4
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1238
    const/4 v4, 0x0

    .line 1239
    goto :goto_0

    .line 1088
    :cond_2
    :try_start_5
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/TQFramework/C3SurfaceView$GLThread;->mPaused:Z

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/TQFramework/C3SurfaceView$GLThread;->mRequestPaused:Z

    if-eq v12, v14, :cond_3

    .line 1090
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/TQFramework/C3SurfaceView$GLThread;->mRequestPaused:Z

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/TQFramework/C3SurfaceView$GLThread;->mPaused:Z

    .line 1091
    invoke-static {}, Lcom/TQFramework/C3SurfaceView;->access$6()Lcom/TQFramework/C3SurfaceView$GLThreadManager;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->notifyAll()V

    .line 1099
    :cond_3
    if-eqz v7, :cond_4

    .line 1101
    invoke-direct/range {p0 .. p0}, Lcom/TQFramework/C3SurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1102
    invoke-direct/range {p0 .. p0}, Lcom/TQFramework/C3SurfaceView$GLThread;->stopEglContextLocked()V

    .line 1103
    const/4 v7, 0x0

    .line 1107
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/TQFramework/C3SurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/TQFramework/C3SurfaceView$GLThread;->mPaused:Z

    if-eqz v12, :cond_6

    .line 1113
    invoke-direct/range {p0 .. p0}, Lcom/TQFramework/C3SurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1114
    invoke-static {}, Lcom/TQFramework/C3SurfaceView;->access$6()Lcom/TQFramework/C3SurfaceView$GLThreadManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/TQFramework/C3SurfaceView$GLThreadManager;->shouldReleaseEGLContextWhenPausing()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1116
    invoke-direct/range {p0 .. p0}, Lcom/TQFramework/C3SurfaceView$GLThread;->stopEglContextLocked()V

    .line 1122
    :cond_5
    invoke-static {}, Lcom/TQFramework/C3SurfaceView;->access$6()Lcom/TQFramework/C3SurfaceView$GLThreadManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/TQFramework/C3SurfaceView$GLThreadManager;->shouldTerminateEGLWhenPausing()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1124
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/TQFramework/C3SurfaceView$GLThread;->mEglHelper:Lcom/TQFramework/C3SurfaceView$EglHelper;

    invoke-virtual {v12}, Lcom/TQFramework/C3SurfaceView$EglHelper;->finish()V

    .line 1133
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/TQFramework/C3SurfaceView$GLThread;->mHasSurface:Z

    if-nez v12, :cond_8

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/TQFramework/C3SurfaceView$GLThread;->mWaitingForSurface:Z

    if-nez v12, :cond_8

    .line 1139
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/TQFramework/C3SurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v12, :cond_7

    .line 1141
    invoke-direct/range {p0 .. p0}, Lcom/TQFramework/C3SurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1143
    :cond_7
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/TQFramework/C3SurfaceView$GLThread;->mWaitingForSurface:Z

    .line 1144
    invoke-static {}, Lcom/TQFramework/C3SurfaceView;->access$6()Lcom/TQFramework/C3SurfaceView$GLThreadManager;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->notifyAll()V

    .line 1148
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/TQFramework/C3SurfaceView$GLThread;->mHasSurface:Z

    if-eqz v12, :cond_9

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/TQFramework/C3SurfaceView$GLThread;->mWaitingForSurface:Z

    if-eqz v12, :cond_9

    .line 1154
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/TQFramework/C3SurfaceView$GLThread;->mWaitingForSurface:Z

    .line 1155
    invoke-static {}, Lcom/TQFramework/C3SurfaceView;->access$6()Lcom/TQFramework/C3SurfaceView$GLThreadManager;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->notifyAll()V

    .line 1158
    :cond_9
    if-eqz v3, :cond_a

    .line 1160
    const/4 v11, 0x0

    .line 1161
    const/4 v3, 0x0

    .line 1162
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/TQFramework/C3SurfaceView$GLThread;->mRenderComplete:Z

    .line 1163
    invoke-static {}, Lcom/TQFramework/C3SurfaceView;->access$6()Lcom/TQFramework/C3SurfaceView$GLThreadManager;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->notifyAll()V

    .line 1167
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/TQFramework/C3SurfaceView$GLThread;->mPaused:Z

    if-nez v12, :cond_f

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/TQFramework/C3SurfaceView$GLThread;->mHasSurface:Z

    if-eqz v12, :cond_f

    .line 1168
    move-object/from16 v0, p0

    iget v12, v0, Lcom/TQFramework/C3SurfaceView$GLThread;->mWidth:I

    if-lez v12, :cond_f

    move-object/from16 v0, p0

    iget v12, v0, Lcom/TQFramework/C3SurfaceView$GLThread;->mHeight:I

    if-lez v12, :cond_f

    .line 1169
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/TQFramework/C3SurfaceView$GLThread;->mRequestRender:Z

    if-nez v12, :cond_b

    move-object/from16 v0, p0

    iget v12, v0, Lcom/TQFramework/C3SurfaceView$GLThread;->mRenderMode:I

    if-ne v12, v15, :cond_f

    .line 1172
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/TQFramework/C3SurfaceView$GLThread;->mHaveEglContext:Z

    if-nez v12, :cond_c

    invoke-static {}, Lcom/TQFramework/C3SurfaceView;->access$6()Lcom/TQFramework/C3SurfaceView$GLThreadManager;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Lcom/TQFramework/C3SurfaceView$GLThreadManager;->tryAcquireEglContextLocked(Lcom/TQFramework/C3SurfaceView$GLThread;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v12

    if-eqz v12, :cond_c

    .line 1176
    :try_start_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/TQFramework/C3SurfaceView$GLThread;->mEglHelper:Lcom/TQFramework/C3SurfaceView$EglHelper;

    invoke-virtual {v12}, Lcom/TQFramework/C3SurfaceView$EglHelper;->start()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1183
    const/4 v12, 0x1

    :try_start_7
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/TQFramework/C3SurfaceView$GLThread;->mHaveEglContext:Z

    .line 1184
    const/4 v1, 0x1

    .line 1186
    invoke-static {}, Lcom/TQFramework/C3SurfaceView;->access$6()Lcom/TQFramework/C3SurfaceView$GLThreadManager;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->notifyAll()V

    .line 1189
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/TQFramework/C3SurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v12, :cond_d

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/TQFramework/C3SurfaceView$GLThread;->mHaveEglSurface:Z

    if-nez v12, :cond_d

    .line 1191
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/TQFramework/C3SurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1192
    const/4 v2, 0x1

    .line 1193
    const/4 v8, 0x1

    .line 1196
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/TQFramework/C3SurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v12, :cond_f

    .line 1198
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/TQFramework/C3SurfaceView$GLThread;->this$0:Lcom/TQFramework/C3SurfaceView;

    invoke-static {v12}, Lcom/TQFramework/C3SurfaceView;->access$7(Lcom/TQFramework/C3SurfaceView;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 1200
    const/4 v8, 0x1

    .line 1201
    move-object/from16 v0, p0

    iget v10, v0, Lcom/TQFramework/C3SurfaceView$GLThread;->mWidth:I

    .line 1202
    move-object/from16 v0, p0

    iget v6, v0, Lcom/TQFramework/C3SurfaceView$GLThread;->mHeight:I

    .line 1203
    const/4 v11, 0x1

    .line 1215
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/TQFramework/C3SurfaceView$GLThread;->this$0:Lcom/TQFramework/C3SurfaceView;

    const/4 v14, 0x0

    invoke-static {v12, v14}, Lcom/TQFramework/C3SurfaceView;->access$8(Lcom/TQFramework/C3SurfaceView;Z)V

    .line 1221
    :goto_4
    invoke-static {}, Lcom/TQFramework/C3SurfaceView;->access$6()Lcom/TQFramework/C3SurfaceView$GLThreadManager;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_3

    .line 1072
    :catchall_1
    move-exception v12

    monitor-exit v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1301
    :catchall_2
    move-exception v12

    .line 1305
    invoke-static {}, Lcom/TQFramework/C3SurfaceView;->access$6()Lcom/TQFramework/C3SurfaceView$GLThreadManager;

    move-result-object v13

    monitor-enter v13

    .line 1307
    :try_start_9
    invoke-direct/range {p0 .. p0}, Lcom/TQFramework/C3SurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1308
    invoke-direct/range {p0 .. p0}, Lcom/TQFramework/C3SurfaceView$GLThread;->stopEglContextLocked()V

    .line 1305
    monitor-exit v13
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 1310
    throw v12

    .line 1178
    :catch_0
    move-exception v9

    .line 1180
    .local v9, "t":Ljava/lang/RuntimeException;
    :try_start_a
    invoke-static {}, Lcom/TQFramework/C3SurfaceView;->access$6()Lcom/TQFramework/C3SurfaceView$GLThreadManager;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Lcom/TQFramework/C3SurfaceView$GLThreadManager;->releaseEglContextLocked(Lcom/TQFramework/C3SurfaceView$GLThread;)V

    .line 1181
    throw v9

    .line 1219
    .end local v9    # "t":Ljava/lang/RuntimeException;
    :cond_e
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/TQFramework/C3SurfaceView$GLThread;->mRequestRender:Z

    goto :goto_4

    .line 1231
    :cond_f
    invoke-static {}, Lcom/TQFramework/C3SurfaceView;->access$6()Lcom/TQFramework/C3SurfaceView$GLThreadManager;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->wait()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_1

    .line 1242
    :cond_10
    if-eqz v2, :cond_12

    .line 1248
    :try_start_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/TQFramework/C3SurfaceView$GLThread;->mEglHelper:Lcom/TQFramework/C3SurfaceView$EglHelper;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/TQFramework/C3SurfaceView$GLThread;->this$0:Lcom/TQFramework/C3SurfaceView;

    invoke-virtual {v13}, Lcom/TQFramework/C3SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/TQFramework/C3SurfaceView$EglHelper;->createSurface(Landroid/view/SurfaceHolder;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    move-object v5, v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 1249
    if-nez v5, :cond_11

    .line 1305
    invoke-static {}, Lcom/TQFramework/C3SurfaceView;->access$6()Lcom/TQFramework/C3SurfaceView$GLThreadManager;

    move-result-object v13

    monitor-enter v13

    .line 1307
    :try_start_c
    invoke-direct/range {p0 .. p0}, Lcom/TQFramework/C3SurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1308
    invoke-direct/range {p0 .. p0}, Lcom/TQFramework/C3SurfaceView$GLThread;->stopEglContextLocked()V

    .line 1305
    monitor-exit v13

    goto/16 :goto_2

    :catchall_3
    move-exception v12

    monitor-exit v13
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    throw v12

    .line 1254
    :cond_11
    :try_start_d
    invoke-static {}, Lcom/TQFramework/C3SurfaceView;->access$6()Lcom/TQFramework/C3SurfaceView$GLThreadManager;

    move-result-object v12

    invoke-virtual {v12, v5}, Lcom/TQFramework/C3SurfaceView$GLThreadManager;->checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1255
    const/4 v2, 0x0

    .line 1258
    :cond_12
    if-eqz v1, :cond_13

    .line 1265
    const/16 v12, 0x4000

    invoke-interface {v5, v12}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 1266
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/TQFramework/C3SurfaceView$GLThread;->mRenderer:Lcom/TQFramework/C3SurfaceView$Renderer;

    invoke-interface {v12, v10, v6}, Lcom/TQFramework/C3SurfaceView$Renderer;->onSurfaceCreated(II)V

    .line 1267
    const/4 v1, 0x0

    .line 1270
    :cond_13
    if-eqz v8, :cond_14

    .line 1276
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/TQFramework/C3SurfaceView$GLThread;->mRenderer:Lcom/TQFramework/C3SurfaceView$Renderer;

    invoke-interface {v12, v10, v6}, Lcom/TQFramework/C3SurfaceView$Renderer;->onSurfaceChanged(II)V

    .line 1277
    const/4 v8, 0x0

    .line 1284
    :cond_14
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/TQFramework/C3SurfaceView$GLThread;->mRenderer:Lcom/TQFramework/C3SurfaceView$Renderer;

    invoke-interface {v12}, Lcom/TQFramework/C3SurfaceView$Renderer;->onDrawFrame()V

    .line 1285
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/TQFramework/C3SurfaceView$GLThread;->mEglHelper:Lcom/TQFramework/C3SurfaceView$EglHelper;

    invoke-virtual {v12}, Lcom/TQFramework/C3SurfaceView$EglHelper;->swap()Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    move-result v12

    if-nez v12, :cond_15

    .line 1291
    const/4 v7, 0x1

    .line 1294
    :cond_15
    if-eqz v11, :cond_0

    .line 1296
    const/4 v3, 0x1

    .line 1070
    goto/16 :goto_0

    .line 1305
    :catchall_4
    move-exception v12

    :try_start_e
    monitor-exit v13
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    throw v12
.end method

.method private stopEglContextLocked()V
    .locals 1

    .prologue
    .line 1044
    iget-boolean v0, p0, Lcom/TQFramework/C3SurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    .line 1046
    iget-object v0, p0, Lcom/TQFramework/C3SurfaceView$GLThread;->mRenderer:Lcom/TQFramework/C3SurfaceView$Renderer;

    invoke-interface {v0}, Lcom/TQFramework/C3SurfaceView$Renderer;->onFinish()V

    .line 1047
    iget-object v0, p0, Lcom/TQFramework/C3SurfaceView$GLThread;->mEglHelper:Lcom/TQFramework/C3SurfaceView$EglHelper;

    invoke-virtual {v0}, Lcom/TQFramework/C3SurfaceView$EglHelper;->finish()V

    .line 1048
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/TQFramework/C3SurfaceView$GLThread;->mHaveEglContext:Z

    .line 1049
    invoke-static {}, Lcom/TQFramework/C3SurfaceView;->access$6()Lcom/TQFramework/C3SurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/TQFramework/C3SurfaceView$GLThreadManager;->releaseEglContextLocked(Lcom/TQFramework/C3SurfaceView$GLThread;)V

    .line 1051
    :cond_0
    return-void
.end method

.method private stopEglSurfaceLocked()V
    .locals 1

    .prologue
    .line 1031
    iget-boolean v0, p0, Lcom/TQFramework/C3SurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    .line 1033
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/TQFramework/C3SurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1034
    iget-object v0, p0, Lcom/TQFramework/C3SurfaceView$GLThread;->mEglHelper:Lcom/TQFramework/C3SurfaceView$EglHelper;

    invoke-virtual {v0}, Lcom/TQFramework/C3SurfaceView$EglHelper;->destroySurface()V

    .line 1036
    :cond_0
    return-void
.end method


# virtual methods
.method public getRenderMode()I
    .locals 2

    .prologue
    .line 1328
    invoke-static {}, Lcom/TQFramework/C3SurfaceView;->access$6()Lcom/TQFramework/C3SurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1330
    :try_start_0
    iget v0, p0, Lcom/TQFramework/C3SurfaceView$GLThread;->mRenderMode:I

    monitor-exit v1

    return v0

    .line 1328
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 1393
    invoke-static {}, Lcom/TQFramework/C3SurfaceView;->access$6()Lcom/TQFramework/C3SurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1399
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/TQFramework/C3SurfaceView$GLThread;->mRequestPaused:Z

    .line 1400
    invoke-static {}, Lcom/TQFramework/C3SurfaceView;->access$6()Lcom/TQFramework/C3SurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1401
    :goto_0
    iget-boolean v1, p0, Lcom/TQFramework/C3SurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/TQFramework/C3SurfaceView$GLThread;->mPaused:Z

    if-eqz v1, :cond_1

    .line 1393
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1417
    return-void

    .line 1409
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/TQFramework/C3SurfaceView;->access$6()Lcom/TQFramework/C3SurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1411
    :catch_0
    move-exception v0

    .line 1413
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1393
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 1421
    invoke-static {}, Lcom/TQFramework/C3SurfaceView;->access$6()Lcom/TQFramework/C3SurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1427
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/TQFramework/C3SurfaceView$GLThread;->mRequestPaused:Z

    .line 1428
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/TQFramework/C3SurfaceView$GLThread;->mRequestRender:Z

    .line 1429
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/TQFramework/C3SurfaceView$GLThread;->mRenderComplete:Z

    .line 1430
    invoke-static {}, Lcom/TQFramework/C3SurfaceView;->access$6()Lcom/TQFramework/C3SurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1431
    :goto_0
    iget-boolean v1, p0, Lcom/TQFramework/C3SurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/TQFramework/C3SurfaceView$GLThread;->mPaused:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/TQFramework/C3SurfaceView$GLThread;->mRenderComplete:Z

    if-eqz v1, :cond_1

    .line 1421
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1447
    return-void

    .line 1439
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/TQFramework/C3SurfaceView;->access$6()Lcom/TQFramework/C3SurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1441
    :catch_0
    move-exception v0

    .line 1443
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1421
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onWindowResize(II)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 1451
    invoke-static {}, Lcom/TQFramework/C3SurfaceView;->access$6()Lcom/TQFramework/C3SurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1453
    :try_start_0
    iput p1, p0, Lcom/TQFramework/C3SurfaceView$GLThread;->mWidth:I

    .line 1454
    iput p2, p0, Lcom/TQFramework/C3SurfaceView$GLThread;->mHeight:I

    .line 1455
    iget-object v1, p0, Lcom/TQFramework/C3SurfaceView$GLThread;->this$0:Lcom/TQFramework/C3SurfaceView;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/TQFramework/C3SurfaceView;->access$8(Lcom/TQFramework/C3SurfaceView;Z)V

    .line 1456
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/TQFramework/C3SurfaceView$GLThread;->mRequestRender:Z

    .line 1457
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/TQFramework/C3SurfaceView$GLThread;->mRenderComplete:Z

    .line 1458
    invoke-static {}, Lcom/TQFramework/C3SurfaceView;->access$6()Lcom/TQFramework/C3SurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1461
    :goto_0
    iget-boolean v1, p0, Lcom/TQFramework/C3SurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/TQFramework/C3SurfaceView$GLThread;->mPaused:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/TQFramework/C3SurfaceView$GLThread;->mRenderComplete:Z

    if-eqz v1, :cond_1

    .line 1451
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1477
    return-void

    .line 1469
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/TQFramework/C3SurfaceView;->access$6()Lcom/TQFramework/C3SurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1471
    :catch_0
    move-exception v0

    .line 1473
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1451
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 1507
    if-nez p1, :cond_0

    .line 1509
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "r must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1511
    :cond_0
    invoke-static {}, Lcom/TQFramework/C3SurfaceView;->access$6()Lcom/TQFramework/C3SurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1513
    :try_start_0
    iget-object v0, p0, Lcom/TQFramework/C3SurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1514
    invoke-static {}, Lcom/TQFramework/C3SurfaceView;->access$6()Lcom/TQFramework/C3SurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1511
    monitor-exit v1

    .line 1516
    return-void

    .line 1511
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestExitAndWait()V
    .locals 3

    .prologue
    .line 1483
    invoke-static {}, Lcom/TQFramework/C3SurfaceView;->access$6()Lcom/TQFramework/C3SurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1485
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/TQFramework/C3SurfaceView$GLThread;->mShouldExit:Z

    .line 1486
    invoke-static {}, Lcom/TQFramework/C3SurfaceView;->access$6()Lcom/TQFramework/C3SurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1487
    :goto_0
    iget-boolean v1, p0, Lcom/TQFramework/C3SurfaceView$GLThread;->mExited:Z

    if-eqz v1, :cond_0

    .line 1483
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1499
    return-void

    .line 1491
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/TQFramework/C3SurfaceView;->access$6()Lcom/TQFramework/C3SurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1493
    :catch_0
    move-exception v0

    .line 1495
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1483
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public requestRender()V
    .locals 2

    .prologue
    .line 1336
    invoke-static {}, Lcom/TQFramework/C3SurfaceView;->access$6()Lcom/TQFramework/C3SurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1338
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/TQFramework/C3SurfaceView$GLThread;->mRequestRender:Z

    .line 1339
    invoke-static {}, Lcom/TQFramework/C3SurfaceView;->access$6()Lcom/TQFramework/C3SurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1336
    monitor-exit v1

    .line 1341
    return-void

    .line 1336
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 1005
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GLThread "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/TQFramework/C3SurfaceView$GLThread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/TQFramework/C3SurfaceView$GLThread;->setName(Ljava/lang/String;)V

    .line 1013
    :try_start_0
    invoke-direct {p0}, Lcom/TQFramework/C3SurfaceView$GLThread;->guardedRun()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1021
    invoke-static {}, Lcom/TQFramework/C3SurfaceView;->access$6()Lcom/TQFramework/C3SurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/TQFramework/C3SurfaceView$GLThreadManager;->threadExiting(Lcom/TQFramework/C3SurfaceView$GLThread;)V

    .line 1023
    :goto_0
    return-void

    .line 1015
    :catch_0
    move-exception v0

    .line 1021
    invoke-static {}, Lcom/TQFramework/C3SurfaceView;->access$6()Lcom/TQFramework/C3SurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/TQFramework/C3SurfaceView$GLThreadManager;->threadExiting(Lcom/TQFramework/C3SurfaceView$GLThread;)V

    goto :goto_0

    .line 1020
    :catchall_0
    move-exception v0

    .line 1021
    invoke-static {}, Lcom/TQFramework/C3SurfaceView;->access$6()Lcom/TQFramework/C3SurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/TQFramework/C3SurfaceView$GLThreadManager;->threadExiting(Lcom/TQFramework/C3SurfaceView$GLThread;)V

    .line 1022
    throw v0
.end method

.method public setRenderMode(I)V
    .locals 2
    .param p1, "renderMode"    # I

    .prologue
    .line 1315
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 1317
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1319
    :cond_1
    invoke-static {}, Lcom/TQFramework/C3SurfaceView;->access$6()Lcom/TQFramework/C3SurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1321
    :try_start_0
    iput p1, p0, Lcom/TQFramework/C3SurfaceView$GLThread;->mRenderMode:I

    .line 1322
    invoke-static {}, Lcom/TQFramework/C3SurfaceView;->access$6()Lcom/TQFramework/C3SurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1319
    monitor-exit v1

    .line 1324
    return-void

    .line 1319
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public surfaceCreated()V
    .locals 3

    .prologue
    .line 1345
    invoke-static {}, Lcom/TQFramework/C3SurfaceView;->access$6()Lcom/TQFramework/C3SurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1351
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/TQFramework/C3SurfaceView$GLThread;->mHasSurface:Z

    .line 1352
    invoke-static {}, Lcom/TQFramework/C3SurfaceView;->access$6()Lcom/TQFramework/C3SurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1353
    :goto_0
    iget-boolean v1, p0, Lcom/TQFramework/C3SurfaceView$GLThread;->mWaitingForSurface:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/TQFramework/C3SurfaceView$GLThread;->mExited:Z

    if-eqz v1, :cond_1

    .line 1345
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1365
    return-void

    .line 1357
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/TQFramework/C3SurfaceView;->access$6()Lcom/TQFramework/C3SurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1359
    :catch_0
    move-exception v0

    .line 1361
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1345
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public surfaceDestroyed()V
    .locals 3

    .prologue
    .line 1369
    invoke-static {}, Lcom/TQFramework/C3SurfaceView;->access$6()Lcom/TQFramework/C3SurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1375
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/TQFramework/C3SurfaceView$GLThread;->mHasSurface:Z

    .line 1376
    invoke-static {}, Lcom/TQFramework/C3SurfaceView;->access$6()Lcom/TQFramework/C3SurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1377
    :goto_0
    iget-boolean v1, p0, Lcom/TQFramework/C3SurfaceView$GLThread;->mWaitingForSurface:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/TQFramework/C3SurfaceView$GLThread;->mExited:Z

    if-eqz v1, :cond_1

    .line 1369
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1389
    return-void

    .line 1381
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/TQFramework/C3SurfaceView;->access$6()Lcom/TQFramework/C3SurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1383
    :catch_0
    move-exception v0

    .line 1385
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1369
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
