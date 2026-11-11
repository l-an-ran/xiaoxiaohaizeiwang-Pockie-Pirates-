.class final Lcom/nd/commplatform/d/c/gu$a;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/d/c/gu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "ImageAdapter"


# instance fields
.field private b:Landroid/content/Context;

.field private c:[Lcom/nd/commplatform/d/c/gt$a;

.field private d:Lcom/nd/commplatform/d/c/gt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nd/commplatform/d/c/gt",
            "<TT;>;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nd/commplatform/NdCallbackListener",
            "<",
            "Lcom/nd/commplatform/entry/NdIcon;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/gu$a;->e:Ljava/util/List;

    iput-object p1, p0, Lcom/nd/commplatform/d/c/gu$a;->b:Landroid/content/Context;

    return-void
.end method

.method private a(ILcom/nd/commplatform/d/c/gt$a;Landroid/widget/ImageView;)V
    .locals 6

    const/4 v3, 0x1

    iget v0, p2, Lcom/nd/commplatform/d/c/gt$a;->c:I

    if-nez v0, :cond_1

    sget v0, Lcom/nd/commplatform/d/c/jo$d;->aa:I

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    iget-object v0, p2, Lcom/nd/commplatform/d/c/gt$a;->d:Ljava/lang/String;

    if-nez v0, :cond_3

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget v0, p2, Lcom/nd/commplatform/d/c/gt$a;->c:I

    if-ne v3, v0, :cond_2

    sget v0, Lcom/nd/commplatform/d/c/jo$d;->i:I

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p2, Lcom/nd/commplatform/d/c/gt$a;->e:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string v0, ""

    iput-object v0, p2, Lcom/nd/commplatform/d/c/gt$a;->e:Ljava/lang/String;

    :cond_4
    new-instance v5, Lcom/nd/commplatform/d/c/gu$a$1;

    invoke-direct {v5, p0, p3, p1}, Lcom/nd/commplatform/d/c/gu$a$1;-><init>(Lcom/nd/commplatform/d/c/gu$a;Landroid/widget/ImageView;I)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {p3, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nd/commplatform/d/c/gu$a;->e:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v1, p2, Lcom/nd/commplatform/d/c/gt$a;->c:I

    if-nez v1, :cond_5

    iget-object v1, p2, Lcom/nd/commplatform/d/c/gt$a;->d:Ljava/lang/String;

    iget-object v2, p2, Lcom/nd/commplatform/d/c/gt$a;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/nd/commplatform/d/c/gu$a;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/nd/commplatform/d/c/oh;->g(Landroid/content/Context;)I

    move-result v3

    iget-object v4, p0, Lcom/nd/commplatform/d/c/gu$a;->b:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/a;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z

    goto :goto_1

    :cond_5
    iget v1, p2, Lcom/nd/commplatform/d/c/gt$a;->c:I

    if-ne v3, v1, :cond_0

    iget-object v1, p2, Lcom/nd/commplatform/d/c/gt$a;->d:Ljava/lang/String;

    iget-object v2, p2, Lcom/nd/commplatform/d/c/gt$a;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/nd/commplatform/d/c/gu$a;->b:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/a;->b(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z

    goto :goto_1
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/gu$a;)[Lcom/nd/commplatform/d/c/gt$a;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gu$a;->c:[Lcom/nd/commplatform/d/c/gt$a;

    return-object v0
.end method

.method private b()I
    .locals 3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gu$a;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/gu$a;)Lcom/nd/commplatform/d/c/gt;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gu$a;->d:Lcom/nd/commplatform/d/c/gt;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gu$a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {v0}, Lcom/nd/commplatform/NdCallbackListener;->destroy()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/gu$a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public a([Lcom/nd/commplatform/d/c/gt$a;Lcom/nd/commplatform/d/c/gt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/nd/commplatform/d/c/gt$a;",
            "Lcom/nd/commplatform/d/c/gt",
            "<TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nd/commplatform/d/c/gu$a;->c:[Lcom/nd/commplatform/d/c/gt$a;

    iput-object p2, p0, Lcom/nd/commplatform/d/c/gu$a;->d:Lcom/nd/commplatform/d/c/gt;

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gu$a;->c:[Lcom/nd/commplatform/d/c/gt$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/gu$a;->c:[Lcom/nd/commplatform/d/c/gt$a;

    array-length v0, v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .local p0, "this":Lcom/nd/commplatform/d/c/gu$a;, "Lcom/nd/commplatform/d/c/gu$a<TT;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .local p0, "this":Lcom/nd/commplatform/d/c/gu$a;, "Lcom/nd/commplatform/d/c/gu$a<TT;>;"
    const v0, 0x7fffffff

    sub-int/2addr v0, p1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .local p0, "this":Lcom/nd/commplatform/d/c/gu$a;, "Lcom/nd/commplatform/d/c/gu$a<TT;>;"
    check-cast p2, Landroid/widget/ImageView;

    .end local p2    # "convertView":Landroid/view/View;
    if-nez p2, :cond_1

    new-instance p2, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gu$a;->b:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/gu$a;->b()I

    move-result v0

    new-instance v1, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/gu$a;->c:[Lcom/nd/commplatform/d/c/gt$a;

    aget-object v0, v0, p1

    invoke-direct {p0, p1, v0, p2}, Lcom/nd/commplatform/d/c/gu$a;->a(ILcom/nd/commplatform/d/c/gt$a;Landroid/widget/ImageView;)V

    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nd/commplatform/NdCallbackListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nd/commplatform/NdCallbackListener;->destroy()V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method
