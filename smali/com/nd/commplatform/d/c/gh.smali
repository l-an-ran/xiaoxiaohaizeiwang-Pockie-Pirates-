.class public Lcom/nd/commplatform/d/c/gh;
.super Lcom/nd/commplatform/widget/NdFrameInnerContent;

# interfaces
.implements Lcom/nd/commplatform/d/c/hm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/widget/NdFrameInnerContent;",
        "Lcom/nd/commplatform/d/c/hm",
        "<",
        "Lcom/nd/commplatform/entry/NdTinyMsgInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/nd/commplatform/d/c/hf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nd/commplatform/d/c/hf",
            "<",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<",
            "Lcom/nd/commplatform/entry/NdTinyMsgInfo;",
            ">;",
            "Lcom/nd/commplatform/entry/NdTinyMsgInfo;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/nd/commplatform/d/c/hi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nd/commplatform/d/c/hi",
            "<",
            "Lcom/nd/commplatform/entry/NdTinyMsgInfo;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ListView;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/Button;

.field private i:Lcom/nd/commplatform/entry/NdBaseUserInfo;

.field private j:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/nd/commplatform/d/c/hf;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/hf;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/gh;->a:Lcom/nd/commplatform/d/c/hf;

    new-instance v0, Lcom/nd/commplatform/d/c/hi;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/hi;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/gh;->b:Lcom/nd/commplatform/d/c/hi;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/nd/commplatform/d/c/hf;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/hf;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/gh;->a:Lcom/nd/commplatform/d/c/hf;

    new-instance v0, Lcom/nd/commplatform/d/c/hi;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/hi;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/gh;->b:Lcom/nd/commplatform/d/c/hi;

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/gh;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/gh;->c()V

    return-void
.end method

.method public static a(Lcom/nd/commplatform/entry/NdBaseUserInfo;)V
    .locals 2

    new-instance v0, Lcom/nd/commplatform/d/c/bx;

    const/16 v1, 0xbc3

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/bx;-><init>(I)V

    const-string v1, "ndBaseUserInfo"

    invoke-virtual {v0, v1, p0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x71

    invoke-static {v1, v0}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Lcom/nd/commplatform/entry/NdMsgContent;

    invoke-direct {v0}, Lcom/nd/commplatform/entry/NdMsgContent;-><init>()V

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/entry/NdMsgContent;->setContent(Ljava/lang/String;)V

    new-instance v1, Lcom/nd/commplatform/d/c/gh$4;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/gh$4;-><init>(Lcom/nd/commplatform/d/c/gh;)V

    invoke-virtual {p0, v1}, Lcom/nd/commplatform/d/c/gh;->a(Lcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/gh;->h:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/nd/commplatform/d/c/gh;->b(Z)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v2

    iget-object v3, p0, Lcom/nd/commplatform/d/c/gh;->i:Lcom/nd/commplatform/entry/NdBaseUserInfo;

    invoke-virtual {v3}, Lcom/nd/commplatform/entry/NdBaseUserInfo;->getUin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/gh;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v4, v1}, Lcom/nd/commplatform/d/c/a;->a(Ljava/lang/String;Lcom/nd/commplatform/entry/NdMsgContent;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gh;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/gh;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->fX:I

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;I)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/nd/commplatform/d/c/gh;->g:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v0}, Lcom/nd/commplatform/d/c/gh;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/gh;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/gh;->b()V

    return-void
.end method

.method static synthetic c(Lcom/nd/commplatform/d/c/gh;)Lcom/nd/commplatform/entry/NdBaseUserInfo;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gh;->i:Lcom/nd/commplatform/entry/NdBaseUserInfo;

    return-object v0
.end method

.method private c()V
    .locals 0

    invoke-static {}, Lcom/nd/commplatform/d/c/cb;->f()V

    return-void
.end method

.method static synthetic d(Lcom/nd/commplatform/d/c/gh;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gh;->h:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic e(Lcom/nd/commplatform/d/c/gh;)Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/nd/commplatform/d/c/gh;)Lcom/nd/commplatform/d/c/hf;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gh;->a:Lcom/nd/commplatform/d/c/hf;

    return-object v0
.end method

