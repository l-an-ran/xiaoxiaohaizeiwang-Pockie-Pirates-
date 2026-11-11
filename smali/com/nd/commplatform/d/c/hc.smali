.class public Lcom/nd/commplatform/d/c/hc;
.super Lcom/nd/commplatform/d/c/hh;


# static fields
.field private static final a:Ljava/lang/String; = "NdLeaderBoardCategoryListItemHolder"


# instance fields
.field private b:Lcom/nd/commplatform/widget/NdCategoryPlusImageItem;

.field private c:Lcom/nd/commplatform/NdCallbackListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdIcon;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/nd/commplatform/entry/NdRankInfo;


# direct methods
.method public constructor <init>(Lcom/nd/commplatform/widget/NdCategoryPlusImageItem;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/hh;-><init>()V

    iput-object p1, p0, Lcom/nd/commplatform/d/c/hc;->b:Lcom/nd/commplatform/widget/NdCategoryPlusImageItem;

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/hc;)Lcom/nd/commplatform/entry/NdRankInfo;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hc;->d:Lcom/nd/commplatform/entry/NdRankInfo;

    return-object v0
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/hc;)Lcom/nd/commplatform/widget/NdCategoryPlusImageItem;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hc;->b:Lcom/nd/commplatform/widget/NdCategoryPlusImageItem;

    return-object v0
.end method

.method private c()V
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hc;->c:Lcom/nd/commplatform/NdCallbackListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hc;->c:Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {v0}, Lcom/nd/commplatform/NdCallbackListener;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/hc;->c:Lcom/nd/commplatform/NdCallbackListener;

    :cond_0
    return-void
.end method

.method private f()V
    .locals 6

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hc;->d:Lcom/nd/commplatform/entry/NdRankInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdRankInfo;->getLeaderBoardId()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hc;->d:Lcom/nd/commplatform/entry/NdRankInfo;

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdRankInfo;->getCheckSum()Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez v2, :cond_1

    const-string v2, ""

    :cond_1
    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    new-instance v3, Lcom/nd/commplatform/d/c/hc$1;

    invoke-direct {v3, p0}, Lcom/nd/commplatform/d/c/hc$1;-><init>(Lcom/nd/commplatform/d/c/hc;)V

    iput-object v3, p0, Lcom/nd/commplatform/d/c/hc;->c:Lcom/nd/commplatform/NdCallbackListener;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/nd/commplatform/d/c/hc;->b:Lcom/nd/commplatform/widget/NdCategoryPlusImageItem;

    invoke-virtual {v4}, Lcom/nd/commplatform/widget/NdCategoryPlusImageItem;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/nd/commplatform/d/c/hc;->c:Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/a;->d(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/hc;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/hc;->d:Lcom/nd/commplatform/entry/NdRankInfo;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hc;->b:Lcom/nd/commplatform/widget/NdCategoryPlusImageItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdCategoryPlusImageItem;->a:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/hc;->b()V

    return-void
.end method

.method public a(Lcom/nd/commplatform/entry/NdRankInfo;)V
    .locals 2

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/hc;->c()V

    iput-object p1, p0, Lcom/nd/commplatform/d/c/hc;->d:Lcom/nd/commplatform/entry/NdRankInfo;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hc;->b:Lcom/nd/commplatform/widget/NdCategoryPlusImageItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdCategoryPlusImageItem;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/hc;->d:Lcom/nd/commplatform/entry/NdRankInfo;

    invoke-virtual {v1}, Lcom/nd/commplatform/entry/NdRankInfo;->getLeaderBoardName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/hc;->b()V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/hc;->f()V

    return-void
.end method

.method protected b()V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hc;->b:Lcom/nd/commplatform/widget/NdCategoryPlusImageItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdCategoryPlusImageItem;->b:Landroid/widget/ImageView;

    sget v1, Lcom/nd/commplatform/d/c/jo$d;->aE:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
