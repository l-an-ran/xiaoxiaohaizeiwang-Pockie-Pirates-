.class public Lcom/nd/commplatform/d/c/g;
.super Lcom/nd/commplatform/widget/NdFrameInnerContent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nd/commplatform/d/c/g$b;,
        Lcom/nd/commplatform/d/c/g$a;,
        Lcom/nd/commplatform/d/c/g$d;,
        Lcom/nd/commplatform/d/c/g$e;,
        Lcom/nd/commplatform/d/c/g$c;
    }
.end annotation


# static fields
.field private static final a:I = 0x5

.field private static final b:I = 0x1

.field private static final c:I = 0x2

.field private static final d:I = 0x3

.field private static final e:I = 0x4

.field private static final f:I = 0x5

.field private static final g:I = 0x6

.field private static final h:Ljava/lang/String; = "********"


# instance fields
.field private H:Landroid/widget/CheckBox;

.field private I:Landroid/widget/LinearLayout;

.field private J:Landroid/widget/ImageView;

.field private K:Landroid/widget/TextView;

.field private L:Landroid/app/AlertDialog;

.field private M:Lcom/nd/commplatform/entry/NdLoginConfig;

.field private N:Landroid/widget/TextView;

.field private O:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/entry/NdThirdPartyPlatform;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Landroid/widget/EditText;

.field private m:Landroid/view/View;

