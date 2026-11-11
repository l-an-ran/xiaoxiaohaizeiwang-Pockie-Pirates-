.class Lcom/nd/commplatform/d/c/ic$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/d/c/ic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/ic;


# direct methods
.method private constructor <init>(Lcom/nd/commplatform/d/c/ic;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ic$a;->a:Lcom/nd/commplatform/d/c/ic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nd/commplatform/d/c/ic;Lcom/nd/commplatform/d/c/ic$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/ic$a;-><init>(Lcom/nd/commplatform/d/c/ic;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ic$a;->a:Lcom/nd/commplatform/d/c/ic;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/ic;->b:Landroid/widget/CheckBox;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ic$a;->a:Lcom/nd/commplatform/d/c/ic;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/ic;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v1

    iget-object v2, p0, Lcom/nd/commplatform/d/c/ic$a;->a:Lcom/nd/commplatform/d/c/ic;

    invoke-virtual {v2}, Lcom/nd/commplatform/d/c/ic;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/nd/commplatform/d/c/a;->a(ZLandroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ic$a;->a:Lcom/nd/commplatform/d/c/ic;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/ic;->c:Landroid/view/View;

    if-ne p1, v0, :cond_3

    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x455

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x45d

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ic$a;->a:Lcom/nd/commplatform/d/c/ic;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/ic;->e:Landroid/view/View;

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ic$a;->a:Lcom/nd/commplatform/d/c/ic;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ic;->e(Lcom/nd/commplatform/d/c/ic;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ic$a;->a:Lcom/nd/commplatform/d/c/ic;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ic;->b(Lcom/nd/commplatform/d/c/ic;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ic$a;->a:Lcom/nd/commplatform/d/c/ic;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ic;->b(Lcom/nd/commplatform/d/c/ic;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/nd/commplatform/d/c/bx;

    const/16 v1, 0xfa3

    invoke-direct {v0, v1}, Lcom/nd/commplatform/d/c/bx;-><init>(I)V

    const-string v1, "list"

    iget-object v2, p0, Lcom/nd/commplatform/d/c/ic$a;->a:Lcom/nd/commplatform/d/c/ic;

    invoke-static {v2}, Lcom/nd/commplatform/d/c/ic;->b(Lcom/nd/commplatform/d/c/ic;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "binded"

    iget-object v2, p0, Lcom/nd/commplatform/d/c/ic$a;->a:Lcom/nd/commplatform/d/c/ic;

    invoke-static {v2}, Lcom/nd/commplatform/d/c/ic;->e(Lcom/nd/commplatform/d/c/ic;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nd/commplatform/d/c/bx;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x45b

    invoke-static {v1, v0}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ic$a;->a:Lcom/nd/commplatform/d/c/ic;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/ic;->f:Landroid/view/View;

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/nd/commplatform/d/c/ni;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/nd/commplatform/d/c/jj;->b()V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/nd/commplatform/d/c/jg;->b()V

    goto :goto_0
.end method
