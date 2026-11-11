.class Lcom/nd/commplatform/d/c/ix$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/d/c/ix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/ix;


# direct methods
.method private constructor <init>(Lcom/nd/commplatform/d/c/ix;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ix$a;->a:Lcom/nd/commplatform/d/c/ix;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nd/commplatform/d/c/ix;Lcom/nd/commplatform/d/c/ix$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/ix$a;-><init>(Lcom/nd/commplatform/d/c/ix;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->r()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ix$a;->a:Lcom/nd/commplatform/d/c/ix;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ix;->d(Lcom/nd/commplatform/d/c/ix;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ix$a;->a:Lcom/nd/commplatform/d/c/ix;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ix;->e(Lcom/nd/commplatform/d/c/ix;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ix$a;->a:Lcom/nd/commplatform/d/c/ix;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/ix;->a(Lcom/nd/commplatform/d/c/ix;)V

    goto :goto_0
.end method
