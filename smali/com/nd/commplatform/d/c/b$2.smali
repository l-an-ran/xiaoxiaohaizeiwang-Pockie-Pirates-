.class final Lcom/nd/commplatform/d/c/b$2;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/b;->a(Lcom/nd/commplatform/entry/NdBuyInfo;Landroid/content/Context;Lcom/nd/commplatform/NdMiscCallbackListener$OnPayProcessListener;Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/NdCallbackListener",
        "<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/NdMiscCallbackListener$OnPayProcessListener;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/nd/commplatform/entry/NdBuyInfo;

.field final synthetic d:Z

.field final synthetic e:Lcom/nd/commplatform/d/c/b;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/b;Lcom/nd/commplatform/NdMiscCallbackListener$OnPayProcessListener;Landroid/content/Context;Lcom/nd/commplatform/entry/NdBuyInfo;Z)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/b$2;->e:Lcom/nd/commplatform/d/c/b;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/b$2;->a:Lcom/nd/commplatform/NdMiscCallbackListener$OnPayProcessListener;

    iput-object p3, p0, Lcom/nd/commplatform/d/c/b$2;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/nd/commplatform/d/c/b$2;->c:Lcom/nd/commplatform/entry/NdBuyInfo;

    iput-boolean p5, p0, Lcom/nd/commplatform/d/c/b$2;->d:Z

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Double;)V
    .locals 8

    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    invoke-static {}, Lcom/nd/commplatform/d/c/of;->a()Lcom/nd/commplatform/d/c/of;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/nd/commplatform/d/c/of;->a(Ljava/lang/Double;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/b$2;->a:Lcom/nd/commplatform/NdMiscCallbackListener$OnPayProcessListener;

    invoke-static {v0}, Lcom/nd/commplatform/NdMiscCallbackListener;->a(Lcom/nd/commplatform/NdMiscCallbackListener$OnPayProcessListener;)V

    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/b$2;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/nd/commplatform/activity/SNSControlCenterActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "productInfo"

    iget-object v2, p0, Lcom/nd/commplatform/d/c/b$2;->c:Lcom/nd/commplatform/entry/NdBuyInfo;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "nd_cooOrderSerial"

    iget-object v2, p0, Lcom/nd/commplatform/d/c/b$2;->c:Lcom/nd/commplatform/entry/NdBuyInfo;

    invoke-virtual {v2}, Lcom/nd/commplatform/entry/NdBuyInfo;->getSerial()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    iget-object v2, p0, Lcom/nd/commplatform/d/c/b$2;->c:Lcom/nd/commplatform/entry/NdBuyInfo;

    invoke-virtual {v2}, Lcom/nd/commplatform/entry/NdBuyInfo;->getSerial()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nd/commplatform/d/c/a;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/nd/commplatform/d/c/bs;->v:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/b$2;->c:Lcom/nd/commplatform/entry/NdBuyInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdBuyInfo;->getProductPrice()D

    move-result-wide v4

    iget-object v0, p0, Lcom/nd/commplatform/d/c/b$2;->c:Lcom/nd/commplatform/entry/NdBuyInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdBuyInfo;->getCount()I

    move-result v0

    int-to-double v6, v0

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v6

    double-to-long v2, v2

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    double-to-long v4, v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sget-object v2, Lcom/nd/commplatform/d/c/bs;->v:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/nd/commplatform/d/c/b$2;->c:Lcom/nd/commplatform/entry/NdBuyInfo;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/nd/commplatform/d/c/b$2;->c:Lcom/nd/commplatform/entry/NdBuyInfo;

    invoke-virtual {v2}, Lcom/nd/commplatform/entry/NdBuyInfo;->getProductPrice()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/nd/commplatform/d/c/b$2;->c:Lcom/nd/commplatform/entry/NdBuyInfo;

    invoke-virtual {v2}, Lcom/nd/commplatform/entry/NdBuyInfo;->getCount()I

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/nd/commplatform/d/c/b$2;->d:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    const/16 v2, -0x4654

    invoke-static {v0, v2}, Lcom/nd/commplatform/d/c/ol;->a(II)V

    const-string v0, "SNSBalanceNoEnoughView_payAfterRecharge"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_1
    const/4 v0, -0x3

    invoke-static {v0}, Lcom/nd/commplatform/d/c/bz;->a(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/b$2;->b:Landroid/content/Context;

    const/4 v2, -0x1

    const/16 v3, 0x45a

    invoke-static {v0, v1, v2, v3}, Lcom/nd/commplatform/d/c/cb;->a(Landroid/content/Context;Landroid/content/Intent;II)V

    :goto_2
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    const/16 v2, -0x4654

    invoke-static {v0, v2}, Lcom/nd/commplatform/d/c/ol;->a(II)V

    const-string v0, "SNSBalanceNoEnoughView_payAfterRecharge"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    const/16 v2, -0x4654

    invoke-static {v0, v2}, Lcom/nd/commplatform/d/c/ol;->a(II)V

    const-string v0, "SNSBalanceNoEnoughView_payAfterRecharge"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/b$2;->b:Landroid/content/Context;

    const/4 v2, -0x1

    const/16 v3, 0x4b2

    invoke-static {v0, v1, v2, v3}, Lcom/nd/commplatform/d/c/cb;->a(Landroid/content/Context;Landroid/content/Intent;II)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/nd/commplatform/d/c/b$2;->a:Lcom/nd/commplatform/NdMiscCallbackListener$OnPayProcessListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nd/commplatform/d/c/b$2;->a:Lcom/nd/commplatform/NdMiscCallbackListener$OnPayProcessListener;

    const/16 v1, -0x4653

    invoke-interface {v0, v1}, Lcom/nd/commplatform/NdMiscCallbackListener$OnPayProcessListener;->finishPayProcess(I)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/nd/commplatform/d/c/b$2;->b:Landroid/content/Context;

    invoke-static {p0, v0, p1}, Lcom/nd/commplatform/d/c/nt;->a(Lcom/nd/commplatform/NdCallbackListener;Landroid/content/Context;I)V

    goto :goto_2
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p2, Ljava/lang/Double;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/b$2;->a(ILjava/lang/Double;)V

    return-void
.end method
