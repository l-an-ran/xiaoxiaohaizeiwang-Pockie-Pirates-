.class Lcom/TQFramework/C3SoundEngine$1;
.super Ljava/lang/Object;
.source "C3SoundEngine.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/TQFramework/C3SoundEngine;->playEffect(Ljava/lang/String;Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/TQFramework/C3SoundEngine;

.field private final synthetic val$isLoopnew:Z

.field private final synthetic val$soundIdnew:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/TQFramework/C3SoundEngine;Ljava/lang/Integer;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/TQFramework/C3SoundEngine$1;->this$0:Lcom/TQFramework/C3SoundEngine;

    iput-object p2, p0, Lcom/TQFramework/C3SoundEngine$1;->val$soundIdnew:Ljava/lang/Integer;

    iput-boolean p3, p0, Lcom/TQFramework/C3SoundEngine$1;->val$isLoopnew:Z

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 8
    .param p1, "soundPool"    # Landroid/media/SoundPool;
    .param p2, "sampleId"    # I
    .param p3, "status"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lcom/TQFramework/C3SoundEngine$1;->this$0:Lcom/TQFramework/C3SoundEngine;

    invoke-static {v0}, Lcom/TQFramework/C3SoundEngine;->access$0(Lcom/TQFramework/C3SoundEngine;)Landroid/media/SoundPool;

    move-result-object v0

    iget-object v1, p0, Lcom/TQFramework/C3SoundEngine$1;->val$soundIdnew:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 106
    iget-object v0, p0, Lcom/TQFramework/C3SoundEngine$1;->this$0:Lcom/TQFramework/C3SoundEngine;

    invoke-static {v0}, Lcom/TQFramework/C3SoundEngine;->access$0(Lcom/TQFramework/C3SoundEngine;)Landroid/media/SoundPool;

    move-result-object v0

    iget-object v1, p0, Lcom/TQFramework/C3SoundEngine$1;->val$soundIdnew:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/TQFramework/C3SoundEngine$1;->this$0:Lcom/TQFramework/C3SoundEngine;

    invoke-static {v2}, Lcom/TQFramework/C3SoundEngine;->access$1(Lcom/TQFramework/C3SoundEngine;)F

    move-result v2

    .line 107
    iget-object v3, p0, Lcom/TQFramework/C3SoundEngine$1;->this$0:Lcom/TQFramework/C3SoundEngine;

    invoke-static {v3}, Lcom/TQFramework/C3SoundEngine;->access$2(Lcom/TQFramework/C3SoundEngine;)F

    move-result v3

    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/TQFramework/C3SoundEngine$1;->val$isLoopnew:Z

    if-eqz v5, :cond_0

    const/4 v5, -0x1

    :goto_0
    const/high16 v6, 0x3f800000    # 1.0f

    .line 106
    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v7

    .line 109
    .local v7, "streamId":I
    iget-object v0, p0, Lcom/TQFramework/C3SoundEngine$1;->this$0:Lcom/TQFramework/C3SoundEngine;

    invoke-static {v0}, Lcom/TQFramework/C3SoundEngine;->access$3(Lcom/TQFramework/C3SoundEngine;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/TQFramework/C3SoundEngine$1;->val$soundIdnew:Ljava/lang/Integer;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    return-void

    .line 107
    .end local v7    # "streamId":I
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method
