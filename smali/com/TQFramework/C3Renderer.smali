.class public Lcom/TQFramework/C3Renderer;
.super Ljava/lang/Object;
.source "C3Renderer.java"

# interfaces
.implements Lcom/TQFramework/C3SurfaceView$Renderer;


# static fields
.field private static s_bFlag:Z

.field private static s_nH:I

.field private static s_nW:I


# instance fields
.field private sResourcePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5
    const/4 v0, 0x1

    sput-boolean v0, Lcom/TQFramework/C3Renderer;->s_bFlag:Z

    .line 6
    sput v1, Lcom/TQFramework/C3Renderer;->s_nW:I

    .line 7
    sput v1, Lcom/TQFramework/C3Renderer;->s_nH:I

    .line 3
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native C3SurfaceRender()V
.end method

.method public static native C3SurfaceResize(II)V
.end method

.method public static native DestroyC3Engine()V
.end method

.method public static native InitC3Engine(IIIZLjava/lang/String;)I
.end method

.method public static native nativeSetEditTextResult(Ljava/lang/String;)V
.end method


# virtual methods
.method public SetEditTextResult(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-static {p1}, Lcom/TQFramework/C3Renderer;->nativeSetEditTextResult(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public SetResPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "sResPath"    # Ljava/lang/String;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/TQFramework/C3Renderer;->sResourcePath:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public onDrawFrame()V
    .locals 0

    .prologue
    .line 41
    invoke-static {}, Lcom/TQFramework/C3Renderer;->C3SurfaceRender()V

    .line 42
    return-void
.end method

.method public onFinish()V
    .locals 0

    .prologue
    .line 37
    invoke-static {}, Lcom/TQFramework/C3Renderer;->DestroyC3Engine()V

    .line 38
    return-void
.end method

.method public onSurfaceChanged(II)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 34
    return-void
.end method

.method public onSurfaceCreated(II)V
    .locals 6
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v5, 0x0

    .line 15
    sget-boolean v1, Lcom/TQFramework/C3Renderer;->s_bFlag:Z

    if-eqz v1, :cond_3

    .line 17
    invoke-static {}, Lcom/TQFramework/TQFrameworkActivity;->GetDeviceOrientation()I

    move-result v1

    if-nez v1, :cond_0

    if-lt p1, p2, :cond_1

    .line 18
    :cond_0
    invoke-static {}, Lcom/TQFramework/TQFrameworkActivity;->GetDeviceOrientation()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    if-le p1, p2, :cond_2

    .line 20
    :cond_1
    move v0, p1

    .line 21
    .local v0, "nTmp":I
    move p1, p2

    .line 22
    move p2, v0

    .line 24
    .end local v0    # "nTmp":I
    :cond_2
    sput p1, Lcom/TQFramework/C3Renderer;->s_nW:I

    .line 25
    sput p2, Lcom/TQFramework/C3Renderer;->s_nH:I

    .line 26
    sput-boolean v5, Lcom/TQFramework/C3Renderer;->s_bFlag:Z

    .line 28
    :cond_3
    sget v1, Lcom/TQFramework/C3Renderer;->s_nW:I

    sget v2, Lcom/TQFramework/C3Renderer;->s_nH:I

    const v3, 0x8034

    iget-object v4, p0, Lcom/TQFramework/C3Renderer;->sResourcePath:Ljava/lang/String;

    invoke-static {v1, v2, v3, v5, v4}, Lcom/TQFramework/C3Renderer;->InitC3Engine(IIIZLjava/lang/String;)I

    .line 30
    return-void
.end method
