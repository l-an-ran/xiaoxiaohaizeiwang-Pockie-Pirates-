.class Lcom/TQFramework/NDLoginAdapter$11;
.super Ljava/lang/Object;
.source "NDLoginAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/TQFramework/NDLoginAdapter;->NDLoginEvent2JniCall(III)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/TQFramework/NDLoginAdapter;


# direct methods
.method constructor <init>(Lcom/TQFramework/NDLoginAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/TQFramework/NDLoginAdapter$11;->this$0:Lcom/TQFramework/NDLoginAdapter;

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 301
    iget-object v0, p0, Lcom/TQFramework/NDLoginAdapter$11;->this$0:Lcom/TQFramework/NDLoginAdapter;

    invoke-static {v0}, Lcom/TQFramework/NDLoginAdapter;->access$2(Lcom/TQFramework/NDLoginAdapter;)I

    move-result v0

    iget-object v1, p0, Lcom/TQFramework/NDLoginAdapter$11;->this$0:Lcom/TQFramework/NDLoginAdapter;

    invoke-static {v1}, Lcom/TQFramework/NDLoginAdapter;->access$3(Lcom/TQFramework/NDLoginAdapter;)I

    move-result v1

    iget-object v2, p0, Lcom/TQFramework/NDLoginAdapter$11;->this$0:Lcom/TQFramework/NDLoginAdapter;

    invoke-static {v2}, Lcom/TQFramework/NDLoginAdapter;->access$4(Lcom/TQFramework/NDLoginAdapter;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/TQFramework/NDLoginAdapter;->NDLoginEvent(III)I

    .line 302
    return-void
.end method
