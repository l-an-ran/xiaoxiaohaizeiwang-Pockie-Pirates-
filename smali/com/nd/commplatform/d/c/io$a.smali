.class Lcom/nd/commplatform/d/c/io$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/d/c/io;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/io;


# direct methods
.method private constructor <init>(Lcom/nd/commplatform/d/c/io;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/io$a;->a:Lcom/nd/commplatform/d/c/io;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nd/commplatform/d/c/io;Lcom/nd/commplatform/d/c/io$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/io$a;-><init>(Lcom/nd/commplatform/d/c/io;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/io$a;->a:Lcom/nd/commplatform/d/c/io;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/io;->d(Lcom/nd/commplatform/d/c/io;)Landroid/view/View;

    move-result-object v4

    iget-object v0, p0, Lcom/nd/commplatform/d/c/io$a;->a:Lcom/nd/commplatform/d/c/io;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/io;->d:Landroid/view/View;

    if-ne v4, v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v5, p0, Lcom/nd/commplatform/d/c/io$a;->a:Lcom/nd/commplatform/d/c/io;

    iget-object v5, v5, Lcom/nd/commplatform/d/c/io;->f:Landroid/view/View;

    if-ne v4, v5, :cond_0

    move v0, v3

    :cond_0
    new-instance v4, Lcom/nd/commplatform/entry/NdPermission;

    invoke-direct {v4}, Lcom/nd/commplatform/entry/NdPermission;-><init>()V

    new-instance v5, Lcom/nd/commplatform/entry/NdAddFriendPermission;

    invoke-direct {v5}, Lcom/nd/commplatform/entry/NdAddFriendPermission;-><init>()V

    invoke-virtual {v5, v0}, Lcom/nd/commplatform/entry/NdAddFriendPermission;->setCanAddFriend(I)V

    invoke-virtual {v4, v5}, Lcom/nd/commplatform/entry/NdPermission;->setAddFriendPermission(Lcom/nd/commplatform/entry/NdAddFriendPermission;)V

    new-instance v5, Lcom/nd/commplatform/entry/NDCanPayPassword;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/io$a;->a:Lcom/nd/commplatform/d/c/io;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/io;->a(Lcom/nd/commplatform/d/c/io;)Landroid/widget/CompoundButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    :goto_1
    invoke-direct {v5, v0}, Lcom/nd/commplatform/entry/NDCanPayPassword;-><init>(I)V

    invoke-virtual {v4, v5}, Lcom/nd/commplatform/entry/NdPermission;->setCanPayPassword(Lcom/nd/commplatform/entry/NDCanPayPassword;)V

    new-instance v0, Lcom/nd/commplatform/d/c/io$a$1;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/io$a$1;-><init>(Lcom/nd/commplatform/d/c/io$a;)V

    iget-object v5, p0, Lcom/nd/commplatform/d/c/io$a;->a:Lcom/nd/commplatform/d/c/io;

    invoke-virtual {v5, v1}, Lcom/nd/commplatform/d/c/io;->b(Z)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/io$a;->a:Lcom/nd/commplatform/d/c/io;

    invoke-virtual {v1, v3, v0, v2}, Lcom/nd/commplatform/d/c/io;->a(ILcom/nd/commplatform/NdCallbackListener;Z)Lcom/nd/commplatform/NdCallbackListener;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/io$a;->a:Lcom/nd/commplatform/d/c/io;

    invoke-virtual {v1, v2}, Lcom/nd/commplatform/d/c/io;->b(Z)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/io$a;->a:Lcom/nd/commplatform/d/c/io;

    invoke-virtual {v2}, Lcom/nd/commplatform/d/c/io;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v4, v2, v0}, Lcom/nd/commplatform/d/c/a;->a(Lcom/nd/commplatform/entry/NdPermission;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method
