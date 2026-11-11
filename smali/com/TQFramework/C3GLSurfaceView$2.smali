.class Lcom/TQFramework/C3GLSurfaceView$2;
.super Ljava/lang/Object;
.source "C3GLSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/TQFramework/C3GLSurfaceView;->insertText(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/TQFramework/C3GLSurfaceView;

.field private final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/TQFramework/C3GLSurfaceView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/TQFramework/C3GLSurfaceView$2;->this$0:Lcom/TQFramework/C3GLSurfaceView;

    iput-object p2, p0, Lcom/TQFramework/C3GLSurfaceView$2;->val$text:Ljava/lang/String;

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/TQFramework/C3GLSurfaceView$2;->this$0:Lcom/TQFramework/C3GLSurfaceView;

    invoke-static {v0}, Lcom/TQFramework/C3GLSurfaceView;->access$2(Lcom/TQFramework/C3GLSurfaceView;)Lcom/TQFramework/C3Renderer;

    move-result-object v0

    iget-object v1, p0, Lcom/TQFramework/C3GLSurfaceView$2;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/TQFramework/C3Renderer;->SetEditTextResult(Ljava/lang/String;)V

    .line 235
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/TQFramework/tqEditBoxDialog;->SendInputFinish(I)V

    .line 236
    return-void
.end method
