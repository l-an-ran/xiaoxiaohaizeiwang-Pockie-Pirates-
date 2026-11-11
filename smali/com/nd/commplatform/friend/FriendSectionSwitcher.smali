.class public Lcom/nd/commplatform/friend/FriendSectionSwitcher;
.super Landroid/view/ViewGroup;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nd/commplatform/friend/FriendSectionSwitcher$a;
    }
.end annotation


# static fields
.field private static final c:I = 0x1b

.field private static final e:Ljava/lang/String; = "FriendSectionSwitcher"


# instance fields
.field a:I

.field private b:[Ljava/lang/String;

.field private d:Lcom/nd/commplatform/friend/FriendSectionSwitcher$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/nd/commplatform/friend/FriendSectionSwitcher;->a:I

    invoke-direct {p0}, Lcom/nd/commplatform/friend/FriendSectionSwitcher;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/nd/commplatform/friend/FriendSectionSwitcher;->a:I

    invoke-direct {p0}, Lcom/nd/commplatform/friend/FriendSectionSwitcher;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/nd/commplatform/friend/FriendSectionSwitcher;->a:I

    invoke-direct {p0}, Lcom/nd/commplatform/friend/FriendSectionSwitcher;->a()V

    return-void
.end method

.method private a(II)I
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/nd/commplatform/friend/FriendSectionSwitcher;->b:[Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nd/commplatform/friend/FriendSectionSwitcher;->b:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/nd/commplatform/friend/FriendSectionSwitcher;->b:[Ljava/lang/String;

    array-length v1, v1

    int-to-float v1, v1

    int-to-float v2, p1

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    :goto_0
    if-gtz v1, :cond_0

    :goto_1
    mul-int/2addr v0, p2

    return v0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method private a()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/friend/FriendSectionSwitcher;->setFocusable(Z)V

    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/nd/commplatform/friend/FriendSectionSwitcher;->setBackgroundColor(I)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/nd/commplatform/friend/FriendSectionSwitcher;->b(Z)V

    :goto_0
    const/16 v1, 0x1b

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lcom/nd/commplatform/friend/FriendSectionSwitcher;->b()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v1}, Lcom/nd/commplatform/friend/FriendSectionSwitcher;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(ILandroid/widget/TextView;)V
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/friend/FriendSectionSwitcher;->b:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/friend/FriendSectionSwitcher;->b:[Ljava/lang/String;

    array-length v0, v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/friend/FriendSectionSwitcher;->b:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private b(II)I
    .locals 2

    sub-int v0, p2, p1

    invoke-direct {p0}, Lcom/nd/commplatform/friend/FriendSectionSwitcher;->d()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    div-int/2addr v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private b()Landroid/widget/TextView;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/widget/TextView;

    invoke-super {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-object v0
.end method

.method private b(Z)V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/nd/commplatform/friend/FriendSectionSwitcher;->invalidate()V

    return-void

    :cond_1
    const/16 v0, 0x7f

    goto :goto_0
.end method

.method private c()I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/friend/FriendSectionSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const-string v1, "H"

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/nd/commplatform/friend/FriendSectionSwitcher;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/nd/commplatform/friend/FriendSectionSwitcher;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private d()I
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/friend/FriendSectionSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/nd/commplatform/friend/FriendSectionSwitcher;->getPaddingTop()I

    move-result v2

    int-to-double v2, v2

    add-double/2addr v0, v2

    invoke-virtual {p0}, Lcom/nd/commplatform/friend/FriendSectionSwitcher;->getPaddingBottom()I

    move-result v2

    int-to-double v2, v2

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private e(I)I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nd/commplatform/friend/FriendSectionSwitcher;->b:[Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-direct {p0, v0, p1}, Lcom/nd/commplatform/friend/FriendSectionSwitcher;->b(II)I

    move-result v1

    iget-object v2, p0, Lcom/nd/commplatform/friend/FriendSectionSwitcher;->b:[Ljava/lang/String;

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_0
    if-lez v1, :cond_0

    int-to-double v2, p1

    int-to-double v0, v1

    div-double v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    :cond_0
    return v0

    :cond_1
    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/nd/commplatform/friend/FriendSectionSwitcher;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/nd/commplatform/friend/FriendSectionSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    int-to-float v3, p1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/nd/commplatform/friend/FriendSectionSwitcher$a;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/friend/FriendSectionSwitcher;->d:Lcom/nd/commplatform/friend/FriendSectionSwitcher$a;

    return-void
.end method

.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    :goto_0
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/friend/FriendSectionSwitcher;->b:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/nd/commplatform/friend/FriendSectionSwitcher;->requestLayout()V

    invoke-virtual {p0}, Lcom/nd/commplatform/friend/FriendSectionSwitcher;->invalidate()V

    return-void
.end method

.method public b(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/nd/commplatform/friend/FriendSectionSwitcher;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/nd/commplatform/friend/FriendSectionSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected c(I)I
    .locals 4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v2, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/nd/commplatform/friend/FriendSectionSwitcher;->c()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected d(I)I
    .locals 4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v2, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/nd/commplatform/friend/FriendSectionSwitcher;->b:[Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/nd/commplatform/friend/FriendSectionSwitcher;->d()I

    move-result v1

    iget-object v3, p0, Lcom/nd/commplatform/friend/FriendSectionSwitcher;->b:[Ljava/lang/String;

    array-length v3, v3

    mul-int/2addr v1, v3

    :goto_1
    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/nd/commplatform/friend/FriendSectionSwitcher;->d()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1b

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nd/commplatform/friend/FriendSectionSwitcher;->b(Z)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nd/commplatform/friend/FriendSectionSwitcher;->b(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/friend/FriendSectionSwitcher;->d:Lcom/nd/commplatform/friend/FriendSectionSwitcher$a;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/nd/commplatform/friend/FriendSectionSwitcher;->d:Lcom/nd/commplatform/friend/FriendSectionSwitcher$a;

    invoke-interface {v1, v0}, Lcom/nd/commplatform/friend/FriendSectionSwitcher$a;->a(I)V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v9, -0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/friend/FriendSectionSwitcher;->b:[Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-direct {p0, p3, p5}, Lcom/nd/commplatform/friend/FriendSectionSwitcher;->b(II)I

    move-result v0

    iget-object v1, p0, Lcom/nd/commplatform/friend/FriendSectionSwitcher;->b:[Ljava/lang/String;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_0
    if-lez v3, :cond_2

    sub-int v0, p5, p3

    int-to-double v0, v0

    int-to-double v4, v3

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    move v1, v0

    :goto_1
    iput v3, p0, Lcom/nd/commplatform/friend/FriendSectionSwitcher;->a:I

    sub-int v6, p4, p2

    move v4, v2

    move v5, v2

    :goto_2
    if-ge v4, v3, :cond_0

    invoke-virtual {p0, v4}, Lcom/nd/commplatform/friend/FriendSectionSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    add-int v7, v5, v1

    invoke-virtual {v0, v2, v5, v6, v7}, Landroid/widget/TextView;->layout(IIII)V

    invoke-direct {p0, v3, v4}, Lcom/nd/commplatform/friend/FriendSectionSwitcher;->a(II)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    invoke-direct {p0, v7, v0}, Lcom/nd/commplatform/friend/FriendSectionSwitcher;->a(ILandroid/widget/TextView;)V

    add-int/2addr v5, v1

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    :cond_0
    move v1, v3

    :goto_3
    const/16 v0, 0x1b

    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/nd/commplatform/friend/FriendSectionSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v9, v9, v9, v9}, Landroid/widget/TextView;->layout(IIII)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_1
    return-void

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    move v3, v2

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {p0, p1}, Lcom/nd/commplatform/friend/FriendSectionSwitcher;->c(I)I

    move-result v0

    invoke-virtual {p0, p2}, Lcom/nd/commplatform/friend/FriendSectionSwitcher;->d(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/nd/commplatform/friend/FriendSectionSwitcher;->setMeasuredDimension(II)V

    invoke-direct {p0, v1}, Lcom/nd/commplatform/friend/FriendSectionSwitcher;->e(I)I

    move-result v1

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p0}, Lcom/nd/commplatform/friend/FriendSectionSwitcher;->getChildCount()I

    move-result v4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    invoke-virtual {p0, v1}, Lcom/nd/commplatform/friend/FriendSectionSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->measure(II)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method
