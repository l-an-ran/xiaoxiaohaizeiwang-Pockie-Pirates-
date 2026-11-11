.class final Lcom/nd/commplatform/friend/NdFriendSectionPanel$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nd/commplatform/d/c/dl$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nd/commplatform/friend/NdFriendSectionPanel;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/nd/commplatform/d/c/dl$c",
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

    iput-object p1, p0, Lcom/nd/commplatform/friend/NdFriendSectionPanel$1;->a:Lcom/nd/commplatform/friend/NdFriendSectionPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->X:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/widget/NdFriendSectionListItem;

    return-object v0
.end method

.method public a(Landroid/view/View;)Lcom/nd/commplatform/d/c/gw;
    .locals 2

    new-instance v0, Lcom/nd/commplatform/d/c/gw;

    check-cast p1, Lcom/nd/commplatform/widget/NdFriendSectionListItem;

    new-instance v1, Lcom/nd/commplatform/friend/NdFriendSectionPanel$1$1;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/friend/NdFriendSectionPanel$1$1;-><init>(Lcom/nd/commplatform/friend/NdFriendSectionPanel$1;)V

    invoke-direct {v0, p1, v1}, Lcom/nd/commplatform/d/c/gw;-><init>(Lcom/nd/commplatform/widget/NdFriendSectionListItem;Lcom/nd/commplatform/d/c/hg;)V

    return-object v0
.end method

