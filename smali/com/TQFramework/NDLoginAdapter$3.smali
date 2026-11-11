.class Lcom/TQFramework/NDLoginAdapter$3;
.super Ljava/lang/Object;
.source "NDLoginAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/TQFramework/NDLoginAdapter;->EnterAccountManage()Z
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
    iput-object p1, p0, Lcom/TQFramework/NDLoginAdapter$3;->this$0:Lcom/TQFramework/NDLoginAdapter;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/TQFramework/NDLoginAdapter$3;)Lcom/TQFramework/NDLoginAdapter;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/TQFramework/NDLoginAdapter$3;->this$0:Lcom/TQFramework/NDLoginAdapter;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 112
    invoke-static {}, Lcom/nd/commplatform/NdCommplatform;->getInstance()Lcom/nd/commplatform/NdCommplatform;

    move-result-object v0

    iget-object v1, p0, Lcom/TQFramework/NDLoginAdapter$3;->this$0:Lcom/TQFramework/NDLoginAdapter;

    invoke-static {v1}, Lcom/TQFramework/NDLoginAdapter;->access$0(Lcom/TQFramework/NDLoginAdapter;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/TQFramework/NDLoginAdapter$3$1;

    invoke-direct {v2, p0}, Lcom/TQFramework/NDLoginAdapter$3$1;-><init>(Lcom/TQFramework/NDLoginAdapter$3;)V

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/NdCommplatform;->ndEnterAccountManage(Landroid/content/Context;Lcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;)I

    .line 135
    return-void
.end method
