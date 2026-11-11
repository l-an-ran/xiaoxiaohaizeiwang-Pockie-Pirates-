.class final Lcom/nd/commplatform/d/c/dr$9;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/dr;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/NdCallbackListener",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/nd/commplatform/entry/NdModuleSwitchInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/dr;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/dr;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/dr$9;->a:Lcom/nd/commplatform/d/c/dr;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/entry/NdModuleSwitchInfo;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/entry/NdModuleSwitchInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdModuleSwitchInfo;->getMoudleId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/nd/commplatform/d/c/dr$9;->a:Lcom/nd/commplatform/d/c/dr;

    iget-object v2, v2, Lcom/nd/commplatform/d/c/dr;->h:Lcom/nd/commplatform/widget/NdLeaderboardPropertyHolder;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdModuleSwitchInfo;->isEnable()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/nd/commplatform/widget/NdLeaderboardPropertyHolder;->a(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/nd/commplatform/d/c/dr$9;->a:Lcom/nd/commplatform/d/c/dr;

    iget-object v2, v2, Lcom/nd/commplatform/d/c/dr;->g:Lcom/nd/commplatform/widget/NdAchievementPropertyHolder;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdModuleSwitchInfo;->isEnable()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/nd/commplatform/widget/NdAchievementPropertyHolder;->a(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p2, Ljava/util/List;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/dr$9;->a(ILjava/util/List;)V

    return-void
.end method
