.class Lcom/nd/commplatform/d/c/pg$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/d/c/pg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/pg;


# direct methods
.method private constructor <init>(Lcom/nd/commplatform/d/c/pg;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/pg$a;->a:Lcom/nd/commplatform/d/c/pg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nd/commplatform/d/c/pg;Lcom/nd/commplatform/d/c/pg$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/pg$a;-><init>(Lcom/nd/commplatform/d/c/pg;)V

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

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pg$a;->a:Lcom/nd/commplatform/d/c/pg;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/pg;->d(Lcom/nd/commplatform/d/c/pg;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/nd/commplatform/d/c/a;->a()Lcom/nd/commplatform/d/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/a;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nd/commplatform/d/c/pg$a;->a:Lcom/nd/commplatform/d/c/pg;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/pg;->e(Lcom/nd/commplatform/d/c/pg;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/pg$a;->a:Lcom/nd/commplatform/d/c/pg;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/pg;->a(Lcom/nd/commplatform/d/c/pg;)V

    goto :goto_0
.end method
