.class public Lcom/TQFramework/C3GLSurfaceView;
.super Lcom/TQFramework/C3SurfaceView;
.source "C3GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/TQFramework/C3GLSurfaceView$TouchEventRunnable;
    }
.end annotation


# static fields
.field private static final HANDLER_CLOSE_IME_KEYBOARD:I = 0x3

.field private static final HANDLER_OPEN_IME_KEYBOARD:I = 0x2

.field static MAX_TOUCH_POINTER:I

.field public static MainContext:Landroid/content/Context;

.field private static handler:Landroid/os/Handler;

.field public static mainView:Lcom/TQFramework/C3GLSurfaceView;

.field private static textInputWraper:Lcom/TQFramework/TextInputWraper;


# instance fields
.field private mRenderer:Lcom/TQFramework/C3Renderer;

.field private mTextField:Lcom/TQFramework/TqEditText;

.field private sResourcePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x5

    sput v0, Lcom/TQFramework/C3GLSurfaceView;->MAX_TOUCH_POINTER:I

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x5

    .line 147
    invoke-direct {p0, p1}, Lcom/TQFramework/C3SurfaceView;-><init>(Landroid/content/Context;)V

    .line 148
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/TQFramework/C3GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 149
    const/4 v2, 0x6

    const/4 v4, 0x0

    const/16 v5, 0x10

    invoke-static {}, Lcom/TQFramework/C3GLSurfaceView;->GetUseStencilBuffer()I

    move-result v6

    move-object v0, p0

    move v3, v1

    invoke-virtual/range {v0 .. v6}, Lcom/TQFramework/C3GLSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 150
    sput-object p1, Lcom/TQFramework/C3GLSurfaceView;->MainContext:Landroid/content/Context;

    .line 152
    return-void
.end method

.method public static native GetUseStencilBuffer()I
.end method

