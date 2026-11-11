.class public Lcom/nd/commplatform/d/c/ho;
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
.field protected b:Lcom/nd/commplatform/widget/NdMessageListItem;

.field protected c:Lcom/nd/commplatform/d/c/hn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nd/commplatform/d/c/hn",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected d:Lcom/nd/commplatform/NdCallbackListener;
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
.method public constructor <init>(Lcom/nd/commplatform/widget/NdMessageListItem;Lcom/nd/commplatform/d/c/hn;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nd/commplatform/widget/NdMessageListItem;",
            "Lcom/nd/commplatform/d/c/hn",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/hh;-><init>()V

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ho;->b:Lcom/nd/commplatform/widget/NdMessageListItem;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/ho;->c:Lcom/nd/commplatform/d/c/hn;

    return-void
.end method

.method private c()V
    .locals 2

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ho;->d()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ho;->b:Lcom/nd/commplatform/widget/NdMessageListItem;

    sget v1, Lcom/nd/commplatform/d/c/jo$d;->aS:I

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/widget/NdMessageListItem;->setBackgroundResource(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ho;->b:Lcom/nd/commplatform/widget/NdMessageListItem;

    sget v1, Lcom/nd/commplatform/d/c/jo$d;->aT:I

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/widget/NdMessageListItem;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private f()V
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ho;->d:Lcom/nd/commplatform/NdCallbackListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ho;->d:Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {v0}, Lcom/nd/commplatform/NdCallbackListener;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ho;->d:Lcom/nd/commplatform/NdCallbackListener;

    :cond_0
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ho;->b:Lcom/nd/commplatform/widget/NdMessageListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdMessageListItem;->d:Landroid/widget/ImageView;

    sget v1, Lcom/nd/commplatform/d/c/jo$d;->aa:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/ho;->f()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ho;->c:Lcom/nd/commplatform/d/c/hn;

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/d/c/hn;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ho;->b:Lcom/nd/commplatform/widget/NdMessageListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdMessageListItem;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ho;->c:Lcom/nd/commplatform/d/c/hn;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/hn;->p()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ho;->b:Lcom/nd/commplatform/widget/NdMessageListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdMessageListItem;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ho;->c:Lcom/nd/commplatform/d/c/hn;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/hn;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ho;->b:Lcom/nd/commplatform/widget/NdMessageListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdMessageListItem;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ho;->c:Lcom/nd/commplatform/d/c/hn;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/hn;->q()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ho;->b:Lcom/nd/commplatform/widget/NdMessageListItem;

    iget-object v1, v0, Lcom/nd/commplatform/widget/NdMessageListItem;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ho;->c:Lcom/nd/commplatform/d/c/hn;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/hn;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/ho;->c()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ho;->c:Lcom/nd/commplatform/d/c/hn;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/hn;->n()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ho;->c:Lcom/nd/commplatform/d/c/hn;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/hn;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/nd/commplatform/d/c/ho;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ho;->a()V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string v2, ""

    :goto_1
    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    new-instance v1, Lcom/nd/commplatform/d/c/ho$1;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/ho$1;-><init>(Lcom/nd/commplatform/d/c/ho;)V

    iput-object v1, p0, Lcom/nd/commplatform/d/c/ho;->d:Lcom/nd/commplatform/NdCallbackListener;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ho;->b:Lcom/nd/commplatform/widget/NdMessageListItem;

    invoke-virtual {v1}, Lcom/nd/commplatform/widget/NdMessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nd/commplatform/d/c/oh;->g(Landroid/content/Context;)I

    move-result v3

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ho;->b:Lcom/nd/commplatform/widget/NdMessageListItem;

    invoke-virtual {v1}, Lcom/nd/commplatform/widget/NdMessageListItem;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/nd/commplatform/d/c/ho;->d:Lcom/nd/commplatform/NdCallbackListener;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/a;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z

    goto :goto_0

    :cond_1
    move-object v2, p2

    goto :goto_1
.end method

.method public b()V
    .locals 2

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/ho;->f()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ho;->c:Lcom/nd/commplatform/d/c/hn;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/hn;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ho;->b:Lcom/nd/commplatform/widget/NdMessageListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdMessageListItem;->b:Landroid/widget/TextView;

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->cT:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ho;->b:Lcom/nd/commplatform/widget/NdMessageListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdMessageListItem;->c:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ho;->b:Lcom/nd/commplatform/widget/NdMessageListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdMessageListItem;->e:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ho;->b:Lcom/nd/commplatform/widget/NdMessageListItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdMessageListItem;->a:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/ho;->c()V

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ho;->a()V

    return-void
.end method
