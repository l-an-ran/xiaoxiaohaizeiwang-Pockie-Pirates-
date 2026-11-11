.class Lcom/nd/commplatform/d/c/ir$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/d/c/ir;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/ir;


# direct methods
.method private constructor <init>(Lcom/nd/commplatform/d/c/ir;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ir$a;->a:Lcom/nd/commplatform/d/c/ir;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nd/commplatform/d/c/ir;Lcom/nd/commplatform/d/c/ir$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/ir$a;-><init>(Lcom/nd/commplatform/d/c/ir;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nd/commplatform/d/c/ir$a;->a:Lcom/nd/commplatform/d/c/ir;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/ir;->a:Landroid/view/View;

    if-ne p1, v0, :cond_1

    const/16 v0, 0x458

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/ir$a;->a:Lcom/nd/commplatform/d/c/ir;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/ir;->b:Landroid/view/View;

    if-ne p1, v0, :cond_0

    const/16 v0, 0x453

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    goto :goto_0
.end method
