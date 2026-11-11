.class Lcom/nd/commplatform/d/c/h$d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/d/c/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field a:Lcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;

.field b:Landroid/view/View;

.field c:Landroid/widget/TextView;

.field d:Landroid/view/View;

.field e:Landroid/view/View;

.field f:Landroid/view/View;

.field g:Lcom/nd/commplatform/d/c/h$b;

.field final synthetic h:Lcom/nd/commplatform/d/c/h;

.field private i:Landroid/view/animation/RotateAnimation;

.field private j:Landroid/view/animation/RotateAnimation;

.field private k:Landroid/view/animation/TranslateAnimation;

.field private l:Landroid/view/animation/TranslateAnimation;


# direct methods
.method public constructor <init>(Lcom/nd/commplatform/d/c/h;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/nd/commplatform/d/c/h$d;->h:Lcom/nd/commplatform/d/c/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->it:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/h$d;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/h$d;->b:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->iY:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/h$d;->c:Landroid/widget/TextView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->hF:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/h$d;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/h$d;->d:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->hG:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/h$d;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/h$d;->e:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->is:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/h$d;->f:Landroid/view/View;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/h$d;->a()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 15

    const/high16 v14, 0x3f800000    # 1.0f

    const-wide/16 v12, 0xfa

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    const/4 v3, 0x1

    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v2, 0x42b40000    # 90.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/h$d;->i:Landroid/view/animation/RotateAnimation;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/h$d;->i:Landroid/view/animation/RotateAnimation;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/h$d;->i:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v12, v13}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/h$d;->i:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    new-instance v5, Landroid/view/animation/RotateAnimation;

    const/high16 v6, 0x42b40000    # 90.0f

    move v7, v1

    move v8, v3

    move v9, v4

    move v10, v3

    move v11, v4

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v5, p0, Lcom/nd/commplatform/d/c/h$d;->j:Landroid/view/animation/RotateAnimation;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/h$d;->j:Landroid/view/animation/RotateAnimation;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/h$d;->j:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v12, v13}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/h$d;->j:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    new-instance v2, Landroid/view/animation/TranslateAnimation;

    move v4, v14

    move v5, v3

    move v6, v1

    move v7, v3

    move v8, v1

    move v9, v3

    move v10, v1

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v2, p0, Lcom/nd/commplatform/d/c/h$d;->k:Landroid/view/animation/TranslateAnimation;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/h$d;->k:Landroid/view/animation/TranslateAnimation;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/h$d;->k:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v12, v13}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v2, Landroid/view/animation/TranslateAnimation;

    move v4, v1

    move v5, v3

    move v6, v14

    move v7, v3

    move v8, v1

    move v9, v3

    move v10, v1

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v2, p0, Lcom/nd/commplatform/d/c/h$d;->l:Landroid/view/animation/TranslateAnimation;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/h$d;->l:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/h$d;->l:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v12, v13}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    return-void
.end method

.method public a(Lcom/nd/commplatform/d/c/h$b;Z)V
    .locals 6

    const/16 v3, 0x8

    const/4 v2, 0x0

    const/4 v1, 0x4

    iput-object p1, p0, Lcom/nd/commplatform/d/c/h$d;->g:Lcom/nd/commplatform/d/c/h$b;

    invoke-virtual {p1}, Lcom/nd/commplatform/d/c/h$b;->a()Z

    move-result v4

    iget-object v5, p0, Lcom/nd/commplatform/d/c/h$d;->b:Landroid/view/View;

    if-eqz p2, :cond_2

    if-eqz v4, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/h$d;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {p1}, Lcom/nd/commplatform/d/c/h$b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/h$d;->b:Landroid/view/View;

    iget-object v5, p0, Lcom/nd/commplatform/d/c/h$d;->i:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v5}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/h$d;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/nd/commplatform/d/c/h$b;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/nd/commplatform/d/c/h$d;->d:Landroid/view/View;

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lcom/nd/commplatform/d/c/h$b;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    :goto_1
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/nd/commplatform/d/c/h$d;->d:Landroid/view/View;

    if-eqz v4, :cond_5

    move v0, v1

    :goto_2
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/h$d;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v5, p0, Lcom/nd/commplatform/d/c/h$d;->e:Landroid/view/View;

    if-eqz p2, :cond_6

    move v0, v1

    :goto_3
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/h$d;->e:Landroid/view/View;

    if-eqz v4, :cond_7

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/h$d;->f:Landroid/view/View;

    if-eqz v4, :cond_8

    :goto_5
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/nd/commplatform/d/c/h$d;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lcom/nd/commplatform/d/c/h$d;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    goto :goto_4

    :cond_8
    move v2, v3

    goto :goto_5
.end method

