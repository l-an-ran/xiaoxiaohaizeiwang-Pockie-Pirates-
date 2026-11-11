.class public Lcom/nd/commplatform/uap/widget/NdNonScrollListAdapter;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nd/commplatform/uap/widget/NdNonScrollListAdapter$NdNonScrollListItemAdapter;
    }
.end annotation


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Lcom/nd/commplatform/uap/widget/NdNonScrollListAdapter$NdNonScrollListItemAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ILcom/nd/commplatform/uap/widget/NdNonScrollListAdapter$NdNonScrollListItemAdapter;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "resouceId"    # I
    .param p4, "itemAdapter"    # Lcom/nd/commplatform/uap/widget/NdNonScrollListAdapter$NdNonScrollListItemAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<*>;I",
            "Lcom/nd/commplatform/uap/widget/NdNonScrollListAdapter$NdNonScrollListItemAdapter;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/nd/commplatform/uap/widget/NdNonScrollListAdapter;->a:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/nd/commplatform/uap/widget/NdNonScrollListAdapter;->b:Ljava/util/List;

    iput p3, p0, Lcom/nd/commplatform/uap/widget/NdNonScrollListAdapter;->c:I

    iput-object p4, p0, Lcom/nd/commplatform/uap/widget/NdNonScrollListAdapter;->d:Lcom/nd/commplatform/uap/widget/NdNonScrollListAdapter$NdNonScrollListItemAdapter;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/uap/widget/NdNonScrollListAdapter;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/uap/widget/NdNonScrollListAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/uap/widget/NdNonScrollListAdapter;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/uap/widget/NdNonScrollListAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    if-nez p2, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/nd/commplatform/uap/widget/NdNonScrollListAdapter;->a:Landroid/view/LayoutInflater;

    iget v2, p0, Lcom/nd/commplatform/uap/widget/NdNonScrollListAdapter;->c:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    iget-object v1, p0, Lcom/nd/commplatform/uap/widget/NdNonScrollListAdapter;->d:Lcom/nd/commplatform/uap/widget/NdNonScrollListAdapter$NdNonScrollListItemAdapter;

    invoke-interface {v1, p2}, Lcom/nd/commplatform/uap/widget/NdNonScrollListAdapter$NdNonScrollListItemAdapter;->a(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/nd/commplatform/uap/widget/NdNonScrollListAdapter;->d:Lcom/nd/commplatform/uap/widget/NdNonScrollListAdapter$NdNonScrollListItemAdapter;

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/nd/commplatform/uap/widget/NdNonScrollListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/uap/widget/NdNonScrollListAdapter;->d:Lcom/nd/commplatform/uap/widget/NdNonScrollListAdapter$NdNonScrollListItemAdapter;

    invoke-interface {v2, v0, v1}, Lcom/nd/commplatform/uap/widget/NdNonScrollListAdapter$NdNonScrollListItemAdapter;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-object p2

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
