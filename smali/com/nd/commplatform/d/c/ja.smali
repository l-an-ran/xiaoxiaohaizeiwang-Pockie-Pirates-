.class public Lcom/nd/commplatform/d/c/ja;
.super Lcom/nd/commplatform/widget/NdFrameInnerContent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nd/commplatform/d/c/ja$a;,
        Lcom/nd/commplatform/d/c/ja$b;
    }
.end annotation


# instance fields
.field protected a:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->aO:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected a()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nd/commplatform/d/c/ja;->p:Z

    iput-boolean v0, p0, Lcom/nd/commplatform/d/c/ja;->q:Z

    iput-object v1, p0, Lcom/nd/commplatform/d/c/ja;->r:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/nd/commplatform/d/c/ja;->s:Z

    iput-object v1, p0, Lcom/nd/commplatform/d/c/ja;->t:Ljava/lang/String;

    iput-object v1, p0, Lcom/nd/commplatform/d/c/ja;->u:Landroid/view/View$OnClickListener;

    iput-boolean v0, p0, Lcom/nd/commplatform/d/c/ja;->v:Z

    iput-boolean v0, p0, Lcom/nd/commplatform/d/c/ja;->w:Z

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 6

    const/4 v3, 0x0

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->gU:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ja;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->gR:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->gQ:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ja;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ja;->a:Landroid/view/View;

    sget v1, Lcom/nd/commplatform/d/c/jo$d;->bH:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ja;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    check-cast v0, Landroid/widget/Button;

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->dz:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ja;->a:Landroid/view/View;

    new-instance v1, Lcom/nd/commplatform/d/c/ja$a;

    invoke-direct {v1, p0, v3}, Lcom/nd/commplatform/d/c/ja$a;-><init>(Lcom/nd/commplatform/d/c/ja;Lcom/nd/commplatform/d/c/ja$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->gR:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->fk:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/nd/commplatform/d/c/ja$b;

    invoke-direct {v1, p0, v3}, Lcom/nd/commplatform/d/c/ja$b;-><init>(Lcom/nd/commplatform/d/c/ja;Lcom/nd/commplatform/d/c/ja$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->iH:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ja;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/nd/commplatform/d/c/jo$h;->mI:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ja;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/nd/commplatform/d/c/jo$b;->p:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v3, 0xa

    const/16 v4, 0x12

    const/16 v5, 0x22

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->fj:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/nd/commplatform/d/c/ja$1;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/ja$1;-><init>(Lcom/nd/commplatform/d/c/ja;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected a(ZI)V
    .locals 0

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-static {}, Lcom/nd/commplatform/d/c/bz;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nd/commplatform/d/c/bz;->c()V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/nd/commplatform/d/c/cb;->e()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
