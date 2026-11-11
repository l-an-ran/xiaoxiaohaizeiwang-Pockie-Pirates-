.class public Lcom/nd/commplatform/d/c/h;
.super Lcom/nd/commplatform/widget/NdFrameInnerContent;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nd/commplatform/d/c/h$c;,
        Lcom/nd/commplatform/d/c/h$d;,
        Lcom/nd/commplatform/d/c/h$b;,
        Lcom/nd/commplatform/d/c/h$a;
    }
.end annotation


# static fields
.field private static final a:I = 0x1

.field private static final b:I = 0x4

.field private static final c:I = 0x5


# instance fields
.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/ListView;

.field private g:Lcom/nd/commplatform/d/c/h$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/widget/NdFrameInnerContent;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/nd/commplatform/d/c/h;)Lcom/nd/commplatform/d/c/h$a;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/h;->g:Lcom/nd/commplatform/d/c/h$a;

    return-object v0
.end method

.method static synthetic b(Lcom/nd/commplatform/d/c/h;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/h;->f:Landroid/widget/ListView;

    return-object v0
.end method

.method public static b()V
    .locals 2

    const/16 v0, 0x3f7

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    return-void
.end method

.method private c()V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/nd/commplatform/d/c/e;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/h;->g:Lcom/nd/commplatform/d/c/h$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/h;->g:Lcom/nd/commplatform/d/c/h$a;

    invoke-virtual {v0, v2}, Lcom/nd/commplatform/d/c/h$a;->a(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/nd/commplatform/d/c/h$1;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/h$1;-><init>(Lcom/nd/commplatform/d/c/h;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/nd/commplatform/d/c/h;->b(Z)V

    invoke-virtual {p0, v2, v0, v2}, Lcom/nd/commplatform/d/c/h;->a(ILcom/nd/commplatform/NdCallbackListener;Z)Lcom/nd/commplatform/NdCallbackListener;

    invoke-virtual {p0, v2}, Lcom/nd/commplatform/d/c/h;->b(Z)V

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nd/commplatform/d/c/h;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/nd/commplatform/d/c/a;->b(Landroid/content/Context;Lcom/nd/commplatform/NdCallbackListener;)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$f;->br:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nd/commplatform/d/c/h;->p:Z

    iput-boolean v1, p0, Lcom/nd/commplatform/d/c/h;->q:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/nd/commplatform/d/c/h;->r:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/nd/commplatform/d/c/h;->s:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/nd/commplatform/d/c/h;->t:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nd/commplatform/d/c/h;->u:Landroid/view/View$OnClickListener;

    iput-boolean v1, p0, Lcom/nd/commplatform/d/c/h;->v:Z

    iput-boolean v1, p0, Lcom/nd/commplatform/d/c/h;->w:Z

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 2

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->N:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/h;->d:Landroid/widget/Button;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/h;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->L:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/h;->e:Landroid/widget/Button;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/h;->e:Landroid/widget/Button;

    sget v1, Lcom/nd/commplatform/d/c/jo$h;->lo:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/h;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/nd/commplatform/d/c/jo$e;->hq:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/nd/commplatform/d/c/h;->f:Landroid/widget/ListView;

    new-instance v0, Lcom/nd/commplatform/d/c/h$a;

    invoke-direct {v0, p0}, Lcom/nd/commplatform/d/c/h$a;-><init>(Lcom/nd/commplatform/d/c/h;)V

    iput-object v0, p0, Lcom/nd/commplatform/d/c/h;->g:Lcom/nd/commplatform/d/c/h$a;

    iget-object v0, p0, Lcom/nd/commplatform/d/c/h;->f:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/nd/commplatform/d/c/h;->g:Lcom/nd/commplatform/d/c/h$a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method protected a(ZI)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/nd/commplatform/d/c/e;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/nd/commplatform/d/c/h;->c()V

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/h;->g:Lcom/nd/commplatform/d/c/h$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/h;->g:Lcom/nd/commplatform/d/c/h$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nd/commplatform/d/c/h$a;->a(Z)V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/d/c/h;->d:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/cb;->a(Lcom/nd/commplatform/d/c/bx;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/h;->e:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/h;->g:Lcom/nd/commplatform/d/c/h$a;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/h$a;->a()Z

    move-result v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/h;->g:Lcom/nd/commplatform/d/c/h$a;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/nd/commplatform/d/c/h$a;->b(Z)V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/h;->g:Lcom/nd/commplatform/d/c/h$a;

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/h$a;->a()Z

    move-result v0

    iget-object v1, p0, Lcom/nd/commplatform/d/c/h;->e:Landroid/widget/Button;

    if-eqz v0, :cond_3

    sget v0, Lcom/nd/commplatform/d/c/jo$h;->lm:I

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    sget v0, Lcom/nd/commplatform/d/c/jo$h;->lo:I

    goto :goto_2
.end method
