.class final Lcom/nd/commplatform/friend/NdFriendSectionPanel$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nd/commplatform/friend/FriendSectionSwitcher$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/friend/NdFriendSectionPanel;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/friend/NdFriendSectionPanel;


# direct methods
.method constructor <init>(Lcom/nd/commplatform/friend/NdFriendSectionPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/friend/NdFriendSectionPanel$2;->a:Lcom/nd/commplatform/friend/NdFriendSectionPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    iget-object v0, p0, Lcom/nd/commplatform/friend/NdFriendSectionPanel$2;->a:Lcom/nd/commplatform/friend/NdFriendSectionPanel;

    invoke-static {v0}, Lcom/nd/commplatform/friend/NdFriendSectionPanel;->e(Lcom/nd/commplatform/friend/NdFriendSectionPanel;)Lcom/nd/commplatform/d/c/dl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/friend/NdFriendSectionPanel$2;->a:Lcom/nd/commplatform/friend/NdFriendSectionPanel;

    invoke-static {v0}, Lcom/nd/commplatform/friend/NdFriendSectionPanel;->a(Lcom/nd/commplatform/friend/NdFriendSectionPanel;)Lcom/nd/commplatform/friend/FriendHeaderListView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/friend/NdFriendSectionPanel$2;->a:Lcom/nd/commplatform/friend/NdFriendSectionPanel;

    invoke-static {v0}, Lcom/nd/commplatform/friend/NdFriendSectionPanel;->e(Lcom/nd/commplatform/friend/NdFriendSectionPanel;)Lcom/nd/commplatform/d/c/dl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/d/c/dl;->getPositionForSection(I)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/nd/commplatform/friend/NdFriendSectionPanel$2;->a:Lcom/nd/commplatform/friend/NdFriendSectionPanel;

    invoke-static {v1}, Lcom/nd/commplatform/friend/NdFriendSectionPanel;->a(Lcom/nd/commplatform/friend/NdFriendSectionPanel;)Lcom/nd/commplatform/friend/FriendHeaderListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/nd/commplatform/friend/FriendHeaderListView;->setSelectionFromTop(II)V

    :cond_0
    return-void
.end method
