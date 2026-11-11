.class Lcom/nd/commplatform/d/c/g$d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/d/c/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/g;


# direct methods
.method private constructor <init>(Lcom/nd/commplatform/d/c/g;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/g$d;->a:Lcom/nd/commplatform/d/c/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nd/commplatform/d/c/g;Lcom/nd/commplatform/d/c/g$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/g$d;-><init>(Lcom/nd/commplatform/d/c/g;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    invoke-static {}, Lcom/nd/commplatform/d/c/e;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/nd/commplatform/d/c/g$d;->a:Lcom/nd/commplatform/d/c/g;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/g;->i(Lcom/nd/commplatform/d/c/g;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nd/commplatform/d/c/g$d;->a:Lcom/nd/commplatform/d/c/g;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/g;->j(Lcom/nd/commplatform/d/c/g;)V

    goto :goto_0
.end method
