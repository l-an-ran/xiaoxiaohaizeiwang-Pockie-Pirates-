.class Lcom/TQFramework/C3SurfaceView$SimpleEGLConfigChooser;
.super Lcom/TQFramework/C3SurfaceView$ComponentSizeChooser;
.source "C3SurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/TQFramework/C3SurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleEGLConfigChooser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/TQFramework/C3SurfaceView;


# direct methods
.method public constructor <init>(Lcom/TQFramework/C3SurfaceView;Z)V
    .locals 8
    .param p2, "withDepthBuffer"    # Z

    .prologue
    const/4 v2, 0x5

    const/4 v5, 0x0

    .line 733
    iput-object p1, p0, Lcom/TQFramework/C3SurfaceView$SimpleEGLConfigChooser;->this$0:Lcom/TQFramework/C3SurfaceView;

    .line 734
    const/4 v3, 0x6

    if-eqz p2, :cond_0

    const/16 v6, 0x10

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/TQFramework/C3SurfaceView$ComponentSizeChooser;-><init>(Lcom/TQFramework/C3SurfaceView;IIIIII)V

    .line 735
    return-void

    :cond_0
    move v6, v5

    .line 734
    goto :goto_0
.end method
