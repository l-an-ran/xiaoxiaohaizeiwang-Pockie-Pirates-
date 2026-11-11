.class public Lcom/nd/commplatform/d/c/gu;
.super Lcom/nd/commplatform/d/c/hh;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nd/commplatform/d/c/gu$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/nd/commplatform/d/c/hh;"
    }
.end annotation


# instance fields
.field private a:Lcom/nd/commplatform/d/c/gt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nd/commplatform/d/c/gt",
            "<TT;>;"
        }
    .end annotation
.end field

.field private b:Lcom/nd/commplatform/widget/NdUserFangleExtItem;

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

.field private d:Lcom/nd/commplatform/d/c/gu$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nd/commplatform/d/c/gu$a",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nd/commplatform/widget/NdUserFangleExtItem;Lcom/nd/commplatform/d/c/gt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nd/commplatform/widget/NdUserFangleExtItem;",
            "Lcom/nd/commplatform/d/c/gt",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/hh;-><init>()V

    iput-object p2, p0, Lcom/nd/commplatform/d/c/gu;->a:Lcom/nd/commplatform/d/c/gt;

    iput-object p1, p0, Lcom/nd/commplatform/d/c/gu;->b:Lcom/nd/commplatform/widget/NdUserFangleExtItem;

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/gu;)Lcom/nd/commplatform/d/c/gt;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gu;->a:Lcom/nd/commplatform/d/c/gt;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/gu;->b()V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string v2, ""

    :goto_1
    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    new-instance v1, Lcom/nd/commplatform/d/c/gu$1;

    invoke-direct {v1, p0}, Lcom/nd/commplatform/d/c/gu$1;-><init>(Lcom/nd/commplatform/d/c/gu;)V

    iput-object v1, p0, Lcom/nd/commplatform/d/c/gu;->c:Lcom/nd/commplatform/NdCallbackListener;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/gu;->b:Lcom/nd/commplatform/widget/NdUserFangleExtItem;

    invoke-virtual {v1}, Lcom/nd/commplatform/widget/NdUserFangleExtItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nd/commplatform/d/c/oh;->g(Landroid/content/Context;)I

    move-result v3

    iget-object v1, p0, Lcom/nd/commplatform/d/c/gu;->b:Lcom/nd/commplatform/widget/NdUserFangleExtItem;

    invoke-virtual {v1}, Lcom/nd/commplatform/widget/NdUserFangleExtItem;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/nd/commplatform/d/c/gu;->c:Lcom/nd/commplatform/NdCallbackListener;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/nd/commplatform/d/c/a;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)Z

    goto :goto_0

    :cond_1
    move-object v2, p2

    goto :goto_1
.end method

