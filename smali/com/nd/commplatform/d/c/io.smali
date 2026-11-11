.class public Lcom/nd/commplatform/d/c/io;
.super Lcom/nd/commplatform/widget/NdFrameInnerContent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nd/commplatform/d/c/io$a;,
        Lcom/nd/commplatform/d/c/io$b;
    }
.end annotation


# static fields
.field private static final g:I = 0x1

.field private static final h:I = 0x2

.field private static final i:I = 0x3


# instance fields
.field protected a:Landroid/view/View;

.field protected b:Landroid/view/View;

.field protected c:Landroid/view/View;

.field protected d:Landroid/view/View;

.field protected e:Landroid/view/View;

.field protected f:Landroid/view/View;

.field private j:Landroid/widget/CompoundButton;

.field private k:Lcom/nd/commplatform/entry/NdPermission;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/io;)Landroid/widget/CompoundButton;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/io;->j:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/io;Lcom/nd/commplatform/entry/NdPermission;)Lcom/nd/commplatform/entry/NdPermission;
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/io;->k:Lcom/nd/commplatform/entry/NdPermission;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x4

    const/16 v1, 0x456

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/nd/commplatform/d/c/cb;->a(Landroid/content/Context;IILcom/nd/commplatform/d/c/bx;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/io;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/io;->c(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/io;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/io;->c(Z)V

    return-void
.end method

.method private b()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/io;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/io;->d:Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/io;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/io;->e:Landroid/view/View;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/io;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/io;->f:Landroid/view/View;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/view/View;)V
    .locals 6

    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/io;->k:Lcom/nd/commplatform/entry/NdPermission;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v4, p0, Lcom/nd/commplatform/d/c/io;->a:Landroid/view/View;

    if-ne p1, v4, :cond_3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/io;->d:Landroid/view/View;

    :cond_1
    :goto_1
    invoke-direct {p0, v0}, Lcom/nd/commplatform/d/c/io;->c(Landroid/view/View;)V

    new-instance v4, Lcom/nd/commplatform/d/c/io$2;

    invoke-direct {v4, p0}, Lcom/nd/commplatform/d/c/io$2;-><init>(Lcom/nd/commplatform/d/c/io;)V

    invoke-virtual {p0, v1}, Lcom/nd/commplatform/d/c/io;->b(Z)V

    invoke-virtual {p0, v3, v4, v2}, Lcom/nd/commplatform/d/c/io;->a(ILcom/nd/commplatform/NdCallbackListener;Z)Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {p0, v2}, Lcom/nd/commplatform/d/c/io;->b(Z)V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/io;->b()Landroid/view/View;

    move-result-object v5

    iget-object v0, p0, Lcom/nd/commplatform/d/c/io;->d:Landroid/view/View;

    if-ne v5, v0, :cond_5

    move v0, v1

    :goto_2
    iget-object v1, p0, Lcom/nd/commplatform/d/c/io;->f:Landroid/view/View;

    if-ne v5, v1, :cond_2

    move v0, v3

    :cond_2
    new-instance v1, Lcom/nd/commplatform/entry/NdPermission;

    invoke-direct {v1}, Lcom/nd/commplatform/entry/NdPermission;-><init>()V

    new-instance v2, Lcom/nd/commplatform/entry/NdAddFriendPermission;

    invoke-direct {v2}, Lcom/nd/commplatform/entry/NdAddFriendPermission;-><init>()V

    invoke-virtual {v2, v0}, Lcom/nd/commplatform/entry/NdAddFriendPermission;->setCanAddFriend(I)V

    invoke-virtual {v1, v2}, Lcom/nd/commplatform/entry/NdPermission;->setAddFriendPermission(Lcom/nd/commplatform/entry/NdAddFriendPermission;)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/io;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/nd/commplatform/d/c/a;->a(Lcom/nd/commplatform/entry/NdPermission;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/nd/commplatform/d/c/io;->b:Landroid/view/View;

    if-ne p1, v4, :cond_4

    iget-object v0, p0, Lcom/nd/commplatform/d/c/io;->e:Landroid/view/View;

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/nd/commplatform/d/c/io;->c:Landroid/view/View;

    if-ne p1, v4, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/io;->f:Landroid/view/View;

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/io;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/io;->m()V

    return-void
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/io;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/io;->b(Landroid/view/View;)V

    return-void
.end method

.method private c()V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Lcom/nd/commplatform/d/c/io$3;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/io$3;-><init>(Lcom/nd/commplatform/d/c/io;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/nd/commplatform/d/c/io;->b(Z)V

    invoke-virtual {p0, v2, v0, v2}, Lcom/nd/commplatform/d/c/io;->a(ILcom/nd/commplatform/NdCallbackListener;Z)Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {p0, v2}, Lcom/nd/commplatform/d/c/io;->b(Z)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/io;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/nd/commplatform/d/c/a;->e(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method private c(Landroid/view/View;)V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/nd/commplatform/d/c/io;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/io;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/io;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/nd/commplatform/d/c/io;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/io;->n()V

    return-void
.end method

.method private c(Z)V
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    new-instance v2, Lcom/nd/commplatform/d/c/io$1;

    invoke-direct {v2, p0, p1}, Lcom/nd/commplatform/d/c/io$1;-><init>(Lcom/nd/commplatform/d/c/io;Z)V

    invoke-virtual {p0, v1}, Lcom/nd/commplatform/d/c/io;->b(Z)V

    const/4 v3, 0x2

    invoke-virtual {p0, v3, v2, v0}, Lcom/nd/commplatform/d/c/io;->a(ILcom/nd/commplatform/NdCallbackListener;Z)Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/io;->b(Z)V

    new-instance v3, Lcom/nd/commplatform/entry/NDCanPayPassword;

    if-eqz p1, :cond_0

    :goto_0
    invoke-direct {v3, v0}, Lcom/nd/commplatform/entry/NDCanPayPassword;-><init>(I)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/io;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v3, v1, v2}, Lcom/nd/commplatform/d/c/a;->a(Lcom/nd/commplatform/entry/NDCanPayPassword;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic d(Lcom/nd/commplatform/d/c/io;)Landroid/view/View;
    .locals 1

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/io;->b()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private m()V
    .locals 4

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/io;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$f;->aP:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->fo:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->go:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->fm:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    check-cast v0, Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/io;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->kD:I

    new-instance v3, Lcom/nd/commplatform/d/c/io$4;

    invoke-direct {v3, p0, v0}, Lcom/nd/commplatform/d/c/io$4;-><init>(Lcom/nd/commplatform/d/c/io;Landroid/widget/EditText;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget v0, Lcom/nd/commplatform/d/c/jo$h;->bG:I

    new-instance v1, Lcom/nd/commplatform/d/c/io$5;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/io$5;-><init>(Lcom/nd/commplatform/d/c/io;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private n()V
    .locals 4

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/io;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$f;->aP:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->fo:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->mE:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->fm:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    check-cast v0, Landroid/widget/EditText;

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/io;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->kD:I

    new-instance v3, Lcom/nd/commplatform/d/c/io$6;

    invoke-direct {v3, p0, v0}, Lcom/nd/commplatform/d/c/io$6;-><init>(Lcom/nd/commplatform/d/c/io;Landroid/widget/EditText;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget v0, Lcom/nd/commplatform/d/c/jo$h;->bG:I

    new-instance v1, Lcom/nd/commplatform/d/c/io$7;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/io$7;-><init>(Lcom/nd/commplatform/d/c/io;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->aF:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/io;->p:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/io;->q:Z

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/io;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->eP:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/io;->r:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/nd/commplatform/d/c/io;->s:Z

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/io;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->bT:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/io;->t:Ljava/lang/String;

    new-instance v0, Lcom/nd/commplatform/d/c/io$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nd/commplatform/d/c/io$a;-><init>(Lcom/nd/commplatform/d/c/io;Lcom/nd/commplatform/d/c/io$1;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/io;->u:Landroid/view/View$OnClickListener;

    iput-boolean v3, p0, Lcom/nd/commplatform/d/c/io;->v:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/io;->w:Z

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 2

    new-instance v1, Lcom/nd/commplatform/d/c/io$b;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/nd/commplatform/d/c/io$b;-><init>(Lcom/nd/commplatform/d/c/io;Lcom/nd/commplatform/d/c/io$1;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->eC:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/io;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/io;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->eH:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/io;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/io;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->eF:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/io;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/io;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->eD:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/io;->d:Landroid/view/View;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->eI:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/io;->e:Landroid/view/View;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->eG:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/io;->f:Landroid/view/View;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->iE:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/io;->j:Landroid/widget/CompoundButton;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/io;->j:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected a(ZI)V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/nd/commplatform/d/c/io;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/io;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/io;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/io;->c()V

    :cond_0
    return-void
.end method
