.class public Lcom/nd/commplatform/d/c/ez;
.super Lcom/nd/commplatform/widget/NdFrameInnerContent;


# instance fields
.field private H:Landroid/view/View;

.field private I:Landroid/view/View;

.field private J:Lcom/nd/commplatform/entry/NdUserInfo;

.field private K:Landroid/view/View;

.field private L:Landroid/view/View;

.field private M:Landroid/widget/ImageView;

.field private N:Landroid/widget/TextView;

.field private O:Landroid/view/View;

.field private P:Landroid/view/View;

.field private Q:Landroid/view/View;

.field private R:Landroid/view/View;

.field private S:Landroid/view/View;

.field private T:Landroid/view/View;

.field private U:Landroid/view/View;

.field private a:Lcom/nd/commplatform/NdCallbackListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdIcon;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/nd/commplatform/NdCallbackListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdUserInfo;",
            ">;"
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

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/view/View;

.field private k:Lcom/nd/commplatform/widget/NdAchievementPropertyHolder;

.field private l:Lcom/nd/commplatform/widget/NdLeaderboardPropertyHolder;

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/ez;Lcom/nd/commplatform/entry/NdUserInfo;)Lcom/nd/commplatform/entry/NdUserInfo;
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ez;->J:Lcom/nd/commplatform/entry/NdUserInfo;

    return-object p1
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/ez;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/ez;->c()V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/ez;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/ez;->d(Z)V

    return-void
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/ez;)Lcom/nd/commplatform/entry/NdUserInfo;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez;->J:Lcom/nd/commplatform/entry/NdUserInfo;

    return-object v0
.end method