.method private a([Lcom/nd/commplatform/d/c/gt$a;)V
    .locals 2

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/gu;->b:Lcom/nd/commplatform/widget/NdUserFangleExtItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdUserFangleExtItem;->e:Landroid/widget/Gallery;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/gu;->d:Lcom/nd/commplatform/d/c/gu$a;

    if-nez v0, :cond_2

    new-instance v0, Lcom/nd/commplatform/d/c/gu$a;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/gu;->b:Lcom/nd/commplatform/widget/NdUserFangleExtItem;

    invoke-virtual {v1}, Lcom/nd/commplatform/widget/NdUserFangleExtItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/gu$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/gu;->d:Lcom/nd/commplatform/d/c/gu$a;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gu;->d:Lcom/nd/commplatform/d/c/gu$a;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/gu;->a:Lcom/nd/commplatform/d/c/gt;

    invoke-virtual {v0, p1, v1}, Lcom/nd/commplatform/d/c/gu$a;->a([Lcom/nd/commplatform/d/c/gt$a;Lcom/nd/commplatform/d/c/gt;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gu;->b:Lcom/nd/commplatform/widget/NdUserFangleExtItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdUserFangleExtItem;->e:Landroid/widget/Gallery;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/gu;->d:Lcom/nd/commplatform/d/c/gu$a;

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :goto_1
    array-length v0, p1

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/nd/commplatform/d/c/gu;->b:Lcom/nd/commplatform/widget/NdUserFangleExtItem;

    iget-object v1, v1, Lcom/nd/commplatform/widget/NdUserFangleExtItem;->e:Landroid/widget/Gallery;

    invoke-virtual {v1, v0}, Landroid/widget/Gallery;->setSelection(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gu;->b:Lcom/nd/commplatform/widget/NdUserFangleExtItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdUserFangleExtItem;->e:Landroid/widget/Gallery;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nd/commplatform/d/c/gu;->d:Lcom/nd/commplatform/d/c/gu$a;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/gu;->a:Lcom/nd/commplatform/d/c/gt;

    invoke-virtual {v0, p1, v1}, Lcom/nd/commplatform/d/c/gu$a;->a([Lcom/nd/commplatform/d/c/gt$a;Lcom/nd/commplatform/d/c/gt;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gu;->d:Lcom/nd/commplatform/d/c/gu$a;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/gu$a;->notifyDataSetChanged()V

    goto :goto_1
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/gu;)Lcom/nd/commplatform/widget/NdUserFangleExtItem;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gu;->b:Lcom/nd/commplatform/widget/NdUserFangleExtItem;

    return-object v0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gu;->b:Lcom/nd/commplatform/widget/NdUserFangleExtItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdUserFangleExtItem;->c:Landroid/widget/ImageView;

    sget v1, Lcom/nd/commplatform/d/c/jo$d;->aa:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private c()V
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gu;->c:Lcom/nd/commplatform/NdCallbackListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gu;->c:Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {v0}, Lcom/nd/commplatform/NdCallbackListener;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/gu;->c:Lcom/nd/commplatform/NdCallbackListener;

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/gu;->d:Lcom/nd/commplatform/d/c/gu$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gu;->d:Lcom/nd/commplatform/d/c/gu$a;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/gu$a;->a()V

    :cond_1
    return-void
.end method

.method private f()V
    .locals 2

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/gu;->d()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gu;->b:Lcom/nd/commplatform/widget/NdUserFangleExtItem;

    sget v1, Lcom/nd/commplatform/d/c/jo$d;->aS:I

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/widget/NdUserFangleExtItem;->setBackgroundResource(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/gu;->b:Lcom/nd/commplatform/widget/NdUserFangleExtItem;

    sget v1, Lcom/nd/commplatform/d/c/jo$d;->aT:I

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/widget/NdUserFangleExtItem;->setBackgroundResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/gu;->c()V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/gu;->f()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gu;->a:Lcom/nd/commplatform/d/c/gt;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/gt;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gu;->b:Lcom/nd/commplatform/widget/NdUserFangleExtItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdUserFangleExtItem;->a:Landroid/widget/TextView;

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->cT:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gu;->b:Lcom/nd/commplatform/widget/NdUserFangleExtItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdUserFangleExtItem;->d:Lcom/nd/commplatform/widget/NdTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/widget/NdTextView;->a(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gu;->b:Lcom/nd/commplatform/widget/NdUserFangleExtItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdUserFangleExtItem;->b:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/gu;->b()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gu;->b:Lcom/nd/commplatform/widget/NdUserFangleExtItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdUserFangleExtItem;->e:Landroid/widget/Gallery;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setVisibility(I)V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/gu;->c()V

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/gu;->f()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gu;->a:Lcom/nd/commplatform/d/c/gt;

    invoke-virtual {v0, p1}, Lcom/nd/commplatform/d/c/gt;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gu;->b:Lcom/nd/commplatform/widget/NdUserFangleExtItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdUserFangleExtItem;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/gu;->a:Lcom/nd/commplatform/d/c/gt;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/gt;->p()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gu;->b:Lcom/nd/commplatform/widget/NdUserFangleExtItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdUserFangleExtItem;->d:Lcom/nd/commplatform/widget/NdTextView;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/gu;->a:Lcom/nd/commplatform/d/c/gt;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/gt;->q()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/widget/NdTextView;->a(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gu;->b:Lcom/nd/commplatform/widget/NdUserFangleExtItem;

    iget-object v0, v0, Lcom/nd/commplatform/widget/NdUserFangleExtItem;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/gu;->a:Lcom/nd/commplatform/d/c/gt;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/gt;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gu;->a:Lcom/nd/commplatform/d/c/gt;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/gt;->n()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/gu;->a:Lcom/nd/commplatform/d/c/gt;

    invoke-virtual {v1}, Lcom/nd/commplatform/d/c/gt;->o()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/nd/commplatform/d/c/gu;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/gu;->a:Lcom/nd/commplatform/d/c/gt;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/gt;->h()[Lcom/nd/commplatform/d/c/gt$a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nd/commplatform/d/c/gu;->a([Lcom/nd/commplatform/d/c/gt$a;)V

    return-void
.end method
