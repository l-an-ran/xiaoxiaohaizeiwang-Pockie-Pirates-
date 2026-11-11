.class public Lcom/nd/commplatform/d/c/gi;
.super Lcom/nd/commplatform/widget/NdFrameInnerContent;

# interfaces
.implements Lcom/nd/commplatform/widget/NdFrameInnerContent$OnInvisibleListener;


# instance fields
.field private a:Lcom/nd/commplatform/friend/NdFriendSectionPanel;

.field private b:Lcom/nd/commplatform/d/c/ej;


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

.method static synthetic a(Lcom/nd/commplatform/d/c/gi;[Lcom/nd/commplatform/d/c/ek;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/gi;->a([Lcom/nd/commplatform/d/c/ek;)V

    return-void
.end method

.method private a([Lcom/nd/commplatform/d/c/ek;)V
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gi;->a:Lcom/nd/commplatform/friend/NdFriendSectionPanel;

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/friend/NdFriendSectionPanel;->a([Lcom/nd/commplatform/d/c/ek;)V

    return-void
.end method

.method public static b()V
    .locals 2

    const/16 v0, 0x72

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->Y:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/friend/NdFriendSectionPanel;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/gi;->a:Lcom/nd/commplatform/friend/NdFriendSectionPanel;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gi;->a:Lcom/nd/commplatform/friend/NdFriendSectionPanel;

    return-object v0
.end method

.method protected a()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/gi;->p:Z

    iput-boolean v3, p0, Lcom/nd/commplatform/d/c/gi;->q:Z

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->cx:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nd/commplatform/d/c/gi;->r:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/gi;->s:Z

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->ef:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/gi;->t:Ljava/lang/String;

    new-instance v0, Lcom/nd/commplatform/d/c/gi$2;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/gi$2;-><init>(Lcom/nd/commplatform/d/c/gi;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/gi;->u:Landroid/view/View$OnClickListener;

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/gi;->v:Z

    iput-boolean v3, p0, Lcom/nd/commplatform/d/c/gi;->w:Z

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gi;->a:Lcom/nd/commplatform/friend/NdFriendSectionPanel;

    new-instance v1, Lcom/nd/commplatform/d/c/gi$3;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/gi$3;-><init>(Lcom/nd/commplatform/d/c/gi;)V

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/friend/NdFriendSectionPanel;->a(Lcom/nd/commplatform/friend/NdFriendSectionPanel$b;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$b;->A:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/gi;->setBackgroundResource(I)V

    return-void
.end method

.method protected a(ZI)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gi;->a:Lcom/nd/commplatform/friend/NdFriendSectionPanel;

    invoke-virtual {v0}, Lcom/nd/commplatform/friend/NdFriendSectionPanel;->a()V

    new-instance v0, Lcom/nd/commplatform/d/c/gi$1;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/gi$1;-><init>(Lcom/nd/commplatform/d/c/gi;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/gi;->b:Lcom/nd/commplatform/d/c/ej;

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/gi;->b:Lcom/nd/commplatform/d/c/ej;

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/a;->a(Lcom/nd/commplatform/d/c/ej;)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/gi;->b:Lcom/nd/commplatform/d/c/ej;

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/a;->b(Lcom/nd/commplatform/d/c/ej;)V

    invoke-virtual {p0, p0}, Lcom/nd/commplatform/d/c/gi;->a(Lcom/nd/commplatform/widget/NdFrameInnerContent$OnInvisibleListener;)V

    :cond_0
    return-void
.end method

.method public a_(I)V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gi;->b:Lcom/nd/commplatform/d/c/ej;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/gi;->b:Lcom/nd/commplatform/d/c/ej;

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/a;->b(Lcom/nd/commplatform/d/c/ej;)V

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/gi;->a:Lcom/nd/commplatform/friend/NdFriendSectionPanel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gi;->a:Lcom/nd/commplatform/friend/NdFriendSectionPanel;

    invoke-virtual {v0}, Lcom/nd/commplatform/friend/NdFriendSectionPanel;->b()V

    :cond_1
    return-void
.end method