.method private b()V
    .locals 3

    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ez;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/b;->a(ILandroid/content/Context;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/cb;->b(Z)V

    const/4 v0, -0x4

    invoke-static {v0}, Lcom/nd/commplatform/NdMiscCallbackListener;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/ez;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/ez;->e(Z)V

    return-void
.end method

.method static synthetic c(Lcom/nd/commplatform/d/c/ez;)Lcom/nd/commplatform/widget/NdLeaderboardPropertyHolder;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez;->l:Lcom/nd/commplatform/widget/NdLeaderboardPropertyHolder;

    return-object v0
.end method

.method private c()V
    .locals 3

    invoke-static {}, Lcom/nd/commplatform/NdCommplatform;->getInstance()Lcom/nd/commplatform/NdCommplatform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/NdCommplatform;->isRestartWhenSwitchAccount()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/ez;->m()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ez;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ez;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->cB:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ez;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->bP:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ez;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->kD:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/nd/commplatform/d/c/ez$7;

    invoke-direct {v2, p0}, Lcom/nd/commplatform/d/c/ez$7;-><init>(Lcom/nd/commplatform/d/c/ez;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ez;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->bG:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/nd/commplatform/d/c/ez$8;

    invoke-direct {v2, p0}, Lcom/nd/commplatform/d/c/ez$8;-><init>(Lcom/nd/commplatform/d/c/ez;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private c(Z)V
    .locals 6

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/a;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ez;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/nd/commplatform/d/c/ez;->c:Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/a;->b(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z

    goto :goto_0
.end method

.method static synthetic d(Lcom/nd/commplatform/d/c/ez;)Lcom/nd/commplatform/widget/NdAchievementPropertyHolder;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez;->k:Lcom/nd/commplatform/widget/NdAchievementPropertyHolder;

    return-object v0
.end method

.method private d(Z)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez;->Q:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    check-cast v0, Landroid/widget/Button;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {v0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$d;->bp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lcom/nd/commplatform/d/c/op;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$d;->bp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/nd/commplatform/d/c/ez;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez;->g:Landroid/widget/ImageView;

    return-object v0
.end method

.method private e(Z)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez;->P:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    check-cast v0, Landroid/widget/Button;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {v0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$d;->d:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lcom/nd/commplatform/d/c/op;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$d;->d:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/nd/commplatform/d/c/ez;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez;->M:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic g(Lcom/nd/commplatform/d/c/ez;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcom/nd/commplatform/d/c/ez;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/nd/commplatform/d/c/ez;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez;->N:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic j(Lcom/nd/commplatform/d/c/ez;)Lcom/nd/commplatform/NdCallbackListener;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez;->a:Lcom/nd/commplatform/NdCallbackListener;

    return-object v0
.end method

.method static synthetic k(Lcom/nd/commplatform/d/c/ez;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez;->i:Landroid/widget/ImageView;

    return-object v0
.end method

.method private m()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ez;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ez;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->cB:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ez;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->bO:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ez;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->hv:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/nd/commplatform/d/c/ez$9;

    invoke-direct {v2, p0}, Lcom/nd/commplatform/d/c/ez$9;-><init>(Lcom/nd/commplatform/d/c/ez;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ez;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->bG:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/nd/commplatform/d/c/ez$10;

    invoke-direct {v2, p0}, Lcom/nd/commplatform/d/c/ez$10;-><init>(Lcom/nd/commplatform/d/c/ez;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private n()V
    .locals 3

    invoke-static {}, Lcom/nd/commplatform/d/c/of;->a()Lcom/nd/commplatform/d/c/of;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ez;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/nd/commplatform/d/c/ez$11;

    invoke-direct {v2, p0}, Lcom/nd/commplatform/d/c/ez$11;-><init>(Lcom/nd/commplatform/d/c/ez;)V

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/of;->a(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method private o()V
    .locals 6

    invoke-static {}, Lcom/nd/commplatform/d/c/of;->a()Lcom/nd/commplatform/d/c/of;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/of;->d()Lcom/nd/commplatform/entry/NdUserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ez;->J:Lcom/nd/commplatform/entry/NdUserInfo;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez;->J:Lcom/nd/commplatform/entry/NdUserInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ez;->b(Z)V

    invoke-static {}, Lcom/nd/commplatform/d/c/of;->a()Lcom/nd/commplatform/d/c/of;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ez;->b:Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ez;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/of;->a(Lcom/nd/commplatform/NdCallbackListener;Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez;->e:Landroid/widget/TextView;

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/a;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez;->J:Lcom/nd/commplatform/entry/NdUserInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdUserInfo;->getEmotion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez;->J:Lcom/nd/commplatform/entry/NdUserInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdUserInfo;->getEmotion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ez;->J:Lcom/nd/commplatform/entry/NdUserInfo;

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdUserInfo;->getEmotion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez;->N:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ez;->J:Lcom/nd/commplatform/entry/NdUserInfo;

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdUserInfo;->getEmotion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ez;->J:Lcom/nd/commplatform/entry/NdUserInfo;

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdUserInfo;->getUin()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/ez;->J:Lcom/nd/commplatform/entry/NdUserInfo;

    invoke-virtual {v2}, Lcom/nd/commplatform/entry/NdUserInfo;->getCheckSum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ez;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nd/commplatform/d/c/oh;->g(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ez;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/nd/commplatform/d/c/ez;->a:Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/a;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez;->h:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez;->N:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private p()V
    .locals 1

    new-instance v0, Lcom/nd/commplatform/d/c/ez$13;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/ez$13;-><init>(Lcom/nd/commplatform/d/c/ez;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ez;->a:Lcom/nd/commplatform/NdCallbackListener;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez;->a:Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ez;->a(Lcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;

    new-instance v0, Lcom/nd/commplatform/d/c/ez$14;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/ez$14;-><init>(Lcom/nd/commplatform/d/c/ez;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ez;->b:Lcom/nd/commplatform/NdCallbackListener;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez;->b:Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ez;->a(Lcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;

    new-instance v0, Lcom/nd/commplatform/d/c/ez$15;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/ez$15;-><init>(Lcom/nd/commplatform/d/c/ez;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ez;->c:Lcom/nd/commplatform/NdCallbackListener;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez;->c:Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ez;->a(Lcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->ab:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lcom/nd/commplatform/widget/NdFrameInnerContent;
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    invoke-static {}, Lcom/nd/commplatform/d/c/cb;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez;->K:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez;->L:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-super {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->a(I)Lcom/nd/commplatform/widget/NdFrameInnerContent;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez;->K:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez;->L:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected a()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/ez;->p:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/ez;->q:Z

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ez;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->bL:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ez;->r:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/ez;->s:Z

    iput-boolean v3, p0, Lcom/nd/commplatform/d/c/ez;->v:Z

    iput-boolean v3, p0, Lcom/nd/commplatform/d/c/ez;->w:Z

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->gQ:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ez;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ez;->d:Landroid/widget/Button;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez;->d:Landroid/widget/Button;

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->nw:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez;->d:Landroid/widget/Button;

    new-instance v1, Lcom/nd/commplatform/d/c/ez$1;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/ez$1;-><init>(Lcom/nd/commplatform/d/c/ez;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->gU:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ez;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ez;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez;->e:Landroid/widget/TextView;

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/a;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->gR:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ez;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ez;->f:Landroid/widget/Button;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez;->f:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->cL:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ez;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ez;->K:Landroid/view/View;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->cI:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ez;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ez;->L:Landroid/view/View;

    invoke-static {}, Lcom/nd/commplatform/d/c/cb;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez;->K:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez;->L:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    sget v0, Lcom/nd/commplatform/d/c/jo$e;->cC:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ez;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ez;->M:Landroid/widget/ImageView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->dz:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ez;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ez;->N:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez;->N:Landroid/widget/TextView;

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->bZ:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez;->N:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/SingleLineTransformationMethod;->getInstance()Landroid/text/method/SingleLineTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->fz:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ez;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ez;->O:Landroid/view/View;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez;->O:Landroid/view/View;

    new-instance v1, Lcom/nd/commplatform/d/c/ez$12;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/ez$12;-><init>(Lcom/nd/commplatform/d/c/ez;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->aw:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ez;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ez;->P:Landroid/view/View;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez;->P:Landroid/view/View;

    new-instance v1, Lcom/nd/commplatform/d/c/ez$16;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/ez$16;-><init>(Lcom/nd/commplatform/d/c/ez;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->fJ:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ez;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ez;->Q:Landroid/view/View;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez;->Q:Landroid/view/View;

    new-instance v1, Lcom/nd/commplatform/d/c/ez$17;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/ez$17;-><init>(Lcom/nd/commplatform/d/c/ez;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->bl:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ez;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ez;->R:Landroid/view/View;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez;->R:Landroid/view/View;

    new-instance v1, Lcom/nd/commplatform/d/c/ez$18;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/ez$18;-><init>(Lcom/nd/commplatform/d/c/ez;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->gr:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ez;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ez;->T:Landroid/view/View;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez;->T:Landroid/view/View;

    new-instance v1, Lcom/nd/commplatform/d/c/ez$19;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/ez$19;-><init>(Lcom/nd/commplatform/d/c/ez;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->cV:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ez;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ez;->U:Landroid/view/View;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez;->U:Landroid/view/View;

    new-instance v1, Lcom/nd/commplatform/d/c/ez$20;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/ez$20;-><init>(Lcom/nd/commplatform/d/c/ez;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->bw:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ez;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ez;->S:Landroid/view/View;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez;->S:Landroid/view/View;

    new-instance v1, Lcom/nd/commplatform/d/c/ez$21;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/ez$21;-><init>(Lcom/nd/commplatform/d/c/ez;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->cB:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ez;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ez;->g:Landroid/widget/ImageView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->dy:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ez;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ez;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez;->h:Landroid/widget/TextView;

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->bZ:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez;->h:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/SingleLineTransformationMethod;->getInstance()Landroid/text/method/SingleLineTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->bb:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ez;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ez;->i:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez;->i:Landroid/widget/ImageView;

    new-instance v1, Lcom/nd/commplatform/d/c/ez$22;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/ez$22;-><init>(Lcom/nd/commplatform/d/c/ez;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->fy:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ez;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ez;->j:Landroid/view/View;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez;->j:Landroid/view/View;

    new-instance v1, Lcom/nd/commplatform/d/c/ez$2;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/ez$2;-><init>(Lcom/nd/commplatform/d/c/ez;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/nd/commplatform/widget/NdAchievementPropertyHolder;

    invoke-direct {v0}, Lcom/nd/commplatform/widget/NdAchievementPropertyHolder;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ez;->k:Lcom/nd/commplatform/widget/NdAchievementPropertyHolder;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ez;->k:Lcom/nd/commplatform/widget/NdAchievementPropertyHolder;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->av:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ez;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/widget/NdAppPropertyItem;

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/widget/NdAchievementPropertyHolder;->a(Lcom/nd/commplatform/widget/NdAppPropertyItem;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez;->k:Lcom/nd/commplatform/widget/NdAchievementPropertyHolder;

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/a;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/widget/NdAchievementPropertyHolder;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez;->k:Lcom/nd/commplatform/widget/NdAchievementPropertyHolder;

    invoke-virtual {v0, v3}, Lcom/nd/commplatform/widget/NdAchievementPropertyHolder;->a(Z)V

    new-instance v0, Lcom/nd/commplatform/widget/NdLeaderboardPropertyHolder;

    invoke-direct {v0}, Lcom/nd/commplatform/widget/NdLeaderboardPropertyHolder;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ez;->l:Lcom/nd/commplatform/widget/NdLeaderboardPropertyHolder;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ez;->l:Lcom/nd/commplatform/widget/NdLeaderboardPropertyHolder;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->fI:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ez;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/widget/NdAppPropertyItem;

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/widget/NdLeaderboardPropertyHolder;->a(Lcom/nd/commplatform/widget/NdAppPropertyItem;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez;->l:Lcom/nd/commplatform/widget/NdLeaderboardPropertyHolder;

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/a;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/widget/NdLeaderboardPropertyHolder;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez;->l:Lcom/nd/commplatform/widget/NdLeaderboardPropertyHolder;

    invoke-virtual {v0, v3}, Lcom/nd/commplatform/widget/NdLeaderboardPropertyHolder;->a(Z)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->bk:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ez;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ez;->m:Landroid/view/View;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez;->m:Landroid/view/View;

    new-instance v1, Lcom/nd/commplatform/d/c/ez$3;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/ez$3;-><init>(Lcom/nd/commplatform/d/c/ez;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->gq:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ez;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ez;->n:Landroid/view/View;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez;->n:Landroid/view/View;

    new-instance v1, Lcom/nd/commplatform/d/c/ez$4;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/ez$4;-><init>(Lcom/nd/commplatform/d/c/ez;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->cU:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ez;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ez;->H:Landroid/view/View;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez;->H:Landroid/view/View;

    new-instance v1, Lcom/nd/commplatform/d/c/ez$5;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/ez$5;-><init>(Lcom/nd/commplatform/d/c/ez;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->bv:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ez;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ez;->I:Landroid/view/View;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez;->I:Landroid/view/View;

    new-instance v1, Lcom/nd/commplatform/d/c/ez$6;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/ez$6;-><init>(Lcom/nd/commplatform/d/c/ez;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/ez;->p()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez;->K:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez;->L:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method protected a(ZI)V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez;->k:Lcom/nd/commplatform/widget/NdAchievementPropertyHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez;->k:Lcom/nd/commplatform/widget/NdAchievementPropertyHolder;

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/a;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/widget/NdAchievementPropertyHolder;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez;->l:Lcom/nd/commplatform/widget/NdLeaderboardPropertyHolder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ez;->l:Lcom/nd/commplatform/widget/NdLeaderboardPropertyHolder;

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/a;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/widget/NdLeaderboardPropertyHolder;->a(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/nd/commplatform/d/c/ez;->o()V

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/ez;->c(Z)V

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/ez;->n()V

    :cond_2
    return-void
.end method