.field private n:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/g;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g;->l:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/g;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/g;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Lcom/nd/commplatform/entry/NdThirdPartyPlatform;Landroid/widget/ImageView;)V
    .locals 5

    new-instance v0, Lcom/nd/commplatform/d/c/g$b;

    invoke-direct {v0, p0, p2, p1}, Lcom/nd/commplatform/d/c/g$b;-><init>(Lcom/nd/commplatform/d/c/g;Landroid/widget/ImageView;Lcom/nd/commplatform/entry/NdThirdPartyPlatform;)V

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/g;->a(Lcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;->getCheckSum()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/g;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/nd/commplatform/d/c/a;->e(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/g;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/nd/commplatform/d/c/a;->e(Landroid/content/Context;)Lcom/nd/commplatform/entry/NdLoginConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/g;->M:Lcom/nd/commplatform/entry/NdLoginConfig;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g;->M:Lcom/nd/commplatform/entry/NdLoginConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g;->M:Lcom/nd/commplatform/entry/NdLoginConfig;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdLoginConfig;->getUserName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g;->H:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/g;->M:Lcom/nd/commplatform/entry/NdLoginConfig;

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdLoginConfig;->isAutoLogin()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g;->l:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/g;->M:Lcom/nd/commplatform/entry/NdLoginConfig;

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdLoginConfig;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g;->n:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/g;->M:Lcom/nd/commplatform/entry/NdLoginConfig;

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdLoginConfig;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-static {}, Lcom/nd/commplatform/d/c/cb;->b()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/nd/commplatform/d/c/cb;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "intent_account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/nd/commplatform/d/c/g;->l:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g;->n:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/g;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/g;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/e;->a(Landroid/content/Context;)Lcom/nd/commplatform/d/c/d;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/g;->l:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/d;->a(Ljava/lang/String;)Lcom/nd/commplatform/d/c/c;

    move-result-object v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g;->n:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/g;->clearFocus()V

    return-void

    :cond_3
    const/4 v0, -0x1

    iget-object v3, p0, Lcom/nd/commplatform/d/c/g;->M:Lcom/nd/commplatform/entry/NdLoginConfig;

    invoke-virtual {v3}, Lcom/nd/commplatform/entry/NdLoginConfig;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v0, v3, :cond_4

    move v0, v1

    goto/16 :goto_0

    :cond_4
    move v0, v2

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/g;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/nd/commplatform/d/c/a;->h(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g;->H:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v1, p0, Lcom/nd/commplatform/d/c/g;->l:Landroid/widget/EditText;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    iget-object v0, p0, Lcom/nd/commplatform/d/c/g;->n:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g;->n:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/nd/commplatform/d/c/g;->n:Landroid/widget/EditText;

    const-string v1, "********"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/g;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/nd/commplatform/d/c/g;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/g;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->a:I

    invoke-static {v1, v2}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;I)V

    :goto_0
    return v0

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/g;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->gc:I

    invoke-static {v1, v2}, Lcom/nd/commplatform/d/c/nt;->a(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/g;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/g;->O:Ljava/util/List;

    return-object p1
.end method

.method public static b()V
    .locals 3

    const/16 v0, 0x3ec

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/nd/commplatform/d/c/cb;->a(IZLcom/nd/commplatform/d/c/bx;)V

    return-void
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/g;->n()V

    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/entry/NdThirdPartyPlatform;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    sget v0, Lcom/nd/commplatform/d/c/jo$e;->H:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/g;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget v0, Lcom/nd/commplatform/d/c/jo$e;->H:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/g;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g;->I:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/g;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v2, p0, Lcom/nd/commplatform/d/c/g;->I:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/nd/commplatform/d/c/g;->I:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/g;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nd/commplatform/d/c/jo$c;->k:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/g;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nd/commplatform/d/c/jo$c;->q:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/g;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nd/commplatform/d/c/jo$c;->r:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    div-int v2, v0, v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v2, :cond_3

    move v2, v0

    :goto_1
    move v3, v1

    :goto_2
    if-ge v3, v2, :cond_4

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/g;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$f;->h:I

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nd/commplatform/entry/NdThirdPartyPlatform;

    invoke-direct {p0, v1, v0}, Lcom/nd/commplatform/d/c/g;->a(Lcom/nd/commplatform/entry/NdThirdPartyPlatform;Landroid/widget/ImageView;)V

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/g;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nd/commplatform/d/c/jo$c;->q:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/g;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/nd/commplatform/d/c/jo$c;->q:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/nd/commplatform/d/c/g;->I:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/nd/commplatform/d/c/g$13;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/g$13;-><init>(Lcom/nd/commplatform/d/c/g;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eq v2, v0, :cond_1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/g;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$f;->h:I

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/nd/commplatform/d/c/jo$d;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/g;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nd/commplatform/d/c/jo$c;->q:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/g;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/nd/commplatform/d/c/jo$c;->q:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/nd/commplatform/d/c/g;->I:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/nd/commplatform/d/c/g$14;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/g$14;-><init>(Lcom/nd/commplatform/d/c/g;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method static synthetic c(Lcom/nd/commplatform/d/c/g;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g;->O:Ljava/util/List;

    return-object v0
.end method

.method private c()V
    .locals 6

    const/4 v5, -0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    invoke-static {}, Lcom/nd/commplatform/d/c/cb;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/g;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$f;->i:I

    invoke-static {v0, v1, v3}, Lcom/nd/commplatform/d/c/g;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    :goto_0
    sget v0, Lcom/nd/commplatform/d/c/jo$e;->gQ:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/g;->i:Landroid/view/View;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g;->i:Landroid/view/View;

    new-instance v2, Lcom/nd/commplatform/d/c/g$8;

    invoke-direct {v2, p0}, Lcom/nd/commplatform/d/c/g$8;-><init>(Lcom/nd/commplatform/d/c/g;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->J:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/g;->j:Landroid/view/View;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g;->j:Landroid/view/View;

    new-instance v2, Lcom/nd/commplatform/d/c/g$c;

    invoke-direct {v2, p0, v3}, Lcom/nd/commplatform/d/c/g$c;-><init>(Lcom/nd/commplatform/d/c/g;Lcom/nd/commplatform/d/c/g$1;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->E:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/g;->k:Landroid/view/View;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g;->k:Landroid/view/View;

    new-instance v2, Lcom/nd/commplatform/d/c/g$e;

    invoke-direct {v2, p0, v3}, Lcom/nd/commplatform/d/c/g$e;-><init>(Lcom/nd/commplatform/d/c/g;Lcom/nd/commplatform/d/c/g$1;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->t:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/g;->l:Landroid/widget/EditText;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->t:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/g;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    check-cast v0, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/g;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g;->l:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ok;->a(Landroid/widget/EditText;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->F:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/g;->m:Landroid/view/View;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g;->m:Landroid/view/View;

    new-instance v2, Lcom/nd/commplatform/d/c/g$d;

    invoke-direct {v2, p0, v3}, Lcom/nd/commplatform/d/c/g$d;-><init>(Lcom/nd/commplatform/d/c/g;Lcom/nd/commplatform/d/c/g$1;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->I:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/g;->n:Landroid/widget/EditText;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->I:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/g;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    check-cast v0, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/g;->n:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->w:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/g;->H:Landroid/widget/CheckBox;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->u:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/g;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->G:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/g;->I:Landroid/widget/LinearLayout;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->v:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/g;->N:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g;->N:Landroid/widget/TextView;

    new-instance v2, Lcom/nd/commplatform/d/c/g$9;

    invoke-direct {v2, p0}, Lcom/nd/commplatform/d/c/g$9;-><init>(Lcom/nd/commplatform/d/c/g;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/g;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/b;->n()Lcom/nd/commplatform/entry/NdLoginStatus;

    move-result-object v0

    sget-object v2, Lcom/nd/commplatform/entry/NdLoginStatus;->GuestLogin:Lcom/nd/commplatform/entry/NdLoginStatus;

    if-ne v0, v2, :cond_0

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->K:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g;->j:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/g;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/nd/commplatform/d/c/jo$f;->g:I

    invoke-static {v0, v1, v3}, Lcom/nd/commplatform/d/c/g;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0
.end method

.method static synthetic c(Lcom/nd/commplatform/d/c/g;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/g;->b(Ljava/util/List;)V

    return-void
.end method

.method static synthetic d(Lcom/nd/commplatform/d/c/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/g;->o()V

    return-void
.end method

.method static synthetic e(Lcom/nd/commplatform/d/c/g;)Lcom/nd/commplatform/entry/NdLoginConfig;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g;->M:Lcom/nd/commplatform/entry/NdLoginConfig;

    return-object v0
.end method

.method static synthetic f(Lcom/nd/commplatform/d/c/g;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g;->n:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic g(Lcom/nd/commplatform/d/c/g;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g;->k:Landroid/view/View;

    return-object v0
.end method

.method static synthetic h(Lcom/nd/commplatform/d/c/g;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g;->H:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic i(Lcom/nd/commplatform/d/c/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/g;->q()V

    return-void
.end method

.method static synthetic j(Lcom/nd/commplatform/d/c/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/g;->p()V

    return-void
.end method

.method private m()V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Lcom/nd/commplatform/d/c/g$10;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/g$10;-><init>(Lcom/nd/commplatform/d/c/g;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/nd/commplatform/d/c/g;->b(Z)V

    invoke-virtual {p0, v2, v0, v2}, Lcom/nd/commplatform/d/c/g;->a(ILcom/nd/commplatform/NdCallbackListener;Z)Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {p0, v2}, Lcom/nd/commplatform/d/c/g;->b(Z)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/g;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/nd/commplatform/d/c/a;->a(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method private n()V
    .locals 3

    const/4 v1, 0x1

    invoke-static {}, Lcom/nd/commplatform/d/c/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/g;->o()V

    invoke-static {}, Lcom/nd/commplatform/d/c/e;->c()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nd/commplatform/d/c/g;->a(Ljava/util/List;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/nd/commplatform/d/c/g$11;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/g$11;-><init>(Lcom/nd/commplatform/d/c/g;)V

    invoke-virtual {p0, v1, v0, v1}, Lcom/nd/commplatform/d/c/g;->a(ILcom/nd/commplatform/NdCallbackListener;Z)Lcom/nd/commplatform/NdCallbackListener;

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/g;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/nd/commplatform/d/c/a;->b(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    goto :goto_0
.end method

.method private o()V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Lcom/nd/commplatform/d/c/g$12;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/g$12;-><init>(Lcom/nd/commplatform/d/c/g;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/nd/commplatform/d/c/g;->b(Z)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0, v2}, Lcom/nd/commplatform/d/c/g;->a(ILcom/nd/commplatform/NdCallbackListener;Z)Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {p0, v2}, Lcom/nd/commplatform/d/c/g;->b(Z)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/g;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/nd/commplatform/d/c/a;->n(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method

.method private p()V
    .locals 7

    invoke-static {}, Lcom/nd/commplatform/d/c/cb;->f()V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/g;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->kk:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v0, Lcom/nd/commplatform/d/c/g$a;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/g;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v4, Lcom/nd/commplatform/d/c/jo$f;->f:I

    sget v5, Lcom/nd/commplatform/d/c/jo$e;->A:I

    move-object v1, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/nd/commplatform/d/c/g$a;-><init>(Lcom/nd/commplatform/d/c/g;Landroid/content/Context;Lcom/nd/commplatform/widget/NdFrameInnerContent;II)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/g;->l:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/g$a;->a(Ljava/lang/String;)V

    const/4 v1, -0x1

    new-instance v2, Lcom/nd/commplatform/d/c/g$2;

    invoke-direct {v2, p0, v0}, Lcom/nd/commplatform/d/c/g$2;-><init>(Lcom/nd/commplatform/d/c/g;Lcom/nd/commplatform/d/c/g$a;)V

    invoke-virtual {v6, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/a;->z()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/a;->B()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/a;->A()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget v1, Lcom/nd/commplatform/d/c/jo$h;->lr:I

    new-instance v2, Lcom/nd/commplatform/d/c/g$3;

    invoke-direct {v2, p0, v0}, Lcom/nd/commplatform/d/c/g$3;-><init>(Lcom/nd/commplatform/d/c/g;Lcom/nd/commplatform/d/c/g$a;)V

    invoke-virtual {v6, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_1
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->E:I

    new-instance v1, Lcom/nd/commplatform/d/c/g$4;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/g$4;-><init>(Lcom/nd/commplatform/d/c/g;)V

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/g;->L:Landroid/app/AlertDialog;

    return-void
.end method

.method private q()V
    .locals 6

    const/4 v1, -0x1

    invoke-static {}, Lcom/nd/commplatform/d/c/e;->c()Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    if-eqz v0, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-static {}, Lcom/nd/commplatform/d/c/cb;->f()V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/g;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/nd/commplatform/d/c/jo$h;->kk:I

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_1
    const/4 v4, 0x5

    if-lt v0, v4, :cond_2

    :goto_2
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    new-instance v4, Lcom/nd/commplatform/d/c/g$5;

    invoke-direct {v4, p0, v2}, Lcom/nd/commplatform/d/c/g$5;-><init>(Lcom/nd/commplatform/d/c/g;Ljava/util/Vector;)V

    invoke-virtual {v3, v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget v0, Lcom/nd/commplatform/d/c/jo$h;->E:I

    new-instance v1, Lcom/nd/commplatform/d/c/g$6;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/g$6;-><init>(Lcom/nd/commplatform/d/c/g;)V

    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/g;->L:Landroid/app/AlertDialog;

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->e:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public a(I)Lcom/nd/commplatform/widget/NdFrameInnerContent;
    .locals 1

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/g;->c()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g;->O:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g;->O:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/nd/commplatform/d/c/g;->b(Ljava/util/List;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->a(I)Lcom/nd/commplatform/widget/NdFrameInnerContent;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nd/commplatform/d/c/g;->p:Z

    iput-boolean v0, p0, Lcom/nd/commplatform/d/c/g;->q:Z

    iput-object v1, p0, Lcom/nd/commplatform/d/c/g;->r:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/nd/commplatform/d/c/g;->s:Z

    iput-object v1, p0, Lcom/nd/commplatform/d/c/g;->t:Ljava/lang/String;

    iput-object v1, p0, Lcom/nd/commplatform/d/c/g;->u:Landroid/view/View$OnClickListener;

    iput-boolean v0, p0, Lcom/nd/commplatform/d/c/g;->v:Z

    iput-boolean v0, p0, Lcom/nd/commplatform/d/c/g;->w:Z

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, -0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/nd/commplatform/d/c/cb;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/g;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$f;->i:I

    invoke-static {v1, v2, v3}, Lcom/nd/commplatform/d/c/g;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    sget v0, Lcom/nd/commplatform/d/c/jo$e;->gQ:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/g;->i:Landroid/view/View;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g;->i:Landroid/view/View;

    new-instance v1, Lcom/nd/commplatform/d/c/g$1;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/g$1;-><init>(Lcom/nd/commplatform/d/c/g;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->J:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/g;->j:Landroid/view/View;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g;->j:Landroid/view/View;

    new-instance v1, Lcom/nd/commplatform/d/c/g$c;

    invoke-direct {v1, p0, v3}, Lcom/nd/commplatform/d/c/g$c;-><init>(Lcom/nd/commplatform/d/c/g;Lcom/nd/commplatform/d/c/g$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->E:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/g;->k:Landroid/view/View;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g;->k:Landroid/view/View;

    new-instance v1, Lcom/nd/commplatform/d/c/g$e;

    invoke-direct {v1, p0, v3}, Lcom/nd/commplatform/d/c/g$e;-><init>(Lcom/nd/commplatform/d/c/g;Lcom/nd/commplatform/d/c/g$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->t:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/g;->l:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g;->l:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ok;->a(Landroid/widget/EditText;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->F:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/g;->m:Landroid/view/View;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g;->m:Landroid/view/View;

    new-instance v1, Lcom/nd/commplatform/d/c/g$d;

    invoke-direct {v1, p0, v3}, Lcom/nd/commplatform/d/c/g$d;-><init>(Lcom/nd/commplatform/d/c/g;Lcom/nd/commplatform/d/c/g$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->I:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/g;->n:Landroid/widget/EditText;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->w:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/g;->H:Landroid/widget/CheckBox;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->u:I

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/g;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->G:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/g;->I:Landroid/widget/LinearLayout;

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->v:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/g;->N:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g;->N:Landroid/widget/TextView;

    new-instance v1, Lcom/nd/commplatform/d/c/g$7;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/g$7;-><init>(Lcom/nd/commplatform/d/c/g;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/b;->n()Lcom/nd/commplatform/entry/NdLoginStatus;

    move-result-object v0

    sget-object v1, Lcom/nd/commplatform/entry/NdLoginStatus;->GuestLogin:Lcom/nd/commplatform/entry/NdLoginStatus;

    if-ne v0, v1, :cond_0

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->K:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g;->j:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/g;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/nd/commplatform/d/c/jo$f;->g:I

    invoke-static {v1, v2, v3}, Lcom/nd/commplatform/d/c/g;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method

.method protected a(ZI)V
    .locals 2

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/g;->clearFocus()V

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/b;->n()Lcom/nd/commplatform/entry/NdLoginStatus;

    move-result-object v0

    sget-object v1, Lcom/nd/commplatform/entry/NdLoginStatus;->GuestLogin:Lcom/nd/commplatform/entry/NdLoginStatus;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g;->O:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/g;->o()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/g;->O:Ljava/util/List;

    if-nez v0, :cond_1

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/g;->O:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/g;->O:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/nd/commplatform/d/c/g;->b(Ljava/util/List;)V

    :cond_2
    return-void

    :cond_3
    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/b;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/g;->n()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/nd/commplatform/d/c/g;->m()V

    goto :goto_0
.end method
