.class Lcom/TQFramework/C3GLSurfaceView$TouchEventRunnable;
.super Ljava/lang/Object;
.source "C3GLSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/TQFramework/C3GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TouchEventRunnable"
.end annotation


# instance fields
.field iTouchInfo:[I

.field final synthetic this$0:Lcom/TQFramework/C3GLSurfaceView;


# direct methods
.method public constructor <init>(Lcom/TQFramework/C3GLSurfaceView;[I)V
    .locals 0
    .param p2, "i_TouchInfo"    # [I

    .prologue
    .line 280
    iput-object p1, p0, Lcom/TQFramework/C3GLSurfaceView$TouchEventRunnable;->this$0:Lcom/TQFramework/C3GLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    iput-object p2, p0, Lcom/TQFramework/C3GLSurfaceView$TouchEventRunnable;->iTouchInfo:[I

    .line 282
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/TQFramework/C3GLSurfaceView$TouchEventRunnable;->iTouchInfo:[I

    invoke-static {v0}, Lcom/TQFramework/C3GLSurfaceView;->TouchEvent([I)V

    .line 287
    return-void
.end method