.method public b()V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x1

    sget-object v0, Lcom/nd/commplatform/NdMiscCallbackListener;->b:Lcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/h$d;->a:Lcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/h$d;->h:Lcom/nd/commplatform/d/c/h;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/h;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/e;->a(Landroid/content/Context;)Lcom/nd/commplatform/d/c/d;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/h$d;->g:Lcom/nd/commplatform/d/c/h$b;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/h$b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/d;->a(Ljava/lang/String;)Lcom/nd/commplatform/d/c/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/h$d;->h:Lcom/nd/commplatform/d/c/h;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/h;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/h$d;->g:Lcom/nd/commplatform/d/c/h$b;

    invoke-virtual {v2}, Lcom/nd/commplatform/d/c/h$b;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/nd/commplatform/d/c/h$d$1;

    invoke-direct {v3, p0}, Lcom/nd/commplatform/d/c/h$d$1;-><init>(Lcom/nd/commplatform/d/c/h$d;)V

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/nd/commplatform/d/c/b;->a(Landroid/content/Context;ZLjava/lang/String;Lcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/nd/commplatform/d/c/h$d;->h:Lcom/nd/commplatform/d/c/h;

    invoke-virtual {v1, v5}, Lcom/nd/commplatform/d/c/h;->f(I)Lcom/nd/commplatform/NdCallbackListener;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/nd/commplatform/d/c/h$d$2;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/h$d$2;-><init>(Lcom/nd/commplatform/d/c/h$d;)V

    iget-object v2, p0, Lcom/nd/commplatform/d/c/h$d;->h:Lcom/nd/commplatform/d/c/h;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/nd/commplatform/d/c/h;->b(Z)V

    iget-object v2, p0, Lcom/nd/commplatform/d/c/h$d;->h:Lcom/nd/commplatform/d/c/h;

    invoke-virtual {v2, v5, v1, v4}, Lcom/nd/commplatform/d/c/h;->a(ILcom/nd/commplatform/NdCallbackListener;Z)Lcom/nd/commplatform/NdCallbackListener;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/h$d;->h:Lcom/nd/commplatform/d/c/h;

    invoke-virtual {v2, v4}, Lcom/nd/commplatform/d/c/h;->b(Z)V

    new-instance v2, Lcom/nd/commplatform/entry/NdLoginConfig;

    invoke-direct {v2}, Lcom/nd/commplatform/entry/NdLoginConfig;-><init>()V

    invoke-virtual {v2, v4}, Lcom/nd/commplatform/entry/NdLoginConfig;->setAutoLogin(Z)V

    invoke-virtual {v2, v4}, Lcom/nd/commplatform/entry/NdLoginConfig;->setSavePassword(Z)V

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nd/commplatform/entry/NdLoginConfig;->setPassword(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/nd/commplatform/entry/NdLoginConfig;->setUserName(Ljava/lang/String;)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    iget-object v3, p0, Lcom/nd/commplatform/d/c/h$d;->h:Lcom/nd/commplatform/d/c/h;

    invoke-virtual {v3}, Lcom/nd/commplatform/d/c/h;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/nd/commplatform/NdMiscCallbackListener;->b:Lcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/nd/commplatform/d/c/a;->a(Lcom/nd/commplatform/entry/NdLoginConfig;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;Lcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;)Z

    goto :goto_0
.end method

.method public c()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/h$d;->g:Lcom/nd/commplatform/d/c/h$b;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/h$b;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/nd/commplatform/d/c/h$c;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/h$d;->h:Lcom/nd/commplatform/d/c/h;

    invoke-direct {v1, v2, v0}, Lcom/nd/commplatform/d/c/h$c;-><init>(Lcom/nd/commplatform/d/c/h;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nd/commplatform/d/c/h$d;->h:Lcom/nd/commplatform/d/c/h;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/nd/commplatform/d/c/h;->b(Z)V

    iget-object v2, p0, Lcom/nd/commplatform/d/c/h$d;->h:Lcom/nd/commplatform/d/c/h;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v1, v4}, Lcom/nd/commplatform/d/c/h;->a(ILcom/nd/commplatform/NdCallbackListener;Z)Lcom/nd/commplatform/NdCallbackListener;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/h$d;->h:Lcom/nd/commplatform/d/c/h;

    invoke-virtual {v2, v4}, Lcom/nd/commplatform/d/c/h;->b(Z)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v2

    iget-object v3, p0, Lcom/nd/commplatform/d/c/h$d;->h:Lcom/nd/commplatform/d/c/h;

    invoke-virtual {v3}, Lcom/nd/commplatform/d/c/h;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v0, v3, v1}, Lcom/nd/commplatform/d/c/a;->k(Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method public d()V
    .locals 4

    iget-object v0, p0, Lcom/nd/commplatform/d/c/h$d;->g:Lcom/nd/commplatform/d/c/h$b;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/h$b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/h$d;->f()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/h$d;->h:Lcom/nd/commplatform/d/c/h;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/h;->b(Lcom/nd/commplatform/d/c/h;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/h$d;->h:Lcom/nd/commplatform/d/c/h;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/h;->b(Lcom/nd/commplatform/d/c/h;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    instance-of v3, v0, Lcom/nd/commplatform/d/c/h$d;

    if-eqz v3, :cond_1

    check-cast v0, Lcom/nd/commplatform/d/c/h$d;

    iget-object v3, v0, Lcom/nd/commplatform/d/c/h$d;->g:Lcom/nd/commplatform/d/c/h$b;

    invoke-virtual {v3}, Lcom/nd/commplatform/d/c/h$b;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/h$d;->f()V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/nd/commplatform/d/c/h$d;->h:Lcom/nd/commplatform/d/c/h;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/h;->a(Lcom/nd/commplatform/d/c/h;)Lcom/nd/commplatform/d/c/h$a;

    move-result-object v0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/h$a;->a(Lcom/nd/commplatform/d/c/h$a;)V

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/h$d;->e()V

    goto :goto_0
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/h$d;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/h$d;->b:Landroid/view/View;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/h$d;->i:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/h$d;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/h$d;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/h$d;->d:Landroid/view/View;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/h$d;->k:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/h$d;->g:Lcom/nd/commplatform/d/c/h$b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/h$b;->a(Z)V

    return-void
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/h$d;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/h$d;->b:Landroid/view/View;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/h$d;->j:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/h$d;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/h$d;->d:Landroid/view/View;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/h$d;->l:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/h$d;->d:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/h$d;->g:Lcom/nd/commplatform/d/c/h$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/h$b;->a(Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/d/c/h$d;->b:Landroid/view/View;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/h$d;->d()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/h$d;->e:Landroid/view/View;

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/h$d;->b()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nd/commplatform/d/c/h$d;->d:Landroid/view/View;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/h$d;->c()V

    goto :goto_0
.end method
