.class Lcom/TQFramework/CopyResFilesActivity$2;
.super Ljava/lang/Object;
.source "CopyResFilesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/TQFramework/CopyResFilesActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/TQFramework/CopyResFilesActivity;


# direct methods
.method constructor <init>(Lcom/TQFramework/CopyResFilesActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/TQFramework/CopyResFilesActivity$2;->this$0:Lcom/TQFramework/CopyResFilesActivity;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/TQFramework/CopyResFilesActivity$2;->this$0:Lcom/TQFramework/CopyResFilesActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/TQFramework/CopyResFilesActivity;->access$6(Lcom/TQFramework/CopyResFilesActivity;Z)V

    .line 120
    return-void
.end method
