.class public Lcom/nd/commplatform/d/c/hx;
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
.field protected a:Lcom/nd/commplatform/d/c/hg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nd/commplatform/d/c/hg",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected b:Lcom/nd/commplatform/widget/NdUserListItem;

.field protected c:Lcom/nd/commplatform/NdCallbackListener;
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
.method public constructor <init>(Lcom/nd/commplatform/widget/NdUserListItem;Lcom/nd/commplatform/d/c/hg;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nd/commplatform/widget/NdUserListItem;",
            "Lcom/nd/commplatform/d/c/hg",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/hh;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/hx;->a:Lcom/nd/commplatform/d/c/hg;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/hx;->a:Lcom/nd/commplatform/d/c/hg;

    iput-object p1, p0, Lcom/nd/commplatform/d/c/hx;->b:Lcom/nd/commplatform/widget/NdUserListItem;

    return-void
.end method

.method private g()V
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hx;->c:Lcom/nd/commplatform/NdCallbackListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hx;->c:Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {v0}, Lcom/nd/commplatform/NdCallbackListener;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/hx;->c:Lcom/nd/commplatform/NdCallbackListener;

    :cond_0
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hx;->b:Lcom/nd/commplatform/widget/NdUserListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdUserListItem;->b:Landroid/widget/ImageView;

    sget v1, Lcom/nd/commplatform/d/c/jo$d;->aa:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/nd/commplatform/d/c/hx;->a(Ljava/lang/Object;Z)V

    return-void
.end method

.method public a(Ljava/lang/Object;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/hx;->g()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hx;->a:Lcom/nd/commplatform/d/c/hg;

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/d/c/hg;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hx;->b:Lcom/nd/commplatform/widget/NdUserListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdUserListItem;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/hx;->a:Lcom/nd/commplatform/d/c/hg;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/hg;->p()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hx;->b:Lcom/nd/commplatform/widget/NdUserListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdUserListItem;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/hx;->a:Lcom/nd/commplatform/d/c/hg;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/hg;->q()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p2}, Lcom/nd/commplatform/d/c/hx;->a(Z)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hx;->a:Lcom/nd/commplatform/d/c/hg;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/hg;->n()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/hx;->a:Lcom/nd/commplatform/d/c/hg;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/hg;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/nd/commplatform/d/c/hx;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hx;->b:Lcom/nd/commplatform/widget/NdUserListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdUserListItem;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/hx;->a()V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string v2, ""

    :goto_1
    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    new-instance v1, Lcom/nd/commplatform/d/c/hx$1;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/hx$1;-><init>(Lcom/nd/commplatform/d/c/hx;)V

    iput-object v1, p0, Lcom/nd/commplatform/d/c/hx;->c:Lcom/nd/commplatform/NdCallbackListener;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/hx;->b:Lcom/nd/commplatform/widget/NdUserListItem;

    invoke-virtual {v1}, Lcom/nd/commplatform/widget/NdUserListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nd/commplatform/d/c/oh;->g(Landroid/content/Context;)I

    move-result v3

    iget-object v1, p0, Lcom/nd/commplatform/d/c/hx;->b:Lcom/nd/commplatform/widget/NdUserListItem;

    invoke-virtual {v1}, Lcom/nd/commplatform/widget/NdUserListItem;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/nd/commplatform/d/c/hx;->c:Lcom/nd/commplatform/NdCallbackListener;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/a;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z

    goto :goto_0

    :cond_1
    move-object v2, p2

    goto :goto_1
.end method

.method protected a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hx;->b:Lcom/nd/commplatform/widget/NdUserListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdUserListItem;->d:Landroid/widget/ImageView;

    sget v1, Lcom/nd/commplatform/d/c/jo$d;->bz:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/hx;->b:Lcom/nd/commplatform/widget/NdUserListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdUserListItem;->d:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hx;->a:Lcom/nd/commplatform/d/c/hg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hx;->a:Lcom/nd/commplatform/d/c/hg;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/hg;->l()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/hx;->g()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hx;->a:Lcom/nd/commplatform/d/c/hg;

    invoke-virtual {v0, v2}, Lcom/nd/commplatform/d/c/hg;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hx;->b:Lcom/nd/commplatform/widget/NdUserListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdUserListItem;->a:Landroid/widget/TextView;

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->cT:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hx;->b:Lcom/nd/commplatform/widget/NdUserListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdUserListItem;->c:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hx;->b:Lcom/nd/commplatform/widget/NdUserListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdUserListItem;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/hx;->a()V

    return-void
.end method

.method public f()V
    .locals 2

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/hx;->d()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hx;->b:Lcom/nd/commplatform/widget/NdUserListItem;

    sget v1, Lcom/nd/commplatform/d/c/jo$d;->aS:I

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/widget/NdUserListItem;->setBackgroundResource(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/hx;->b:Lcom/nd/commplatform/widget/NdUserListItem;

    sget v1, Lcom/nd/commplatform/d/c/jo$d;->aT:I

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/widget/NdUserListItem;->setBackgroundResource(I)V

    goto :goto_0
.end method
