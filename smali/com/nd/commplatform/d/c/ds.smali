.class public Lcom/nd/commplatform/d/c/ds;
.super Lcom/nd/commplatform/widget/NdFrameInnerContent;

# interfaces
.implements Lcom/nd/commplatform/friend/NdFriendSectionPanel$c;
.implements Lcom/nd/commplatform/widget/NdFrameInnerContent$OnInvisibleListener;


# static fields
.field private static final d:Ljava/lang/String; = "key-1"

.field private static final e:Ljava/lang/String; = "key-2"


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Lcom/nd/commplatform/friend/NdFriendSectionPanel;

.field private c:Lcom/nd/commplatform/d/c/ej;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/ds;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ds;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Lcom/nd/commplatform/d/c/bx;

    const/16 v1, 0xbc6

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/bx;-><init>(I)V

    const-string v1, "key-1"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "key-2"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    invoke-static {p0, v3, v1, v0}, Lcom/nd/commplatform/d/c/cb;->a(Landroid/content/Context;IILcom/nd/commplatform/d/c/bx;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/ds;[Lcom/nd/commplatform/d/c/ek;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/ds;->a([Lcom/nd/commplatform/d/c/ek;)V

    return-void
.end method

.method public static a(ZZ)V
    .locals 3

    new-instance v0, Lcom/nd/commplatform/d/c/bx;

    const/16 v1, 0xbc6

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/bx;-><init>(I)V

    const-string v1, "key-1"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "key-2"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    invoke-static {v1, v0}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    return-void
.end method

.method private a([Lcom/nd/commplatform/d/c/ek;)V
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ds;->b:Lcom/nd/commplatform/friend/NdFriendSectionPanel;

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/friend/NdFriendSectionPanel;->a([Lcom/nd/commplatform/d/c/ek;)V

    return-void
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/ds;)Lcom/nd/commplatform/friend/NdFriendSectionPanel;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ds;->b:Lcom/nd/commplatform/friend/NdFriendSectionPanel;

    return-object v0
.end method

.method private c(Z)Z
    .locals 4

    const/16 v3, 0xbc6

    const/4 v1, 0x1

    invoke-static {v3}, Lcom/nd/commplatform/d/c/cb;->b(I)Lcom/nd/commplatform/d/c/bx;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, "key-1"

    invoke-virtual {v0, v2}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    if-eqz p1, :cond_0

    invoke-static {v3}, Lcom/nd/commplatform/d/c/cb;->c(I)Lcom/nd/commplatform/d/c/bx;

    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private d(Z)Z
    .locals 4

    const/16 v3, 0xbc6

    const/4 v1, 0x0

    invoke-static {v3}, Lcom/nd/commplatform/d/c/cb;->b(I)Lcom/nd/commplatform/d/c/bx;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, "key-2"

    invoke-virtual {v0, v2}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    if-eqz p1, :cond_0

    invoke-static {v3}, Lcom/nd/commplatform/d/c/cb;->c(I)Lcom/nd/commplatform/d/c/bx;

    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 3

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->aK:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v4}, Lcom/nd/commplatform/d/c/ds;->c(Z)Z

    move-result v0

    invoke-direct {p0, v3}, Lcom/nd/commplatform/d/c/ds;->d(Z)Z

    move-result v1

    invoke-super {p0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-boolean v3, p0, Lcom/nd/commplatform/d/c/ds;->p:Z

    iput-boolean v1, p0, Lcom/nd/commplatform/d/c/ds;->q:Z

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->cw:I

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nd/commplatform/d/c/ds;->r:Ljava/lang/String;

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/nd/commplatform/d/c/ds;->s:Z

    sget v0, Lcom/nd/commplatform/d/c/jo$h;->fS:I

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ds;->t:Ljava/lang/String;

    new-instance v0, Lcom/nd/commplatform/d/c/ds$4;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/ds$4;-><init>(Lcom/nd/commplatform/d/c/ds;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ds;->u:Landroid/view/View$OnClickListener;

    :goto_0
    iput-boolean v3, p0, Lcom/nd/commplatform/d/c/ds;->v:Z

    iput-boolean v4, p0, Lcom/nd/commplatform/d/c/ds;->w:Z

    return-void

    :cond_0
    iput-boolean v4, p0, Lcom/nd/commplatform/d/c/ds;->s:Z

    goto :goto_0
.end method

.method protected a(Landroid/view/View;)V
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->ck:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ds;->a:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ds;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/nd/commplatform/d/c/ds$2;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/ds$2;-><init>(Lcom/nd/commplatform/d/c/ds;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->ch:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ds;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/friend/NdFriendSectionPanel;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ds;->b:Lcom/nd/commplatform/friend/NdFriendSectionPanel;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ds;->b:Lcom/nd/commplatform/friend/NdFriendSectionPanel;

    new-instance v1, Lcom/nd/commplatform/d/c/ds$3;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/ds$3;-><init>(Lcom/nd/commplatform/d/c/ds;)V

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/friend/NdFriendSectionPanel;->a(Lcom/nd/commplatform/friend/NdFriendSectionPanel$b;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$b;->A:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ds;->setBackgroundResource(I)V

    return-void
.end method

.method protected a(ZI)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ds;->a:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ds;->b:Lcom/nd/commplatform/friend/NdFriendSectionPanel;

    invoke-virtual {v0}, Lcom/nd/commplatform/friend/NdFriendSectionPanel;->a()V

    new-instance v0, Lcom/nd/commplatform/d/c/ds$1;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/ds$1;-><init>(Lcom/nd/commplatform/d/c/ds;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ds;->c:Lcom/nd/commplatform/d/c/ej;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ds;->b:Lcom/nd/commplatform/friend/NdFriendSectionPanel;

    invoke-virtual {v0, p0}, Lcom/nd/commplatform/friend/NdFriendSectionPanel;->a(Lcom/nd/commplatform/friend/NdFriendSectionPanel$c;)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ds;->c:Lcom/nd/commplatform/d/c/ej;

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/a;->a(Lcom/nd/commplatform/d/c/ej;)V

    invoke-virtual {p0, p0}, Lcom/nd/commplatform/d/c/ds;->a(Lcom/nd/commplatform/widget/NdFrameInnerContent$OnInvisibleListener;)V

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ds;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    invoke-static {}, Lcom/nd/commplatform/d/c/cb;->f()V

    return-void
.end method

.method public a_(I)V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ds;->c:Lcom/nd/commplatform/d/c/ej;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ds;->c:Lcom/nd/commplatform/d/c/ej;

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/a;->b(Lcom/nd/commplatform/d/c/ej;)V

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ds;->b:Lcom/nd/commplatform/friend/NdFriendSectionPanel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ds;->b:Lcom/nd/commplatform/friend/NdFriendSectionPanel;

    invoke-virtual {v0}, Lcom/nd/commplatform/friend/NdFriendSectionPanel;->b()V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ds;->a:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ds;->a:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    return-void
.end method