.method public static native TouchEvent([I)V
.end method

.method static synthetic access$0(Lcom/TQFramework/C3GLSurfaceView;)Lcom/TQFramework/TqEditText;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/TQFramework/C3GLSurfaceView;->mTextField:Lcom/TQFramework/TqEditText;

    return-object v0
.end method

.method static synthetic access$1()Lcom/TQFramework/TextInputWraper;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/TQFramework/C3GLSurfaceView;->textInputWraper:Lcom/TQFramework/TextInputWraper;

    return-object v0
.end method

.method static synthetic access$2(Lcom/TQFramework/C3GLSurfaceView;)Lcom/TQFramework/C3Renderer;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/TQFramework/C3GLSurfaceView;->mRenderer:Lcom/TQFramework/C3Renderer;

    return-object v0
.end method

.method public static closeIMEKeyboard()V
    .locals 2

    .prologue
    .line 265
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 266
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 267
    sget-object v1, Lcom/TQFramework/C3GLSurfaceView;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 268
    return-void
.end method

.method private getContentText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    const-string v0, ""

    return-object v0
.end method

.method public static openIMEKeyboard(Ljava/lang/String;)V
    .locals 2
    .param p0, "initEditText"    # Ljava/lang/String;

    .prologue
    .line 250
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 251
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 253
    if-nez p0, :cond_0

    .line 254
    const-string p0, ""

    .line 256
    :cond_0
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 257
    sget-object v1, Lcom/TQFramework/C3GLSurfaceView;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 258
    return-void
.end method


# virtual methods
.method public deleteBackward()V
    .locals 1

    .prologue
    .line 241
    new-instance v0, Lcom/TQFramework/C3GLSurfaceView$3;

    invoke-direct {v0, p0}, Lcom/TQFramework/C3GLSurfaceView$3;-><init>(Lcom/TQFramework/C3GLSurfaceView;)V

    invoke-virtual {p0, v0}, Lcom/TQFramework/C3GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 247
    return-void
.end method

.method public getTextField()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/TQFramework/C3GLSurfaceView;->mTextField:Lcom/TQFramework/TqEditText;

    return-object v0
.end method

.method public initView(Ljava/lang/String;)V
    .locals 1
    .param p1, "sResPath"    # Ljava/lang/String;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/TQFramework/C3GLSurfaceView;->sResourcePath:Ljava/lang/String;

    .line 157
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/TQFramework/C3GLSurfaceView;->setFocusableInTouchMode(Z)V

    .line 159
    sput-object p0, Lcom/TQFramework/tqEditBoxDialog;->mMainView:Lcom/TQFramework/C3GLSurfaceView;

    .line 160
    new-instance v0, Lcom/TQFramework/TextInputWraper;

    invoke-direct {v0, p0}, Lcom/TQFramework/TextInputWraper;-><init>(Lcom/TQFramework/C3GLSurfaceView;)V

    sput-object v0, Lcom/TQFramework/C3GLSurfaceView;->textInputWraper:Lcom/TQFramework/TextInputWraper;

    .line 161
    new-instance v0, Lcom/TQFramework/C3GLSurfaceView$1;

    invoke-direct {v0, p0}, Lcom/TQFramework/C3GLSurfaceView$1;-><init>(Lcom/TQFramework/C3GLSurfaceView;)V

    sput-object v0, Lcom/TQFramework/C3GLSurfaceView;->handler:Landroid/os/Handler;

    .line 202
    sput-object p0, Lcom/TQFramework/C3GLSurfaceView;->mainView:Lcom/TQFramework/C3GLSurfaceView;

    .line 203
    return-void
.end method

.method public insertText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 231
    new-instance v0, Lcom/TQFramework/C3GLSurfaceView$2;

    invoke-direct {v0, p0, p1}, Lcom/TQFramework/C3GLSurfaceView$2;-><init>(Lcom/TQFramework/C3GLSurfaceView;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/TQFramework/C3GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 238
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 336
    const/16 v1, 0x8

    new-array v0, v1, [I

    .line 337
    .local v0, "mTouchInfo":[I
    aput v2, v0, v2

    .line 338
    aput v3, v0, v3

    .line 339
    const/4 v1, 0x2

    aput v2, v0, v1

    .line 340
    invoke-static {v0}, Lcom/TQFramework/C3GLSurfaceView;->TouchEvent([I)V

    .line 342
    invoke-super {p0}, Lcom/TQFramework/C3SurfaceView;->onPause()V

    .line 343
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 346
    const/16 v1, 0x8

    new-array v0, v1, [I

    .line 347
    .local v0, "mTouchInfo":[I
    aput v3, v0, v3

    .line 348
    aput v2, v0, v2

    .line 349
    const/4 v1, 0x2

    aput v2, v0, v1

    .line 350
    invoke-static {v0}, Lcom/TQFramework/C3GLSurfaceView;->TouchEvent([I)V

    .line 352
    invoke-super {p0}, Lcom/TQFramework/C3SurfaceView;->onResume()V

    .line 353
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 310
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 311
    .local v2, "nPoints":I
    sget v5, Lcom/TQFramework/C3GLSurfaceView;->MAX_TOUCH_POINTER:I

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 312
    const/4 v3, 0x0

    .line 314
    .local v3, "nPos":I
    mul-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x2

    new-array v1, v5, [I

    .line 316
    .local v1, "mTouchInfo":[I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "nPos":I
    .local v4, "nPos":I
    aput v2, v1, v3

    .line 317
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "nPos":I
    .restart local v3    # "nPos":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    aput v5, v1, v4

    .line 318
    const/4 v0, 0x0

    .local v0, "i":I
    move v4, v3

    .end local v3    # "nPos":I
    .restart local v4    # "nPos":I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 325
    new-instance v5, Lcom/TQFramework/C3GLSurfaceView$TouchEventRunnable;

    invoke-direct {v5, p0, v1}, Lcom/TQFramework/C3GLSurfaceView$TouchEventRunnable;-><init>(Lcom/TQFramework/C3GLSurfaceView;[I)V

    invoke-virtual {p0, v5}, Lcom/TQFramework/C3GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 328
    const-string v5, "TouchInfo--%s"

    .line 329
    const-string v6, "Time:%d, count:%d, action:%d, X:%d, Y:%d"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    .line 330
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v11

    aget v8, v1, v11

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    aget v8, v1, v10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v12

    .line 331
    aget v8, v1, v12

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v13

    const/4 v8, 0x4

    aget v9, v1, v13

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 328
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    return v10

    .line 319
    :cond_0
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "nPos":I
    .restart local v3    # "nPos":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    aput v5, v1, v4

    .line 320
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "nPos":I
    .restart local v4    # "nPos":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    float-to-int v5, v5

    aput v5, v1, v3

    .line 318
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setTextField(Lcom/TQFramework/TqEditText;)V
    .locals 2
    .param p1, "view"    # Lcom/TQFramework/TqEditText;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/TQFramework/C3GLSurfaceView;->mTextField:Lcom/TQFramework/TqEditText;

    .line 218
    iget-object v0, p0, Lcom/TQFramework/C3GLSurfaceView;->mTextField:Lcom/TQFramework/TqEditText;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/TQFramework/C3GLSurfaceView;->textInputWraper:Lcom/TQFramework/TextInputWraper;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/TQFramework/C3GLSurfaceView;->mTextField:Lcom/TQFramework/TqEditText;

    sget-object v1, Lcom/TQFramework/C3GLSurfaceView;->textInputWraper:Lcom/TQFramework/TextInputWraper;

    invoke-virtual {v0, v1}, Lcom/TQFramework/TqEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 225
    iget-object v0, p0, Lcom/TQFramework/C3GLSurfaceView;->mTextField:Lcom/TQFramework/TqEditText;

    invoke-virtual {v0, p0}, Lcom/TQFramework/TqEditText;->setMainView(Lcom/TQFramework/C3GLSurfaceView;)V

    .line 226
    invoke-virtual {p0}, Lcom/TQFramework/C3GLSurfaceView;->requestFocus()Z

    .line 228
    :cond_0
    return-void
.end method

.method public setTqRenderer(Lcom/TQFramework/C3Renderer;)V
    .locals 2
    .param p1, "renderer"    # Lcom/TQFramework/C3Renderer;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/TQFramework/C3GLSurfaceView;->mRenderer:Lcom/TQFramework/C3Renderer;

    .line 212
    iget-object v0, p0, Lcom/TQFramework/C3GLSurfaceView;->mRenderer:Lcom/TQFramework/C3Renderer;

    invoke-virtual {p0, v0}, Lcom/TQFramework/C3GLSurfaceView;->setRenderer(Lcom/TQFramework/C3SurfaceView$Renderer;)V

    .line 213
    iget-object v0, p0, Lcom/TQFramework/C3GLSurfaceView;->mRenderer:Lcom/TQFramework/C3Renderer;

    iget-object v1, p0, Lcom/TQFramework/C3GLSurfaceView;->sResourcePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/TQFramework/C3Renderer;->SetResPath(Ljava/lang/String;)V

    .line 214
    return-void
.end method
