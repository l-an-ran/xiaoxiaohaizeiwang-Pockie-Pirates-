.class Lcom/nd/commplatform/d/c/iy$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/d/c/iy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/iy;


# direct methods
.method private constructor <init>(Lcom/nd/commplatform/d/c/iy;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/iy$a;->a:Lcom/nd/commplatform/d/c/iy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nd/commplatform/d/c/iy;Lcom/nd/commplatform/d/c/iy$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/iy$a;-><init>(Lcom/nd/commplatform/d/c/iy;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/d/c/iy$a;->a:Lcom/nd/commplatform/d/c/iy;

    invoke-static {v0}, Lcom/nd/commplatform/d/c/iy;->a(Lcom/nd/commplatform/d/c/iy;)Lcom/nd/commplatform/d/c/hf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nd/commplatform/d/c/hf;->d()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method
