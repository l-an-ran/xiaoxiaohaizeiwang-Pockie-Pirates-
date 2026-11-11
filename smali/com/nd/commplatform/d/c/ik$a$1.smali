.class final Lcom/nd/commplatform/d/c/ik$a$1;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/ik$a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/NdCallbackListener",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/entry/NdUserInfo;

.field final synthetic b:Lcom/nd/commplatform/d/c/ik$a;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/ik$a;Lcom/nd/commplatform/entry/NdUserInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ik$a$1;->b:Lcom/nd/commplatform/d/c/ik$a;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/ik$a$1;->a:Lcom/nd/commplatform/entry/NdUserInfo;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILjava/lang/Object;)V
    .locals 2
    .param p1, "responseCode"    # I
    .param p2, "t"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ik$a$1;->b:Lcom/nd/commplatform/d/c/ik$a;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/ik$a;->a:Lcom/nd/commplatform/d/c/ik;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/ik;->b(Z)V

    if-nez p1, :cond_9

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ik$a$1;->b:Lcom/nd/commplatform/d/c/ik$a;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/ik$a;->a:Lcom/nd/commplatform/d/c/ik;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/ik;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->dU:I

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;I)V

    invoke-static {}, Lcom/nd/commplatform/d/c/of;->a()Lcom/nd/commplatform/d/c/of;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/of;->d()Lcom/nd/commplatform/entry/NdUserInfo;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/nd/commplatform/d/c/ik$a$1;->a:Lcom/nd/commplatform/entry/NdUserInfo;

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdUserInfo;->getNickName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ik$a$1;->a:Lcom/nd/commplatform/entry/NdUserInfo;

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdUserInfo;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/entry/NdUserInfo;->setNickName(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/nd/commplatform/d/c/ik$a$1;->a:Lcom/nd/commplatform/entry/NdUserInfo;

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdUserInfo;->getBornYear()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ik$a$1;->a:Lcom/nd/commplatform/entry/NdUserInfo;

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdUserInfo;->getBornYear()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/entry/NdUserInfo;->setBornYear(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/nd/commplatform/d/c/ik$a$1;->a:Lcom/nd/commplatform/entry/NdUserInfo;

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdUserInfo;->getBornMonth()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ik$a$1;->a:Lcom/nd/commplatform/entry/NdUserInfo;

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdUserInfo;->getBornMonth()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/entry/NdUserInfo;->setBornMonth(Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/nd/commplatform/d/c/ik$a$1;->a:Lcom/nd/commplatform/entry/NdUserInfo;

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdUserInfo;->getBornDay()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ik$a$1;->a:Lcom/nd/commplatform/entry/NdUserInfo;

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdUserInfo;->getBornDay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/entry/NdUserInfo;->setBornDay(Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/nd/commplatform/d/c/ik$a$1;->a:Lcom/nd/commplatform/entry/NdUserInfo;

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdUserInfo;->getSex()Lcom/nd/commplatform/entry/NdSex;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ik$a$1;->a:Lcom/nd/commplatform/entry/NdUserInfo;

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdUserInfo;->getSex()Lcom/nd/commplatform/entry/NdSex;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/entry/NdUserInfo;->setSex(Lcom/nd/commplatform/entry/NdSex;)V

    :cond_5
    iget-object v1, p0, Lcom/nd/commplatform/d/c/ik$a$1;->a:Lcom/nd/commplatform/entry/NdUserInfo;

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdUserInfo;->getProvince()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ik$a$1;->a:Lcom/nd/commplatform/entry/NdUserInfo;

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdUserInfo;->getProvince()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/entry/NdUserInfo;->setProvince(Ljava/lang/String;)V

    :cond_6
    iget-object v1, p0, Lcom/nd/commplatform/d/c/ik$a$1;->a:Lcom/nd/commplatform/entry/NdUserInfo;

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdUserInfo;->getCity()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ik$a$1;->a:Lcom/nd/commplatform/entry/NdUserInfo;

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdUserInfo;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/entry/NdUserInfo;->setCity(Ljava/lang/String;)V

    :cond_7
    iget-object v1, p0, Lcom/nd/commplatform/d/c/ik$a$1;->a:Lcom/nd/commplatform/entry/NdUserInfo;

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdUserInfo;->getTrueName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ik$a$1;->a:Lcom/nd/commplatform/entry/NdUserInfo;

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdUserInfo;->getTrueName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/entry/NdUserInfo;->setTrueName(Ljava/lang/String;)V

    :cond_8
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/cb;->a(Lcom/nd/commplatform/d/c/bx;)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ik$a$1;->b:Lcom/nd/commplatform/d/c/ik$a;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/ik$a;->a:Lcom/nd/commplatform/d/c/ik;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/ik;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/nd/commplatform/d/c/nt;->a(Lcom/nd/commplatform/NdCallbackListener;Landroid/content/Context;I)V

    goto/16 :goto_0
.end method
