.class public Lcom/nd/commplatform/uap/widget/NdNonScrollListView;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nd/commplatform/uap/widget/NdNonScrollListView$1;,
        Lcom/nd/commplatform/uap/widget/NdNonScrollListView$a;
    }
.end annotation


# instance fields
.field private a:Lcom/nd/commplatform/uap/widget/NdNonScrollListAdapter;

.field private b:Landroid/view/View$OnClickListener;

.field private c:Lcom/nd/commplatform/uap/widget/NdNonScrollListView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/nd/commplatform/uap/widget/NdNonScrollListView$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nd/commplatform/uap/widget/NdNonScrollListView$a;-><init>(Lcom/nd/commplatform/uap/widget/NdNonScrollListView;Lcom/nd/commplatform/uap/widget/NdNonScrollListView$1;)V

    iput-object v0, p0, Lcom/nd/commplatform/uap/widget/NdNonScrollListView;->c:Lcom/nd/commplatform/uap/widget/NdNonScrollListView$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/nd/commplatform/uap/widget/NdNonScrollListView$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nd/commplatform/uap/widget/NdNonScrollListView$a;-><init>(Lcom/nd/commplatform/uap/widget/NdNonScrollListView;Lcom/nd/commplatform/uap/widget/NdNonScrollListView$1;)V

    iput-object v0, p0, Lcom/nd/commplatform/uap/widget/NdNonScrollListView;->c:Lcom/nd/commplatform/uap/widget/NdNonScrollListView$a;

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/uap/widget/NdNonScrollListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/uap/widget/NdNonScrollListView;->d()V

    return-void
.end method

.method private c()V
    .locals 4

    invoke-virtual {p0}, Lcom/nd/commplatform/uap/widget/NdNonScrollListView;->removeAllViews()V

    iget-object v0, p0, Lcom/nd/commplatform/uap/widget/NdNonScrollListView;->a:Lcom/nd/commplatform/uap/widget/NdNonScrollListAdapter;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/uap/widget/NdNonScrollListView;->a:Lcom/nd/commplatform/uap/widget/NdNonScrollListAdapter;

    iget-object v1, p0, Lcom/nd/commplatform/uap/widget/NdNonScrollListView;->c:Lcom/nd/commplatform/uap/widget/NdNonScrollListView$a;

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/uap/widget/NdNonScrollListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iget-object v0, p0, Lcom/nd/commplatform/uap/widget/NdNonScrollListView;->a:Lcom/nd/commplatform/uap/widget/NdNonScrollListAdapter;

    invoke-virtual {v0}, Lcom/nd/commplatform/uap/widget/NdNonScrollListAdapter;->getCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/nd/commplatform/uap/widget/NdNonScrollListView;->a:Lcom/nd/commplatform/uap/widget/NdNonScrollListAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, p0}, Lcom/nd/commplatform/uap/widget/NdNonScrollListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/nd/commplatform/uap/widget/NdNonScrollListView;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v2, v0}, Lcom/nd/commplatform/uap/widget/NdNonScrollListView;->addView(Landroid/view/View;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private d()V
    .locals 4

    iget-object v0, p0, Lcom/nd/commplatform/uap/widget/NdNonScrollListView;->a:Lcom/nd/commplatform/uap/widget/NdNonScrollListAdapter;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/nd/commplatform/uap/widget/NdNonScrollListView;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/nd/commplatform/uap/widget/NdNonScrollListView;->a:Lcom/nd/commplatform/uap/widget/NdNonScrollListAdapter;

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/uap/widget/NdNonScrollListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v0, v3, p0}, Lcom/nd/commplatform/uap/widget/NdNonScrollListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/uap/widget/NdNonScrollListView;->b:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public a(Lcom/nd/commplatform/uap/widget/NdNonScrollListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/uap/widget/NdNonScrollListView;->a:Lcom/nd/commplatform/uap/widget/NdNonScrollListAdapter;

    invoke-direct {p0}, Lcom/nd/commplatform/uap/widget/NdNonScrollListView;->c()V

    return-void
.end method

.method public b()Lcom/nd/commplatform/uap/widget/NdNonScrollListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/uap/widget/NdNonScrollListView;->a:Lcom/nd/commplatform/uap/widget/NdNonScrollListAdapter;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/uap/widget/NdNonScrollListView;->setOrientation(I)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    iput-object p1, p0, Lcom/nd/commplatform/uap/widget/NdNonScrollListView;->b:Landroid/view/View$OnClickListener;

    return-void
.end method
