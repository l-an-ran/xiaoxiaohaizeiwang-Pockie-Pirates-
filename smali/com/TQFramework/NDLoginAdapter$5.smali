.class Lcom/TQFramework/NDLoginAdapter$5;
.super Ljava/lang/Object;
.source "NDLoginAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/TQFramework/NDLoginAdapter;->isAutoLogin()Z
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
    iput-object p1, p0, Lcom/TQFramework/NDLoginAdapter$5;->this$0:Lcom/TQFramework/NDLoginAdapter;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 167
    invoke-static {}, Lcom/nd/commplatform/NdCommplatform;->getInstance()Lcom/nd/commplatform/NdCommplatform;

    move-result-object v0

    iget-object v1, p0, Lcom/TQFramework/NDLoginAdapter$5;->this$0:Lcom/TQFramework/NDLoginAdapter;

    invoke-static {v1}, Lcom/TQFramework/NDLoginAdapter;->access$0(Lcom/TQFramework/NDLoginAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/NdCommplatform;->isAutoLogin(Landroid/content/Context;)Z

    .line 168
    return-void
.end method
