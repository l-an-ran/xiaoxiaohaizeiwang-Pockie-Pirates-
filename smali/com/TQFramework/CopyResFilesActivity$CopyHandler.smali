.class Lcom/TQFramework/CopyResFilesActivity$CopyHandler;
.super Landroid/os/Handler;
.source "CopyResFilesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/TQFramework/CopyResFilesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CopyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/TQFramework/CopyResFilesActivity;


# direct methods
.method public constructor <init>(Lcom/TQFramework/CopyResFilesActivity;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/TQFramework/CopyResFilesActivity$CopyHandler;->this$0:Lcom/TQFramework/CopyResFilesActivity;

    .line 241
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 242
    return-void
.end method
