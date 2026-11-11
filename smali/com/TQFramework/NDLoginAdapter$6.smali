.class Lcom/TQFramework/NDLoginAdapter$6;
.super Ljava/lang/Object;
.source "NDLoginAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/TQFramework/NDLoginAdapter;->Pay(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;F)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/TQFramework/NDLoginAdapter;

.field private final synthetic val$buyInfo:Lcom/nd/commplatform/entry/NdBuyInfo;


# direct methods
.method constructor <init>(Lcom/TQFramework/NDLoginAdapter;Lcom/nd/commplatform/entry/NdBuyInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/TQFramework/NDLoginAdapter$6;->this$0:Lcom/TQFramework/NDLoginAdapter;

    iput-object p2, p0, Lcom/TQFramework/NDLoginAdapter$6;->val$buyInfo:Lcom/nd/commplatform/entry/NdBuyInfo;

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 189
    invoke-static {}, Lcom/nd/commplatform/NdCommplatform;->getInstance()Lcom/nd/commplatform/NdCommplatform;

    move-result-object v1

    iget-object v2, p0, Lcom/TQFramework/NDLoginAdapter$6;->val$buyInfo:Lcom/nd/commplatform/entry/NdBuyInfo;

    iget-object v3, p0, Lcom/TQFramework/NDLoginAdapter$6;->this$0:Lcom/TQFramework/NDLoginAdapter;

    invoke-static {v3}, Lcom/TQFramework/NDLoginAdapter;->access$0(Lcom/TQFramework/NDLoginAdapter;)Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lcom/TQFramework/NDLoginAdapter$6$1;

    invoke-direct {v4, p0}, Lcom/TQFramework/NDLoginAdapter$6$1;-><init>(Lcom/TQFramework/NDLoginAdapter$6;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/nd/commplatform/NdCommplatform;->ndUniPayAsyn(Lcom/nd/commplatform/entry/NdBuyInfo;Landroid/content/Context;Lcom/nd/commplatform/NdMiscCallbackListener$OnPayProcessListener;)I

    move-result v0

    .line 207
    .local v0, "aError":I
    if-eqz v0, :cond_0

    .line 208
    invoke-static {}, Lcom/TQFramework/NDLoginAdapter;->access$1()Landroid/content/Context;

    move-result-object v1

    const-string v2, "\u60a8\u8f93\u5165\u53c2\u6570\u6709\u9519\uff0c\u65e0\u6cd5\u63d0\u4ea4\u8d2d\u4e70\u8bf7\u6c42"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 211
    :cond_0
    return-void
.end method
