.class public Lcom/nd/commplatform/widget/NdLoginDirectorView;
.super Lcom/nd/commplatform/widget/NdFrameInnerContent;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nd/commplatform/widget/NdLoginDirectorView$1;,
        Lcom/nd/commplatform/widget/NdLoginDirectorView$a;
    }
.end annotation


# static fields
.field private static b:Z = false

.field private static final d:I = 0x7d0

.field private static final f:I = 0x5


# instance fields
.field private a:Landroid/widget/Button;

.field private c:Lcom/nd/commplatform/widget/NdLoginDirectorView$a;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/nd/commplatform/widget/NdLoginDirectorView;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/nd/commplatform/widget/NdLoginDirectorView$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nd/commplatform/widget/NdLoginDirectorView$a;-><init>(Lcom/nd/commplatform/widget/NdLoginDirectorView;Lcom/nd/commplatform/widget/NdLoginDirectorView$1;)V

    iput-object v0, p0, Lcom/nd/commplatform/widget/NdLoginDirectorView;->c:Lcom/nd/commplatform/widget/NdLoginDirectorView$a;

    const/4 v0, 0x0

    iput v0, p0, Lcom/nd/commplatform/widget/NdLoginDirectorView;->e:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/nd/commplatform/widget/NdLoginDirectorView$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nd/commplatform/widget/NdLoginDirectorView$a;-><init>(Lcom/nd/commplatform/widget/NdLoginDirectorView;Lcom/nd/commplatform/widget/NdLoginDirectorView$1;)V

    iput-object v0, p0, Lcom/nd/commplatform/widget/NdLoginDirectorView;->c:Lcom/nd/commplatform/widget/NdLoginDirectorView$a;

    const/4 v0, 0x0

    iput v0, p0, Lcom/nd/commplatform/widget/NdLoginDirectorView;->e:I

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/widget/NdLoginDirectorView;)I
    .locals 2

    iget v0, p0, Lcom/nd/commplatform/widget/NdLoginDirectorView;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/nd/commplatform/widget/NdLoginDirectorView;->e:I

    return v0
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/nd/commplatform/widget/NdLoginDirectorView;->b:Z

    invoke-direct {p0}, Lcom/nd/commplatform/widget/NdLoginDirectorView;->n()V

    return-void
.end method

.method static synthetic b(Lcom/nd/commplatform/widget/NdLoginDirectorView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/nd/commplatform/widget/NdLoginDirectorView;->c()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/nd/commplatform/widget/NdLoginDirectorView;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/widget/NdLoginDirectorView;->q()V

    return-void
.end method

.method private c()Z
    .locals 2

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/nd/commplatform/widget/NdLoginDirectorView;)I
    .locals 1

    iget v0, p0, Lcom/nd/commplatform/widget/NdLoginDirectorView;->e:I

    return v0
.end method

.method static synthetic e(Lcom/nd/commplatform/widget/NdLoginDirectorView;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/widget/NdLoginDirectorView;->b()V

    return-void
.end method

.method static synthetic f(Lcom/nd/commplatform/widget/NdLoginDirectorView;)V
    .locals 0

    invoke-direct {p0}, Lcom/nd/commplatform/widget/NdLoginDirectorView;->m()V

    return-void
.end method

.method private m()V
    .locals 4

    invoke-direct {p0}, Lcom/nd/commplatform/widget/NdLoginDirectorView;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/nd/commplatform/widget/NdLoginDirectorView;->q()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/widget/NdLoginDirectorView;->c:Lcom/nd/commplatform/widget/NdLoginDirectorView$a;

    const/4 v1, 0x0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/nd/commplatform/widget/NdLoginDirectorView$a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private n()V
    .locals 2

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdLoginDirectorView;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdLoginDirectorView;->a:Landroid/widget/Button;

    sget v1, Lcom/nd/commplatform/d/c/jo$d;->cd:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdLoginDirectorView;->a:Landroid/widget/Button;

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->R:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdLoginDirectorView;->a:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method private o()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdLoginDirectorView;->a:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdLoginDirectorView;->a:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdLoginDirectorView;->a:Landroid/widget/Button;

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->bp:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdLoginDirectorView;->a:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method private p()Z
    .locals 2

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nd/commplatform/widget/NdLoginDirectorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/a;->e(Landroid/content/Context;)Lcom/nd/commplatform/entry/NdLoginConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nd/commplatform/entry/NdLoginConfig;->isAutoLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private q()V
    .locals 4

    invoke-static {}, Lcom/nd/commplatform/d/c/b;->a()Lcom/nd/commplatform/d/c/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nd/commplatform/widget/NdLoginDirectorView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/nd/commplatform/d/c/b;->a(Landroid/content/Context;ZLjava/lang/String;Lcom/nd/commplatform/NdMiscCallbackListener$OnLoginProcessListener;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->bG:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nd/commplatform/widget/NdLoginDirectorView;->p:Z

    iput-boolean v0, p0, Lcom/nd/commplatform/widget/NdLoginDirectorView;->q:Z

    iput-boolean v0, p0, Lcom/nd/commplatform/widget/NdLoginDirectorView;->s:Z

    iput-boolean v1, p0, Lcom/nd/commplatform/widget/NdLoginDirectorView;->v:Z

    iput-boolean v1, p0, Lcom/nd/commplatform/widget/NdLoginDirectorView;->w:Z

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->ip:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nd/commplatform/widget/NdLoginDirectorView;->a:Landroid/widget/Button;

    iget-object v0, p0, Lcom/nd/commplatform/widget/NdLoginDirectorView;->a:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method protected a(ZI)V
    .locals 1

    if-eqz p1, :cond_2

    sget-boolean v0, Lcom/nd/commplatform/widget/NdLoginDirectorView;->b:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/nd/commplatform/widget/NdLoginDirectorView;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/nd/commplatform/widget/NdLoginDirectorView;->b:Z

    invoke-direct {p0}, Lcom/nd/commplatform/widget/NdLoginDirectorView;->o()V

    invoke-direct {p0}, Lcom/nd/commplatform/widget/NdLoginDirectorView;->m()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/nd/commplatform/widget/NdLoginDirectorView;->n()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/nd/commplatform/widget/NdLoginDirectorView;->o()V

    goto :goto_0

    :cond_2
    sget-boolean v0, Lcom/nd/commplatform/widget/NdLoginDirectorView;->b:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/nd/commplatform/widget/NdLoginDirectorView;->o()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/nd/commplatform/widget/NdLoginDirectorView;->n()V

    goto :goto_0
.end method

.method public finishLoginProcess(I)V
    .locals 1
    .param p1, "code"    # I

    .prologue
    const/4 v0, 0x0

    sput-boolean v0, Lcom/nd/commplatform/widget/NdLoginDirectorView;->b:Z

    if-nez p1, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/nd/commplatform/d/c/cb;->b(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/nd/commplatform/widget/NdLoginDirectorView;->n()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    invoke-static {p0}, Lcom/nd/commplatform/d/c/cb;->b(Lcom/nd/commplatform/widget/NdFrameInnerContent;)V

    return-void
.end method
