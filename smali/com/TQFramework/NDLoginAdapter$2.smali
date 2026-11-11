.class Lcom/TQFramework/NDLoginAdapter$2;
.super Ljava/lang/Object;
.source "NDLoginAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/TQFramework/NDLoginAdapter;->Login()Z
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
    iput-object p1, p0, Lcom/TQFramework/NDLoginAdapter$2;->this$0:Lcom/TQFramework/NDLoginAdapter;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/TQFramework/NDLoginAdapter$2;)Lcom/TQFramework/NDLoginAdapter;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/TQFramework/NDLoginAdapter$2;->this$0:Lcom/TQFramework/NDLoginAdapter;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 78
    invoke-static {}, Lcom/nd/commplatform/NdCommplatform;->getInstance()Lcom/nd/commplatform/NdCommplatform;

    move-result-object v0

    iget-object v1, p0, Lcom/TQFramework/NDLoginAdapter$2;->this$0:Lcom/TQFramework/NDLoginAdapter;

    invoke-static {v1}, Lcom/TQFramework/NDLoginAdapter;->access$0(Lcom/TQFramework/NDLoginAdapter;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/TQFramework/NDLoginAdapter$2$1;

    invoke-direct {v2, p0}, Lcom/TQFramework/NDLoginAdapter$2$1;-><init>(Lcom/TQFramework/NDLoginAdapter$2;)V

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/NdCommplatform;->ndLogin(Landroid/content/Context;Lcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;)V

    .line 101
    return-void
.end method
