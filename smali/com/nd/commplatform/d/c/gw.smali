.class public Lcom/nd/commplatform/d/c/gw;
.super Lcom/nd/commplatform/d/c/hx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/d/c/hx",
        "<",
        "Lcom/nd/commplatform/d/c/ek;",
        ">;"
    }
.end annotation


# instance fields
.field private d:Lcom/nd/commplatform/widget/NdFriendSectionListItem;


# direct methods
.method public constructor <init>(Lcom/nd/commplatform/widget/NdFriendSectionListItem;Lcom/nd/commplatform/d/c/hg;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nd/commplatform/widget/NdFriendSectionListItem;",
            "Lcom/nd/commplatform/d/c/hg",
            "<",
            "Lcom/nd/commplatform/d/c/ek;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p1, Lcom/nd/commplatform/widget/NdFriendSectionListItem;->b:Lcom/nd/commplatform/widget/NdUserListItem;

    invoke-direct {p0, v0, p2}, Lcom/nd/commplatform/d/c/hx;-><init>(Lcom/nd/commplatform/widget/NdUserListItem;Lcom/nd/commplatform/d/c/hg;)V

    iput-object p1, p0, Lcom/nd/commplatform/d/c/gw;->d:Lcom/nd/commplatform/widget/NdFriendSectionListItem;

    return-void
.end method


# virtual methods
.method public a(Lcom/nd/commplatform/d/c/ek;ZLjava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p2, p3}, Lcom/nd/commplatform/d/c/gw;->a(ZLjava/lang/String;)V

    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Lcom/nd/commplatform/d/c/hx;->a(Ljava/lang/Object;Z)V

    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gw;->d:Lcom/nd/commplatform/widget/NdFriendSectionListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdFriendSectionListItem;->a:Lcom/nd/commplatform/widget/NdFriendSectionHeader;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdFriendSectionHeader;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gw;->d:Lcom/nd/commplatform/widget/NdFriendSectionListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdFriendSectionListItem;->a:Lcom/nd/commplatform/widget/NdFriendSectionHeader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/widget/NdFriendSectionHeader;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/gw;->d:Lcom/nd/commplatform/widget/NdFriendSectionListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdFriendSectionListItem;->a:Lcom/nd/commplatform/widget/NdFriendSectionHeader;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/widget/NdFriendSectionHeader;->setVisibility(I)V

    goto :goto_0
.end method
