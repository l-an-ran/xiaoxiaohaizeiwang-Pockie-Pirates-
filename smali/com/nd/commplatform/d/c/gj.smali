.class public Lcom/nd/commplatform/d/c/gj;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/RelativeLayout;"
    }
.end annotation


# instance fields
.field protected a:Lcom/nd/commplatform/d/c/hf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nd/commplatform/d/c/hf",
            "<",
            "Lcom/nd/commplatform/entry/NdPageList",
            "<TT;>;TT;>;"
        }
    .end annotation
.end field

.field protected b:Lcom/nd/commplatform/d/c/hi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nd/commplatform/d/c/hi",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected c:Lcom/nd/commplatform/widget/NdFrameInnerContent;

.field private d:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/nd/commplatform/d/c/hf;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/hf;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/gj;->a:Lcom/nd/commplatform/d/c/hf;

    new-instance v0, Lcom/nd/commplatform/d/c/hi;

    invoke-direct {v0}, Lcom/nd/commplatform/d/c/hi;-><init>()V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/gj;->b:Lcom/nd/commplatform/d/c/hi;

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/gj;->c()V

    return-void
.end method

.method private c()V
    .locals 4

    const/4 v3, -0x1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/nd/commplatform/d/c/jo$f;->am:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/gj;->d:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gj;->d:Landroid/widget/ListView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/nd/commplatform/d/c/gj;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gj;->a:Lcom/nd/commplatform/d/c/hf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gj;->a:Lcom/nd/commplatform/d/c/hf;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/hf;->f()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/nd/commplatform/d/c/hm;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nd/commplatform/d/c/hm",
            "<TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gj;->a:Lcom/nd/commplatform/d/c/hf;

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/gj;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/gj;->d:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/nd/commplatform/d/c/gj;->b:Lcom/nd/commplatform/d/c/hi;

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/nd/commplatform/d/c/hf;->a(Landroid/content/Context;Landroid/widget/ListView;Lcom/nd/commplatform/d/c/hm;Lcom/nd/commplatform/d/c/hj;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gj;->a:Lcom/nd/commplatform/d/c/hf;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/hf;->c()V

    return-void
.end method

.method public a(Lcom/nd/commplatform/widget/NdFrameInnerContent;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/gj;->c:Lcom/nd/commplatform/widget/NdFrameInnerContent;

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gj;->a:Lcom/nd/commplatform/d/c/hf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gj;->a:Lcom/nd/commplatform/d/c/hf;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/hf;->a()V

    :cond_0
    return-void
.end method
