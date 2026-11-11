.class public Lcom/nd/commplatform/d/c/is;
.super Lcom/nd/commplatform/widget/NdFrameInnerContent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nd/commplatform/d/c/is$a;
    }
.end annotation


# static fields
.field private static final c:I = 0x1


# instance fields
.field protected a:Landroid/widget/EditText;

.field protected b:Landroid/widget/EditText;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/is;Lcom/nd/commplatform/entry/NdThirdPartyPlatform;)Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;
    .locals 1

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/is;->b(Lcom/nd/commplatform/entry/NdThirdPartyPlatform;)Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/is;)Lcom/nd/commplatform/entry/NdThirdPartyPlatform;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/is;->e:Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    return-object v0
.end method

.method private a(Lcom/nd/commplatform/entry/NdThirdPartyPlatform;)V
    .locals 5

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/is;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->do:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/is;->r:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/is;->i()V

    goto :goto_0
.end method

.method private b(Lcom/nd/commplatform/entry/NdThirdPartyPlatform;)Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;->getType()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/is;->f:Ljava/util/List;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/is;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/is;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;->getAccountType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/is;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/entry/NdThirdAccountTypeInfo;

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/is;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/is;->f:Ljava/util/List;

    return-object v0
.end method

.method private b()V
    .locals 6

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/is;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/is;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/is;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->fW:I

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/is;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->fY:I

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    new-instance v5, Lcom/nd/commplatform/d/c/is$1;

    invoke-direct {v5, p0}, Lcom/nd/commplatform/d/c/is$1;-><init>(Lcom/nd/commplatform/d/c/is;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/is;->b(Z)V

    invoke-virtual {p0, v1, v5, v1}, Lcom/nd/commplatform/d/c/is;->a(ILcom/nd/commplatform/NdCallbackListener;Z)Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {p0, v1}, Lcom/nd/commplatform/d/c/is;->b(Z)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/is;->e:Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/is;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    goto :goto_0
.end method

.method private c()V
    .locals 8

    const/4 v6, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/is;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/nd/commplatform/d/c/is;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/nd/commplatform/d/c/is$2;

    invoke-direct {v7, p0}, Lcom/nd/commplatform/d/c/is$2;-><init>(Lcom/nd/commplatform/d/c/is;)V

    invoke-virtual {p0, v6}, Lcom/nd/commplatform/d/c/is;->b(Z)V

    invoke-virtual {p0, v1, v7, v1}, Lcom/nd/commplatform/d/c/is;->a(ILcom/nd/commplatform/NdCallbackListener;Z)Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {p0, v1}, Lcom/nd/commplatform/d/c/is;->b(Z)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/is;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/is;->e:Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    invoke-virtual {v2}, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;->getType()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/nd/commplatform/d/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method static synthetic c(Lcom/nd/commplatform/d/c/is;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/is;->b()V

    return-void
.end method

.method static synthetic d(Lcom/nd/commplatform/d/c/is;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/is;->c()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->u:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lcom/nd/commplatform/widget/NdFrameInnerContent;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/is;->a:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ok;->a(Landroid/widget/EditText;)V

    invoke-super {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->a(I)Lcom/nd/commplatform/widget/NdFrameInnerContent;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 3

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/is;->p:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/is;->q:Z

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/is;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->du:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/is;->r:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/is;->s:Z

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/is;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->ay:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/is;->t:Ljava/lang/String;

    new-instance v0, Lcom/nd/commplatform/d/c/is$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nd/commplatform/d/c/is$a;-><init>(Lcom/nd/commplatform/d/c/is;Lcom/nd/commplatform/d/c/is$1;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/is;->u:Landroid/view/View$OnClickListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nd/commplatform/d/c/is;->v:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/is;->w:Z

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->ap:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/is;->a:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/is;->a:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ok;->a(Landroid/widget/EditText;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->as:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/is;->b:Landroid/widget/EditText;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->aq:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/is;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/is;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method protected a(ZI)V
    .locals 7

    const/16 v6, 0xfa4

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    invoke-static {v6}, Lcom/nd/commplatform/d/c/cb;->b(I)Lcom/nd/commplatform/d/c/bx;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "platform"

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    check-cast v0, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/is;->e:Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    const-string v0, "binded"

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/is;->f:Ljava/util/List;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/is;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/is;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->i:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/nd/commplatform/d/c/is;->e:Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    invoke-virtual {v4}, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/is;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/is;->e:Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    invoke-direct {p0, v0}, Lcom/nd/commplatform/d/c/is;->a(Lcom/nd/commplatform/entry/NdThirdPartyPlatform;)V

    invoke-static {v6}, Lcom/nd/commplatform/d/c/cb;->c(I)Lcom/nd/commplatform/d/c/bx;

    goto :goto_0
.end method
