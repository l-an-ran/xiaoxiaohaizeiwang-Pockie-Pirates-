.class public Lcom/nd/commplatform/d/c/if;
.super Lcom/nd/commplatform/widget/NdFrameInnerContent;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/TextView;

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Lcom/nd/commplatform/entry/NdNewAppVersionInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/if;)Lcom/nd/commplatform/entry/NdNewAppVersionInfo;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/if;->j:Lcom/nd/commplatform/entry/NdNewAppVersionInfo;

    return-object v0
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/if;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/if;->i:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/if;Lcom/nd/commplatform/entry/NdNewAppVersionInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/if;->a(Lcom/nd/commplatform/entry/NdNewAppVersionInfo;)V

    return-void
.end method

.method private a(Lcom/nd/commplatform/entry/NdNewAppVersionInfo;)V
    .locals 4

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/if;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdNewAppVersionInfo;->getNewVersion()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdNewAppVersionInfo;->getSoftSize()I

    move-result v1

    invoke-static {v1}, Lcom/nd/commplatform/d/c/oh;->b(I)Ljava/lang/String;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->cd:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->cS:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->cV:I

    new-instance v3, Lcom/nd/commplatform/d/c/if$4;

    invoke-direct {v3, p0, p1, v0}, Lcom/nd/commplatform/d/c/if$4;-><init>(Lcom/nd/commplatform/d/c/if;Lcom/nd/commplatform/entry/NdNewAppVersionInfo;Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget v0, Lcom/nd/commplatform/d/c/jo$h;->bG:I

    new-instance v2, Lcom/nd/commplatform/d/c/if$5;

    invoke-direct {v2, p0}, Lcom/nd/commplatform/d/c/if$5;-><init>(Lcom/nd/commplatform/d/c/if;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/if;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/nd/commplatform/d/c/if;->s:Z

    return p1
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/if;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/if;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/if;Lcom/nd/commplatform/entry/NdNewAppVersionInfo;)Lcom/nd/commplatform/entry/NdNewAppVersionInfo;
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/if;->j:Lcom/nd/commplatform/entry/NdNewAppVersionInfo;

    return-object p1
.end method

.method public static b()V
    .locals 2

    const/16 v0, 0x460

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    return-void
.end method

.method private c()V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Lcom/nd/commplatform/d/c/if$2;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/if$2;-><init>(Lcom/nd/commplatform/d/c/if;)V

    invoke-virtual {p0, v3}, Lcom/nd/commplatform/d/c/if;->b(Z)V

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/if;->a(Lcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/if;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/nd/commplatform/d/c/a;->k(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    new-instance v0, Lcom/nd/commplatform/d/c/if$3;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/if$3;-><init>(Lcom/nd/commplatform/d/c/if;)V

    invoke-virtual {p0, v3}, Lcom/nd/commplatform/d/c/if;->b(Z)V

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/if;->a(Lcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/if;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/nd/commplatform/d/c/a;->l(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method static synthetic c(Lcom/nd/commplatform/d/c/if;)Z
    .locals 1

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/if;->m()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/nd/commplatform/d/c/if;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/if;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/nd/commplatform/d/c/if;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/if;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/nd/commplatform/d/c/if;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/if;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Lcom/nd/commplatform/d/c/if;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/if;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcom/nd/commplatform/d/c/if;)V
    .locals 0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/if;->i()V

    return-void
.end method

.method static synthetic i(Lcom/nd/commplatform/d/c/if;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/if;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method private m()Z
    .locals 4

    iget-object v0, p0, Lcom/nd/commplatform/d/c/if;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/if;->i:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iget v2, p0, Lcom/nd/commplatform/d/c/if;->h:I

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->bx:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/if;->p:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/if;->q:Z

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/if;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->lq:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/if;->r:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/nd/commplatform/d/c/if;->s:Z

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/if;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->nG:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/if;->t:Ljava/lang/String;

    new-instance v0, Lcom/nd/commplatform/d/c/if$1;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/if$1;-><init>(Lcom/nd/commplatform/d/c/if;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/if;->u:Landroid/view/View$OnClickListener;

    iput-boolean v3, p0, Lcom/nd/commplatform/d/c/if;->v:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/if;->w:Z

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->iF:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/if;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/if;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/if;->a:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->hu:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/if;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/if;->b:Landroid/widget/TextView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->iv:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/if;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/if;->c:Landroid/widget/TextView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->jg:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/if;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/if;->d:Landroid/widget/TextView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->hI:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/if;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/if;->e:Landroid/widget/TextView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->ht:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/if;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/if;->f:Landroid/widget/ImageView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->iC:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/if;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/if;->g:Landroid/widget/TextView;

    return-void
.end method

.method protected a(ZI)V
    .locals 6

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/if;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/if;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v1, p0, Lcom/nd/commplatform/d/c/if;->h:I

    iget v1, p0, Lcom/nd/commplatform/d/c/if;->h:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/if;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/nd/commplatform/d/c/if;->f:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v2, p0, Lcom/nd/commplatform/d/c/if;->b:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/if;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/if;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/if;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/nd/commplatform/d/c/jo$h;->mo:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/nd/commplatform/d/c/if;->c()V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
