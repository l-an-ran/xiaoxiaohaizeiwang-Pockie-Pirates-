.class public Lcom/nd/commplatform/d/c/ic;
.super Lcom/nd/commplatform/widget/NdFrameInnerContent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nd/commplatform/d/c/ic$a;
    }
.end annotation


# static fields
.field private static final h:I = 0x1

.field private static final i:I = 0x2

.field private static final j:I = 0x3

.field private static final k:I = 0x4


# instance fields
.field private H:Landroid/view/View;

.field private I:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/entry/NdThirdPartyPlatform;",
            ">;"
        }
    .end annotation
.end field

.field private J:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected a:Landroid/widget/TextView;

.field protected b:Landroid/widget/CheckBox;

.field protected c:Landroid/view/View;

.field protected d:Landroid/widget/TextView;

.field protected e:Landroid/view/View;

.field protected f:Landroid/view/View;

.field protected g:Landroid/widget/TextView;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/ic;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ic;->n:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/ic;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ic;->I:Ljava/util/List;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x4

    const/16 v1, 0x44e

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/nd/commplatform/d/c/cb;->a(Landroid/content/Context;IILcom/nd/commplatform/d/c/bx;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/entry/NdThirdPartyPlatform;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ic;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ic;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ic;->l:Landroid/widget/ImageView;

    sget v1, Lcom/nd/commplatform/d/c/jo$d;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ic;->m:Landroid/widget/TextView;

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->dm:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/ic;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ic;->I:Ljava/util/List;

    return-object v0
.end method

.method private b()V
    .locals 3

    new-instance v0, Lcom/nd/commplatform/d/c/ic$2;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/ic$2;-><init>(Lcom/nd/commplatform/d/c/ic;)V

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/nd/commplatform/d/c/ic;->a(ILcom/nd/commplatform/NdCallbackListener;Z)Lcom/nd/commplatform/NdCallbackListener;

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ic;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/nd/commplatform/d/c/a;->f(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/ic;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/ic;->a(Ljava/util/List;)V

    return-void
.end method

.method static synthetic c(Lcom/nd/commplatform/d/c/ic;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ic;->J:Ljava/util/List;

    return-object p1
.end method

.method private c()V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Lcom/nd/commplatform/d/c/ic$3;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/ic$3;-><init>(Lcom/nd/commplatform/d/c/ic;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/nd/commplatform/d/c/ic;->b(Z)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0, v2}, Lcom/nd/commplatform/d/c/ic;->a(ILcom/nd/commplatform/NdCallbackListener;Z)Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {p0, v2}, Lcom/nd/commplatform/d/c/ic;->b(Z)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ic;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/nd/commplatform/d/c/a;->n(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method static synthetic c(Lcom/nd/commplatform/d/c/ic;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/ic;->c()V

    return-void
.end method

.method static synthetic d(Lcom/nd/commplatform/d/c/ic;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ic;->H:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/nd/commplatform/d/c/ic;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ic;->J:Ljava/util/List;

    return-object v0
.end method

.method private m()V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Lcom/nd/commplatform/d/c/ic$4;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/ic$4;-><init>(Lcom/nd/commplatform/d/c/ic;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/nd/commplatform/d/c/ic;->b(Z)V

    invoke-virtual {p0, v2, v0, v2}, Lcom/nd/commplatform/d/c/ic;->a(ILcom/nd/commplatform/NdCallbackListener;Z)Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {p0, v2}, Lcom/nd/commplatform/d/c/ic;->b(Z)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ic;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/nd/commplatform/d/c/a;->o(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->aw:I

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

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/ic;->p:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/ic;->q:Z

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ic;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->dw:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ic;->r:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/nd/commplatform/d/c/ic;->s:Z

    iput-object v4, p0, Lcom/nd/commplatform/d/c/ic;->t:Ljava/lang/String;

    iput-object v4, p0, Lcom/nd/commplatform/d/c/ic;->u:Landroid/view/View$OnClickListener;

    iput-boolean v3, p0, Lcom/nd/commplatform/d/c/ic;->v:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/ic;->w:Z

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 6

    new-instance v1, Lcom/nd/commplatform/d/c/ic$a;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/nd/commplatform/d/c/ic$a;-><init>(Lcom/nd/commplatform/d/c/ic;Lcom/nd/commplatform/d/c/ic$1;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->dA:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ic;->a:Landroid/widget/TextView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->dH:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ic;->b:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ic;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->dO:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ic;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ic;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->dP:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ic;->d:Landroid/widget/TextView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->dK:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ic;->H:Landroid/view/View;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->dJ:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ic;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ic;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->dM:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ic;->l:Landroid/widget/ImageView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->dN:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ic;->m:Landroid/widget/TextView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->dD:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ic;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ic;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->dE:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ic;->g:Landroid/widget/TextView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->dC:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ic;->n:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ic;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ic;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->db:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nd/commplatform/d/c/a;->m()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->eq:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected a(ZI)V
    .locals 3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ic;->b:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ic;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nd/commplatform/d/c/a;->f(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/ic;->b()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ic;->I:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ic;->J:Ljava/util/List;

    if-nez v0, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/nd/commplatform/d/c/ic;->m()V

    :cond_1
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ic;->b(Z)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/jb;->b(Z)V

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ic;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/nd/commplatform/d/c/ic$1;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/ic$1;-><init>(Lcom/nd/commplatform/d/c/ic;)V

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/jb;->a(Landroid/content/Context;Lcom/nd/commplatform/d/c/jb$b;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ic;->I:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/nd/commplatform/d/c/ic;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->r()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ic;->d:Landroid/widget/TextView;

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->dq:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ic;->I:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ic;->J:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ic;->I:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/nd/commplatform/d/c/ic;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ic;->d:Landroid/widget/TextView;

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->dk:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method
