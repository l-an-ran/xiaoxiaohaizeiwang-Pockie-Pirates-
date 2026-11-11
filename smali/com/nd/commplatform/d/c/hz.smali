.class public Lcom/nd/commplatform/d/c/hz;
.super Lcom/nd/commplatform/widget/NdFrameInnerContent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nd/commplatform/d/c/hz$a;
    }
.end annotation


# instance fields
.field protected a:Landroid/view/View;

.field protected b:Landroid/view/View;

.field protected c:Landroid/view/View;

.field protected d:Landroid/view/View;

.field protected e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/hz;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hz;->f:Landroid/view/View;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/nd/commplatform/d/c/cb;->a(Landroid/content/Context;IILcom/nd/commplatform/d/c/bx;)V

    return-void
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/hz;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hz;->g:Landroid/view/View;

    return-object v0
.end method

.method private b()V
    .locals 3

    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/hz;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/b;->a(ILandroid/content/Context;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/cb;->b(Z)V

    const/4 v0, -0x4

    invoke-static {v0}, Lcom/nd/commplatform/NdMiscCallbackListener;->a(I)V

    return-void
.end method

.method static synthetic c(Lcom/nd/commplatform/d/c/hz;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hz;->i:Landroid/view/View;

    return-object v0
.end method

.method private c()V
    .locals 3

    invoke-static {}, Lcom/nd/commplatform/NdCommplatform;->getInstance()Lcom/nd/commplatform/NdCommplatform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/NdCommplatform;->isRestartWhenSwitchAccount()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/hz;->m()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/hz;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/hz;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->cB:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/hz;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->bP:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/hz;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->kD:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/nd/commplatform/d/c/hz$1;

    invoke-direct {v2, p0}, Lcom/nd/commplatform/d/c/hz$1;-><init>(Lcom/nd/commplatform/d/c/hz;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/hz;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->bG:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/nd/commplatform/d/c/hz$2;

    invoke-direct {v2, p0}, Lcom/nd/commplatform/d/c/hz$2;-><init>(Lcom/nd/commplatform/d/c/hz;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method static synthetic d(Lcom/nd/commplatform/d/c/hz;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hz;->j:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/nd/commplatform/d/c/hz;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/hz;->c()V

    return-void
.end method

.method private m()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/hz;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/hz;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->cB:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/hz;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->bO:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/hz;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->hv:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/nd/commplatform/d/c/hz$3;

    invoke-direct {v2, p0}, Lcom/nd/commplatform/d/c/hz$3;-><init>(Lcom/nd/commplatform/d/c/hz;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/hz;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->bG:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/nd/commplatform/d/c/hz$4;

    invoke-direct {v2, p0}, Lcom/nd/commplatform/d/c/hz$4;-><init>(Lcom/nd/commplatform/d/c/hz;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->aC:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/hz;->p:Z

    iput-boolean v3, p0, Lcom/nd/commplatform/d/c/hz;->q:Z

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/hz;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->ez:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/hz;->r:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/nd/commplatform/d/c/hz;->s:Z

    iput-object v4, p0, Lcom/nd/commplatform/d/c/hz;->t:Ljava/lang/String;

    iput-object v4, p0, Lcom/nd/commplatform/d/c/hz;->u:Landroid/view/View$OnClickListener;

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/hz;->v:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/hz;->w:Z

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 2

    new-instance v1, Lcom/nd/commplatform/d/c/hz$a;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/nd/commplatform/d/c/hz$a;-><init>(Lcom/nd/commplatform/d/c/hz;Lcom/nd/commplatform/d/c/hz$1;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->eo:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/hz;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hz;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->em:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/hz;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hz;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->er:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/hz;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hz;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->es:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/hz;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hz;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->et:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/hz;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hz;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->en:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/hz;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hz;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->el:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/hz;->g:Landroid/view/View;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hz;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->ev:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/hz;->h:Landroid/widget/TextView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->eu:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/hz;->i:Landroid/view/View;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hz;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->dQ:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/hz;->j:Landroid/view/View;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hz;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected a(ZI)V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hz;->h:Landroid/widget/TextView;

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
