.class Lcom/nd/commplatform/d/c/n$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/d/c/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/n;


# direct methods
.method private constructor <init>(Lcom/nd/commplatform/d/c/n;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/n$c;->a:Lcom/nd/commplatform/d/c/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nd/commplatform/d/c/n;Lcom/nd/commplatform/d/c/n$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/n$c;-><init>(Lcom/nd/commplatform/d/c/n;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    invoke-static {}, Lcom/nd/commplatform/d/c/cb;->f()V

    iget-object v0, p0, Lcom/nd/commplatform/d/c/n$c;->a:Lcom/nd/commplatform/d/c/n;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/n;->h:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    const/16 v0, 0x3ef

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/n$c;->a:Lcom/nd/commplatform/d/c/n;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/n;->b(Lcom/nd/commplatform/d/c/n;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/nd/commplatform/d/c/n$c;->a:Lcom/nd/commplatform/d/c/n;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/n;->c(Lcom/nd/commplatform/d/c/n;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nd/commplatform/d/c/n$c;->a:Lcom/nd/commplatform/d/c/n;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/n;->d(Lcom/nd/commplatform/d/c/n;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/n$c;->a:Lcom/nd/commplatform/d/c/n;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/n;->a(Lcom/nd/commplatform/d/c/n;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nd/commplatform/d/c/n$c;->a:Lcom/nd/commplatform/d/c/n;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/n;->a(Lcom/nd/commplatform/d/c/n;)Z

    move-result v0

    invoke-static {v0}, Lcom/nd/commplatform/d/c/cb;->a(Z)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/nd/commplatform/d/c/g;->b()V

    goto :goto_0
.end method
