.class Lcom/TQFramework/NDLoginAdapter$1;
.super Ljava/lang/Object;
.source "NDLoginAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/TQFramework/NDLoginAdapter;->SetAppInfo(ILjava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/TQFramework/NDLoginAdapter;

.field private final synthetic val$nAppIDTemp:I

.field private final synthetic val$sAppKeyTemp:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/TQFramework/NDLoginAdapter;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/TQFramework/NDLoginAdapter$1;->this$0:Lcom/TQFramework/NDLoginAdapter;

    iput p2, p0, Lcom/TQFramework/NDLoginAdapter$1;->val$nAppIDTemp:I

    iput-object p3, p0, Lcom/TQFramework/NDLoginAdapter$1;->val$sAppKeyTemp:Ljava/lang/String;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 57
    new-instance v0, Lcom/nd/commplatform/entry/NdAppInfo;

    invoke-direct {v0}, Lcom/nd/commplatform/entry/NdAppInfo;-><init>()V

    .line 58
    .local v0, "appInfo":Lcom/nd/commplatform/entry/NdAppInfo;
    iget v1, p0, Lcom/TQFramework/NDLoginAdapter$1;->val$nAppIDTemp:I

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/entry/NdAppInfo;->setAppId(I)V

    .line 59
    iget-object v1, p0, Lcom/TQFramework/NDLoginAdapter$1;->val$sAppKeyTemp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/entry/NdAppInfo;->setAppKey(Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/TQFramework/NDLoginAdapter$1;->this$0:Lcom/TQFramework/NDLoginAdapter;

    invoke-static {v1}, Lcom/TQFramework/NDLoginAdapter;->access$0(Lcom/TQFramework/NDLoginAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/entry/NdAppInfo;->setCtx(Landroid/content/Context;)V

    .line 61
    invoke-static {}, Lcom/nd/commplatform/NdCommplatform;->getInstance()Lcom/nd/commplatform/NdCommplatform;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/nd/commplatform/NdCommplatform;->initial(ILcom/nd/commplatform/entry/NdAppInfo;)I

    .line 62
    invoke-static {}, Lcom/TQFramework/TQFrameworkActivity;->GetDeviceOrientation()I

    move-result v1

    if-nez v1, :cond_0

    .line 63
    invoke-static {}, Lcom/nd/commplatform/NdCommplatform;->getInstance()Lcom/nd/commplatform/NdCommplatform;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/nd/commplatform/NdCommplatform;->ndSetScreenOrientation(I)V

    .line 66
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-static {}, Lcom/nd/commplatform/NdCommplatform;->getInstance()Lcom/nd/commplatform/NdCommplatform;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/nd/commplatform/NdCommplatform;->ndSetScreenOrientation(I)V

    goto :goto_0
.end method
