.class public Lcom/nd/commplatform/d/c/dl;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/Filterable;
.implements Landroid/widget/SectionIndexer;
.implements Lcom/nd/commplatform/friend/FriendHeaderListView$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nd/commplatform/d/c/dl$a;,
        Lcom/nd/commplatform/d/c/dl$b;,
        Lcom/nd/commplatform/d/c/dl$d;,
        Lcom/nd/commplatform/d/c/dl$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;",
        "Landroid/widget/Filterable;",
        "Landroid/widget/SectionIndexer;",
        "Landroid/widget/AbsListView$OnScrollListener;",
        "Lcom/nd/commplatform/friend/FriendHeaderListView$a;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String; = "NdFriendListAdapter"


# instance fields
.field private e:Lcom/nd/commplatform/d/c/dn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nd/commplatform/d/c/dn",
            "<TT;>;"
        }
    .end annotation
.end field

.field private f:Lcom/nd/commplatform/d/c/dl$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nd/commplatform/d/c/dl",
            "<TT;>.b<TT;>;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:Landroid/content/Context;

.field private i:Lcom/nd/commplatform/d/c/dl$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nd/commplatform/d/c/dl$c",
            "<TT;>;"
        }
    .end annotation
.end field

.field private j:Lcom/nd/commplatform/d/c/dl$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nd/commplatform/d/c/dl",
            "<TT;>.a;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dl;->g:Ljava/lang/String;

    iput-object p1, p0, Lcom/nd/commplatform/d/c/dl;->h:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/dl;)Lcom/nd/commplatform/d/c/dn;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dl;->e:Lcom/nd/commplatform/d/c/dn;

    return-object v0
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/dl;Lcom/nd/commplatform/d/c/dn;)Lcom/nd/commplatform/d/c/dn;
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/dl;->e:Lcom/nd/commplatform/d/c/dn;

    return-object p1
.end method

.method public static a(Ljava/lang/CharSequence;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/dl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dl;->h:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/nd/commplatform/d/c/dl;)Lcom/nd/commplatform/d/c/dl$c;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dl;->i:Lcom/nd/commplatform/d/c/dl$c;

    return-object v0
.end method


