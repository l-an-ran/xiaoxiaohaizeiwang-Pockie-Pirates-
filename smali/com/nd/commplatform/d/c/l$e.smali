.class Lcom/nd/commplatform/d/c/l$e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nd/commplatform/d/c/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/nd/commplatform/d/c/l;


# direct methods
.method private constructor <init>(Lcom/nd/commplatform/d/c/l;)V
    .locals 0

    iput-object p1, p0, Lcom/nd/commplatform/d/c/l$e;->a:Lcom/nd/commplatform/d/c/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nd/commplatform/d/c/l;Lcom/nd/commplatform/d/c/l$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nd/commplatform/d/c/l$e;-><init>(Lcom/nd/commplatform/d/c/l;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/nd/commplatform/d/c/l$e;->a:Lcom/nd/commplatform/d/c/l;

    iget-object v0, v0, Lcom/nd/commplatform/d/c/l;->h:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    const/16 v0, 0x3ef

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nd/commplatform/d/c/cb;->b(ILcom/nd/commplatform/d/c/bx;)V

    :cond_0
    return-void
.end method