.method static synthetic g(Lcom/nd/commplatform/d/c/gh;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gh;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic h(Lcom/nd/commplatform/d/c/gh;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gh;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/nd/commplatform/d/c/gh;)Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private m()V
    .locals 6

    const/16 v2, 0xbc3

    invoke-static {v2}, Lcom/nd/commplatform/d/c/cb;->b(I)Lcom/nd/commplatform/d/c/bx;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "ndBaseUserInfo"

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/entry/NdBaseUserInfo;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/gh;->i:Lcom/nd/commplatform/entry/NdBaseUserInfo;

    :cond_0
    invoke-static {v2}, Lcom/nd/commplatform/d/c/cb;->c(I)Lcom/nd/commplatform/d/c/bx;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gh;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/gh;->i:Lcom/nd/commplatform/entry/NdBaseUserInfo;

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdBaseUserInfo;->getNickName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v5, Lcom/nd/commplatform/d/c/gh$5;

    invoke-direct {v5, p0}, Lcom/nd/commplatform/d/c/gh$5;-><init>(Lcom/nd/commplatform/d/c/gh;)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/gh;->i:Lcom/nd/commplatform/entry/NdBaseUserInfo;

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdBaseUserInfo;->getUin()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/gh;->i:Lcom/nd/commplatform/entry/NdBaseUserInfo;

    invoke-virtual {v2}, Lcom/nd/commplatform/entry/NdBaseUserInfo;->getCheckSum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/gh;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nd/commplatform/d/c/oh;->g(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/gh;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/a;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z

    new-instance v0, Lcom/nd/commplatform/d/c/gh$6;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/gh$6;-><init>(Lcom/nd/commplatform/d/c/gh;)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/gh;->i:Lcom/nd/commplatform/entry/NdBaseUserInfo;

    invoke-virtual {v2}, Lcom/nd/commplatform/entry/NdBaseUserInfo;->getUin()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/gh;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/nd/commplatform/d/c/a;->a(Ljava/lang/String;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->ap:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/gh;->p:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/gh;->q:Z

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/gh;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->bM:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/gh;->r:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/nd/commplatform/d/c/gh;->s:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/gh;->v:Z

    iput-boolean v3, p0, Lcom/nd/commplatform/d/c/gh;->w:Z

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->eT:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/gh;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/gh;->c:Landroid/widget/ImageView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->fb:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/gh;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/gh;->d:Landroid/widget/TextView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->dy:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/gh;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/gh;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gh;->e:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/SingleLineTransformationMethod;->getInstance()Landroid/text/method/SingleLineTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->eS:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/gh;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/gh;->g:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gh;->g:Landroid/widget/EditText;

    new-instance v1, Lcom/nd/commplatform/d/c/gh$1;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/gh$1;-><init>(Lcom/nd/commplatform/d/c/gh;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->gg:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/gh;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/gh;->h:Landroid/widget/Button;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gh;->h:Landroid/widget/Button;

    new-instance v1, Lcom/nd/commplatform/d/c/gh$2;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/gh$2;-><init>(Lcom/nd/commplatform/d/c/gh;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->dm:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/gh;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/gh;->f:Landroid/widget/ListView;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->eU:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/gh;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/gh;->j:Landroid/view/View;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gh;->j:Landroid/view/View;

    new-instance v1, Lcom/nd/commplatform/d/c/gh$3;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/gh$3;-><init>(Lcom/nd/commplatform/d/c/gh;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 1

    check-cast p1, Lcom/nd/commplatform/widget/NdListBlankView;

    sget v0, Lcom/nd/commplatform/d/c/jo$h;->fG:I

    invoke-virtual {p1, v0}, Lcom/nd/commplatform/widget/NdListBlankView;->a(I)V

    return-void
.end method

.method public a(Landroid/view/View;IIZ)V
    .locals 0

    check-cast p1, Lcom/nd/commplatform/widget/NdListViewFooter;

    invoke-virtual {p1, p4}, Lcom/nd/commplatform/widget/NdListViewFooter;->a(Z)V

    return-void
.end method

.method public a(Lcom/nd/commplatform/d/c/hh;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/nd/commplatform/d/c/hh;Lcom/nd/commplatform/entry/NdTinyMsgInfo;)V
    .locals 2

    check-cast p1, Lcom/nd/commplatform/d/c/hp;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdTinyMsgInfo;->getUin()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->o()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdTinyMsgInfo;->getSendTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nd/commplatform/d/c/hp;->a(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdTinyMsgInfo;->getUin()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/a;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdTinyMsgInfo;->getMsgContent()Lcom/nd/commplatform/entry/NdMsgContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdMsgContent;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nd/commplatform/d/c/hp;->c(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/nd/commplatform/entry/NdTinyMsgInfo;->getMsgContent()Lcom/nd/commplatform/entry/NdMsgContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdMsgContent;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nd/commplatform/d/c/hp;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Lcom/nd/commplatform/d/c/hh;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/nd/commplatform/entry/NdTinyMsgInfo;

    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/gh;->a(Lcom/nd/commplatform/d/c/hh;Lcom/nd/commplatform/entry/NdTinyMsgInfo;)V

    return-void
.end method

.method public a(Lcom/nd/commplatform/entry/NdTinyMsgInfo;Lcom/nd/commplatform/d/c/hh;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/nd/commplatform/d/c/hh;)V
    .locals 0

    check-cast p1, Lcom/nd/commplatform/entry/NdTinyMsgInfo;

    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/gh;->a(Lcom/nd/commplatform/entry/NdTinyMsgInfo;Lcom/nd/commplatform/d/c/hh;)V

    return-void
.end method

.method protected a(ZI)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/gh;->m()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gh;->a:Lcom/nd/commplatform/d/c/hf;

    invoke-super {p0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/gh;->f:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/nd/commplatform/d/c/gh;->b:Lcom/nd/commplatform/d/c/hi;

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/nd/commplatform/d/c/hf;->a(Landroid/content/Context;Landroid/widget/ListView;Lcom/nd/commplatform/d/c/hm;Lcom/nd/commplatform/d/c/hj;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gh;->a:Lcom/nd/commplatform/d/c/hf;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/hf;->c()V

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/gh;->g:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gh;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    :cond_1
    return-void
.end method

.method public b(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->M:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/widget/NdListBlankView;

    return-object v0
.end method

.method public b(Landroid/view/View;)Lcom/nd/commplatform/d/c/hh;
    .locals 1

    new-instance v0, Lcom/nd/commplatform/d/c/hp;

    check-cast p1, Lcom/nd/commplatform/widget/NdMessageRecordListItem;

    invoke-direct {v0, p1}, Lcom/nd/commplatform/d/c/hp;-><init>(Lcom/nd/commplatform/widget/NdMessageRecordListItem;)V

    return-object v0
.end method

.method public b(I)V
    .locals 5

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    new-instance v1, Lcom/nd/commplatform/d/c/gh$7;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/gh$7;-><init>(Lcom/nd/commplatform/d/c/gh;)V

    invoke-virtual {p0, v1}, Lcom/nd/commplatform/d/c/gh;->a(Lcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;

    new-instance v2, Lcom/nd/commplatform/entry/NdPagination;

    invoke-direct {v2}, Lcom/nd/commplatform/entry/NdPagination;-><init>()V

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Lcom/nd/commplatform/entry/NdPagination;->setPageIndex(I)V

    iget-object v3, p0, Lcom/nd/commplatform/d/c/gh;->b:Lcom/nd/commplatform/d/c/hi;

    invoke-virtual {v3}, Lcom/nd/commplatform/d/c/hi;->f()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/nd/commplatform/entry/NdPagination;->setPageSize(I)V

    iget-object v3, p0, Lcom/nd/commplatform/d/c/gh;->i:Lcom/nd/commplatform/entry/NdBaseUserInfo;

    invoke-virtual {v3}, Lcom/nd/commplatform/entry/NdBaseUserInfo;->getUin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/gh;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v3, v2, v4, v1}, Lcom/nd/commplatform/d/c/a;->e(Ljava/lang/String;Lcom/nd/commplatform/entry/NdPagination;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method public c(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->al:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/widget/NdListViewFooter;

    return-object v0
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    check-cast p1, Lcom/nd/commplatform/widget/NdListBlankView;

    sget v0, Lcom/nd/commplatform/d/c/jo$b;->m:I

    invoke-virtual {p1, v0}, Lcom/nd/commplatform/widget/NdListBlankView;->b(I)V

    return-void
.end method

.method public d(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->as:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/widget/NdMessageRecordListItem;

    return-object v0
.end method
