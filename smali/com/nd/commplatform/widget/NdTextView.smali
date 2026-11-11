.class public Lcom/nd/commplatform/widget/NdTextView;
.super Landroid/view/View;


# static fields
.field private static final a:Ljava/lang/String; = "NdTextView"

.field private static e:[C

.field private static f:[C


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x2

    new-array v0, v1, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/nd/commplatform/widget/NdTextView;->e:[C

    new-array v0, v1, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/nd/commplatform/widget/NdTextView;->f:[C

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const-string v1, "H"

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    return-void

    :array_0
    .array-data 2
        0xas
        0xds
    .end array-data

    :array_1
    .array-data 2
        0x20s
        -0x101s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/widget/NdTextView;->c:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/nd/commplatform/widget/NdTextView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/widget/NdTextView;->c:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/nd/commplatform/widget/NdTextView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/widget/NdTextView;->c:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/nd/commplatform/widget/NdTextView;->a()V

    return-void
.end method

.method private a(II)I
    .locals 4

    if-gtz p1, :cond_1

    const-string v0, "NdTextView"

    const-string v1, "Measure Width: 0 !!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/widget/NdTextView;->d(I)I

    move-result v1

    const/high16 v3, -0x80000000

    if-ne v3, v2, :cond_3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_2
    :goto_1
    if-gtz v0, :cond_0

    const-string v1, "NdTextView"

    const-string v2, "Measure Height: 0 !!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/high16 v3, 0x40000000    # 2.0f

    if-eq v3, v2, :cond_2

    move v0, v1

    goto :goto_1
.end method

.method private a()V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/widget/NdTextView;->d:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdTextView;->d:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/nd/commplatform/widget/NdTextView;->a(I)V

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdTextView;->d:Landroid/graphics/Paint;

    const v1, -0xaeaeaf

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private b()I
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdTextView;->d:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v0

    neg-float v0, v0

    iget-object v1, p0, Lcom/nd/commplatform/widget/NdTextView;->d:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private c(I)I
    .locals 3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget-object v2, p0, Lcom/nd/commplatform/widget/NdTextView;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/high16 v2, -0x80000000

    if-ne v2, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/high16 v2, 0x40000000    # 2.0f

    if-eq v2, v1, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdTextView;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nd/commplatform/widget/NdTextView;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdTextView;->d:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/nd/commplatform/widget/NdTextView;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0
.end method

.method private d(I)I
    .locals 11

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/nd/commplatform/widget/NdTextView;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/nd/commplatform/widget/NdTextView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v6, v0, -0x2

    invoke-direct {p0}, Lcom/nd/commplatform/widget/NdTextView;->b()I

    move-result v7

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdTextView;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdTextView;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdTextView;->d:Landroid/graphics/Paint;

    const-string v2, "MM"

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    move v2, v4

    move v3, v4

    move v5, v4

    :goto_0
    if-ge v2, v1, :cond_3

    sub-int v0, v6, v5

    int-to-float v0, v0

    div-float/2addr v0, v8

    float-to-int v0, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/2addr v0, v2

    if-le v0, v1, :cond_1

    move v0, v1

    :cond_1
    iget-object v9, p0, Lcom/nd/commplatform/widget/NdTextView;->d:Landroid/graphics/Paint;

    iget-object v10, p0, Lcom/nd/commplatform/widget/NdTextView;->b:Ljava/lang/String;

    invoke-virtual {v9, v10, v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v9

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    add-int/2addr v5, v9

    if-le v5, v6, :cond_2

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdTextView;->c:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/nd/commplatform/widget/NdTextView;->b:Ljava/lang/String;

    invoke-virtual {v5, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v2

    move v3, v4

    :goto_1
    move v5, v3

    move v3, v2

    move v2, v0

    goto :goto_0

    :cond_2
    move v2, v3

    move v3, v5

    goto :goto_1

    :cond_3
    if-lez v5, :cond_4

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdTextView;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nd/commplatform/widget/NdTextView;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v0, p0, Lcom/nd/commplatform/widget/NdTextView;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/2addr v0, v7

    invoke-virtual {p0}, Lcom/nd/commplatform/widget/NdTextView;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/nd/commplatform/widget/NdTextView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x4

    return v0
.end method


# virtual methods
.method public a(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/nd/commplatform/widget/NdTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/nd/commplatform/widget/NdTextView;->d:Landroid/graphics/Paint;

    const/4 v2, 0x2

    int-to-float v3, p1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v2, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0}, Lcom/nd/commplatform/widget/NdTextView;->requestLayout()V

    invoke-virtual {p0}, Lcom/nd/commplatform/widget/NdTextView;->invalidate()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/widget/NdTextView;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdTextView;->b:Ljava/lang/String;

    sget-object v1, Lcom/nd/commplatform/widget/NdTextView;->e:[C

    aget-char v1, v1, v3

    sget-object v2, Lcom/nd/commplatform/widget/NdTextView;->f:[C

    aget-char v2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/widget/NdTextView;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdTextView;->b:Ljava/lang/String;

    sget-object v1, Lcom/nd/commplatform/widget/NdTextView;->e:[C

    aget-char v1, v1, v4

    sget-object v2, Lcom/nd/commplatform/widget/NdTextView;->f:[C

    aget-char v2, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nd/commplatform/widget/NdTextView;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdTextView;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/nd/commplatform/widget/NdTextView;->requestLayout()V

    invoke-virtual {p0}, Lcom/nd/commplatform/widget/NdTextView;->invalidate()V

    return-void
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdTextView;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/nd/commplatform/widget/NdTextView;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-virtual {p0}, Lcom/nd/commplatform/widget/NdTextView;->getMeasuredWidth()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/widget/NdTextView;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {p0}, Lcom/nd/commplatform/widget/NdTextView;->b()I

    move-result v3

    invoke-virtual {p0}, Lcom/nd/commplatform/widget/NdTextView;->getMeasuredHeight()I

    move-result v0

    add-int v5, v0, v3

    const/4 v0, 0x0

    move v1, v0

    move v2, v3

    :goto_0
    if-ge v1, v4, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdTextView;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/nd/commplatform/widget/NdTextView;->getPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v2

    iget-object v8, p0, Lcom/nd/commplatform/widget/NdTextView;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/2addr v2, v3

    if-gt v2, v5, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/nd/commplatform/widget/NdTextView;->c(I)I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/nd/commplatform/widget/NdTextView;->a(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/nd/commplatform/widget/NdTextView;->setMeasuredDimension(II)V

    return-void
.end method
