.class Lcom/nd/commplatform/d/c/ph$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/d/c/ph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/ph;


# direct methods
.method private constructor <init>(Lcom/nd/commplatform/d/c/ph;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/ph$a;->a:Lcom/nd/commplatform/d/c/ph;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nd/commplatform/d/c/ph;Lcom/nd/commplatform/d/c/ph$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/ph$a;-><init>(Lcom/nd/commplatform/d/c/ph;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    invoke-static {}, Lcom/nd/commplatform/d/c/bz;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nd/commplatform/d/c/bz;->c()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/nd/commplatform/d/c/cb;->e()V

    goto :goto_0
.end method
