.class Lcom/TQFramework/NDLoginAdapter$2$1;
.super Ljava/lang/Object;
.source "NDLoginAdapter.java"

# interfaces
.implements Lcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/TQFramework/NDLoginAdapter$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/TQFramework/NDLoginAdapter$2;


# direct methods
.method constructor <init>(Lcom/TQFramework/NDLoginAdapter$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/TQFramework/NDLoginAdapter$2$1;->this$1:Lcom/TQFramework/NDLoginAdapter$2;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finishLoginProcess(I)V
    .locals 3
    .param p1, "arg0"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 80
    sparse-switch p1, :sswitch_data_0

    .line 98
    :goto_0
    return-void

    .line 82
    :sswitch_0
    iget-object v0, p0, Lcom/TQFramework/NDLoginAdapter$2$1;->this$1:Lcom/TQFramework/NDLoginAdapter$2;

    invoke-static {v0}, Lcom/TQFramework/NDLoginAdapter$2;->access$0(Lcom/TQFramework/NDLoginAdapter$2;)Lcom/TQFramework/NDLoginAdapter;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v1}, Lcom/TQFramework/NDLoginAdapter;->NDLoginEvent2JniCall(III)I

    goto :goto_0

    .line 86
    :sswitch_1
    iget-object v0, p0, Lcom/TQFramework/NDLoginAdapter$2$1;->this$1:Lcom/TQFramework/NDLoginAdapter$2;

    invoke-static {v0}, Lcom/TQFramework/NDLoginAdapter$2;->access$0(Lcom/TQFramework/NDLoginAdapter$2;)Lcom/TQFramework/NDLoginAdapter;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v1}, Lcom/TQFramework/NDLoginAdapter;->NDLoginEvent2JniCall(III)I

    goto :goto_0

    .line 90
    :sswitch_2
    iget-object v0, p0, Lcom/TQFramework/NDLoginAdapter$2$1;->this$1:Lcom/TQFramework/NDLoginAdapter$2;

    invoke-static {v0}, Lcom/TQFramework/NDLoginAdapter$2;->access$0(Lcom/TQFramework/NDLoginAdapter$2;)Lcom/TQFramework/NDLoginAdapter;

    move-result-object v0

    invoke-virtual {v0, v2, p1, v1}, Lcom/TQFramework/NDLoginAdapter;->NDLoginEvent2JniCall(III)I

    goto :goto_0

    .line 80
    :sswitch_data_0
    .sparse-switch
        -0x66 -> :sswitch_1
        -0xc -> :sswitch_2
        0x0 -> :sswitch_0
    .end sparse-switch
.end method
