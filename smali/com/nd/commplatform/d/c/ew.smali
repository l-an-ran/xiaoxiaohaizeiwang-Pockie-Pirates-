.class public Lcom/nd/commplatform/d/c/ew;
.super Lcom/nd/commplatform/widget/NdFrameInnerContent;

# interfaces
.implements Lcom/nd/commplatform/d/c/hl;
.implements Lcom/nd/commplatform/d/c/hm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nd/commplatform/widget/NdFrameInnerContent;",
        "Lcom/nd/commplatform/d/c/hm",
        "<",
        "Lcom/nd/commplatform/entry/NdProductInfo;",
        ">;",
        "Lcom/nd/commplatform/d/c/hl;"
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "appId"

.field public static final b:Ljava/lang/String; = "cateId"

.field public static final c:Ljava/lang/String; = "feedType"

.field public static final d:Ljava/lang/String; = "packageId"


# instance fields
.field e:Lcom/nd/commplatform/d/c/hx;

.field private f:Lcom/nd/commplatform/d/c/hf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nd/commplatform/d/c/hf",
            "<",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<",
            "Lcom/nd/commplatform/entry/NdProductInfo;",
            ">;",
            "Lcom/nd/commplatform/entry/NdProductInfo;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/nd/commplatform/d/c/hi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nd/commplatform/d/c/hi",
            "<",
            "Lcom/nd/commplatform/entry/NdProductInfo;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/widget/ListView;

.field private i:I

.field private j:Ljava/lang/String;

.field private k:I

.field private l:I

.field private m:Lcom/nd/commplatform/entry/NdVirtualCurrencyBalance;

.field private n:Lcom/nd/commplatform/widget/NdListBlankView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/nd/commplatform/d/c/hf;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/hf;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ew;->f:Lcom/nd/commplatform/d/c/hf;

    new-instance v0, Lcom/nd/commplatform/d/c/hi;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/hi;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ew;->g:Lcom/nd/commplatform/d/c/hi;

    iput v1, p0, Lcom/nd/commplatform/d/c/ew;->i:I

    iput v1, p0, Lcom/nd/commplatform/d/c/ew;->k:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/nd/commplatform/d/c/hf;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/hf;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ew;->f:Lcom/nd/commplatform/d/c/hf;

    new-instance v0, Lcom/nd/commplatform/d/c/hi;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/hi;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ew;->g:Lcom/nd/commplatform/d/c/hi;

    iput v1, p0, Lcom/nd/commplatform/d/c/ew;->i:I

    iput v1, p0, Lcom/nd/commplatform/d/c/ew;->k:I

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/ew;Lcom/nd/commplatform/entry/NdVirtualCurrencyBalance;)Lcom/nd/commplatform/entry/NdVirtualCurrencyBalance;
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ew;->m:Lcom/nd/commplatform/entry/NdVirtualCurrencyBalance;

    return-object p1
.end method

