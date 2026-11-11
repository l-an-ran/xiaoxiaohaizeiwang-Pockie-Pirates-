.class Lcom/TQFramework/TQWebAdapter$3;
.super Ljava/lang/Object;
.source "TQWebAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/TQFramework/TQWebAdapter;->TQWebEvent2JniCall(III)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/TQFramework/TQWebAdapter;


# direct methods
.method constructor <init>(Lcom/TQFramework/TQWebAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/TQFramework/TQWebAdapter$3;->this$0:Lcom/TQFramework/TQWebAdapter;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/TQFramework/TQWebAdapter$3;->this$0:Lcom/TQFramework/TQWebAdapter;

    invoke-static {v0}, Lcom/TQFramework/TQWebAdapter;->access$3(Lcom/TQFramework/TQWebAdapter;)I

    move-result v0

    iget-object v1, p0, Lcom/TQFramework/TQWebAdapter$3;->this$0:Lcom/TQFramework/TQWebAdapter;

    invoke-static {v1}, Lcom/TQFramework/TQWebAdapter;->access$4(Lcom/TQFramework/TQWebAdapter;)I

    move-result v1

    iget-object v2, p0, Lcom/TQFramework/TQWebAdapter$3;->this$0:Lcom/TQFramework/TQWebAdapter;

    invoke-static {v2}, Lcom/TQFramework/TQWebAdapter;->access$5(Lcom/TQFramework/TQWebAdapter;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/TQFramework/TQWebAdapter;->TQWebEvent(III)I

    .line 93
    return-void
.end method