# virtual methods
.method public a(I)I
    .locals 2

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/dl;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/dl;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/nd/commplatform/d/c/dl;->getSectionForPosition(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/d/c/dl;->getPositionForSection(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Landroid/view/View;II)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/dl;->i:Lcom/nd/commplatform/d/c/dl$c;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dl;->i:Lcom/nd/commplatform/d/c/dl$c;

    invoke-interface {v0, p1}, Lcom/nd/commplatform/d/c/dl$c;->b(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p2}, Lcom/nd/commplatform/d/c/dl;->getSectionForPosition(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/dl;->getSections()[Ljava/lang/Object;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/dl;->i:Lcom/nd/commplatform/d/c/dl$c;

    invoke-interface {v2, v0, v1, p3}, Lcom/nd/commplatform/d/c/dl$c;->a(Ljava/lang/Object;Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public a(Lcom/nd/commplatform/d/c/dl$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nd/commplatform/d/c/dl$c",
            "<TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nd/commplatform/d/c/dl;->i:Lcom/nd/commplatform/d/c/dl$c;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    iget-object v1, p0, Lcom/nd/commplatform/d/c/dl;->g:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lcom/nd/commplatform/d/c/dl;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/dl;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/dl;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public a([Ljava/lang/Object;Lcom/nd/commplatform/d/c/dk;Lcom/nd/commplatform/d/c/dl$d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;",
            "Lcom/nd/commplatform/d/c/dk",
            "<TT;>;",
            "Lcom/nd/commplatform/d/c/dl$d",
            "<TT;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/dl;->c()V

    new-instance v0, Lcom/nd/commplatform/d/c/dl$b;

    invoke-direct {v0, p0, p3}, Lcom/nd/commplatform/d/c/dl$b;-><init>(Lcom/nd/commplatform/d/c/dl;Lcom/nd/commplatform/d/c/dl$d;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dl;->f:Lcom/nd/commplatform/d/c/dl$b;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dl;->f:Lcom/nd/commplatform/d/c/dl$b;

    invoke-virtual {v0, p1, p2}, Lcom/nd/commplatform/d/c/dl$b;->a([Ljava/lang/Object;Lcom/nd/commplatform/d/c/dk;)V

    return-void
.end method

.method public a()Z
    .locals 2

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/dl;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/dl;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/dl;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dl;->e:Lcom/nd/commplatform/d/c/dn;

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/d/c/dn;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dl;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/dl;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dl;->f:Lcom/nd/commplatform/d/c/dl$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dl;->f:Lcom/nd/commplatform/d/c/dl$b;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/dl$b;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dl;->f:Lcom/nd/commplatform/d/c/dl$b;

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dl;->e:Lcom/nd/commplatform/d/c/dn;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/dl;->e:Lcom/nd/commplatform/d/c/dn;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/dn;->e()I

    move-result v0

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dl;->j:Lcom/nd/commplatform/d/c/dl$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nd/commplatform/d/c/dl$a;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/dl$a;-><init>(Lcom/nd/commplatform/d/c/dl;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/dl;->j:Lcom/nd/commplatform/d/c/dl$a;

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/dl;->j:Lcom/nd/commplatform/d/c/dl$a;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .local p0, "this":Lcom/nd/commplatform/d/c/dl;, "Lcom/nd/commplatform/d/c/dl<TT;>;"
    iget-object v0, p0, Lcom/nd/commplatform/d/c/dl;->e:Lcom/nd/commplatform/d/c/dn;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/dl;->e:Lcom/nd/commplatform/d/c/dn;

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/d/c/dn;->a(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .local p0, "this":Lcom/nd/commplatform/d/c/dl;, "Lcom/nd/commplatform/d/c/dl<TT;>;"
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPositionForSection(I)I
    .locals 3
    .param p1, "section"    # I

    .prologue
    .local p0, "this":Lcom/nd/commplatform/d/c/dl;, "Lcom/nd/commplatform/d/c/dl<TT;>;"
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/nd/commplatform/d/c/dl;->e:Lcom/nd/commplatform/d/c/dn;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/nd/commplatform/d/c/dl;->e:Lcom/nd/commplatform/d/c/dn;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/dn;->f()[Lcom/nd/commplatform/d/c/dn$a;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    if-le v2, p1, :cond_0

    aget-object v0, v1, p1

    iget v0, v0, Lcom/nd/commplatform/d/c/dn$a;->b:I

    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 5
    .param p1, "position"    # I

    .prologue
    .local p0, "this":Lcom/nd/commplatform/d/c/dl;, "Lcom/nd/commplatform/d/c/dl<TT;>;"
    const/4 v1, -0x1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dl;->e:Lcom/nd/commplatform/d/c/dn;

    if-nez v0, :cond_1

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/dl;->e:Lcom/nd/commplatform/d/c/dn;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/dn;->f()[Lcom/nd/commplatform/d/c/dn$a;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget-object v3, v2, v0

    iget v4, v3, Lcom/nd/commplatform/d/c/dn$a;->b:I

    if-lt p1, v4, :cond_2

    iget v4, v3, Lcom/nd/commplatform/d/c/dn$a;->b:I

    iget v3, v3, Lcom/nd/commplatform/d/c/dn$a;->c:I

    add-int/2addr v3, v4

    if-ge p1, v3, :cond_2

    move v1, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/dl;->e:Lcom/nd/commplatform/d/c/dn;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/nd/commplatform/d/c/dl;->e:Lcom/nd/commplatform/d/c/dn;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/dn;->f()[Lcom/nd/commplatform/d/c/dn$a;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_2

    aget-object v3, v1, v0

    iget-char v3, v3, Lcom/nd/commplatform/d/c/dn$a;->a:C

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .local p0, "this":Lcom/nd/commplatform/d/c/dl;, "Lcom/nd/commplatform/d/c/dl<TT;>;"
    const/4 v1, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dl;->i:Lcom/nd/commplatform/d/c/dl$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/dl;->i:Lcom/nd/commplatform/d/c/dl$c;

    iget-object v2, p0, Lcom/nd/commplatform/d/c/dl;->h:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/nd/commplatform/d/c/dl$c;->a(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object p2

    .end local p2    # "convertView":Landroid/view/View;
    iget-object v0, p0, Lcom/nd/commplatform/d/c/dl;->i:Lcom/nd/commplatform/d/c/dl$c;

    invoke-interface {v0, p2}, Lcom/nd/commplatform/d/c/dl$c;->a(Landroid/view/View;)Lcom/nd/commplatform/d/c/gw;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/gw;

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/d/c/gw;->a(I)V

    invoke-virtual {p0, p1}, Lcom/nd/commplatform/d/c/dl;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/dl;->b()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0, p1}, Lcom/nd/commplatform/d/c/dl;->getSectionForPosition(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/nd/commplatform/d/c/dl;->getPositionForSection(I)I

    move-result v3

    if-ne v3, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    iget-object v3, p0, Lcom/nd/commplatform/d/c/dl;->i:Lcom/nd/commplatform/d/c/dl$c;

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/nd/commplatform/d/c/dl;->i:Lcom/nd/commplatform/d/c/dl$c;

    invoke-virtual {p0, p1}, Lcom/nd/commplatform/d/c/dl;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v2, v4, v1}, Lcom/nd/commplatform/d/c/dl$c;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    :goto_0
    return-object p2

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .local p0, "this":Lcom/nd/commplatform/d/c/dl;, "Lcom/nd/commplatform/d/c/dl<TT;>;"
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/d/c/gw;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/dl;->i:Lcom/nd/commplatform/d/c/dl$c;

    invoke-interface {v1, v0}, Lcom/nd/commplatform/d/c/dl$c;->a(Lcom/nd/commplatform/d/c/gw;)V

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .local p0, "this":Lcom/nd/commplatform/d/c/dl;, "Lcom/nd/commplatform/d/c/dl<TT;>;"
    check-cast p1, Lcom/nd/commplatform/friend/FriendHeaderListView;

    .end local p1    # "view":Landroid/widget/AbsListView;
    invoke-virtual {p1, p2}, Lcom/nd/commplatform/friend/FriendHeaderListView;->a(I)V

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .local p0, "this":Lcom/nd/commplatform/d/c/dl;, "Lcom/nd/commplatform/d/c/dl<TT;>;"
    return-void
.end method