.method public static a(ILjava/lang/String;II)V
    .locals 3

    new-instance v0, Lcom/nd/commplatform/d/c/bx;

    const/16 v1, 0x1b94

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/bx;-><init>(I)V

    const-string v1, "appId"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cateId"

    invoke-virtual {v0, v1, p1}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "feedType"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "packageId"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x25d

    invoke-static {v1, v0}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    return-void
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;II)V
    .locals 3

    new-instance v0, Lcom/nd/commplatform/d/c/bx;

    const/16 v1, 0x1b94

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/bx;-><init>(I)V

    const-string v1, "appId"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cateId"

    invoke-virtual {v0, v1, p2}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "feedType"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "packageId"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, -0x1

    const/16 v2, 0x25d

    invoke-static {p0, v1, v2, v0}, Lcom/nd/commplatform/d/c/cb;->a(Landroid/content/Context;IILcom/nd/commplatform/d/c/bx;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/ew;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/ew;->c()V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/ew;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/ew;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/ew;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/ew;->c(Z)V

    return-void
.end method

.method private a(Lcom/nd/commplatform/widget/NdUserListItem;)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ew;->e:Lcom/nd/commplatform/d/c/hx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ew;->e:Lcom/nd/commplatform/d/c/hx;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ew;->m:Lcom/nd/commplatform/entry/NdVirtualCurrencyBalance;

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/hx;->a(Ljava/lang/Object;Z)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/nd/commplatform/d/c/hx;

    new-instance v1, Lcom/nd/commplatform/d/c/ew$2;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/ew$2;-><init>(Lcom/nd/commplatform/d/c/ew;)V

    invoke-direct {v0, p1, v1}, Lcom/nd/commplatform/d/c/hx;-><init>(Lcom/nd/commplatform/widget/NdUserListItem;Lcom/nd/commplatform/d/c/hg;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ew;->e:Lcom/nd/commplatform/d/c/hx;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ew;->e:Lcom/nd/commplatform/d/c/hx;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ew;->m:Lcom/nd/commplatform/entry/NdVirtualCurrencyBalance;

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/hx;->a(Ljava/lang/Object;Z)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/ew;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ew;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/16 v1, 0xa

    const/16 v2, 0x20

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    const v3, 0xfeff

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->kD:I

    new-instance v2, Lcom/nd/commplatform/d/c/ew$4;

    invoke-direct {v2, p0}, Lcom/nd/commplatform/d/c/ew$4;-><init>(Lcom/nd/commplatform/d/c/ew;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private b()V
    .locals 4

    new-instance v0, Lcom/nd/commplatform/d/c/ew$1;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/ew$1;-><init>(Lcom/nd/commplatform/d/c/ew;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/nd/commplatform/d/c/ew;->b(Z)V

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ew;->a(Lcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;

    invoke-static {}, Lcom/nd/commplatform/d/c/of;->a()Lcom/nd/commplatform/d/c/of;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ew;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/nd/commplatform/d/c/of;->a(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;Z)V

    return-void
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/ew;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/ew;->m()V

    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/nd/commplatform/d/c/of;->a()Lcom/nd/commplatform/d/c/of;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/d/c/of;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ew;->n:Lcom/nd/commplatform/widget/NdListBlankView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ew;->n:Lcom/nd/commplatform/widget/NdListBlankView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/widget/NdListBlankView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/nd/commplatform/d/c/ew;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/ew;->o()V

    return-void
.end method

.method private c(Z)V
    .locals 3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ew;->n:Lcom/nd/commplatform/widget/NdListBlankView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ew;->h:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ew;->n:Lcom/nd/commplatform/widget/NdListBlankView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/widget/NdListBlankView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ew;->n:Lcom/nd/commplatform/widget/NdListBlankView;

    invoke-virtual {v0}, Lcom/nd/commplatform/widget/NdListBlankView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ew;->n:Lcom/nd/commplatform/widget/NdListBlankView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nd/commplatform/widget/NdListBlankView;->setVisibility(I)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ew;->n:Lcom/nd/commplatform/widget/NdListBlankView;

    sget v2, Lcom/nd/commplatform/d/c/jo$h;->mc:I

    invoke-virtual {v1, v2}, Lcom/nd/commplatform/widget/NdListBlankView;->a(I)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ew;->n:Lcom/nd/commplatform/widget/NdListBlankView;

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/widget/NdListBlankView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ew;->n:Lcom/nd/commplatform/widget/NdListBlankView;

    invoke-virtual {v0}, Lcom/nd/commplatform/widget/NdListBlankView;->invalidate()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/nd/commplatform/d/c/ew;)Lcom/nd/commplatform/entry/NdVirtualCurrencyBalance;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ew;->m:Lcom/nd/commplatform/entry/NdVirtualCurrencyBalance;

    return-object v0
.end method

.method static synthetic e(Lcom/nd/commplatform/d/c/ew;)Lcom/nd/commplatform/d/c/hf;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ew;->f:Lcom/nd/commplatform/d/c/hf;

    return-object v0
.end method

.method private m()V
    .locals 4

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ew;->f:Lcom/nd/commplatform/d/c/hf;

    invoke-virtual {v0, p0}, Lcom/nd/commplatform/d/c/hf;->a(Lcom/nd/commplatform/d/c/hl;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ew;->f:Lcom/nd/commplatform/d/c/hf;

    invoke-super {p0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/ew;->h:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/nd/commplatform/d/c/ew;->g:Lcom/nd/commplatform/d/c/hi;

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/nd/commplatform/d/c/hf;->a(Landroid/content/Context;Landroid/widget/ListView;Lcom/nd/commplatform/d/c/hm;Lcom/nd/commplatform/d/c/hj;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ew;->f:Lcom/nd/commplatform/d/c/hf;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/hf;->c()V

    return-void
.end method

.method private n()V
    .locals 3

    const/16 v2, 0x1b94

    invoke-static {v2}, Lcom/nd/commplatform/d/c/cb;->b(I)Lcom/nd/commplatform/d/c/bx;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v0, "appId"

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/nd/commplatform/d/c/ew;->i:I

    :cond_0
    const-string v0, "cateId"

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ew;->j:Ljava/lang/String;

    const-string v0, "feedType"

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/nd/commplatform/d/c/ew;->k:I

    :cond_1
    const-string v0, "packageId"

    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/nd/commplatform/d/c/ew;->l:I

    :cond_2
    invoke-static {v2}, Lcom/nd/commplatform/d/c/cb;->c(I)Lcom/nd/commplatform/d/c/bx;

    return-void
.end method

.method private o()V
    .locals 4

    new-instance v0, Lcom/nd/commplatform/d/c/ew$3;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/ew$3;-><init>(Lcom/nd/commplatform/d/c/ew;)V

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/ew;->a(Lcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/nd/commplatform/d/c/ew;->b(Z)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    iget v2, p0, Lcom/nd/commplatform/d/c/ew;->i:I

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ew;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/nd/commplatform/d/c/a;->e(ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->bA:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/nd/commplatform/widget/NdFrameInnerContent;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-boolean v1, p0, Lcom/nd/commplatform/d/c/ew;->p:Z

    iput-boolean v1, p0, Lcom/nd/commplatform/d/c/ew;->q:Z

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->mb:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ew;->r:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/ew;->s:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/ew;->v:Z

    iput-boolean v2, p0, Lcom/nd/commplatform/d/c/ew;->w:Z

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 1

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->ig:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ew;->h:Landroid/widget/ListView;

    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 1

    check-cast p1, Lcom/nd/commplatform/widget/NdListBlankView;

    sget v0, Lcom/nd/commplatform/d/c/jo$h;->mc:I

    invoke-virtual {p1, v0}, Lcom/nd/commplatform/widget/NdListBlankView;->a(I)V

    return-void
.end method

.method public a(Landroid/view/View;IIZ)V
    .locals 0

    check-cast p1, Lcom/nd/commplatform/widget/NdListViewFooter;

    invoke-virtual {p1, p4}, Lcom/nd/commplatform/widget/NdListViewFooter;->a(Z)V

    return-void
.end method

.method public a(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/nd/commplatform/d/c/hh;)V
    .locals 0

    check-cast p1, Lcom/nd/commplatform/d/c/ev;

    invoke-virtual {p1}, Lcom/nd/commplatform/d/c/ev;->a()V

    return-void
.end method

.method public a(Lcom/nd/commplatform/d/c/hh;Lcom/nd/commplatform/entry/NdProductInfo;)V
    .locals 1

    check-cast p1, Lcom/nd/commplatform/d/c/ev;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ew;->m:Lcom/nd/commplatform/entry/NdVirtualCurrencyBalance;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdVirtualCurrencyBalance;->getCurrency()Lcom/nd/commplatform/entry/NdVirtualCurrency;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/nd/commplatform/d/c/ev;->a(Lcom/nd/commplatform/entry/NdProductInfo;Lcom/nd/commplatform/entry/NdVirtualCurrency;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/nd/commplatform/d/c/hh;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/nd/commplatform/entry/NdProductInfo;

    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/ew;->a(Lcom/nd/commplatform/d/c/hh;Lcom/nd/commplatform/entry/NdProductInfo;)V

    return-void
.end method

.method public a(Lcom/nd/commplatform/entry/NdProductInfo;Lcom/nd/commplatform/d/c/hh;)V
    .locals 2

    iget v0, p0, Lcom/nd/commplatform/d/c/ew;->i:I

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ew;->m:Lcom/nd/commplatform/entry/NdVirtualCurrencyBalance;

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdVirtualCurrencyBalance;->getCurrency()Lcom/nd/commplatform/entry/NdVirtualCurrency;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/nd/commplatform/d/c/eu;->a(ILcom/nd/commplatform/entry/NdProductInfo;Lcom/nd/commplatform/entry/NdVirtualCurrency;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/nd/commplatform/d/c/hh;)V
    .locals 0

    check-cast p1, Lcom/nd/commplatform/entry/NdProductInfo;

    invoke-virtual {p0, p1, p2}, Lcom/nd/commplatform/d/c/ew;->a(Lcom/nd/commplatform/entry/NdProductInfo;Lcom/nd/commplatform/d/c/hh;)V

    return-void
.end method

.method protected a(ZI)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/ew;->n()V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/ew;->b()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/nd/commplatform/d/c/of;->a()Lcom/nd/commplatform/d/c/of;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/of;->e()Lcom/nd/commplatform/entry/NdVirtualCurrencyBalance;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ew;->m:Lcom/nd/commplatform/entry/NdVirtualCurrencyBalance;

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nd/commplatform/d/c/ew;->a(Lcom/nd/commplatform/widget/NdUserListItem;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ew;->f:Lcom/nd/commplatform/d/c/hf;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/hf;->f()V

    goto :goto_0
.end method

.method public b(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->M:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/widget/NdListBlankView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/ew;->n:Lcom/nd/commplatform/widget/NdListBlankView;

    return-object v0
.end method

.method public b(Landroid/view/View;)Lcom/nd/commplatform/d/c/hh;
    .locals 1

    new-instance v0, Lcom/nd/commplatform/d/c/ev;

    check-cast p1, Lcom/nd/commplatform/widget/goods/NdGoodsListItem;

    invoke-direct {v0, p1}, Lcom/nd/commplatform/d/c/ev;-><init>(Lcom/nd/commplatform/widget/goods/NdGoodsListItem;)V

    return-object v0
.end method

.method public b(I)V
    .locals 8

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    new-instance v7, Lcom/nd/commplatform/d/c/ew$5;

    invoke-direct {v7, p0}, Lcom/nd/commplatform/d/c/ew$5;-><init>(Lcom/nd/commplatform/d/c/ew;)V

    invoke-virtual {p0, v7}, Lcom/nd/commplatform/d/c/ew;->a(Lcom/nd/commplatform/NdCallbackListener;)Lcom/nd/commplatform/NdCallbackListener;

    new-instance v5, Lcom/nd/commplatform/entry/NdPagination;

    invoke-direct {v5}, Lcom/nd/commplatform/entry/NdPagination;-><init>()V

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v5, v1}, Lcom/nd/commplatform/entry/NdPagination;->setPageIndex(I)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/ew;->g:Lcom/nd/commplatform/d/c/hi;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/hi;->f()I

    move-result v1

    invoke-virtual {v5, v1}, Lcom/nd/commplatform/entry/NdPagination;->setPageSize(I)V

    iget v1, p0, Lcom/nd/commplatform/d/c/ew;->i:I

    iget-object v2, p0, Lcom/nd/commplatform/d/c/ew;->j:Ljava/lang/String;

    iget v3, p0, Lcom/nd/commplatform/d/c/ew;->k:I

    iget v4, p0, Lcom/nd/commplatform/d/c/ew;->l:I

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ew;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual/range {v0 .. v7}, Lcom/nd/commplatform/d/c/a;->a(ILjava/lang/String;IILcom/nd/commplatform/entry/NdPagination;Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

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

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/nd/commplatform/widget/NdListBlankView;->b(I)V

    return-void
.end method

.method public d(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->bB:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/widget/goods/NdGoodsListItem;

    return-object v0
.end method

.method public e(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 5

    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ew;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->bk:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/widget/NdUserListItem;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/ew;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v2, Lcom/nd/commplatform/d/c/jo$d;->r:I

    invoke-virtual {v0, v2}, Lcom/nd/commplatform/widget/NdUserListItem;->setBackgroundResource(I)V

    invoke-direct {p0, v0}, Lcom/nd/commplatform/d/c/ew;->a(Lcom/nd/commplatform/widget/NdUserListItem;)V

    return-object v1
.end method
