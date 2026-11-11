.class final Lcom/nd/commplatform/friend/NdFriendSectionPanel$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nd/commplatform/d/c/dl$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/friend/NdFriendSectionPanel;->a([Lcom/nd/commplatform/d/c/ek;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/nd/commplatform/d/c/dl$d",
        "<",
        "Lcom/nd/commplatform/d/c/ek;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/friend/NdFriendSectionPanel;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/friend/NdFriendSectionPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/friend/NdFriendSectionPanel$4;->a:Lcom/nd/commplatform/friend/NdFriendSectionPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/friend/NdFriendSectionPanel$4;->a:Lcom/nd/commplatform/friend/NdFriendSectionPanel;

    invoke-static {v0}, Lcom/nd/commplatform/friend/NdFriendSectionPanel;->c(Lcom/nd/commplatform/friend/NdFriendSectionPanel;)Lcom/nd/commplatform/friend/FriendSectionSwitcher;

    move-result-object v1

    iget-object v0, p0, Lcom/nd/commplatform/friend/NdFriendSectionPanel$4;->a:Lcom/nd/commplatform/friend/NdFriendSectionPanel;

    invoke-static {v0}, Lcom/nd/commplatform/friend/NdFriendSectionPanel;->e(Lcom/nd/commplatform/friend/NdFriendSectionPanel;)Lcom/nd/commplatform/d/c/dl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/dl;->getSections()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/friend/FriendSectionSwitcher;->a([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/friend/NdFriendSectionPanel$4;->a:Lcom/nd/commplatform/friend/NdFriendSectionPanel;

    invoke-static {v0}, Lcom/nd/commplatform/friend/NdFriendSectionPanel;->e(Lcom/nd/commplatform/friend/NdFriendSectionPanel;)Lcom/nd/commplatform/d/c/dl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/dl;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/friend/NdFriendSectionPanel$4;->a:Lcom/nd/commplatform/friend/NdFriendSectionPanel;

    invoke-static {v0}, Lcom/nd/commplatform/friend/NdFriendSectionPanel;->e(Lcom/nd/commplatform/friend/NdFriendSectionPanel;)Lcom/nd/commplatform/d/c/dl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/dl;->notifyDataSetChanged()V

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/friend/NdFriendSectionPanel$4;->a:Lcom/nd/commplatform/friend/NdFriendSectionPanel;

    invoke-static {v0}, Lcom/nd/commplatform/friend/NdFriendSectionPanel;->a(Lcom/nd/commplatform/friend/NdFriendSectionPanel;)Lcom/nd/commplatform/friend/FriendHeaderListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/friend/FriendHeaderListView;->getEmptyView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/friend/NdFriendSectionPanel$4;->a:Lcom/nd/commplatform/friend/NdFriendSectionPanel;

    invoke-static {v0}, Lcom/nd/commplatform/friend/NdFriendSectionPanel;->b(Lcom/nd/commplatform/friend/NdFriendSectionPanel;)Lcom/nd/commplatform/widget/NdListBlankView;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->fH:I

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/widget/NdListBlankView;->a(I)V

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/friend/NdFriendSectionPanel$4;->a:Lcom/nd/commplatform/friend/NdFriendSectionPanel;

    invoke-static {v0}, Lcom/nd/commplatform/friend/NdFriendSectionPanel;->f(Lcom/nd/commplatform/friend/NdFriendSectionPanel;)Lcom/nd/commplatform/friend/NdFriendSectionPanel$c;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nd/commplatform/friend/NdFriendSectionPanel$4;->a:Lcom/nd/commplatform/friend/NdFriendSectionPanel;

    invoke-static {v0}, Lcom/nd/commplatform/friend/NdFriendSectionPanel;->f(Lcom/nd/commplatform/friend/NdFriendSectionPanel;)Lcom/nd/commplatform/friend/NdFriendSectionPanel$c;

    move-result-object v0

    invoke-interface {v0}, Lcom/nd/commplatform/friend/NdFriendSectionPanel$c;->c()V

    :cond_2
    return-void
.end method
