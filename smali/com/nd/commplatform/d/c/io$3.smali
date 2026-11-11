.class final Lcom/nd/commplatform/d/c/io$3;
.super Lcom/nd/commplatform/NdCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/d/c/io;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/NdCallbackListener",
        "<",
        "Lcom/nd/commplatform/entry/NdPermission;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/io;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/d/c/io;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/io$3;->a:Lcom/nd/commplatform/d/c/io;

    invoke-direct {p0}, Lcom/nd/commplatform/NdCallbackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/nd/commplatform/entry/NdPermission;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/io$3;->a:Lcom/nd/commplatform/d/c/io;

    invoke-virtual {v0, v2}, Lcom/nd/commplatform/d/c/io;->b(Z)V

    if-nez p1, :cond_6

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdPermission;->getAddFriendPermission()Lcom/nd/commplatform/entry/NdAddFriendPermission;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/io$3;->a:Lcom/nd/commplatform/d/c/io;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/io;->e:Landroid/view/View;

    invoke-virtual {v3}, Lcom/nd/commplatform/entry/NdAddFriendPermission;->getCanAddFriend()I

    move-result v4

    if-nez v4, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/io$3;->a:Lcom/nd/commplatform/d/c/io;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/io;->d:Landroid/view/View;

    :cond_1
    invoke-virtual {v3}, Lcom/nd/commplatform/entry/NdAddFriendPermission;->getCanAddFriend()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/io$3;->a:Lcom/nd/commplatform/d/c/io;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/io;->f:Landroid/view/View;

    :cond_2
    iget-object v3, p0, Lcom/nd/commplatform/d/c/io$3;->a:Lcom/nd/commplatform/d/c/io;

    invoke-static {v3, v0}, Lcom/nd/commplatform/d/c/io;->a(Lcom/nd/commplatform/d/c/io;Landroid/view/View;)V

    :cond_3
    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdPermission;->getCanPayPassword()Lcom/nd/commplatform/entry/NDCanPayPassword;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nd/commplatform/d/c/io$3;->a:Lcom/nd/commplatform/d/c/io;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/io;->a(Lcom/nd/commplatform/d/c/io;)Landroid/widget/CompoundButton;

    move-result-object v3

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdPermission;->getCanPayPassword()Lcom/nd/commplatform/entry/NDCanPayPassword;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NDCanPayPassword;->value()I

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/nd/commplatform/d/c/io$3;->a:Lcom/nd/commplatform/d/c/io;

    invoke-static {v0, p2}, Lcom/nd/commplatform/d/c/io;->a(Lcom/nd/commplatform/d/c/io;Lcom/nd/commplatform/entry/NdPermission;)Lcom/nd/commplatform/entry/NdPermission;

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/nd/commplatform/d/c/io$3;->a:Lcom/nd/commplatform/d/c/io;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/io;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/nd/commplatform/d/c/nt;->a(Lcom/nd/commplatform/NdCallbackListener;Landroid/content/Context;I)V

    goto :goto_2
.end method

.method public synthetic callback(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p2, Lcom/nd/commplatform/entry/NdPermission;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/io$3;->a(ILcom/nd/commplatform/entry/NdPermission;)V

    return-void
.end method