.method public a(Lcom/nd/commplatform/d/c/gw;)V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/friend/NdFriendSectionPanel$1;->a:Lcom/nd/commplatform/friend/NdFriendSectionPanel;

    invoke-static {v0}, Lcom/nd/commplatform/friend/NdFriendSectionPanel;->d(Lcom/nd/commplatform/friend/NdFriendSectionPanel;)Lcom/nd/commplatform/friend/NdFriendSectionPanel$b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/nd/commplatform/d/c/gw;->d()I

    move-result v0

    iget-object v1, p0, Lcom/nd/commplatform/friend/NdFriendSectionPanel$1;->a:Lcom/nd/commplatform/friend/NdFriendSectionPanel;

    invoke-static {v1}, Lcom/nd/commplatform/friend/NdFriendSectionPanel;->e(Lcom/nd/commplatform/friend/NdFriendSectionPanel;)Lcom/nd/commplatform/d/c/dl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/dl;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/ek;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nd/commplatform/friend/NdFriendSectionPanel$1;->a:Lcom/nd/commplatform/friend/NdFriendSectionPanel;

    invoke-static {v1}, Lcom/nd/commplatform/friend/NdFriendSectionPanel;->d(Lcom/nd/commplatform/friend/NdFriendSectionPanel;)Lcom/nd/commplatform/friend/NdFriendSectionPanel$b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/nd/commplatform/friend/NdFriendSectionPanel$b;->a(Lcom/nd/commplatform/d/c/ek;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;Lcom/nd/commplatform/d/c/ek;Ljava/lang/String;Z)V
    .locals 0

    check-cast p1, Lcom/nd/commplatform/d/c/gw;

    invoke-virtual {p1, p2, p4, p3}, Lcom/nd/commplatform/d/c/gw;->a(Lcom/nd/commplatform/d/c/ek;ZLjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 0

    check-cast p2, Lcom/nd/commplatform/d/c/ek;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nd/commplatform/friend/NdFriendSectionPanel$1;->a(Ljava/lang/Object;Lcom/nd/commplatform/d/c/ek;Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 4

    check-cast p1, Lcom/nd/commplatform/friend/NdFriendSectionPanel$a;

    iget-object v0, p1, Lcom/nd/commplatform/friend/NdFriendSectionPanel$a;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/nd/commplatform/friend/NdFriendSectionPanel$a;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const/16 v0, 0xff

    if-ne p3, v0, :cond_0

    iget-object v0, p1, Lcom/nd/commplatform/friend/NdFriendSectionPanel$a;->a:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/nd/commplatform/friend/NdFriendSectionPanel$a;->b:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/nd/commplatform/friend/NdFriendSectionPanel$a;->b:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iget-object v1, p1, Lcom/nd/commplatform/friend/NdFriendSectionPanel$a;->a:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-static {p3, v2, v3, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/friend/NdFriendSectionPanel$1;->a:Lcom/nd/commplatform/friend/NdFriendSectionPanel;

    invoke-static {v0}, Lcom/nd/commplatform/friend/NdFriendSectionPanel;->a(Lcom/nd/commplatform/friend/NdFriendSectionPanel;)Lcom/nd/commplatform/friend/FriendHeaderListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/friend/FriendHeaderListView;->getEmptyView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/friend/NdFriendSectionPanel$1;->a:Lcom/nd/commplatform/friend/NdFriendSectionPanel;

    invoke-static {v0}, Lcom/nd/commplatform/friend/NdFriendSectionPanel;->b(Lcom/nd/commplatform/friend/NdFriendSectionPanel;)Lcom/nd/commplatform/widget/NdListBlankView;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->jt:I

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/widget/NdListBlankView;->a(I)V

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/friend/NdFriendSectionPanel$1;->a:Lcom/nd/commplatform/friend/NdFriendSectionPanel;

    invoke-static {v0}, Lcom/nd/commplatform/friend/NdFriendSectionPanel;->c(Lcom/nd/commplatform/friend/NdFriendSectionPanel;)Lcom/nd/commplatform/friend/FriendSectionSwitcher;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/friend/FriendSectionSwitcher;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/friend/NdFriendSectionPanel$1;->a:Lcom/nd/commplatform/friend/NdFriendSectionPanel;

    invoke-static {v0}, Lcom/nd/commplatform/friend/NdFriendSectionPanel;->a(Lcom/nd/commplatform/friend/NdFriendSectionPanel;)Lcom/nd/commplatform/friend/FriendHeaderListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/friend/FriendHeaderListView;->getEmptyView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nd/commplatform/friend/NdFriendSectionPanel$1;->a:Lcom/nd/commplatform/friend/NdFriendSectionPanel;

    invoke-static {v0}, Lcom/nd/commplatform/friend/NdFriendSectionPanel;->b(Lcom/nd/commplatform/friend/NdFriendSectionPanel;)Lcom/nd/commplatform/widget/NdListBlankView;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->fH:I

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/widget/NdListBlankView;->a(I)V

    :cond_2
    iget-object v0, p0, Lcom/nd/commplatform/friend/NdFriendSectionPanel$1;->a:Lcom/nd/commplatform/friend/NdFriendSectionPanel;

    invoke-static {v0}, Lcom/nd/commplatform/friend/NdFriendSectionPanel;->c(Lcom/nd/commplatform/friend/NdFriendSectionPanel;)Lcom/nd/commplatform/friend/FriendSectionSwitcher;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/friend/FriendSectionSwitcher;->setVisibility(I)V

    goto :goto_0
.end method

.method public b(Landroid/view/View;)Ljava/lang/Object;
    .locals 2

    new-instance v1, Lcom/nd/commplatform/friend/NdFriendSectionPanel$a;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/nd/commplatform/friend/NdFriendSectionPanel$a;-><init>(Lcom/nd/commplatform/friend/NdFriendSectionPanel$1;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->cE:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/nd/commplatform/friend/NdFriendSectionPanel$a;->a:Landroid/widget/TextView;

    iget-object v0, v1, Lcom/nd/commplatform/friend/NdFriendSectionPanel$a;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, v1, Lcom/nd/commplatform/friend/NdFriendSectionPanel$a;->b:Landroid/content/res/ColorStateList;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lcom/nd/commplatform/friend/NdFriendSectionPanel$a;->c:Landroid/graphics/drawable/Drawable;

    return-object v1
.end method
