.class public Lcom/nd/commplatform/friend/FriendHeaderListView;
.super Landroid/widget/ListView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nd/commplatform/friend/FriendHeaderListView$a;
    }
.end annotation


# static fields
.field private static final b:I = 0xff


# instance fields
.field private a:Ljava/lang/String;

.field private c:Lcom/nd/commplatform/friend/FriendHeaderListView$a;

.field private d:Landroid/view/View;

.field private e:Z

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const-string v0, "PinnedHeaderListView"

    iput-object v0, p0, Lcom/nd/commplatform/friend/FriendHeaderListView;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nd/commplatform/friend/FriendHeaderListView;->d:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "PinnedHeaderListView"

    iput-object v0, p0, Lcom/nd/commplatform/friend/FriendHeaderListView;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nd/commplatform/friend/FriendHeaderListView;->d:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "PinnedHeaderListView"

    iput-object v0, p0, Lcom/nd/commplatform/friend/FriendHeaderListView;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nd/commplatform/friend/FriendHeaderListView;->d:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 6

    const/16 v0, 0xff

    const/4 v5, 0x1

    const/4 v2, 0x0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/nd/commplatform/friend/FriendHeaderListView;->d:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nd/commplatform/friend/FriendHeaderListView;->c:Lcom/nd/commplatform/friend/FriendHeaderListView$a;

    invoke-interface {v1, p1}, Lcom/nd/commplatform/friend/FriendHeaderListView$a;->a(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput-boolean v2, p0, Lcom/nd/commplatform/friend/FriendHeaderListView;->e:Z

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/nd/commplatform/friend/FriendHeaderListView;->c:Lcom/nd/commplatform/friend/FriendHeaderListView$a;

    iget-object v3, p0, Lcom/nd/commplatform/friend/FriendHeaderListView;->d:Landroid/view/View;

    invoke-interface {v1, v3, p1, v0}, Lcom/nd/commplatform/friend/FriendHeaderListView$a;->a(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/nd/commplatform/friend/FriendHeaderListView;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nd/commplatform/friend/FriendHeaderListView;->d:Landroid/view/View;

    iget v1, p0, Lcom/nd/commplatform/friend/FriendHeaderListView;->f:I

    iget v3, p0, Lcom/nd/commplatform/friend/FriendHeaderListView;->g:I

    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/view/View;->layout(IIII)V

    :cond_2
    iput-boolean v5, p0, Lcom/nd/commplatform/friend/FriendHeaderListView;->e:Z

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/nd/commplatform/friend/FriendHeaderListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/nd/commplatform/friend/FriendHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget-object v3, p0, Lcom/nd/commplatform/friend/FriendHeaderListView;->d:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge v1, v3, :cond_4

    sub-int/2addr v1, v3

    add-int v0, v3, v1

    mul-int/lit16 v0, v0, 0xff

    iget-object v4, p0, Lcom/nd/commplatform/friend/FriendHeaderListView;->d:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/2addr v0, v3

    :goto_1
    iget-object v3, p0, Lcom/nd/commplatform/friend/FriendHeaderListView;->c:Lcom/nd/commplatform/friend/FriendHeaderListView$a;

    iget-object v4, p0, Lcom/nd/commplatform/friend/FriendHeaderListView;->d:Landroid/view/View;

    invoke-interface {v3, v4, p1, v0}, Lcom/nd/commplatform/friend/FriendHeaderListView$a;->a(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/nd/commplatform/friend/FriendHeaderListView;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/nd/commplatform/friend/FriendHeaderListView;->d:Landroid/view/View;

    iget v3, p0, Lcom/nd/commplatform/friend/FriendHeaderListView;->f:I

    iget v4, p0, Lcom/nd/commplatform/friend/FriendHeaderListView;->g:I

    add-int/2addr v4, v1

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/view/View;->layout(IIII)V

    :cond_3
    iput-boolean v5, p0, Lcom/nd/commplatform/friend/FriendHeaderListView;->e:Z

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/nd/commplatform/friend/FriendHeaderListView;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/nd/commplatform/friend/FriendHeaderListView;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/friend/FriendHeaderListView;->setFadingEdgeLength(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/nd/commplatform/friend/FriendHeaderListView;->requestLayout()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/nd/commplatform/friend/FriendHeaderListView;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/friend/FriendHeaderListView;->d:Landroid/view/View;

    invoke-virtual {p0}, Lcom/nd/commplatform/friend/FriendHeaderListView;->getDrawingTime()J

    move-result-wide v1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/nd/commplatform/friend/FriendHeaderListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v3, 0x0

    invoke-super/range {p0 .. p5}, Landroid/widget/ListView;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/nd/commplatform/friend/FriendHeaderListView;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/friend/FriendHeaderListView;->d:Landroid/view/View;

    iget v1, p0, Lcom/nd/commplatform/friend/FriendHeaderListView;->f:I

    iget v2, p0, Lcom/nd/commplatform/friend/FriendHeaderListView;->g:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {p0}, Lcom/nd/commplatform/friend/FriendHeaderListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/friend/FriendHeaderListView;->a(I)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    iget-object v0, p0, Lcom/nd/commplatform/friend/FriendHeaderListView;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/friend/FriendHeaderListView;->d:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/nd/commplatform/friend/FriendHeaderListView;->measureChild(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/nd/commplatform/friend/FriendHeaderListView;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/nd/commplatform/friend/FriendHeaderListView;->f:I

    iget-object v0, p0, Lcom/nd/commplatform/friend/FriendHeaderListView;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/nd/commplatform/friend/FriendHeaderListView;->g:I

    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Lcom/nd/commplatform/friend/FriendHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    check-cast p1, Lcom/nd/commplatform/friend/FriendHeaderListView$a;

    .end local p1    # "adapter":Landroid/widget/ListAdapter;
    iput-object p1, p0, Lcom/nd/commplatform/friend/FriendHeaderListView;->c:Lcom/nd/commplatform/friend/FriendHeaderListView$a;

    return-void
.end method
