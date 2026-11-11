.class public Lcom/nd/commplatform/d/c/gy;
.super Lcom/nd/commplatform/d/c/hh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/nd/commplatform/d/c/hh;"
    }
.end annotation


# instance fields
.field private a:Lcom/nd/commplatform/widget/NdInviteFriendListItem;

.field private b:Lcom/nd/commplatform/d/c/gx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nd/commplatform/d/c/gx",
            "<TT;>;"
        }
    .end annotation
.end field

.field private c:Lcom/nd/commplatform/NdCallbackListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdIcon;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nd/commplatform/widget/NdInviteFriendListItem;Lcom/nd/commplatform/d/c/gx;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nd/commplatform/widget/NdInviteFriendListItem;",
            "Lcom/nd/commplatform/d/c/gx",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/hh;-><init>()V

    iput-object p1, p0, Lcom/nd/commplatform/d/c/gy;->a:Lcom/nd/commplatform/widget/NdInviteFriendListItem;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/gy;->b:Lcom/nd/commplatform/d/c/gx;

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/gy;)Lcom/nd/commplatform/d/c/gx;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gy;->b:Lcom/nd/commplatform/d/c/gx;

    return-object v0
.end method

.method private a(ZZ)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gy;->a:Lcom/nd/commplatform/widget/NdInviteFriendListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdInviteFriendListItem;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gy;->a:Lcom/nd/commplatform/widget/NdInviteFriendListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdInviteFriendListItem;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gy;->a:Lcom/nd/commplatform/widget/NdInviteFriendListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdInviteFriendListItem;->d:Landroid/widget/TextView;

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->cI:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/gy;->a:Lcom/nd/commplatform/widget/NdInviteFriendListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdInviteFriendListItem;->d:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gy;->a:Lcom/nd/commplatform/widget/NdInviteFriendListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdInviteFriendListItem;->d:Landroid/widget/TextView;

    sget v1, Lcom/nd/commplatform/d/c/jo$d;->P:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/gy;->a:Lcom/nd/commplatform/widget/NdInviteFriendListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdInviteFriendListItem;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/gy;)Lcom/nd/commplatform/widget/NdInviteFriendListItem;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gy;->a:Lcom/nd/commplatform/widget/NdInviteFriendListItem;

    return-object v0
.end method

.method private f()V
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gy;->c:Lcom/nd/commplatform/NdCallbackListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gy;->c:Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {v0}, Lcom/nd/commplatform/NdCallbackListener;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/gy;->c:Lcom/nd/commplatform/NdCallbackListener;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/gy;->f()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gy;->b:Lcom/nd/commplatform/d/c/gx;

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/d/c/gx;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gy;->a:Lcom/nd/commplatform/widget/NdInviteFriendListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdInviteFriendListItem;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/gy;->b:Lcom/nd/commplatform/d/c/gx;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/gx;->p()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gy;->a:Lcom/nd/commplatform/widget/NdInviteFriendListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdInviteFriendListItem;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/gy;->b:Lcom/nd/commplatform/d/c/gx;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/gx;->q()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gy;->b:Lcom/nd/commplatform/d/c/gx;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/gx;->i()Z

    move-result v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/gy;->b:Lcom/nd/commplatform/d/c/gx;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/gx;->j()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/nd/commplatform/d/c/gy;->a(ZZ)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gy;->b:Lcom/nd/commplatform/d/c/gx;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/gx;->n()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/gy;->b:Lcom/nd/commplatform/d/c/gx;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/gx;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/nd/commplatform/d/c/gy;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/gy;->c()V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string v2, ""

    :goto_1
    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    new-instance v1, Lcom/nd/commplatform/d/c/gy$1;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/gy$1;-><init>(Lcom/nd/commplatform/d/c/gy;)V

    iput-object v1, p0, Lcom/nd/commplatform/d/c/gy;->c:Lcom/nd/commplatform/NdCallbackListener;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/gy;->a:Lcom/nd/commplatform/widget/NdInviteFriendListItem;

    invoke-virtual {v1}, Lcom/nd/commplatform/widget/NdInviteFriendListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nd/commplatform/d/c/oh;->g(Landroid/content/Context;)I

    move-result v3

    iget-object v1, p0, Lcom/nd/commplatform/d/c/gy;->a:Lcom/nd/commplatform/widget/NdInviteFriendListItem;

    invoke-virtual {v1}, Lcom/nd/commplatform/widget/NdInviteFriendListItem;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/nd/commplatform/d/c/gy;->c:Lcom/nd/commplatform/NdCallbackListener;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/a;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z

    goto :goto_0

    :cond_1
    move-object v2, p2

    goto :goto_1
.end method

.method public a()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/nd/commplatform/d/c/gy;->b:Lcom/nd/commplatform/d/c/gx;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/gx;->i()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/nd/commplatform/d/c/gy;->b:Lcom/nd/commplatform/d/c/gx;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/gx;->k()V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/gy;->b:Lcom/nd/commplatform/d/c/gx;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/gx;->j()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/nd/commplatform/d/c/gy;->a(ZZ)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/gy;->f()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gy;->b:Lcom/nd/commplatform/d/c/gx;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/gx;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gy;->a:Lcom/nd/commplatform/widget/NdInviteFriendListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdInviteFriendListItem;->a:Landroid/widget/TextView;

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->cT:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gy;->a:Lcom/nd/commplatform/widget/NdInviteFriendListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdInviteFriendListItem;->c:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gy;->a:Lcom/nd/commplatform/widget/NdInviteFriendListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdInviteFriendListItem;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/gy;->c()V

    return-void
.end method

.method protected c()V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gy;->a:Lcom/nd/commplatform/widget/NdInviteFriendListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdInviteFriendListItem;->b:Landroid/widget/ImageView;

    sget v1, Lcom/nd/commplatform/d/c/jo$d;->aa:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
