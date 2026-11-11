.class public Lcom/nd/commplatform/d/c/gz;
.super Lcom/nd/commplatform/d/c/hh;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nd/commplatform/d/c/gz$a;,
        Lcom/nd/commplatform/d/c/gz$b;
    }
.end annotation


# instance fields
.field private a:Lcom/nd/commplatform/widget/NdInviteFriendListItem;

.field private b:Lcom/nd/commplatform/d/c/hb;

.field private c:Lcom/nd/commplatform/d/c/gz$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nd/commplatform/d/c/gz$b",
            "<",
            "Lcom/nd/commplatform/entry/ThirdPlatformUserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/nd/commplatform/d/c/gz$a;


# direct methods
.method public constructor <init>(Lcom/nd/commplatform/widget/NdInviteFriendListItem;)V
    .locals 2

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/hh;-><init>()V

    new-instance v0, Lcom/nd/commplatform/d/c/hb;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/hb;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/gz;->b:Lcom/nd/commplatform/d/c/hb;

    iput-object p1, p0, Lcom/nd/commplatform/d/c/gz;->a:Lcom/nd/commplatform/widget/NdInviteFriendListItem;

    new-instance v0, Lcom/nd/commplatform/d/c/gz$a;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/gz;->a:Lcom/nd/commplatform/widget/NdInviteFriendListItem;

    iget-object v1, v1, Lcom/nd/commplatform/widget/NdInviteFriendListItem;->b:Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/gz$a;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/gz;->d:Lcom/nd/commplatform/d/c/gz$a;

    return-void
.end method

.method private a(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gz;->a:Lcom/nd/commplatform/widget/NdInviteFriendListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdInviteFriendListItem;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gz;->a:Lcom/nd/commplatform/widget/NdInviteFriendListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdInviteFriendListItem;->d:Landroid/widget/TextView;

    sget v1, Lcom/nd/commplatform/d/c/jo$d;->y:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gz;->a:Lcom/nd/commplatform/widget/NdInviteFriendListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdInviteFriendListItem;->d:Landroid/widget/TextView;

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->cH:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gz;->a:Lcom/nd/commplatform/widget/NdInviteFriendListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdInviteFriendListItem;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/gz;->a:Lcom/nd/commplatform/widget/NdInviteFriendListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdInviteFriendListItem;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gz;->a:Lcom/nd/commplatform/widget/NdInviteFriendListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdInviteFriendListItem;->d:Landroid/widget/TextView;

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->cI:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gz;->a:Lcom/nd/commplatform/widget/NdInviteFriendListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdInviteFriendListItem;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gz;->b:Lcom/nd/commplatform/d/c/hb;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/hb;->a(Lcom/nd/commplatform/entry/ThirdPlatformUserInfo;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gz;->a:Lcom/nd/commplatform/widget/NdInviteFriendListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdInviteFriendListItem;->a:Landroid/widget/TextView;

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->cT:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gz;->a:Lcom/nd/commplatform/widget/NdInviteFriendListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdInviteFriendListItem;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gz;->d:Lcom/nd/commplatform/d/c/gz$a;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/gz$a;->a()V

    return-void
.end method

.method public a(Lcom/nd/commplatform/d/c/gz$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nd/commplatform/d/c/gz$b",
            "<",
            "Lcom/nd/commplatform/entry/ThirdPlatformUserInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nd/commplatform/d/c/gz;->c:Lcom/nd/commplatform/d/c/gz$b;

    return-void
.end method

.method public a(Lcom/nd/commplatform/entry/ThirdPlatformUserInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gz;->b:Lcom/nd/commplatform/d/c/hb;

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/d/c/hb;->a(Lcom/nd/commplatform/entry/ThirdPlatformUserInfo;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gz;->a:Lcom/nd/commplatform/widget/NdInviteFriendListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdInviteFriendListItem;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/gz;->b:Lcom/nd/commplatform/d/c/hb;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/hb;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gz;->b:Lcom/nd/commplatform/d/c/hb;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/hb;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/nd/commplatform/d/c/gz;->a(Z)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gz;->d:Lcom/nd/commplatform/d/c/gz$a;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/gz;->b:Lcom/nd/commplatform/d/c/hb;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/hb;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/gz$a;->a(Ljava/lang/String;)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/d/c/gz;->c:Lcom/nd/commplatform/d/c/gz$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gz;->b:Lcom/nd/commplatform/d/c/hb;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/hb;->b()Lcom/nd/commplatform/entry/ThirdPlatformUserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/gz;->c:Lcom/nd/commplatform/d/c/gz$b;

    invoke-interface {v1, v0}, Lcom/nd/commplatform/d/c/gz$b;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
