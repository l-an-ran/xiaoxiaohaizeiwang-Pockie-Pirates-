.class Lcom/TQFramework/NDLoginAdapter$9;
.super Ljava/lang/Object;
.source "NDLoginAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/TQFramework/NDLoginAdapter;->EnterPlatform()V
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
    iput-object p1, p0, Lcom/TQFramework/NDLoginAdapter$9;->this$0:Lcom/TQFramework/NDLoginAdapter;

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 247
    invoke-static {}, Lcom/nd/commplatform/NdCommplatform;->getInstance()Lcom/nd/commplatform/NdCommplatform;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/TQFramework/NDLoginAdapter$9;->this$0:Lcom/TQFramework/NDLoginAdapter;

    invoke-static {v2}, Lcom/TQFramework/NDLoginAdapter;->access$0(Lcom/TQFramework/NDLoginAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/NdCommplatform;->ndEnterPlatform(ILandroid/content/Context;)I

    .line 248
    return-void
.end method
