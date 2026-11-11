.class Lcom/nd/commplatform/d/c/hz$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/d/c/hz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/hz;


# direct methods
.method private constructor <init>(Lcom/nd/commplatform/d/c/hz;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/hz$a;->a:Lcom/nd/commplatform/d/c/hz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nd/commplatform/d/c/hz;Lcom/nd/commplatform/d/c/hz$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/hz$a;-><init>(Lcom/nd/commplatform/d/c/hz;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hz$a;->a:Lcom/nd/commplatform/d/c/hz;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/hz;->a:Landroid/view/View;

    if-ne p1, v0, :cond_1

    const/16 v0, 0x454

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/hz$a;->a:Lcom/nd/commplatform/d/c/hz;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/hz;->b:Landroid/view/View;

    if-ne p1, v0, :cond_2

    const/16 v0, 0x44e

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nd/commplatform/d/c/hz$a;->a:Lcom/nd/commplatform/d/c/hz;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/hz;->c:Landroid/view/View;

    if-ne p1, v0, :cond_3

    const/16 v0, 0x456

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/nd/commplatform/d/c/hz$a;->a:Lcom/nd/commplatform/d/c/hz;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/hz;->d:Landroid/view/View;

    if-ne p1, v0, :cond_4

    const/16 v0, 0x45a

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/nd/commplatform/d/c/hz$a;->a:Lcom/nd/commplatform/d/c/hz;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/hz;->e:Landroid/view/View;

    if-ne p1, v0, :cond_5

    const/16 v0, 0x459

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/nd/commplatform/d/c/hz$a;->a:Lcom/nd/commplatform/d/c/hz;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/hz;->a(Lcom/nd/commplatform/d/c/hz;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_6

    const/16 v0, 0x25a

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/nd/commplatform/d/c/hz$a;->a:Lcom/nd/commplatform/d/c/hz;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/hz;->b(Lcom/nd/commplatform/d/c/hz;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_7

    const/16 v0, 0x45f

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/nd/commplatform/d/c/hz$a;->a:Lcom/nd/commplatform/d/c/hz;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/hz;->c(Lcom/nd/commplatform/d/c/hz;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_8

    invoke-static {}, Lcom/nd/commplatform/d/c/if;->b()V

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/nd/commplatform/d/c/hz$a;->a:Lcom/nd/commplatform/d/c/hz;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/hz;->d(Lcom/nd/commplatform/d/c/hz;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/hz$a;->a:Lcom/nd/commplatform/d/c/hz;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/hz;->e(Lcom/nd/commplatform/d/c/hz;)V

    goto :goto_0
.end method
