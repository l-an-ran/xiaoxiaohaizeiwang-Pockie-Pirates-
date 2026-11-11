.class Lcom/TQFramework/NDLoginAdapter$6$1;
.super Ljava/lang/Object;
.source "NDLoginAdapter.java"

# interfaces
.implements Lcom/nd/commplatform/NdMiscCallbackListener$OnPayProcessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/TQFramework/NDLoginAdapter$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/TQFramework/NDLoginAdapter$6;


# direct methods
.method constructor <init>(Lcom/TQFramework/NDLoginAdapter$6;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/TQFramework/NDLoginAdapter$6$1;->this$1:Lcom/TQFramework/NDLoginAdapter$6;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finishPayProcess(I)V
    .locals 3
    .param p1, "code"    # I

    .prologue
    const/4 v2, 0x0

    .line 191
    sparse-switch p1, :sswitch_data_0

    .line 202
    invoke-static {}, Lcom/TQFramework/NDLoginAdapter;->access$1()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u8d2d\u4e70\u5931\u8d25"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 205
    :goto_0
    return-void

    .line 193
    :sswitch_0
    invoke-static {}, Lcom/TQFramework/NDLoginAdapter;->access$1()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u8d2d\u4e70\u6210\u529f"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 196
    :sswitch_1
    invoke-static {}, Lcom/TQFramework/NDLoginAdapter;->access$1()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u8d2d\u4e70\u5931\u8d25"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 199
    :sswitch_2
    invoke-static {}, Lcom/TQFramework/NDLoginAdapter;->access$1()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u53d6\u6d88\u8d2d\u4e70"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 191
    :sswitch_data_0
    .sparse-switch
        -0x4654 -> :sswitch_2
        -0x4653 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method
