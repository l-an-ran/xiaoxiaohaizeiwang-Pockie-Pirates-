.class Lcom/TQFramework/NDLoginAdapter$10;
.super Ljava/lang/Object;
.source "NDLoginAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/TQFramework/NDLoginAdapter;->UpdateVer()Z
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
    iput-object p1, p0, Lcom/TQFramework/NDLoginAdapter$10;->this$0:Lcom/TQFramework/NDLoginAdapter;

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 260
    new-instance v0, Lcom/TQFramework/NDLoginAdapter$10$1;

    invoke-direct {v0, p0}, Lcom/TQFramework/NDLoginAdapter$10$1;-><init>(Lcom/TQFramework/NDLoginAdapter$10;)V

    .line 285
    .local v0, "callback":Lcom/nd/commplatform/NdCallbackListener;, "Lcom/nd/commplatform/NdCallbackListener<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/nd/commplatform/NdCommplatform;->getInstance()Lcom/nd/commplatform/NdCommplatform;

    move-result-object v1

    iget-object v2, p0, Lcom/TQFramework/NDLoginAdapter$10;->this$0:Lcom/TQFramework/NDLoginAdapter;

    invoke-static {v2}, Lcom/TQFramework/NDLoginAdapter;->access$0(Lcom/TQFramework/NDLoginAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/nd/commplatform/NdCommplatform;->ndAppVersionUpdate(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    .line 286
    return-void
.end method
